---
permalink: "/technical-faq/"
layout: page
title: Tech FAQ
---

<style>
  .q {
    margin-top: 38px;
  }
</style>

<div class="row">
  <div class="col l12">
    <h2>Updated October, 2018</h2>
  </div>
  <div class="col l12">
    <h4 class="q">How can I search or browse my database?</h4>
    <p>
      We use two primary tools for this. For general searches and to check records, you can use <a href="https://www.getpostman.com/apps">Postman</a>, which will work with both local and hosted databases. If your database is deployed to Heroku, you can browse and edit your databases in a GUI interface with <a href="https://datazenit.com/heroku-data-explorer.html">Heroku Data Explorer </a>.
    </p>
    <h4 class="q">How can I get a copy of my database on my local machine?</h4>
    <p>The following steps require use of a Heroku database and the Heroku CLI</p>
    <pre style="whitespace: pre-line">
      # This `dropdb` step is destructive locally. Make sure you don't have local data you care about.
      # The `create`db` step requires you to create the database with the postgres user account
      # ! IMPORTANT ! before performing any of these steps, you will need to sign-in to heroku on the command line using the credentials found in 1Password.
      dropdb steps_admin_test
      createdb steps_admin_test
      heroku pg:backups:capture --app steps-staging
      heroku pg:backups:download --app steps-staging
      pg_restore --verbose --clean --no-acl --no-owner -h localhost -U postgres -d steps_admin_test latest.dump
      refer to <a href="https://devcenter.heroku.com/articles/heroku-postgres-import-export" target="blank">https://devcenter.heroku.com/articles/heroku-postgres-import-export</a> for more details
    </pre>
    <p>Follow the steps below to restore a non-production (empty) local db</p>
    <pre style="whitespace: pre-line">
      dropdb steps_admin_test
      createdb steps_admin_test
      sqitch deploy # in the root of the app
    </pre>
    <h4 class="q">How do clients login?</h4>
    <p>
      They don't. They use a link sent to them by Roo. If they ever need the link, they can just send the word "plan" to Roo and it will send them the link. Fresh!
    </p>
    <h4 class="q">Do I have to use the web application that comes with Roo?</h4>
    <p>
      Tricky question. Technically, no. You can use whatever application you want as long as it can communicate to the database. The "tricky" part is that the chatbot expects the data in the database to be a certain way. Therefore, you would need to ensure that your application of choice has the ability to create the data the bot requires.
    </p>
    <p>
      Specifically, the only requirement for the basic bot functionality to work is the existence of users and tasks associated with that user. At minimum, you application will need to be able to send requests to the database that create and update users AND create tasks and associate them to existing users. 
    </p>
     <h4 class="q">Do I have to deploy both applications to develop?</h4>
     <p>
        No, you can use <span class="inline-code">ngrok</span>. You need this because both Facebook and Twilio block the use of <span class="inline-code">localhost</span>. Instructions on how to do this are in the <span class="inline-code">steps</span> repo's <span class="inline-code">README</span> file.
     </p>
     <h4 class="q">Are the plan urls assigned to the clients private?</h4>
     <p>
        They are public, but also semi-secure. Confused? Naturally. The links are built similar to a link for a shared Google Doc. Anyone with the link can access a client's workplan. But, it's very very hard for a bot to guess what the exact URL is. So while they are not private, they are secure from malicious bots. 
     </p>
     <p>
        The link to a client's workplan is only ever sent to their personal device. The link can only end up with someone else if a.) someone else has control of their device, or b.) the client intentionally sends the link to that other person. Because there are situations in which a client might want to share their link easily (like with a spouse), we believe the public-but-secure route to be a good balance between security and privacy.
     </p>
     <p>
        NOTE! If coaches input sensitive information into a client's workplan, that information can be seen by anyone with the link. Remind coaches that they should NEVER include personal or sensitive information such as Social Security Numbers, personal addresses, or bank account information in a client's workplan. 
     </p>
     <h4 class="q">How are Auth0 users different/similar to users in the database?</h4>
     <p>
        Good question. First, let's cover what a "tenant" is in Auth0. There are two. 'helloroo' and 'steps'. 'helloroo' is tied to our production database. 'steps' is tied to our staging databse.
      </p>
      <p>
        There are effectively 2 databases for every environment/tenant (staging/production). We have our own data, and Auth0 has its. What ties them together is the `auth0_id` field on the "user" object in our databse. 
      <p>
        So how do we know what user is making a request? A header? No, a token. All requests in our system require an auth token. These tokens contain a field called “sub” (see the breakdown of your token at jwt.io) which contains the auth0_id associated with the request. When our application attempts to validate the token (see the authentication middleware at apps/api/src/index.ts), it looks for a user in the Auth0 databse that has that auth0_id. 
      </p>
      <p>
        The process is similar for account creation but in reverse. Our app sends user info to Auth0 to create a user there and then we get the auth_id back. We add that to the user data and pass it to our db for creating a record. 
      </p>
      <p>
        Permissions to perform/view certain things are also regulated by these tokens. For all database queries, our API requires a token tied to a user that has "Superadmin" as their "type." Therefore, for machine-to-machine requests to work (like the bot talking to the db), we have to create a user in the databases for the entity trying to make requests, assign the type to "Superadmin", and then store the token associated auth0_id with that user. IN PLAIN ENGLISH: the bot has to exist as a user in our db, with Superadmin privelages for it to mess with the data in the db. 
      </p>
      <p>
        Keys: there are keys associated with each environment/tenant. All this means is that you can’t use a production token on a request to a staging environment. Tokens have to match the environment/tenant they're being used to access.
      </p>
    <h4 class="q">How to Cypress tests work?</h4>
    <p>
      First of all, they're amazing. Secondly, you should know they make/break a deployment if they're included in your CI checks. The best way to run Cypress tests is with their interface (included in the package):
    </p>
    <p>
      <em>API Tests: </em>Start the API from inside the api directory with <span class="inline-code">AUTH0_ENABLED=false npm start</span>. Then run cypress from the root of the project (steps/): <span class="inline-code">$(npm bin)/cypress open</span>. You should see the Cypress application window pop up with a directory of the available tests. Select EITHER of the tests inside the api folder, then hit the run/start button. !!NOTE: client_spec.js is suspected to be redundant and may not be necessary (if you're reading this and you don't see it there, then we fixed it and forgot to edit this part). 
    </p>
    <p>
      <em>ADMINTests: </em>Start the app from the project root (steps/): <span class="inline-code">NODE_ENV=development npm start</span>. <span class="inline-code">AUTH0_ENABLED</span> should be <span class="inline-code">true</span>. Then run Cypress also from the project root: <span class="inline-code">$(npm bin)/cypress open</span>. Then select the <span class="inline-code">coach_spec.js</span> file and hit the run/start button. 
    </p>
    <h4 class="q">I'm trying to make a PUT request to <span class="inline-code">/media</span> but it's not working. WTF?</h4>
    <p>
      Most likely, you have not entered a <span class="inline-code">task_id</span> that matches a real task, or you have the same problem with <span class="inline-code">org_id</span>.
    </p>
    <h4>How and when do I need to get new tokens? And who needs them? And...and...</h4>
    <p>
      Breathe. Tokens are a lot. We got you. Token expiration date is decided by the API settings in Auth0. Right now they're set to 8640000 seconds, which is 100 days. We are renewing them automatically in the app. A function inteh <span class="inline-code">steps-bot</span> code checks the expiration date of our tokens and requests a new one a few days before they expire. An email is sent to steps.developers@gmail.com when the token is updated. If you want to make double sure it happens, mark your calendar and check the Herkou config vars after the expiration date has lapsed.
    </p>
    <h4 class="q">All I see is a blank light blue background when I run the web app.</h4>
    <p>
      That's not a question, but you're in pain so we'll let it slide. You should look in your <span class="inline-code">.env</span> file and make sure <span class="inline-code">AUTH0_ENABLED</span> is set to <span class="inline-code">true</span>. Restart the app if you change it so that it takes effect. 
    </p>
    <h4 class="q">What if I get the error ”Cannot read property ‘words’ of undefined.</h4>
    <p> 
      This is an error thrown by <span class="inline-code">crypto.js</span>. It means you haven't provided a secret key (a custom string) to encrypt stuff with. Likely this is an environment variable that either lives in an <span class="inline-code">.env</span> file or is passed in via the terminal when you start your application/script. 
    </p>
    <h4 class="q">I'm getting an API error that says "Signing Key Not Found."</h4>
    <p> 
      This is an error thrown by Auth0. It means the auth token you are using in your request does not match the tenant it was made with. Make sure you're using a 'staging' token when talking to the staging server and the 'production' token for the production server (etc, etc).
    </p>
    <h4 class="q">Don't see your question here?</h4>
    <p>Email us at <a href="mailto:roo@ideo.org">roo@ideo.org</a></p>
  </div>
</div>

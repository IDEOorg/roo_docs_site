---
permalink: "/technical-faq/"
layout: page
title: Tech FAQ
---

<div class="row">
  <div class="col l8">
    <h2>Updated October, 2018</h2>
  </div>
  <div class="col l8">
    <h4>How do I change a password?</h4>
    <p>
      As of October, 2018 there is no way for a user to change their password. Instead, the sys admin needs to change the password within Auth0. NOTE: there is also no way for anyone, including the sys admin, to see anyone's password. If a user has lost or forgotten their password, it cannot be retrieved. It can only be reset.
    </p>
    <h4>How do I delete a user?</h4>
    <p>
      Currently, only a sys-admin can delete a user. A user cannot be deleted if they have any foreign key relationships. Therefore, the easiest way to delete a user is to use the script provided in the <a href="https://github.com/ideoorg/steps-bot">steps bot repo</a>, located in the utilities folder. The ability for a coach to delete a user is coming soon.
    </p>
    <h4>How can I search or browse my database?</h4>
    <p>
      We use two primary tools for this. For general searches and to check records, you can use <a href=https://www.getpostman.com/apps"">Postman</a>, which will work with both local and hosted databases. If your database is deployed to Heroku, you can browse and edit your databases in a GUI interface with <a href="https://datazenit.com/heroku-data-explorer.html">Heroku Data Explorer </a>.
    </p>
    <h4>How can I get a copy of my database on my local machine?</h4>
    <p>The following steps require use of a Heroku database and the Heroku CLI</p>
    <pre>
# This first step is destructive locally. Make sure you don't have local data 
# you care about.
dropdb steps_admin_test
heroku pg:pull <your heroku postgres url> postgres://localhost/steps_admin_test -a steps-admin
AUTH0_ENABLED=false npm start # in the api directory

# Restore a non-production (empty) local db
dropdb steps_admin_test
createdb steps_admin_test
sqitch deploy # in the root of the app
    </pre>
    <h4>How do I change a client's platform (Messenger <-> SMS)?</h4>
    <p>
      Find the client id in the database (using Postman, for example). Then create a PUT request and change the value of the "platform" value to the platform of your choice (FBOOK or SMS). Also change the value of "topic:" if switching to Messenger, set topic to "setupfb." Then ask the client to text START to the bot number to being. This will send a link to their phone via SMS that will take them to the bot on Messenger. If switching to SMS, value of "topic" should be "welcome." the client should text START to the number to begin. 
    </p>
    <h4>Do I have to use the web application that comes with Roo?</h4>
    <p>
      Tricky question. Technically, no. You can use whatever application you want as long as it can communicate to the database. The "tricky" part is that the chatbot expects the data in the database to be a certain way. Therefore, you would need to ensure that your application of choice has the ability to create the data the bot requires.
    </p>
    <p>
      Specifically, the only requirement for the basic bot functionality to work is the existence of users and tasks associated with that user. At minimum, you application will need to be able to send requests to the database that create and update users AND create tasks and associate them to existing users. 
    </p>
  </div>
</div>
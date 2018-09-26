---
permalink: "/deploy-roo/"
layout: page
title: Deploy Roo
---
<style>
  .bold-title {
    font-weight: bold;
    margin-bottom: 5px;
  }
</style>

<div class="row">
  <div class="col l8">
    <h3>Costs</h3>
    <p>
      Here is a <a href="https://docs.google.com/spreadsheets/d/1F1mNd1hYYDpQjE9O8Dh2_RCK67SJVY87ubHiRvbVwNk/edit?usp=sharing" target="_blank">Google Sheet</a> outlining the expected costs of deploying your own version of Roo. In the future, we hope to offer Roo as a service. Pricing for that has not been forecasted.
    </p>
  </div>
</div>

<div class="row">
  <div class="col l8">
    <h3>Accounts</h3>
    <p>You'll need these accounts in order to deploy your own instance of Roo.</p>
    <p class="bold-title">Twilio</p>
    <p>
      For sending and receiving SMS. Select the Programmable SMS product and create a project. In the dashboard, you should see a button that says "Get Started" in the Programmable SMS area. Click that and follow the instructions to get a Twilio.
    </p>
    <p class="bold-title">Auth0</p>
    <p>
      Note: if only testing locally, you should disable use of Auth0 by setting the environment variable "AUTH0_ENABLED" to "false." Use Auth0 for deployed versions (staging or production). AUth0 is used for authenticating users and authorizing access to app routes and features. When signing up, you'll be asked to name your "Tenant Domain." This does not have to be your project URL. It can be anything. 
    </p>  
    <p>
      You will need to create an application with the Auth0 settings for both the coach application and the bot. Here are some sample settings: 
    </p>
    <ul>
      <li>Name: <em>Hello Roo Admin Dashboard</em></li>
      <li>Application Type: <em>Single Page Application</em></li>
      <li>Allowed Callback URLs: <em>https://helloroo.org/authenticate, https://www.helloroo.org/authenticate, https://helloroo.org/magic-link</em></li>
      <li>Allowed Web Origins: <em>https://helloroo.org, https://www.helloroo.org</em></li>
      <li>ALlowed Web Origins (CORS): <em>https://helloroo.org, https://www.helloroo.org</em></li>
      <li>JWT Expiration: <em>172800</em></li>
      <li>Use Auth0 instead of the IdP to do Single Sign On: <em>ON</em></li>
    </ul>
    <p>
      Once you have purchased a URL for your project and deployed to that URL, you will want to create a new API in the Auth0 settings (see nav menu on left of Auth0 dashboard).
    </p>
    <p class="bold-title">Github</p>
    <p>
      We recommend you make a fork of the IDEO.org codebase into your own Github account. You will need your own github repo if you want to utilize heroku features like automatic deployment. If you don't plan on making any customizations at all, you could also just pull from our repo and deploy to your own heroku app. 
    </p>
    <p class="bold-title">Heroku</p>
    <p>
      We use Heroku for hosting for many reasons, one of which is the easy integration with Postgres and the added security features. We also keep all of our env variables in Heroku as a single source of truth, as opposed to sending ".env" files back and forth. 
    </p>
    <p>
      Create a new app. Create a pipeline for the app. Connect to your github account and add the repo. You can stick to just using a staging app until you are ready to deploy to production.
    </p>
    <p class="bold-title">Google Analytics (optional)</p>
    <p>If you choose to do this, put the tracking ID either in the env file.</p>
    <p class="bold-title">Keen (optional)</p>
    <p>We use Keen for event tracking. The necessary keys are kept in the env file.</p>
  </div>
</div>

<div class="row">
  <div class="col l8">
    <h3>Setting up the Coach Application for Local Dev</h3>
    <ol>
      <li>Create a directory and pull the repo into the directory.</li>
      <li>Follow the instructions in the README for creating your database.
        <ul>
          <li>
            NOTE: Developing locally requires a postgres database with a user "postgres" that has a blank password. The steps in the README will demonstrate how to create the database, but you will need to make sure the "postgres" user exists, has access privelages, and no password before continuing. Example psql command = <span class="inline-code">CREATE ROLE postgres WITH SUPERUSER LOGIN;</span>
          </li>
        </ul>
      </li>
      <li>Follow the instructions in "Refresh with latest build" section of th the README to installing all necessary packages.</li>
      <li>Open the .env file you just made and set AUTH0_ENABLED to "false" for now.</li>
      <li>Start the app. Make sure you are using a version of Node >7.6.</li>
    </ol>
  </div>
</div>


<!--
Creating an org manually
Populating database with template tasks
Adding media to the database
-->

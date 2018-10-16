---
permalink: "/ideo-org/"
layout: page
title: IDEO.org
---

<style>
  .bold {
    font-weight: bold;
  }
</style>

<div class="row">
  <div class="col s12 l8">
    <h2>Looking for something?</h2>
    <h4>ACCOUNT PASSWORDS</h4>
    <p>These can be found in 1Password and should include "Steps Dev" in the title.</p>
    <h4>TWILIO NUMBERS WE OWN/USE</h4>
    <p>Look in 1Password</p>
    <h4>ENV VARS</h4>
    <p>
      Original copies are stored in 1Password, and the most up to date values can be found in heroku. Heroku config vars can also be seen if you're signed into an authorized heroku account via the CLI by running 'heroku config'.
    </p>
    <h4>HOSTING/DNS</h4>
    <p>"helloroo.org" was registered with domains.google.com using the Google account for "steps.developers@gmail.com." We are using <a href="https://dnsimple">DNS Simple</a> to manage DNS records.</p>
    <p>This site is hosted on Amazon AWS using the "accounts@ideo.org" credentials. The bucket name is "roo-docs-site."</p>
    <p>^ CHANGE  THIS IF WE GO WITH THE NETLIFY DEPLOYMENT</p>
    <h4>STATIC ASSETS</h4>
    <p>Images for Media objects and other static assets are stored in an AWS S3 bucket in the "accounts@ideo.org" account. The bucket name is "steps-application-public."</p>
    <h4>OTHER DOCS</h4>
      <ul>
        <li>
          <a href="https://drive.google.com/file/d/1yPq2xLPYSEOrjSDAR8XxCby0sPlJCJow/view?usp=sharing" target="_blank">Theory of change diagram</a>
        </li>
      </ul>
    <h4>CONTACTS</h4> 
    <p><span class="bold">IDEO.org</span> - lead dev is Matthew Epler (mepler@ideo.org or matthewepler@gmail.com) if you can't find something or have further questions.</p>
    <p><span class="bold">8th Light</span> - our developer for summer of 2018. Created the coach application and database. Principles were Jim Remsik (jremsik@8thlight.com) and Connor Mendenhall (cmendenhall@8thlight.com).</p>
  </div>
</div>

<div class="row">
  <div class="col s12 l8">
    <h2>Application Notes</h2>
    <h4>Deployment</h4>
    <p>
      We deployed the coaching app and database to Heroku. It's named "steps-test-pipeline" and appears as a single app in the list of our apps. The bot is also on heroku and is named "stepsroobot." There is also a staging bot named "stepsroobotstaging."
    </p>
    <h4>Continuous Integration and Deployment</h4>
    <p>
      We are using CircleCI (<a href="https://circleci.com/gh/IDEOorg/steps">our link</a>). You can login using your github credentials and see the setup for the "steps" repo (coach app + database). The bot is not using CI.
    </p>
    <p>
      CircleCI runs all tests and db migrations whenever you push to develop or merge with production (or any other push or merge for that matter). If tests are successful, it will deploy the code to the proper platform (Heroku, for example). This happens thanks to a webhook set in Github (Settings > Webhooks).
    </p>
    <p>
      CircleCI will also produce a video for the Cypress E2E tests. These are useful to see exactly what the interface does when an error occurs and what actions led to the error. Finding the video is a little tough. CLick into the build that you're intersted in and then select the "Artifacts" tab at the top. Just below the tabs should appear a file directory. Click down into that to find the video file. 
    </p>
    <h4>Server Logging</h4>
    <p>
      We are using Sentry for logging on Heroku. You can see the settings (and logs) by accessing the app on Heroku. Here's a direct link to the <a href="https://sentry.io/steps-admin/steps-admin/">production logs</a>, and there's one for staging too.
    </p>
    <h4>Important Numbers</h4>
    <p>
      Staging Bot UserID: 116
      Production Bot UserID: 41
    </p>
    <p>
      Staging Twilio Number: 347-708-9316
      Production Twilio Number: 646-798-8004
    <p>
    <h4>Info about Access Tokens</h4>
    <p>
      Every 100 days, the access tokens need renewing. The current access tokens are in a file in 1Password with the title "Steps Auth Tokens." For instructions on how to get a new token, see the screenshots in the Admin repo. 
    </p>
    <h4>How can I connect directly to the heroku database from the command line?</h4>
    <p>
      If you're signed into the Heroku CLI and have been added to the project in Heroku with the proper permissions, you can run a command like this: <span class="inline-code">heroku pg:psql --app steps-staging</span>. Easy peasy. Just switch out the name of the app to connect to another one. 
    </p>
    <h4>How do we know if someone texted "STOP?"</h4>
    <p>
      STOP is a Twilio keyword and will result in Roo being blocked from sending messages to the user. The user can reverse this at anytime by texting START to Roo. For messages sent after mid-August, the "stop" message should show up in the client's chat log and an event should also be fired to Keen (through the method handleIfUserAskedToStop in Chatbot.js).
    </p>
  </div>
</div>

<div class="row">
  <div class="col s12 l6">
    <h4>ABOUT THIS SITE</h4>
      <p>
        This site was developed using <a href="https://github.com/ideo/chronicle">Chronicle</a>, an IDEO project by Derek Olson.
      </p>
  </div>
</div>
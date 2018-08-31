---
permalink: "/"
layout: page
title: Overview
---

<style>
  td {
    vertical-align: top;
  }
  
  .italic {
    font-style: italic;
  }
</style>

<div class="row">
  <div class="col s12 l6">
    <div class="img-small">
      <img src="{{page.root}}img/roo_party.gif"/>
    </div>
  </div>
  <div class="col s12 l6">
    <h3>Shortcuts</h3>
    <ul>
      <li>
        <a href="https://drive.google.com/file/d/1yPq2xLPYSEOrjSDAR8XxCby0sPlJCJow/view?usp=sharing" target="_blank">Theory of change</a><span> (PDF)</span>
      </li>
      <li>
        <a href=""  style="color:red" target="_blank">Roo demo video</a><span> (YouTube)</span>
      </li>
      <li>
        <a href=""  style="color:red" target="_blank">"How Roo works" Presentation (name?)</a><span> (format??)</span>
      </li>
      <li>
        <a href="https://docs.google.com/presentation/d/1TDnPto_Cl4piWOrG6cf-_XmdVNg-Aqdwp1QLzIyLqos/edit?usp=sharing" target="_blank">Chatbot code walkthrough</a><span></span>
      </li>
      <li>
        <a href="https://github.com/IDEOorg/steps-bot" target="_blank">Chatbot Repo</a><span> (Github)</span>
      </li>
      <li>
        <a href="https://github.com/IDEOorg/steps/" target="_blank">Coach App + Database Repo</a><span> (Github)</span>
      </li>
      <li>
        IDEO.org accounts credentials (restricted) are are in 1Password (including file called "env vars - Steps Dev...")
      </li>
      <li>
        <a href="mailto:roo@ideo.org">Contact IDEO.org about Roo</a>
      </li>
    </ul>
  </div>
</div>

<div class="row">
  <div class="col s12 l6">
    <h3>What is Roo?</h3>
    <p>
      Roo is a collection of software services. It's purpose is to help, remind, and encourage clients of financial coaching services. Roo is also the name of the chatbot character inlcuded in the platform. Check out this <a href="" style="color:red" target="_blank">deck</a> and this <a href="" style="color:red" target="_blank">video</a> for more details on how it works and what it does.
    </p>
    <p>
      Roo was created in 2018 by <a href="https://ideo.org" target="_blank">IDEO.org</a>. It is an open-source project under the <a href="https://opensource.org/licenses/MIT" target="_blank">MIT license</a>.
    </p>
  </div>
  <div class="col s12 l6">
    <div class="img-full">
      <img src="{{page.root}}img/relationshipdiagram.png">
    </div>
  </div>
</div>


<div class="row">
  <div class="col s12 l12">
    <h3>Project Status</h3>
    <p>
      The project is open-sourced and publicly available but not easily deployed without developer support. Organizations who wish to use Roo are encouraged to do so, but we are unable to provide 1:1 support beyond these documents at this time.
    </p>
    <p>
      Our current roadmap includes:
    </p>
    <table>
      <tr>
        <td>
          <h4 style="display: inline"><a href="/roadmap/phase-one">Phase One</a></h4><span class="italic">&nbsp;&nbsp;&nbsp;Q4, 2018 - Q1, 2019</span>
          <ul>
            <li>Continued pilot</li>
            <li>Feature development</li>
            <li>Impact analysis</li>
          </ul>
        </td>
        <td>
          <h4 style="display: inline"><a href="/roadmap/phase-two">Phase Two</a></h4><span class="italic">&nbsp;&nbsp;&nbsp;Q1 - Q3, 2019</span>
          <ul>
            <li>Continued funding</li>
            <li>Future features design (funding dependent)</li>
            <li>Public launch</li>
            <li>CRM integration (funding dependent)</li>
          </ul>
        </td>
      </tr>
    </table>
  </div>
  
</div>

<div class="row">
  <div class="col s12 l6">
    <h3>Chatbot</h3>
    <p>
       The chatbot handles messages to/from the client via SMS or Facebook messenger. It is not a very bright bot. It can only handle responses that are hardcoded into the bot's scripts. There is no natural language processing, machine-learning, or AI. 
    </p>
    <p>
      In addition to handling text-based conversations, the chatbot runs routines at regular intervals to send check-ins, story content, and reminders to clients.
    </p>
    <p>
      The chatbot is based on the <a href="https://botkit.ai/" target="_blank">Botkit framework</a>. It is a Node server that works with Twilio and Facebook APIs. In our case, it is hosted on Heroku.
    </p>
    <p>
      Full documentation can be found at the bot's <a href="https://github.com/IDEOorg/steps-bot" target="_blank">Github repo</a> and in <a href="" style="color:red" target="_blank">this presentation</a>.
    </p>.
  </div>
  <div class="col s12 l6">
    <div class="img-small">
      <img src="{{page.root}}img/bot_logos.png">
    </div>
  </div>
</div>
<div class="row">
  <div class="col s12 l6">
    <h3>Coach Application</h3>
    <p>
      The coach application is used by the coach in a coaching session to create a digital workplan for their client. This workplan is saved to the database and is read by the bot when sending check-ins and reminders to the client.
    </p>
    <p>
      The coach application is a React/Redux application and is hosted on the same instance as the database (in our case, on Heroku). 
    </p>
    <p>
      Full documentation of the application can be found at application's <a href="" style="color:red" target="_blank">Github repo</a>.
    </p>
  </div>
  <div class="col s12 l6">
    <div class="img-small">
      <img src="{{page.root}}img/coach_app_logos.png">
    </div>
  </div>
</div>
<div class="row">
  <div class="col s12 l6">
    <h3>Database</h3>
    <p>
      The database stores data related to clients and their workplans. It is not connected to any other data sources such as a CRM. It does not hold financial data such as credit scores or bank account information.
    </p>
    <p>
      The primary purpose of the database is to store workplans for clients. These are the basis of the chatbot's interactions. Additionally, it stores records of all messages sent through the chatbot, story content, and basic data about coaches and the organizations they work for (name, email, etc). 
    </p>
    <p>
      The database was built as a Node server running Express on top of a Postgres database. NOTE: the database code is in the same <a href="" style="color:red" target="_blank">Github repo</a> as the coach application and are usually run simulateously. It appears in the directory named "api" within the "src" directory. 
    </p>
  </div>
  <div class="col s12 l6">
    <div class="img-small">
      <img src="{{page.root}}img/db_logos.png">
    </div>
  </div>
</div>

<div class="row">
  <div class="col l12">
    <h3>Contact</h3>
    <p>
      Please check the <a href="" style="color: red">FAQ</a>. If you question is not answered there, you can email us at <a href="mailto:roo@ideo.org" style="color:red">roo@ideo.org</a>
    </p>    
  </div>
<div>
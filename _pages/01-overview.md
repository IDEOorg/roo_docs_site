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

  .logos {
    margin-top: 50px;
  }
  .bullets {
    align-self: flex-start;
    width: 25px;
  }
  .li-flex {
    display: flex;
  }
  .li-self {
    list-style: none;
    padding-left: 15px;
  }
</style>

<div class="row"> 
  <div class="col s12 l8">
    <img src="{{page.root}}img/roo_party.gif"  style="width: 125px"/>
    <h3>Welcome, Developers!</h3>
    <p>This purpose of this site is to help you get started using Roo at your own organization. There's a lot of moving parts but we've done our best to make it a smooth implementation. <a href="mailto:roo@ideo.org">Contact us</a> if you have any questions along the way and we'll do our best to help!</p>
    <h3>Recommendations</h3>
    <p>While not required, we recommend taking the following steps in order. This will give you a big-picture view of what Roo is for as well as all the technical details of how it's built. It also includes instructions on how to deploy Roo to the hosting service of your choice. Of course, you can feel free to browse the site's contents using the nav on the left at anytime.</p>
    <ul>
      <div class="li-flex">
        <img src="{{page.root}}img/1.png" class="bullets" />
        <li class="li-self" style="list-style-type: none; ">
          Check out <a href="https://www.youtube.com/watch?v=Y9ln8yNiF8I" target="_blank">this introduction </a> to Roo. It gives a good foundation to the thinking behind Roo's design. 
        </li>
      </div>
      <div class="li-flex">
        <img src="{{page.root}}img/2.png" class="bullets" />
        <li class="li-self" style="list-style-type: none; ">
          Watch the <a href="https://www.youtube.com/watch?v=AQILZJgNos8" target="_blank">Roo demo video</a> to see our platform in action and know what you can expect. 
        </li>
      </div>
      <div class="li-flex">
        <img src="{{page.root}}img/3.png" class="bullets" />
        <li class="li-self" style="list-style-type: none; ">
          Familiarize yourself with our roadmap (<a href="/roadmap/phase-one">phase one</a> and <a href="/roadmap/phase-two">phase two</a>) so you know what's coming up over the next few months. 
        </li>
      </div>
      <div class="li-flex">
        <img src="{{page.root}}img/4.png" class="bullets" />
        <li class="li-self" style="list-style-type: none; ">
          Take a tour of the documents in the <a href="/documents">Diagrams and Flows</a> section. These will be valuable resources as you implement Roo and build an understanding of how it works. 
        </li>
      </div>
      <div class="li-flex">
        <img src="{{page.root}}img/5.png" class="bullets" />
        <li class="li-self" style="list-style-type: none; ">
          Dive into the instructions for <a href="/deploy-roo">deploying Roo</a>. 
        </li>
      </div>
      <div class="li-flex">
        <img src="{{page.root}}img/6.png" class="bullets" />
        <li class="li-self" style="list-style-type: none; ">
          Read our <a href="/technical-faq">technical FAQs</a> when you get stuck. 
        </li>
      </div>
      <div class="li-flex">
        <img src="{{page.root}}img/7.png" class="bullets" />
        <li class="li-self" style="list-style-type: none; ">
          Set your users up for success by directing them to our <a href="/current-users">training videos</a>.
        </li>
      </div>
      <div class="li-flex">
        <img src="{{page.root}}img/8.png" class="bullets" />
        <li class="li-self" style="list-style-type: none; ">
          Want the full pitch on Roo and how we got this crazy idea? <a href="https://drive.google.com/file/d/1yfqaEh8yw9y0kjo1qP5AAIQ6SzeZnoQi/view?usp=sharing">Roo Presentation - Prosperity Now Summit, 09/2018</a>.
        </li>
      </div>
    </ul>
  </div>
</div>

<div class="row">
  <div class="col s12 l8">
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
          <h4 style="display: inline"><a href="/roadmap/phase-one">Phase One</a></h4>
          <p><span class="italic">Q4, 2018 - Q1, 2019</span></p>
          <ul>
            <li>Continued pilot</li>
            <li>Feature development</li>
            <li>Impact analysis</li>
          </ul>
        </td>
        <td style="padding-left: 35px;">
          <h4 style="display: inline"><a href="/roadmap/phase-two">Phase Two</a></h4>
          <p><span class="italic">Q1 - Q3, 2019</span></p>
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
  <div class="col s12 l7">
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
      Full documentation can be found at the bot's <a href="https://github.com/IDEOorg/steps-bot" target="_blank">Github repo</a> and in <a href="https://docs.google.com/presentation/d/175cGeQ8chW0W-L6gRtG6fIsVYQe0HCIh6NsXkHd66Tk/edit?usp=sharing" target="_blank">this presentation</a>.
    </p>.
  </div>
  <div class="col s12 l5">
    <div class="img-small logos">
      <img src="{{page.root}}img/bot_logos.png">
    </div>
  </div>
</div>
<div class="row">
  <div class="col s12 l7">
    <h3>Coach Application</h3>
    <p>
      The coach application is used by the coach in a coaching session to create a digital workplan for their client. This workplan is saved to the database, which is in turn read by the bot when sending check-ins and reminders to the client.
    </p>
    <p>
      The coach application is a React/Redux application and is hosted on the same instance as the database (in our case, on Heroku). 
    </p>
    <p>
      Full documentation of the application can be found at application's <a href="https://github.com/ideoorg/steps" target="_blank">Github repo</a>.
    </p>
  </div>
  <div class="col s12 l5">
    <div class="img-small logos">
      <img src="{{page.root}}img/coach_app_logos.png">
    </div>
  </div>
</div>
<div class="row">
  <div class="col s12 l7">
    <h3>Database</h3>
    <p>
      The database stores data related to clients and their workplans. It is not connected to any other data sources such as a CRM. It does not hold financial data such as credit scores or bank account information.
    </p>
    <p>
      The primary purpose of the database is to store workplans for clients. These are the basis of the chatbot's interactions. Additionally, it stores records of all messages sent through the chatbot, story content, and basic data about coaches and the organizations they work for (name, email, etc). 
    </p>
    <p>
      The database was built as a Node server running Express on top of a Postgres database. NOTE: the database code is in the same <a href="https://github.com/ideoorg/steps" target="_blank">Github repo</a> as the coach application and are usually run simulateously. It appears in the directory named "api" within the "src" directory. 
    </p>
  </div>
  <div class="col s12 l5">
    <div class="img-small logos">
      <img src="{{page.root}}img/db_logos.png">
    </div>
  </div>
</div>

<div class="row">
  <div class="col l12">
    <h3>Contact</h3>
    <p>
      Please check the <a href="/technical-faq" >FAQ</a>. If you question is not answered there, you can email us at <a href="mailto:roo@ideo.org">roo@ideo.org</a>
    </p>    
  </div>
<div>
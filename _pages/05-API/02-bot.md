---
permalink: "/api/bot"
layout: page
title: Bot API
---

<div class="row">
  <div class="col l12 controller">
    <h2>Routes</h2>
    <p class="font-style: italic">For implementation details, refer to <span class="inline-code">server.js</span> and <span class="inline-code">index.js</span> in the root directory of the <span class="inline-code">steps-bot</span> source code.</p>
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Facebook</h3>
    <h4 class="title-break">GET /facebook/receive</h4>
    <p>Performs the Facebook webhook verification handshake with the verify token.</p>
    <span></span> <!-- here just to page the page more readable in IDE -->
    <h4 class="title-break">POST /facebook/receive</h4>
    <p>Webhook triggerd in Facebook upon receipt of new message from user. Message is parsed and then processed by the bot. Aka <span class="inline-code">fbEndpoint</span> in the bot code. See <span class="inline-code">fbEndpoint()</span> in <span class="inline-code">index.js</span> </p>
    <span></span> <!-- here just to page the page more readable in IDE -->
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Twilio</h3>
    <h4 class="title-break">POST /sms/receive</h4>
    <p>A webhood for incoming messages to Twilio. For implementation, see <span class="inline-code">twilioController.hears()</span> in <span class="inline-code">index.js</span> located in the root directory of the <span class="inline-code">steps-bot</span> code.</p>
    <span></span> <!-- here just to page the page more readable in IDE -->
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Help Request/Response</h3>
    <h4 class="title-break">GET /helpresponse</h4>
    <p>An endpoint for receiving a coach's response to a help request. This message is submitted from within the coach (web) application by subitting a form. For implementation, see <span class="inline-code">routes()</span> in <span class="inline-code">server.js</span> and <span class="inline-code">getCoachResponse()</span> in <span class="inline-code">index.js</span> located in the root directory of the <span class="inline-code">steps-bot</span> code.</p>
    <span></span> <!-- here just to page the page more readable in IDE -->
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Other</h3>
    <h4 class="title-break">GET /redirect</h4>
    <p>When user clicks a link on a <span class="inline-code">media</span> object, it is sent to this endpoint so that a tracking function can be called. The user is then redirected to their original destination (<span class="inline-code">media.url</span>)</p>
  </div>
</div>
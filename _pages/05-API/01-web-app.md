---
permalink: "/api/web-app"
layout: page
title: Web App API
---

<div class="row">
  <div class="col l12 controller">
    <h2>Routes</h2>
    <p class="font-style: italic">For implementation details, refer to <span class="inline-code">src/controller</span> and <span class="inline-code">src/repository</span> directories within the <span class="inline-code">api</span> source code.</p>
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Client Controller</h3>
    <h4 class="title-break">GET /api/clients</h4>
    <p>Returns all existing clients as an array of <span class="inline-code">user</span> objects.</p>
    <span></span> <!-- here just to page the page more readable in IDE -->
    <h4 class="title-break">GET /api/clients/:id</h4>
    <p>Returns a single <span class="inline-code">user</span> object.</p>
    <span></span>
    <h4 class="title-break">GET /api/clients/:id/tasks</h4>
    <p>Returns an array of <span class="inline-code">task</span> objects associated with a single <span class="inline-code">user</span>.</p>
    <span></span>
    <h4 class="title-break">GET /api/clients/:id/messages</h4>
    <p>Returns an array of <span class="inline-code">message</span> objects associated with a single <span class="inline-code">user</span>.</p>
    <span></span>
    <h4 class="title-break">GET /api/clients/:id/viewed_media</h4>
    <p>Returns an array of <span class="inline-code">media</span> objects that have been sent to the <span class="inline-code">user</span>. This is used by the bot to make sure we don't send the same media twice.</p>
    <span></span>
    <h4 class="title-break">GET /api/clients/:id/requests</h4>
    <p>Returns an array of <span class="inline-code">request</span> objects associated with a single <span class="inline-code">user</span>. A single <span class="inline-code">request</span> object is associated with many <span class="inline-code">messages</span> through a foreign key on <span class="inline-code">message</span> objects.</p>
    <span></span>
    <h4 class="title-break">POST /api/clients/:id/viewed_media/:media_id</h4>
    <p>Ceates a <span class="inline-code">viewed_media</span> object. These are used to track which <span class="inline-code">user</span> objects a <span class="inline-code">user</span> has already been sent. If it has been sent, it is considered "viewed."</p>
    <span></span>
    <h4 class="title-break">DELETE /api/clients/:id/viewed_media/:media_id</h4>
    <p>Deletes a <span class="inline-code">viewed_media</span> object associated with a specific <span class="inline-code">user</span>.</p>
    <span></span>
    <h4 class="title-break">POST /api/clients</h4>
    <p>Creates a <span class="inline-code">user</span> whose type value is set to "Client".</p>
    <span></span>
    <h4 class="title-break">PUT /api/clients/:id</h4>
    <p>Updates a <span class="inline-code">user</span> whose type is "Client" and whose <span class="inline-code">id</span> matches the ":id" parameter.</p>
    <span></span>
    <h4 class="title-break">DELETE /api/clients/:id</h4>
    <p>Deletes a <span class="inline-code">user</span> whose type is "Client". May require SUPER_ADMIN access. Alternatively, users can be deleted using the <span class="inline-code">deleteuser.js</span> script, which can be found in the root of the <span class="inline-code">steps-bot</span> code source. Deleting a <span class="inline-code">user</span> requires that all records associated with that <span class="inline-code">user</span> must first be deleted (tasks, viewed_media, etc).</p>
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Coach Controller</h3>
    <h4 class="title-break">GET /api/coaches</h4>
    <p>Returns array of <span class="inline-code">user</span> objects whose type is "Coach."</p>
    <span></span>
    <h4 class="title-break">GET /api/coaches/:id</h4>
    <p>Returns a single <span class="inline-code">user</span> object whose type is "Coach" and whose <span class="inline-code">id</span> matches the ":id" parameter.</p>
    <span></span>
    <h4 class="title-break">POST /api/coaches</h4>
    <p>Creates a <span class="inline-code">user</span> object with the type value of "Coach."</p>
    <span></span>
    <h4 class="title-break">DELETE /api/coaches/:id</h4>
    <p>Deletes a <span class="inline-code">user</span> object with type "Coach" and whose <span class="inline-code">id</span> matches the ":id" parameter.</p>
    <h4 class="title-break">GET /api/users</h4>
    <p>Returns an array of all <span class="inline-code">user</span> objects.</p>
    <span></span>
    <h4 class="title-break">GET /api/users/:id</h4>
    <p>Returns a <span class="inline-code">user</span> object whose <span class="inline-code">id</span> matches the ":id" parameter.</p>
    <span></span>
    <h4 class="title-break">POST /api/users</h4>
    <p>Creates a <span class="inline-code">user</span>.</p>
    <span></span>
    <h4 class="title-break">DELETE /api/users/:id</h4>
    <p>Deletes a <span class="inline-code">user</span> whose <span class="inline-code">id</span> matches the ":id" parameter. Will return an error if the user has values that are relations to other tables. For example, a user cannot be deleted if their id is a foreign key on a task. All tasks, viewed_media, etc. must be deleted before the user can be deleted. You can use the <span class="inline-code">deleteuser.js</span> script to assist with this process. It can be found in the root of the steps-bot source code.</p>
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Org Controller</h3>
    <span></span>
    <h4 class="title-break">GET /api/orgs</h4>
    <p>Returns an array of <span class="inline-code">org</span> objects.</p>
    <span></span>
    <h4 class="title-break">GET /api/orgs</h4>
    <p>Returns an array of <span class="inline-code">org</span> objects.</p>
    <span></span>
    <h4 class="title-break">POST /api/orgs</h4>
    <p>Creates a new <span class="inline-code">org</span>.</p>
    <span></span>
    <h4 class="title-break">DELETE /api/orgs/:id</h4>
    <p>Deletes an <span class="inline-code">org</span> whose <span class="inline-code">id</span> matches the ":id" parameter.</p>
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Task Controller</h3>
    <span></span>
    <h4 class="title-break">GET /api/tasks</h4>
    <p>Returns an array of <span class="inline-code">task</span> objects.</p>
    <span></span>
    <h4 class="title-break">GET /api/tasks/:id</h4>
    <p>Returns a <span class="inline-code">task</span> object whose <span class="inline-code">id</span> matches the ":id" parameter.</p>
    <span></span>
    <h4 class="title-break">POST /api/tasks</h4>
    <p>Creates a <span class="inline-code">task</span>.</p>
    <span></span>
    <h4 class="title-break">PUT /api/tasks</h4>
    <p>Updates many <span class="inline-code">task</span> records.</p>
    <span></span>
    <h4 class="title-break">DELETE /api/tasks/:id</h4>
    <p>Deletes a <span class="inline-code">task</span> whose <span class="inline-code">id</span> mathches the ":id" parameter.</p>
    <span></span>
    <h4 class="title-break">PUT /api/tasks/:id</h4>
    <p>Updates a <span class="inline-code">task</span> whose <span class="inline-code">id</span> mathches the ":id" parameter.</p>
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Message Controller</h3>
    <span></span>
    <h4 class="title-break">GET /api/messages</h4>
    <p>Returns an array of <span class="inline-code">message</span> objects.</p>
    <span></span>
    <h4 class="title-break">GET /api/messages/:id</h4>
    <p>Returns a <span class="inline-code">message</span> object whose <span class="inline-code">id</span> matches the ":id" parameter.</p>
    <span></span>
    <h4 class="title-break">POST /api/messages</h4>
    <p>Creates a <span class="inline-code">message</span> record.</p>
    <span></span>
    <h4 class="title-break">DELETE /api/messages/:id</h4>
    <p>Deletes a <span class="inline-code">message</span> whose <span class="inline-code">id</span> mathches the ":id" parameter.</p>
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Media Controller</h3>
    <span></span>
    <h4 class="title-break">GET /api/media</h4>
    <p>Returns an array of <span class="inline-code">media</span> objects.</p>
    <span></span>
    <h4 class="title-break">GET /api/media/:id</h4>
    <p>Returns a <span class="inline-code">media</span> object whose <span class="inline-code">id</span> matches the ":id" parameter.</p>
    <span></span>
    <h4 class="title-break">POST /api/media</h4>
    <p>Creates a <span class="inline-code">media</span> record.</p>
    <span></span>
    <h4 class="title-break">DELETE /api/media/:id</h4>
    <p>Deletes a <span class="inline-code">media</span> whose <span class="inline-code">id</span> mathches the ":id" parameter.</p>
  </div>
  <div class="col l12 controller">
    <h3 class="highlight-title">Request Controller</h3>
    <span></span>
    <h4 class="title-break">GET /api/requests</h4>
    <p>Returns an array of <span class="inline-code">request</span> objects. A <span class="inline-code">request</span> can have many associated <span class="inline-code">messages</span>, each with <span class="inline-code">id</span> of the <span class="inline-code">request</span> as a foreign key value.</p>
     <span></span>
    <h4 class="title-break">GET /api/requests/:id</h4>
    <p>Returns a <span class="inline-code">request</span> object whose <span class="inline-code">id</span> matches the ":id" parameter.</p>
    <span></span>
    <h4 class="title-break">PUT /api/requests/:id</h4>
    <p>Updates a <span class="inline-code">requests</span> whose <span class="inline-code">id</span> mathches the ":id" parameter.</p>
    <span></span>
    <h4 class="title-break">POST /api/requests</h4>
    <p>Creates a <span class="inline-code">request</span> record.</p>
    <span></span>
    <h4 class="title-break">DELETE /api/requests/:id</h4>
    <p>Deletes a <span class="inline-code">request</span> whose <span class="inline-code">id</span> mathches the ":id" parameter.</p>
  </div>
</div>


<div class="row">
  <div class="col l12 controller">
    <h2>Data Shapes</h2>
    <p>For implementation details, refer to <span class="inline-code">src/migration/deploy</span> within the api source code.</p>
  </div>
</div>

<!--- ORG -->
<div class="row">
  <div class="col l12 controller">
    <h3 class="highlight-title">org </h3>
    <p style="color: darkred">NOTE: orgs are currently created manually</p>
    <h4>Schema</h4>
    <div class="schema-div"> 
      <p class="schema-line">
        <span class="schema-key">id</span>: <span class="schema-num">serial</span>;  <span class="schema-comment">// UNIQUE constraint</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">name</span>: <span class="schema-string">text NOT NULL</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">sms_number</span>:  <span class="schema-string">text NOT NULL</span>; <span class="schema-comment">// must fit the format "+15555555555"</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">logo</span>: <span class="schema-string">string</span>;
      </p>
    </div>
    <h4>Example</h4>
    <pre>
      <code
        class="language-JSON"
        data-jsonp="https://api.github.com/repos/leaverou/prism/contents/prism.js"
      >
        {
          "id": 3, 
          "name": "IDEO.org",
          "sms_number": "+15555555555", 
          "logo": "https://url_to_logo.png"
        }
      </code>
      <code>psql=# INSERT INTO org (name, sms_number) VALUES ('ACME.org', '+15555555555');</code>
      <code>psql=# INSERT INTO org (name, sms_number, logo) VALUES ('ACME.org', '+15555555555', 'https://s3...');</code>
    </pre>
  </div> 
</div>

<!-- USER -->
<div class="row">
  <div class="col l12 controller">
    <h3 class="highlight-title">user</h3>
    <h4>Schema</h4>
    <div class="schema-div"> 
      <p class="schema-line">
        <span class="schema-key">id</span>: <span class="schema-num">serial NOT NULL</span>;  <span class="schema-comment">// PRIMARY KEY constraint</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">first_name</span>: <span class="schema-string">text NOT NULL</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">last_name</span>: <span class="schema-string">text NOT NULL</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">email</span>: <span class="schema-string">text NOT NULL</span>; <span class="schema-comment">// UNIQUE CONSTRAINT</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">phone</span>: <span class="schema-string">text</span>; <span class="schema-comment">+1 added after 10-digit number is stripped of non-digit characters</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">coach_id</span>: <span class="schema-num">integer</span>; <span class="schema-comment">// FOREIGN KEY, also an INDEX</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">org_id</span>: <span class="schema-num">integer NOT NULL</span>; <span class="schema-comment">// FOREIGN KEY, also an INDEX</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">color</span>: <span class="schema-string">text</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">goals</span>: <span class="schema-string">text ARRAY</span>; <span class="schema-comment">DEFAULT '{}'::text[]</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">status</span>: <span class="schema-string">text NOT NULL</span>; <span class="schema-comment">// CHECK 'AWAITING_HELP' | 'WORKING' | 'NON_RESPONSIVE' , currently not using 'NON_RESPONSIVE'</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">type</span>: <span class="schema-string">text NOT NULL</span>; <span class="schema-comment">// CHECK 'Client' | 'Coach' | 'Admin' | "Superadmin'</span>
      </p>
        <p class="schema-line">
        <span class="schema-key">created_at</span>: <span class="schema-date">timestamptz</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">updated_at</span>: <span class="schema-date">timestamptz</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">platform</span>: <span class="schema-string">text</span>; <span class="schema-comment">// CHECK 'SMS' | 'FBOOK' , set to 'SMS' if submitted as null</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">image</span>: <span class="schema-string">text</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">follow_up_date</span>: <span class="schema-date">timestamptz</span>;
      </p>
      <p class="schema-line">
        <span class="schema-key">plan_url</span>: <span class="schema-string">text</span>; <span class="schema-comment">// currently unused</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">checkin_times</span>: <span class="schema-json">JSON[]</span>; <span class="schema-comment">DEFAULT '{}'::JSON[]</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">topic</span>: <span class="schema-string">text</span>; <span class="schema-comment">// determines next bot script</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">fb_id</span>: <span class="schema-string">text</span>; <span class="schema-comment">// only used if user is assigned to Facebook Messenger</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">temp_help_response</span>: <span class="schema-string">text</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">auth0_id</span>: <span class="schema-string">text</span>; <span class="schema-comment">// not used for clients</span>
      </p>
    </div>
    <h4>Example</h4>
    <pre>
      <code
        class="language-JSON"
        data-jsonp="https://api.github.com/repos/leaverou/prism/contents/prism.js"
      >
        {
          "id": 111, 
          "first_name": "MC",
          "last_name": "Hammer",
          "email": "mc@hammer.net",
          "phone": "+15555555",
          "coach_id": 222,
          "org_id": 73,
          "color": null, 
          "goals": [
            "Increase credit score to a minimum of 650"
          ],
          "status": "WORKING", 
          "type": "Coach", 
          "created_at": "2018-07-31T15:46:26.306Z",
          "updated_at": "2018-08-01T13:41:41.332Z",
          "platform": 'SMS', 
          "image": null, 
          "follow_up_date": "2018-09-19T16:13:08.550Z",
          "plan_url": null,
          "checkin_times": [
            {
                "topic": "introtask",
                "message": "startprompt",
                "time": 1536847200042
            }
          ],
          "topic": "introtask",
          "fb_id": null, 
          "temp_help_response": null,
          "auth0_id": null
      }
      </code>
    </pre>
  </div>
</div>


<!--- TASK -->
<div class="row">
  <div class="col l12 controller">
    <h3 class="highlight-title">task</h3>
    <h4>Schema</h4>
    <div class="schema-div"> 
      <p class="schema-line">
        <span class="schema-key">id</span>: <span class="schema-num">serial NOT NULL</span>; <span class="schema-comment">// PRIMARY KEY</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">title</span>: <span class="schema-string">text NOT NULL</span>;
      </p>
      <p class="schema-line">
        <span class="schema-key">category</span>: <span class="schema-string">text NOT NULL</span>;
      </p>
      <p class="schema-line">
        <span class="schema-key">description</span>: <span class="schema-string">text</span>;
      </p>
      <p class="schema-line">
        <span class="schema-key">status</span>: <span class="schema-string">text</span>; <span class="schema-comment">// CHECK 'ACTIVE' | 'COMPLETED' | 'ARCHIVED'</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">created_by</span>: <span class="schema-num">integer</span>; <span class="schema-comment">// INDEX</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">user_id</span>: <span class="schema-num">integer</span>; <span class="schema-comment">// INDEX</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">difficulty</span>: <span class="schema-num">text</span>; <span class="schema-comment">// CHECK 'EASY' | 'MODERATE' | 'DIFFICULT'</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">date_assigned</span>: <span class="schema-date">date NOT NULL</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">date_created</span>: <span class="schema-date">date NOT NULL</span>; <span class="schema-comment">// DEFAULT current date</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">date_completed </span>: <span class="schema-date">date</span>;
      </p>
      <p class="schema-line">
        <span class="schema-key">recurring </span>: <span class="schema-json">json[]</span>; <span class="schema-comment">// DEFAULT '{}'::JSON[]</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">steps </span>: <span class="schema-num">integer</span>;
      </p>
      <p class="schema-line">
        <span class="schema-key">order </span>: <span class="schema-num">integer</span>;
      </p>
      <p class="schema-line">
        <span class="schema-key">original_task_id </span>: <span class="schema-num">integer</span>;
      </p>
    </div>
    <h4>Example</h4>
    <pre>
    <code
      class="language-JSON"
      data-jsonp="https://api.github.com/repos/leaverou/prism/contents/prism.js"
    >
      {
        "id": 918,
        "title": "Work on developing your small business",
        "category": "custom",
        "description": "There is a lot that goes into owning and operating a small business",
        "status": "ACTIVE",
        "created_by": 67,
        "user_id": 941,
        "difficulty": null,
        "date_created": "2018-08-08T00:00:00.000Z",
        "date_completed": null,
        "date_assigned": "2018-08-08T00:00:00.000Z",
        "recurring": {
            "frequency": 1,
            "duration": 30
        },
        "steps": [
            {
                "task_id": null,
                "text": "Call the Small Business Development Center 651.259.7423 to set up a free appointment."
            },
            {
                "task_id": null,
                "text": "Ask specifically about doing a Profit/Loss sheet as well as learning about taxes."
            }
        ],
        "order": 2,
        "original_task_id": null
    }
    </code>
    </pre>
  </div>
</div>

<!--- MEDIA -->
<div class="row">
  <div class="col l12 controller">
    <h3 class="highlight-title">media</h3>
    <h4>Schema</h4>
    <div class="schema-div"> 
      <p class="schema-line">
        <span class="schema-key">id</span>: <span class="schema-num">serial NOT NULL</span>;  <span class="schema-comment">// PRIMARY KEY constraint</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">task_id</span>: <span class="schema-num">integer</span>; <span class="schema-comment">// INDEX</span> 
      </p>
      <p class="schema-line">
        <span class="schema-key">title</span>: <span class="schema-string">text  NOT NULL</span>;  
      </p>
      <p class="schema-line">
        <span class="schema-key">category</span>: <span class="schema-string">text  NOT NULL</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">description</span>: <span class="schema-string">text</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">url</span>: <span class="schema-string">text</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">image</span>: <span class="schema-string">text</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">published_by </span>: <span class="schema-num">integer</span>; <span class="schema-comment">// DEFAULT -1, INDEX</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">type</span>: <span class="schema-string">text</span>; <span class="schema-comment">// CHECK 'TASK_CONTENT' | 'TASK_RESOURCE' | 'STORY' | 'GENERAL_EDUCATION'</span>
      </p>
    </div>
    <h4>Example</h4>
    <pre>
    <code
      class="language-JSON"
      data-jsonp="https://api.github.com/repos/leaverou/prism/contents/prism.js"
    >
      {
        "id": 46,
        "task_id": null,
        "title": "Allene's Story",
        "category": "STORY",
        "description": "Check out Allene's story and learn how financial coaching helped her.",
        "url": "https://...",
        "image": "https://s3.amazonaws...",
        "published_by": 3,
        "type": "STORY"
      }
    </code>
    </pre>
  </div>
</div>

<!--- MESSAGE -->
<div class="row">
  <div class="col l12 controller">
    <h3 class="highlight-title">message</h3>
    <h4>Schema</h4>
    <div class="schema-div"> 
      <p class="schema-line">
        <span class="schema-key">id</span>: <span class="schema-num">serial NOT NULL</span>;  <span class="schema-comment">// PRIMARY KEY constraint</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">text</span>: <span class="schema-string">text  NOT NULL</span>;  
      </p>
      <p class="schema-line">
        <span class="schema-key">to_user</span>: <span class="schema-num">integer  NOT NULL</span>; <span class="schema-comment">// INDEX</span> 
      </p>
      <p class="schema-line">
        <span class="schema-key">from_user</span>: <span class="schema-num">integer  NOT NULL</span>; <span class="schema-comment">// INDEX</span> 
      </p>
      <p class="schema-line">
        <span class="schema-key">media_id</span>: <span class="schema-num">integer</span>; <span class="schema-comment">// INDEX</span> 
      </p>
      <p class="schema-line">
        <span class="schema-key">request_id</span>: <span class="schema-num">integer</span>; <span class="schema-comment">// INDEX</span> 
      </p>
      <p class="schema-line">
        <span class="schema-key">timestamp</span>: <span class="schema-date">timestamptz</span>; <span class="schema-comment">// DEFAULT current time, NOT NULL</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">request_id</span>: <span class="schema-json">JSON[]</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">topic</span>: <span class="schema-json">text</span>;
      </p>
    </div>
    <h4>Example</h4>
    <pre>
    <code
      class="language-JSON"
      data-jsonp="https://api.github.com/repos/leaverou/prism/contents/prism.js"
    >
      {
        "id": 7630,
        "text": "Here's something inspiring to check out between being a superstar and knocking out all your action items:",
        "to_user": 280,
        "from_user": 41,
        "media_id": null,
        "request_id": null,
        "timestamp": "2018-07-22T14:55:53.564Z",
        "responses": null,
        "topic": "checkin"
      }
    </code>
    </pre>
  </div>
</div>

<!--- VIEWED_MEDIA -->
<div class="row">
  <div class="col l12 controller">
    <h3 class="highlight-title">viewed_media</h3>
    <h4>Schema</h4>
    <div class="schema-div"> 
      <p class="schema-line">
        <span class="schema-key">id</span>: <span class="schema-num">serial</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">client_id</span>: <span class="schema-num">integer NOT NULL</span>; 
      </p>
      <p class="schema-line">
        <span class="schema-key">media_id</span>: <span class="schema-num">integer NOT NULL</span>; 
      </p>
    </div>
    <h4>Example</h4>
    <pre>
    <code
      class="language-JSON"
      data-jsonp="https://api.github.com/repos/leaverou/prism/contents/prism.js"
    >
      {
        "id": 174,
        "client_id": 297,
        "media_id": 44
      }
    </code>
    </pre>
  </div>
</div>

<!--- REQUEST -->
<div class="row">
  <div class="col l12 controller">
    <h3 class="highlight-title">request</h3>
    <h4>Schema</h4>
    <div class="schema-div"> 
      <p class="schema-line">
        <span class="schema-key">id</span>: <span class="schema-num">serial NOT NULL</span>;  <span class="schema-comment">// PRIMARY KEY constraint</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">status</span>: <span class="schema-string">text</span>; <span class="schema-comment">// CHECK 'NEEDS_ASSISTANCE' | 'REPLIED' | 'RESOLVED'</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">user_id</span>: <span class="schema-num">integer  NOT NULL</span>;  <span class="schema-comment">// INDEX</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">task_id</span>: <span class="schema-num">integer  NOT NULL</span>;  <span class="schema-comment">// INDEX</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">created_at</span>: <span class="schema-date">timestamptz</span>;  <span class="schema-comment">// DEFAULT current time</span>
      </p>
      <p class="schema-line">
        <span class="schema-key">updated_at</span>: <span class="schema-date">timestamptz</span>;  
      </p>
    </div>
    <h4>Example</h4>
    <pre>
    <code
      class="language-JSON"
      data-jsonp="https://api.github.com/repos/leaverou/prism/contents/prism.js"
    >
      {
        "id": 52,
        "status": "REPLIED",
        "user_id": 203,
        "task_id": 377,
        "created_at": "2018-06-30T23:39:33.230Z",
        "updated_at": "2018-07-18T15:49:42.882Z"
      }
    </code>
    </pre>
  </div>
</div>

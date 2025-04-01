# Events

The Event content type was created to easily list upcoming private and public events, allowing you to attach all the necessary documents and links for each event.

### Design Reference

* [Events Node Page](https://www.sketch.com/s/6ecd71b4-af49-42b4-9d65-0e9d20134b89/a/PGLb1yL)
* [Events Landing Page](https://www.sketch.com/s/6ecd71b4-af49-42b4-9d65-0e9d20134b89/a/dlMkJzZ)

### Requirements

**Events content type**

* Node page that will list all event details through the fields and using layout builder.
* Events with type "Private" will be created with passwords that users can only access it using that password.
* Register and add to calendar buttons will be removed from the node page after the end end date or if the admin user manually remove it.
* This will include working on the content type URL path, schema.org, and metatag.
* Buttons available will only be the register or add to canlendar on the media header.
* The date will be displayed above the title.

**Events landing page with search view**

* Landing page using the same features available on the MVP.
* Adding "Featured Event" view that will take the most recent event or manually added to the entityqueue.
* Search view of the all types of events similar to what already strutcutred and themed for the main search and news search pages.

**Events Category Pages**

* Landing page that will display the events list based on a specific cateogry term.
* The page will show the filters same as the main landing page.

**Featured Events**

* Two views will be created that will be added manually or through entityqueue.
* One view will display one event horizontally and the other view will display three events vertically.

Subsequently, the UNHCR team made additional requests that fell outside the initial project scope. As a result, a new Statement of Work (SOW) was drafted and executed to encompass these requested changes.

* When an admin user selects the event type "Private" and adds the password, the protection will only be applied to the layout builder section. Anonymous users can view the page but will see a message under the media header that the details are private and need to add a password to view it.
  * Remove the no-index option for private events.
  * When the type is changed back to "Public," the anonymous users can view the layout builder content.

### Viewing

* [Events Page](https://www.unhcr.org/events/88th-meeting-standing-committee)
* [UNHCR Events Landing Page](https://www.unhcr.org/what-we-do/forums-and-committees)

### Important Notes

#### Document List Protected Password

* The admin user can add a document list inside the layout builder for private events.
* There should be a way (checkbox) to connect this block to the private event and make the PDF files password-protected.
* Any anonymous user must only add the password once to access the page and the files.
* When the event is public, the document list can be added to another public page, and the files will be accessible to everyone.
* Related events to only show the events based on type: private event only to show related private events, and public event to show related public events.
* Resetting a new password/ remove the password.
* The password for the files is to be the same as the password on the private event.
* To have a protected file using the link only.

#### Invite Only Event

We have added a new event category called 'Invite Only' alongside the existing 'public event' and 'private event' options. This category now appears in the events grid and operates just like a 'Public event,' allowing everyone to access all the content. The only difference is the name.

### Acceptance Criteria

* As an editor, I can create a news story page.
* As an editor, I can add blocks to my page and layout the news articles as per the design styles easily.
* As an editor, I have the flexibility I need to create news stories in the layout that best suits my article.
* As an editor, I can add an image (required).
* As an editor, I can add a button and link (colour variations for buttons as per design styles).
* As a site end user, I can see the news story as expected (desktop).
* As a site end user, I can see the news story as expected (mobile).
* As a designer, I am happy that the design is appearing as expected (desktop).
* As a designer, I am happy that the design is appearing as expected (mobile).
* As a developer, I can easily change the display styles of the news stories.

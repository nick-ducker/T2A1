# T2A1 - Workbook
#### Nick Ducker

## Q1
<details>
<summary></summary>
<br>

* **Typical Rails Architecture**
  The typical Ruby on Rails web application is based on the Model, View, Controller (MVC) architecture. This architecture splits up the code of an app into three distinct parts, each responsible for their specific role in the apps functionality. 

  IMG

  When a web browser makes a request to a Rails application, first the web server will check if what has been requested is publically and locally available. If it is, this is then returned without having to delve into the Rails application. An example of this would be a 404 page.

  However, if the request cannot be completed by the web server, it will then hit the Rails router, which will then call on the corresponding controller action for the request. The controller is the "director" of the application, making decisions about the applications logic, requesting resources and handing them off to other parts of the app according to its called action.

  The model is solely responsible for interacting with the application database and only interacts with the controller and the database. It stores and pulls data objects to and from the database in accordance with it's business logic. This differs from the application logic, as it sets the "rules" for how a database object will behave. The controller might submit a buch of data to the model, which is then checked against this logic before being stored in the database, or the controller might request a specific object, which the model will then pull from the database and pass back to the controller.

  The view is the part of the app responsible for formatting data into a human readable format. The view only communicates with the controller. Generally speaking, after requesting data objects from the model, the controller will then pass these objects or parts of these objects to the view. The view in turn will put these objects into a dynamically generated html document for example, but could also render a JSON, XML or some other human readable format. When this is done, it will hand the file back to the controller.

  Finally, the controller will pass this completed view, which has been built with the model pulled objects, according to the controller logic and the views rendering template, back to the browser to be displayed to the user. 
  <details>
    <summary>Resources</summary>

    https://betterexplained.com/articles/intermediate-rails-understanding-models-views-and-controllers/
  </details>
</details>

## Q2
<details>
<summary></summary>
<br>

* **Common Database**
  PostgreSQL is a common database used in web applications. While it is currently one of the most popular database management systems (DBMS) in use today, there are also some specific drawbacks to it. 

  Pro's
    * PostgreSQL is an older, open source DBMS. Due to this, it is compatible with many languages with many OS's such as Linux, Mac and Windows. Additionally this means that PostgreSQL is also extremely stable and easy to intergrate into new and existing projects. 
    * As an open source DBMS, PostgreSQL is free to use for your application in whatever capacity you need it to operate in, no questions asked.
    * As an open source DBMS, PostgreSQL has a large and diverse community of developers who are consistently contributing to the codebase.
    * Again, tying into the above points, because of its age and stability, you can install PostgreSQL and, after some configuration, easily use it for simple operations without having to worry too much about maintenence.
    * It is the closest DBMS to full SQL compliance (what does that mean?)
    * PostgreSQL is able to handle multiple users concurrently requesting and storing data at the same time. This means data is less likely to become corrupted during these operations and results in a much more robust web application.
    * 

  Cons's
    * As an open source project, PostgreSQL is always changing. These changes must be documented but the standard of documentation is not consistent across the board. This essentially means you may spend a lot of time searching for documentation surrounding some of PostgreSQL darker corners. 
    * While PostgreSQL's ability to handle multiple users is one of its perks, the way it does this can become a con. When a connection is made, it is allocated approximately 10mb of memory. Naturally, this can add up quite quickly and is overkill for some operations.
    * There are not as many tools available to aid with the management of a PostgreSQL database.  
  <details>
    <summary>Resources</summary>
    https://www.digitalocean.com/community/tutorials/sqlite-vs-mysql-vs-postgresql-a-comparison-of-relational-database-management-systems
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

## Q
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
  </details>
</details>

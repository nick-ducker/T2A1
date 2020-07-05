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

  Cons's
    * As an open source project, PostgreSQL is always changing. These changes must be documented but the standard of documentation is not consistent across the board. This essentially means you may spend a lot of time searching for documentation surrounding some of PostgreSQL darker corners. 
    * While PostgreSQL's ability to handle multiple users is one of its perks, the way it does this can become a con. When a connection is made, it is allocated approximately 10mb of memory. Naturally, this can add up quite quickly and is overkill for some operations.
    * There are not as many tools available to aid with the management of a PostgreSQL database.  
  <details>
    <summary>Resources</summary>
    https://www.digitalocean.com/community/tutorials/sqlite-vs-mysql-vs-postgresql-a-comparison-of-relational-database-management-systems
  </details>
</details>

## Q3
<details>
<summary></summary>
<br>

* **Agile Development**
  In understanding how to implement an Agile development methodology, first we need to understand the difference between an agile methodology and the Agile "philosophy" as a whole.

  The Agile development philosopy outlines broad ways of thinking about our projects and managing them. This is different to Agile methodologies, that build onto this principle and practical strategies for actually doing work in an Agile way.

  In this example, I will use the Scrum methodology to illustrate how a team would use Agile development for a project.

  1. Start with a strategy meeting. The idea behind this meeting is to layout the big picture and figure out what the core values of the project/product will be. Additionally this is the point where there needs to be buy-in from all levels of the project, from client to management. 

 2. The next stage is to plan out the product backlog. This will be the "master" pool of work to get done which is consistently created and updated in conjuction with the client. The idea here is to plan out/update the goals for the project, rather than the specific features, and identify measurable ways of acheiving said goals. This promotes a more agile mindset as it moves away from planning absolutely everything before the work begins and allows for flexibility in meeting the goal. 

3. And just before the work begins, just like the product backlog, it can be worth thinking about what the release timeline will look like. This means deciding what you MVP will look like and where you want to take it from there on a loose "release by release" basis. 

4. At this stage, it's time to sprint. A sprint is a period of time, between 2-4 weeks usually, where the team will actually try to impliment some of the items in the product backlog by moving them into a spring backlog. Generally speaking, when the sprint has started, the team will work towards those goals and revise once the sprint has been completed. The sprint length will usually stay the same length for the duration of the project also. Towards the end of a sprint, the team will do a review and then retrospective. The review is meant to be an evaluation of what has been done during the sprint, what seems like the next step and the product owner ultimately deciding if that iteration of the project will be released. The retrospective is more of an evaluation of the effectiveness of the sprint as a whole, looking at what worked well and what can be improved. It should also be mentioned that during this time their is consistent liason between the developers and the client, in order to make sure their staying on target. 

5. The team begins another sprint, creates another sprint backlog and the cycle begins again. This will continue until the end of the project of the needs of the project change. This could look like the final release of a product, or a massive change in product direction.
  <details>
    <summary>Resources</summary>
    https://plan.io/blog/ultimate-guide-to-implementing-agile-project-management-and-scrum/
    https://www.atlassian.com/agile/scrum

  </details>
</details>

## Q4
<details>
<summary></summary>
<br>

* **Standard Source Control Workflow**
  
  <details>
    <summary>Resources</summary>
    https://docs.microsoft.com/en-us/azure/devops/repos/git/git-branching-guidance?view=azure-devops
    https://dev.to/fpolster/how-to-work-with-git-an-overview-of-git-workflows-1icb
  </details>
</details>

## Q5
<details>
<summary></summary>
<br>

* **Automated Testing**
  <details>
    <summary>Resources</summary>
    https://www.w3schools.in/software-testing/types/#Automation_Testing
    https://smartbear.com/learn/automated-testing/what-is-automated-testing/
  </details>
</details>

## Q6
<details>
<summary></summary>
<br>

* **Security requirements**
  <details>
    <summary>Resources</summary>
    https://www.proserveit.com/blog/information-security-requirements
    https://hackr.io/blog/mobile-app-security-standards-checklist
  </details>
</details>

## Q7
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
    
  </details>
</details>

## Q8
<details>
<summary></summary>
<br>
  <details>
    <summary>Resources</summary>
    https://gbksoft.com/blog/legal-pitfalls-of-app-development/
    https://legal123.com.au/how-to-guide/how-to-develop-an-app-infographic/
    https://www.oaic.gov.au/privacy/guidance-and-advice/mobile-privacy-a-better-practice-guide-for-mobile-app-developers/

    #### [Sources]---
1. [Privacy Law in Australia | Go To Court Lawyers](https://www.youtube.com/watch?v=MQc-UjE560A)
2. [Privacy and data protection | How to engage in cyber policy](https://www.youtube.com/watch?v=ZNEPaGFApX4)
3. [Data protection and privacy in Australia | McCullough Robertson](https://www.lexology.com/library/detail.aspx?g=7598b614-4431-4429-9897-c83e40682865#:~:text=There%20is%20no%20such%20requirement,which%20the%20information%20was%20collected.)
4. [Australian Privacy Principles | Australian Government](https://www.oaic.gov.au/privacy/australian-privacy-principles/)

  </details>
</details>

## Q9
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

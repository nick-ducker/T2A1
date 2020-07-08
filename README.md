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
  The goal of implementing an effective source control workflow is to mitigate the difficulty and risk in working on a codebase. 

  Developers will often have to work on portions of the same code-base simultaneously. Issues can arise when one developer unknowingly overwrites another developers code, or two developers work on seperate version of the software but cannot make them compatible. 

  Using services, such as Git and Mercurial, developers now have a lot more flexibility in how they approach these sorts of issues.

  A common strategy is to develop features using branches. Branches allow developers to create a "copy" of the trunk that they can work on independent to the main codebase. It should be noted that one of the advantages of using Git, is that when a project is branched, the code-base is not actually copied in its entirety. Git essentially uses "pointers" to keep track of what and what does not exist in a codebase at any point in time.
  
  Usually a branch is created for each new feature or bugfix, worked on and then merged back into the trunk when it is ready. Developers can then evaluates the differences between the trunk and the branch if the trunk has changed since the initial branch before the final merge.

  The upshot of this workflow is it's easier to keep the trunk version of the software stable and ready for release if it's not deployed already. This also makes it much easier to isolate the changes that happen to the trunk branch through the branches that were worked on. 

  A downside to this approach is that it can make testing more difficult if a developer branches a copy of the trunk, and then the trunk is further modified or added two after the branch has been created. This increases the likelihood of bugs once the branch is merged back into the trunk and increases the amount of time it takes to review the merge before it's committed.
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
  Before or early on in a projects timeline it is important to consider the role of testing. There are many different approaches to testing and no "right answer" as the needs of every project differs. Automated unit testing is just one small way that a developer can test software in order to ensure it functions correctly.

  Unit testing is testing small bits of code to ensure they are giving the desired output. For example, if you designed a function, ideally it would take an input, and give you some kind of output. Unit testing looks at these smaller, fundamental functions and matches expected outputs with actual outputs.
  
  Using a test driven development (TDD) approach to create automated unit tests, the developer would first think about the function of the program and design the tests before the program itself. By using this approach, the developer intrinsically lays the foundation for a codebase that is more easily tested.

  Once the test have been planned, the develop would then either create their own programmable tests or use third party software/programs to do so.

  The next step is to actually create functions that pass these tests, and then refactor these functions into the wanted end program. Throughout the entire process the tests should always "pass". It is easy to imagine how much fore-thought needs to go into the program before a single line of code is written in order to create comprehensive TDD compliant unit tests for the lifetime of the project.

  A huge advantage to using a TDD approach to create unit tests and then a program that will pass those tests is that it creates a robust code-base. If many of the smaller moving parts of a program are not intrinsically dependent on the whole program in order to function, they can be easily tested, debugged, modified and re-used elsewhere, potentially even in a different codebase.
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

  Talk about reqs re australian law

  Things to cover 
    - user information
    - encryption of credentials
    - storage of information
    - payment details
    - payment processing (PCI)
    - sessions
    - monitoring

  For a marketplace web-application based on the Rails framework, there are some security requirements worth considering.

  If we think about what a marketplace needs from a user in order to function correctly, we can break the term "security requirements" down into "How do we protect users in these areas?"

  Most marketplace apps rely on user to user interaction. Because of this, we need to differentiate our users, which in turns means storing some kind of information, unique to each user. This could be as simple as a password and username, to a full documentation of email, phone number and address. Regardless, the approach should be the same in that we will be storing data unique to a single individual, and that data should be protected and private from other users/attackers. 

  Additionally, sensitive credentials, such as passwords, phone numbers and addresses, could be encrypted to further protect user information from improper use. This would certainly be a requirement if user profiles contained any identifying information and is good practice in general for password storage regardless.

  By the above argument, we can see that we will need to user a database system in order to store credentials, and ultimately, user products the web application. Therefore, we will be required to protect the database from SQL injection or other attacks that could compromise the database. 

  Another aspect for consideration is payment. Arguably the easiest way to "avoid" dealing with payment logistics is to have the two users sort out how they will arrange payment outside of the web application altogether. 

  Otherwise, it is imperative that we consider the PCI standards for payment processing when designing our application. This set of guiding principles ensures that payments systems are secure and are required if you want to conduct transactions using large companies products such as Visa and Mastercard.

  Tying into this, if we are planning save user credit card information (if they elect to do so), this is very sensitive security area. Steps should be taken to ensure all data is encrypted and saved to the database in a way that cannot be easily accessed by developers or attackers.

  User sessions will also have the be considered. As this is a marketplace, presumably users will be able to log-in in order to post things they wish to sell or log in in order to purchase items. This means a session token will be used. Because of this we will need to consider how we protect these session tokens from being discovered by attackers, which would allow them to totally skip a log-in and "impersonate" a user using their token. 

  Lastly, as a marketplace app where people can by and sell items, there needs to be some kind of monitoring around what is being sold. If the marketplace is for a particular kind of product, how are we going to ensure those are the products that are being sold. Additionally, how do we stop users from selling illegal items and filter out scammers.

  <details>
    <summary>Resources</summary>
    https://hackr.io/blog/mobile-app-security-standards-checklist

    https://www.lrswebsolutions.com/Blog/Posts/32/Learn-More/2018/11/11-Best-Practices-for-Developing-Secure-Web-Applications/blog-post/
    https://www.rsisecurity.com/compliance-advisory-services/pci/
    https://martinfowler.com/articles/web-security-basics.html
  </details>
</details>

## Q7
<details>
<summary></summary>
<br>

* **Common Methods for protecting information**
  
  I will address the points I made in questions 6 in this question and talk about methods for actually implementing the security relevant to this marketplace application.

  Taking information from a user and storing it in a database creates several security concerns.

  There is potential for SQL injection through a HTML form. The first line of defence here is using Rails validators. Rails validators allow us, in Ruby, to validate an input taken from a submitted form. The upshot of this approach is that the input can be checked before it hits a database or is potentially returned to a HTML/CSS/JS rendering browser. In this way we can safely handle potentially dangerous strings and reject them before they end up at their target destination in the framework. 

  Its worth pointing out that if input doesnt pass validation, we want to reject that input and not render it back to the HTML document, as the string itself could be designed to target the front end encoding of the web application.

  Validation will be extremely important for our marketplace application, as users will often be interacting with different forms in order to create accounts, sell items, buy items and search for items. Using html elements to ensure the correct type of input is used for each field is one step that should be taken. Additionally, server side validation should take place in order reject or filter out any unwanted inputs. This can be done with rails using strong parameters, permitting only the required fields. This also has the upshot of instrinsically parameter binding our permitted parameters to make SQL injection almost impossible. Parameter binding is simply assigning the parameters to variables, then passing those variables to the SQL statement, rather than directly interpolating the potentially malicious strings into the statement.
  
  We can also control what hits the database by using validation in our models thanks to the Rails validate feature. With this we gain even further control over what hits our database in the first place. A form input that does not pass model validation will never interact with the database.

  Moving on, we can look at how we will protect the users data once it is in the actual database. It would be a breach of security and privacy if a developer could simply interact with the back-end of the site and pull sensitive information, such as emails, passwords, addresses, phone numbers and any other personal information. 

  The first step is to ensure that the web application will have an SSL certificate when it is deployed. This will ensure that information sent between the client and server is secure, encrypted and unable to be intercepted by an attacker "listening in". Rails provides easy options for making production web applications use https (SSL compliant connections) by default.

  The next step is to ensure that the information is encrypted when it is stored in the database. 

  Many 3rd party databases provide standing encryption. That is, the whole database is encrypted by default. However, this doesn't provide protection if an attacker gets hold of the database and is able to access it directly. The database will simply unencrypt and serve up whatever is requested.

  The way we can address this issue is by using application level encryption. This is where we encrypt the information before it hits the database, so if an attacker were to pull gain access to the database, they would simply get encrypted responses. There are a few ways to do this, and there's a many Ruby gems that allow us to easily encrypt and decrypt without directly interacting with the keys in a way that would compromise privacy. Making an educated decision about this should be a point of discussion during development. 

  Related to encryption and data transfer, ensuring transactions are safe and secure will be a big part of this application. An easier way to approach this is to use a third party payment processing service, such as stripe or paypal. This would require a secure redirect and return to and from the third party processer. Given the resources needed to ensure that payments and payment details are not compromised or intercepted, it would be worth weighing the requirements and cost of having a PCI compliant system if one is not already in place with the cost of using a third party provider.

  If PCI compliance is the goal, then heavy reference to the documentation will be needed to ensure that the overall system is safe from being compromised. This looks like ensuring that the system is firewalled properly from any external source, and from internal sources also. SSL is an absolute must in this case as users will be sending credit card details between their client and your server. Encryption of these details if they are being stored is also mandatory. Regular testing and updating must also be a part of the strategy, as risks change and the system ages. 



  <details>
    <summary>Resources</summary>
    https://martinfowler.com/articles/web-security-basics.html
    https://ankane.org/sensitive-data-rails 
    https://www.netsparker.com/blog/web-security/definitive-pci-dss-compliance-guide-web-application-security/
    https://guides.rubyonrails.org/security.html
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

    https://www.oaic.gov.au/privacy/the-privacy-act/rights-and-responsibilities/
    https://www.business.gov.au/Risk-management/Cyber-security/How-to-protect-your-customers-information
    https://www.oaic.gov.au/privacy/australian-privacy-principles

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

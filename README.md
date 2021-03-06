# README

# Identification of the problem being solved.
There are many Market place Applications out there, however, at techStacker our focus is the ability to be able to buy and sell Tech gear whether it be new, used, and good condition. Overwhelming options can deter buyers away. New products constantly being bought, contribute to more waste. techStacker is an easy to use application with no fees in order to help more buyers and sellers to connect while putting their old tech to use without it going to waste.

# Why is it a problem that needs solving?
Our focus is to allow Tech gear to be accessible to everyone. In todays day and age, tech is always evolving and it can be difficult to keep up with all the latest releases of products. New tech products are constantly being purchased by consumers while the old versions of it are collecting dust inside drawers; techStacker will solve this problem of old tech going to waste, by opening up a marketplace for sellers to list their no longer required products for any interested buyers. Because it will have a pure focus of tech gear, it will have the attraction of users to the techStacker application, rather than being overwhelmed by the choice of other martketplace applications that focus on other categories.

# Link to Website:
https://techstacker.herokuapp.com/
# Github Repository:
https://github.com/Krishtronomy/tech-stacker

# Description

### Purpose
The purpose of the application is for users to be able to buy and sell Tech Gear, making it an easy to use platform allowing users to sell their old gear that might not be used anymore. Allowing for a recycle of products (one mans trash is another mans treasure).

### Functionality / Features
The Marketplace application has the ability to sign up and login as a user, which then allows you to buy or sell without the need for multiple accounts. Only users who have listed a listing for sale, can edit or delete the listing. A listing can be created through the "Create Listing" tab and a form can be filled out to create the listing, also allowing a image to be uploaded. Once a listing is bought, it gets marked as 'sold'. The buyer has the ability to buy listings and checkout using Stripe, which then also provides a purchase receipt. Users also have the ability to view their purchase history under "Purchases" which displays the listing names, price and purchase date, which requires a user to be logged in to view. All listings can be viewed from the "Listings" tab regardless of whether they are logged in or not.

### Sitemap
![sitemap](app/assets/images/sitemap.png "sitemap")

### Screenshots

Homepage
![homepage](app/assets/images/homepage.png "homepage")

Listing Page
![listings](app/assets/images/listings.png "listings")

Create Listing Page
![new listing](app/assets/images/new_listing.png "new listing")

Show Listing Page
![Show listing](app/assets/images/show_listing.png "show listing")

Edit/Delete Listing
![Edit listing](app/assets/images/edit:delete.png "edit listing")

Checkout Page
![buy listing](app/assets/images/checkout.png "buy listing")

Purchases Page
![purchase history](app/assets/images/purchases.png "purchase history")

### Target audience
The Target audience for the Martetplace application is for users who like tech products such as desk organisers, accessories, nifty products, phone/tablet accessories, home office gear and anything in between. Its a place where you can list your old tech that is not getting any more use, knowing it will go to a good home while also making a quick buck, and on the other end for buyers interested in these products.

### Tech stack
- HTML & CSS
- SASS and Bootstrap
- Ruby
- Ruby on Rails
- Javascript
- Stripe (payments)
- AWS S3 Storage (Image upload)
- Heroku (deployment)

# User Stories
- "As a consumer of tech products, I want an easy to use platform where I can search for tech gear, without being overwhelmed with options on other types of products, so that I can quickly find what I am looking for."
- "As a user, I want to sign up easily without spending too much time, so I can get to listing or buying products."
- "As a user, I want to be able to Login/Logout whenever I want"
- "As a user, I want one single account to be able to buy or sell, so that I dont have to create multiple accounts or use multiple email addresses."
- "As a user, I want to list items for sale easily, so that I can spend less time on admin, and more time listing more items."
- "As a user, I want to attach pictures to my listing, so I can attract buyers."
- "As a user, I want to add a title, price, category, condition, features and a description about my product, so that I can be as informative about my listing as possible."
- "As a user, I want to be able to edit or delete my listing, so that I can adjust prices or listing details whenever required."
- "As a user, I want to view multiple listings easily with a card-like view to give me enough detail about the listing, so that I can easily identify which listings interest me."
- "As a user, I want to be able to click on a listing to view more details and proceed to buy the listing straight away, so that I can easily checkout if I have decided on my purchase."
- "As a user, I want to use a secure payment gateway and have multiple payment options, so that my details remain secure and have multiple options for paying."
- "As a user, I want to be able to view my previous purchases and receipts, so that I can keep a track of my orders."
- "As a user, I want to be able to view my sold items, so that I can keep a track of my sold items."
- "As a user, I want to add items to a wishlist/favourites, so that I can keep track of listings I am interested in."
- "As a user, I want to be able to communicate with users, so that I can ask questions about a listing or a order."

# Wireframes
Login, Listings and Purchase History Page:
![wireframe](app/assets/images/wireframe1.png "wireframe 1")

Create Listing and Show Listing Page:
![wireframe](app/assets/images/wireframe2.png "wireframe 2")

# Proposed ERD
![diagram](app/assets/images/ERD.png "ERD")

# Final ERD:
With Active Storage
![diagram](app/assets/images/ERD_final.png "ERD")


# High-level components (abstractions)
The app is built using the rails MVC framework pattern, consisting of Models, Views and Controllers.
The Models are inherited from Active Record (which is inherited from Application Record) which makes querying and manipulating our Postgres relational database easier, without having to write any complicated SQL queries. Database calls are also minimised with eager-loading and preloading, allowing for efficiency and less queries to be run.
The Controllers are inherited from Application Controller (which is inherited from Active Controller) which allows us to define methods and set instance variables to query data from our Models, making the ability to implement CRUD actions seamless and to also set before actions.
The Views are inherited from Action View and allows the application to have more dynamic front end web-pages. Partials are used to create shared navbars, templates and layouts easily using embedded html ruby files (ERB).

# Third Party Services
The app will use Stripe. Stripe is a payments infastructure company allowing for secure and easy integrations. Stripe will be used for payments processing and for issuing receipts, this will be implemented through the Stripe API and webhooks. AWS S3 Storage will be used for image storage for when users upload images to the website. AWS S3 is part of Amazons vareity of web service offerings, allowing for easy integration. Github is being used for version control. Heroku is being used for deployment of the website, with staging and production pipelines to allow for efficiency of deployment.

# Models/Active Record associations
The `listing` model shares many associations with other entities. It has a `belongs_to` association with the models `user` and `category`, while both these models share a `has_many` association with `listing`, creating a one-to-many relationship. This means a listing must only have one user and category, while user and category can be apart of many listings.

`listing` shares a `has_one_attached` association with Active Storage `picture`, creating one-to-one mapping. This means each listing can have one picture attached.

`listing` also has a `has_one` association with the `order` model, while `order` `belongs_to` to `listing`, creating a one-to-one relationship. This means that a listing can only have one order, while any one order must have one listing.


`listing` shares a `has_many` association with `listing_features`, while having a `has_many_through` association with `features` making `listing_features` the join table between `listing` and `features`, creating a many-to-many relationship. This means many listings can have many features, through the listing_features model.


The `order` model `belongs_to` the `user` model, while `user` shares a `has_many` association with `order`, creating a one-to-many relationship. This means an order can only have one user, while a user can have many orders.

# Database Relations
The database relations within the application will have appropiate database models or tables which will associate with other tables using Primary Keys and Foreign Keys. We will want to have Normalisation in our database to minimise data duplication and maintain data integrity. To achieve this, we can follow the 'Normal Forms' by ensuring our database tables only hold single attributes as seen on the ERD, ensuring our tables serve a single purpose and having a database schema with normalising principles to reduce data duplication. The ERD also provides the columns and data types these tables or models will have, each serving its own purpose.

`user` model that will hold user information for both buyers and sellers. `id` will be the Primary Key and will map to the `order` model and `user_id` column which act as a Foreign key. The `order` model with `id` as the Primary Key, will hold information about the buyer and listing relating to the purchase. These will be mapped back to `listing` using `listing_id` as the Foreign Key. `categories` will store different category names for our listings and have `id` as the Primary Key which will map to `listings` through the Foreign key `category_id`. `features` will hold information about the different features that a listing could have, and will map to `listing_features` through the Primary Key`features.id` and Foreign Key `listing_features.feature_id`, `listing.id` will map to `listing_features.listing_id`.
These are the models that will form the main mvp of the application. Additional tables and models along with the ones discussed, can be seen represented with Primary Keys(PK) and Foreign Keys(FK) on the diagram below:


![relation diagram](app/assets/images/relations.png "relation diagram")


# Database Schema Design

A snippet of the Database schema.rb can be seen below. Through the schema.rb we can see how it compares to the ERD provided above. Through the code we can see that some of the fields or columns within the database can be null or not required. In the schema.rb we can see the Primary keys are indicated as 'index' datatypes on each table, with the Foreign Keys ordered below, referencing each table and/or column it maps to. The other datatypes such as 'string' and 'integer' are reflected the same with both the ERD and schema.rb file. Differences can be seen in some of the extra tables that are in the ERD but not in the schema.rb, which were not implemented as part of this cycle, some of which are the 'transactions', 'country and city', user_review' and 'wishlist' tables.

![schema design](app/assets/images/schema1.png "schema design")
![schema design](app/assets/images/schema2.png "schema design")


# Allocation of Tasks

Tasks for this project were managed using Trello. Four sections were added for efficient planning and visibility of tasks: 

Brainstorm: For throwing out ideas and keeping stuff visible of what I wanted to achieve.
To-Do: For listing actual things, requirements and items/task I need to work on.
Doing: For items/tasks currently being worked on.
Done: For items/tasks that have been completed.

I also used date reminders and priority badges to indicate priority level so I can priotise which tasks needed to be completed first and which were overdue or closing in on the due date. Effective planning was achieved by creating cards whenever a new task needed to be done, and also moving cards around to the appropiate sections.

Link to Trello Board: https://trello.com/b/IuzpoNBy/techstacker-marketplace

Screenshots of Trello:


![trello board](app/assets/images/trello.png "trello board")
![trello board](app/assets/images/trello2.png "trello board")


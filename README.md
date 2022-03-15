# README

# Identification of the problem being solved.
There are many Market place Applications out there, however at techStacker our focus is the ability to be able to buy and sell Tech gear whether it be new, used, good condition etc, in an easy to use manner with no fee's to use the Web Application, to help more buyers and sellers to connect, while putting their old tech to use without it going to waste.

# Why is it a problem that needs solving?
Our focus is to allow Tech gear to be accessible to everyone. In todays day and age, tech is always involving and it can be difficult to keep up with all the latest releases of products. New tech products are constantly being purchased by consumers while the old versions of it are collecting dust inside drawers; techStacker will solve this problem of old tech going to waste, by opening up a marketplace for sellers to list their no longer required products for any interested buyers. Because it will have a pure focus of tech gear, it will have the attraction of users to the techStacker application, rather than being overwhelmed by the choice of other martketplace applications that focus on other categories.

# Link to Website:
https://techstacker.herokuapp.com/
# Github Repository:
https://github.com/Krishtronomy/tech-stacker

# Description

### Purpose
The purpose of the application is for users to be able to buy and sell Tech Gear, making it an easy to use platform allowing users to sell their old gear that might not be used anymore. Allowing for a recycle of products (one mans trash is another mans treasure).

### Functionality / features
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

### Third Party Services
The app will use Stripe for payments processing and for issuing receipts, this will be implemented through the Stripe API and webhooks. AWS S3 Storage will be used for image storage for when users upload images to the website. Github is being used for version control. Heroku is being used for deployment of the website, with staging and production pipelines to allow for efficiency of deployment.
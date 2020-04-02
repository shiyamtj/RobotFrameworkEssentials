*** Settings ***
Resource  PageObjects/LandingPage.robot
Resource  PageObjects/TopNav.robot
Resource  PageObjects/Cart.robot
Resource  PageObjects/Product.robot
Resource  PageObjects/SearchResults.robot
Resource  PageObjects/SignIn.robot

*** Variables ***
*** Keywords ***
User is not logged in
    Log  Check to see whether user is logged in

Search for Products
    LandingPage.Load
    TopNav.Search for Products
    SearchResults.Verify Search Completed

user searches for products
    LandingPage.Load
    TopNav.Search for Products

search results contains relevant products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Landed

user select a product from search results
    SearchResults.Click Product Link

correct product page loads
    Product.Verify Page Landed

user adds the product to their cart
    Product.Add to Cart

the product is present is cart
    Cart.Verify Product Added

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

user attemps to checkout
    Cart.Proceed to Checkout

the user is required to sign in
    SignIn.Verify Page Loaded

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

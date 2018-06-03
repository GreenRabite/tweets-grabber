# Tweets Grabber

## Coding Challenge from Duco

### Objective
This coding challenge was to build a web application that would display a user's most recent tweets (25).

### How To Use
This web application is live and can be reached at [here](https://duco-coding-challenge.herokuapp.com/).

To run this locally, clone this repo and run `rails s` in the terminal. Open up `http://localhost:3000/` and the web application should pop up. **Note** Port 3000 is the default. Change as necessary to your default port if required.

## Technologies
Technologies used for the web application is as follows:
* Ruby on Rails
    * Used to served up the **Views** and used the **Controllers**
    * **Figaro** gem
        * Used to hide keys for Twitter Oauth
    * **Twitter** gem
        * Used to lookup a twitter handle
    * **Pry-Rails** gem
        * Used to have a better rails console

## GIFS

### Workflow to Obtain Tweets from Twitter Handle

![UploadExample](https://media.giphy.com/media/3o6nV08RL4xbace1vG/giphy.gif)

### Workflow For Private/Not Existing User

![UploadExample](https://media.giphy.com/media/3o6nV08RL4xbace1vG/giphy.gif)

# Costa Rican Pacific Fish Identification

This web application is a quiz that grades users on their ability to identify fish based on their scientific family. All of the fish species featured in the quiz are found off the Pacific coast of Costa Rica. The main use of this application is to ensure citizen scientists can properly identify fish based on family before they record fish populations on research-oriented scuba diving trips. Follow [this link](https://fish-identification.herokuapp.com/) to see the deployed Heroku application.

### Setup Instructions

If you would like to run this application on your own device, navigate to your desired directory and execute these commands.

```
git clone git@github.com:johnktravers/fish_identification.git
cd fish_identification
rake db:{create,migrate,seed}
rails server
```

Now open a web browser and navigate to `http://localhost:3000`. You can now create an account to access the quiz functionality of the website.

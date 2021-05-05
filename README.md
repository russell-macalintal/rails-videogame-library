# RAILS VIDEOGAME LIBRARY

This is a Ruby on Rails web application that allows Users to keep track of the Games and Consoles they've played and owned. Based on information provided by its Users, it is also able to display general basic information about the collection of model objects, including which Game and Console are the most popular amongst the registered Users of the website. The metric utilized to determine a Game's popularity is based on the number of hours that have been logged playing each game; while a Console's popularity is based on the number of Users who have owned each console.

This web application allows for any site visitor to create and set up an account by using the standard signup (username and password) authentication process or by using the Facebook OAuth2 Strategy for OmniAuth, which allows a Facebook account holder to signup and login using their Facebook credentials. If using the latter method, account details are automatically generated based on information that is shared from Facebook upon using this authentication strategy.

Once a User has signed up, they are able to view other User's libraries as well as add Games and Consoles (from an overall list) to create and expand their own libraries which can then be viewed by others. Users are also welcome to log the number of hours they have played a particular game on a given day. This information is aggregated not only to allow Users to track which Games they have played the most and but also to show which Games are the most popular amongst other Users. 

In order to better maintain security and preserve the integrity of the database, only the ADMIN user has access priviledges to add, modify, or delete Game and Console objects. Without this restriction, Users will be able to cause (un)intentional errors or modifications to other User's libraries.


## INSTALLATION
- Clone the repository
- Run "bundle install" to install all required dependencies
- Run "rails db:reset" to obtain a clean database with randomized seed information
- (Alternatively) Run "rails db:drop" and "rails db:migrate" to obtain a completely empty database
- Run "rails server" and proceed to "localhost:3000" in your web browser
- Sign up through the standard authentication procedure OR
- Log in using your Facebook credentials to automatically generate your account details
- Enjoy the app


# CONTRIBUTING

Bug reports and pull requests are welcome on GitHub at https://github.com/russell-macalintal/rails-videogame-library. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## LICENSE

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


## CODE OF CONDUCT

Everyone interacting in the Sinatra Game Library project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the CODE OF CONDUCT.
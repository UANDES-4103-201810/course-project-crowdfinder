# README

Group 16: Francisco Alvarez, Benjamin Perez


Categories: Can be added edited or deleted by admins. They can't be accessed by users that are not admin.

Funding: Can be created through table Funder. A new entry to the table will be created whenever a user funds (buys a 
promise) a project.

Project: A project can be created by any user without admin confirmation. If the user creating a project is an  admin,
the option to chose the project's creator from all the users will be available. In case the user isn't an admin, the
option to chose the creator won't appear and the creator will be set to the user logged in. The project created can
upload a project's picture, must have a name and a goal. 

Search: Projects can be searched by key words in the name and description. The search can be filtered by Category.

Promise: Can be created by the creator of a project

User: Have a log in/log out, and omniouth implemented but not fully functional.
Shows funded promises.

Mailer: Console shows a sent email, but no email is received.

Feedback: On every user action a feedback message is displayed with red yellow or green background according to 
circumstances.

Extra Gems: 
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'devise'
gem 'jquery-rails'
gem "paperclip", "~> 6.0.0"
gem 'redcarpet', '~> 3.0.0'
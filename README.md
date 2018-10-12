# martin-events-client

This is a README and is normally a document or whatever steps to get the application up and running

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.


### Prerequisites

You'll need:

*a computer*

### Installing

A step by step series of examples that tell you how to get a development up and running

Cloning git repo:
```
git clone https://github.com/sandraon/martin-events-client
```
Opening the repo root folder:
```
cd martin-events-client
```
Important install:
```
bundle install
```
Making database:
```
rake db:migrate
```
Adding default data to database:
```
rake db:seed
```
### Installing important keys:
You'll need a file, where you must export:
* SENDGRID_API_KEY, what you'll get from https://sendgrid.com, where you have to sign up or log in and create new API KEY
* RECAPTCHA_SITE_KEY and RECAPTCHA_SECRET_KEY, what you'll get from https://www.google.com/recaptcha/, where you have to sign up or log in and register a new site Note: Use localhost or 127.0.0.1 in domain if using localhost:3000.

Create file "secret.env":
```
export SENDGRID_API_KEY='yourkey'
export RECAPTCHA_SITE_KEY='yourkey'
export RECAPTCHA_SECRET_KEY='yourkey'
```
To install these keys:
```
source secret.env
```
Starting rails server to see your result in a browser:
```
rails s
```

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Version 2.5.1p57
* [Rails](https://rubyonrails.org/) - Version 5.2.1


## Versioning

We use [Git](https://git-scm.com/) for versioning. For the versions available, see the [martin-events-client](https://github.com/sandraon/martin-events-client). 

## Authors

See the list of [contributors](https://github.com/sandraon/martin-events-client/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration



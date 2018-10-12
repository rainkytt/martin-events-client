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
git clone https://github.com/rainkytt/martin-events-client
```
Opening the repo root folder:
```
cd martin-events-client
```
Important install (dont' ask why):
```
bundle install
```
Making database:
```
rake db:migrate
rake db:seed
```
Create sendgrid key : https://sendgrid.com/
and make API key: https://www.google.com/recaptcha/admin#list
```
```
Create sendgrid.env into project root folder and include:
```
export SENDGRID_API_KEY='YOUR KEY'
export RECAPTCHA_SITE_KEY='YOUR KEY'
export RECAPTCHA_SECRET_KEY='YOUR KEY'
```
In terminal write:
```
echo "sendgrid.env" >> .gitignore
source ./sendgrid.env
```
Starting rails server to see your result in a browser:
```
source sendgrid.env
rails s
```
to see result got to: http://localhost:3000/contact/index
```
```
## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Version 2.5.1p57
* [Rails](https://rubyonrails.org/) - Version 5.2.1


## Versioning

We use [Git](https://git-scm.com/) for versioning. For the versions available, see the [martin-events-client](https://github.com/sinivaal/martin-events-client). 

## Authors

See the list of [contributors](https://github.com/sinivaal/martin-events-client/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration



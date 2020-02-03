## Animal Shelter API

#### _An API featuring animals at the animal shelter_

#### By _Calvin Will_

## How To Use

For get requests no authentication required.

/animals will give you a list of all characters

adding a name parameter will return animals that match the given parameter.

Example: /animals?name=fred
will return animals named Fred and Freddie


adding a species parameter will return animals from that species.

Example: /animals?species=cat
will return all the cats

adding a gender parameter will return all male or female animals.

Example: /animals?gender=male
will return all male animals

adding a breed parameter will return all animals of that breed.

Example: /animals?breed=terrier
will return Jack Russell Terriers, Scottish Terriers, and others


To do POST, PATCH, or DELETE calls, make sure you have a header with the key of "Authorization" and the value of "Bearer secret"

The token can be changed by changing the value on line 3 of application_controller.rb

## Setup/Installation Requirements

* _Clone from GitHub_
* _Navigate to the project folder_
* _Run the commands "bundle", "rake db:create", "rake db:migrate", "rake db:seed", and then "rails s"_

## Known Bugs

_Currently there are no known bugs_

## Support and contact details

_For questions, comments, or concerns, email me at calvinp003@gmail.com_

## Technologies Used

* _Ruby_
* _Rails_
* _Postgresql_

### License

*Licensed Under MIT*

Copyright (c) 2020 **_Calvin Will_**

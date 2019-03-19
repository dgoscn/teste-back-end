# Test iCasei: Back-end


## Intro

This is an application running in Ruby on Rails that allows us to see the simplicity and productivity of Rails with the usability of the Javascript language.

### Setup Project

If you are using a Linux based system and you doesn't have Rails & Ruby installed, you can follow this link and set the environment: https://gorails.com/setup/ubuntu/18.04
If you are using Windows, follow this one: https://gorails.com/setup/windows/10

***Obs: We will be using the database PostgreSQL, so install it based on the links above.***
***The Ruby version used is 2.5.3  and Rails 5.2.2***

You can download the repository using the following command:

Linux
```mkdir teste
cd teste
cd teste-back-end
git clone https://github.com/dgoscn/teste-back-end.git
```
You can download it via Zip and extract local. Do the same if you are running a Windows

## Running the Project

Once you are inside the project, you can run the command:
```rails sever
```
Go to the URL displayed by Rails Server. For example: 0.0.0.0:3000

## Testing 

With the server running, we can open another tab and inside that, we can run the following commands
```cd test
rspec spec/
```

## Conclusion

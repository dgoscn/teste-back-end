# Test iCasei: Back-end


## Intro

This is an application running in Ruby on Rails that allows us to see the simplicity and productivity of Rails with the usability of the Javascript language.

### Setup Project

If you are using a Linux based system and you doesn't have Rails & Ruby installed, you can follow this link and go until Redis installation and set the environment: https://blog.eq8.eu/article/set-up-ubuntu-1804-for-rails-developer-2019.html. *Some users can get a little problem when try to install rvm, please, go to your /etc/resolv.conf and set nameserver 8.8.8.8 to works!. After that, restart your system and try again to install Ruby*.

If you are using Windows, follow this one: https://gorails.com/setup/windows/10

***Obs: We will be using the database PostgreSQL 10.6, so install it based on the links above.***
***The Ruby version used is 2.5.3  and Rails 5.2.2***

*windows users: You can search for Cmder and setup the configs*

You can download the repository using the following command at Linux Terminal:


Linux
```
mkdir teste
cd teste
git clone https://github.com/dgoscn/teste-back-end.git
cd teste-back-end

```
You can download it via Zip and extract local. Do the same if you are running a Windows

## Running the Project

Once you are inside the project, you can type the command:

```
pwd

possible output:

/home/YOURUSER/Downloads/icaseii
```
And run
```
bundle install
```
```
gem update --system
```
```
rails sever
```
Go to the URL displayed by Rails Server. For example: 0.0.0.0:3000

## Testing 

With the server running, we can open another tab and inside that, we can run the following commands
```
cd test
rspec spec/
```

## Conclusion

The application is running with most of its concept applied. Some parts have not been implemented, such as a page displaying the 50 user accesses, however, their logic is implemented. So much for part of the controller of the "events" when for library created inside the /application/javascript.

*To see the events, you could just type*

```
 0.0.0.0:3000/events
```

At this route, if you prefer, open your Chrome Console via F12 or fn F12. You will see some erros, but focus in the last one. At you first access you will see the UIID, TIMESTAMP and URL accessed by the user at the time.

### Acknowledgment
Thank you iCasei team for the especifications about the project

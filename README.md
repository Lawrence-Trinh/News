# Rapid Application Development Assignment



## Development Team
Lawrence Trinh (s3656432)

Djorenz Cruz (s3689472)



## Level Attempted
90+



## Timesheet
https://drive.google.com/open?id=1MxvGvfNUCuZAI23QnoAFFTOx8zPLt2woVdaAKvioUYc



## Heroku Deployment URL
https://rad-plus.herokuapp.com/



## Heroku Deployment Log
Build ID: 9cfdc038-bb50-44af-8ddc-6ff3b4779aaf

```
-----> Ruby app detected
-----> Installing bundler 1.17.3
-----> Removing BUNDLED WITH version in the Gemfile.lock
-----> Compiling Ruby/Rails
-----> Using Ruby version: ruby-2.5.7
-----> Installing dependencies using bundler 1.17.3
       Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4 --deployment
       The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
       Fetching gem metadata from https://rubygems.org/............
       Using rake 13.0.1
       Using concurrent-ruby 1.1.6
       Using minitest 5.14.0
       Using thread_safe 0.3.6
       Using builder 3.2.4
       Using erubi 1.9.0
       Using mini_portile2 2.4.0
       Using crass 1.0.6
       Using rack 2.2.2
       Using nio4r 2.5.2
       Using websocket-extensions 0.1.4
       Using mini_mime 1.0.2
       Using arel 9.0.0
       Using mimemagic 0.3.4
       Using public_suffix 4.0.3
       Using execjs 2.7.0
       Using bcrypt 3.1.12
       Using msgpack 1.3.3
       Using rb-fsevent 0.10.3
       Using ffi 1.12.2
       Using bundler 1.17.3
       Using mini_magick 4.10.1
       Using coffee-script-source 1.12.2
       Using method_source 0.9.2
       Using thor 1.0.1
       Using pg 1.2.3
       Using puma 3.12.4
       Using tilt 2.0.10
       Using turbolinks-source 5.2.0
       Using i18n 1.8.2
       Using tzinfo 1.2.6
       Using nokogiri 1.10.9
       Using rack-test 1.1.0
       Using websocket-driver 0.7.1
       Using sprockets 3.7.2
       Using mail 2.7.1
       Using addressable 2.7.0
       Using marcel 0.3.3
       Using autoprefixer-rails 9.7.5
       Using uglifier 4.2.0
       Using bootsnap 1.4.6
       Using rb-inotify 0.10.1
       Using ruby-vips 2.0.17
       Using coffee-script 2.4.1
       Using turbolinks 5.2.1
       Using activesupport 5.2.4.1
       Using loofah 2.4.0
       Using rails-dom-testing 2.0.3
       Using globalid 0.4.2
       Using activemodel 5.2.4.1
       Using sass-listen 4.0.0
       Using image_processing 1.10.3
       Using jbuilder 2.10.0
       Using rails-html-sanitizer 1.3.0
       Using activejob 5.2.4.1
       Using activerecord 5.2.4.1
       Using sass 3.7.4
       Using actionview 5.2.4.1
       Using carrierwave 2.1.0
       Using actionpack 5.2.4.1
       Using actioncable 5.2.4.1
       Using actionmailer 5.2.4.1
       Using activestorage 5.2.4.1
       Using railties 5.2.4.1
       Using sprockets-rails 3.2.1
       Fetching rails-controller-testing 1.0.4
       Using bootstrap-sass 3.3.7
       Using coffee-rails 4.2.2
       Using jquery-rails 4.3.5
       Using rails 5.2.4.1
       Using sass-rails 5.1.0
       Installing rails-controller-testing 1.0.4
       Bundle complete! 23 Gemfile dependencies, 71 gems now installed.
       Gems in the groups development and test were not installed.
       Bundled gems are installed into `./vendor/bundle`
       Bundle completed (3.49s)
       Cleaning up the bundler cache.
       The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
-----> Installing node-v10.15.3-linux-x64
-----> Detecting rake tasks
-----> Preparing app for Rails asset pipeline
       Running: rake assets:precompile
       Yarn executable was not detected in the system.
       Download Yarn at https://yarnpkg.com/en/docs/install
       I, [2020-05-23T15:19:37.330851 #341]  INFO -- : Writing /tmp/build_1f8d069ae15518d4eab144044b2c863e/public/assets/application-10c8b1d1c546c27925abe2b75d7eb7d144d9010725b8f41beb25166e133ac441.css
       I, [2020-05-23T15:19:37.331810 #341]  INFO -- : Writing /tmp/build_1f8d069ae15518d4eab144044b2c863e/public/assets/application-10c8b1d1c546c27925abe2b75d7eb7d144d9010725b8f41beb25166e133ac441.css.gz
       Asset precompilation completed (19.96s)
       Cleaning assets
       Running: rake assets:clean
       I, [2020-05-23T15:19:38.860965 #353]  INFO -- : Removed application-5912dfc2ff232f71b9fd51a512c0fcc714a1c5a9d16843a50a769f4682f0e921.css
-----> Detecting rails configuration
###### WARNING:
       You set your `config.active_storage.service` to :local in production.
       If you are uploading files to this app, they will not persist after the app
       is restarted, on one-off dynos, or if the app has multiple dynos.
       Heroku applications have an ephemeral file system. To
       persist uploaded files, please use a service such as S3 and update your Rails
       configuration.
       
       For more information can be found in this article:
         https://devcenter.heroku.com/articles/active-storage-on-heroku
       
###### WARNING:
       We detected that some binary dependencies required to
       use all the preview features of Active Storage are not
       present on this system.
       
       For more information please see:
         https://devcenter.heroku.com/articles/active-storage-on-heroku
       
###### WARNING:
       There is a more recent Ruby version available for you to use:
       
       2.5.8
       
       The latest version will include security and bug fixes, we always recommend
       running the latest version of your minor release.
       
       Please upgrade your Ruby version.
       
       For all available Ruby versions see:
         https://devcenter.heroku.com/articles/ruby-support#supported-runtimes
###### WARNING:
       No Procfile detected, using the default web server.
       We recommend explicitly declaring how to boot your server process via a Procfile.
       https://devcenter.heroku.com/articles/ruby-default-web-server
-----> Discovering process types
       Procfile declares types     -> (none)
       Default types for buildpack -> console, rake, web
-----> Compressing...
       Done: 39.1M
-----> Launching...
       Released v103
       https://rad-plus.herokuapp.com/ deployed to Heroku
```

## GitHub Repository
RAD2020_s3656432_s3689472

https://github.com/Lawrence-Trinh/RAD2020_s3656432_s3689472

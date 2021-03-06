## Objective

Simply Disply How to debug sinatra application with debugger or pry

especially, I would like to step in method debug like below

![step](https://f.cloud.github.com/assets/83296/564604/bea48514-c581-11e2-8ddf-9343db3741dd.png)

## How to Use

```ruby
# added to the Gemfile
group :development, :test do
  gem 'awesome_print'
  gem 'racksh'
  gem 'debugger'
  gem 'pry'
  gem 'pry-debugger'
end
```

You can just use debugger, if you run it ruby my_app.rb

```ruby
class MyApp < Sinatra::Base
  enable :sessions
  get '/' do
    debugger
    session[:user] = 'anonymouse'
    redirect to('/bar')
  end
```
visit at http://localhost:4567

You can use pry, if you run it rackup

```ruby
class MyApp < Sinatra::Base
  enable :sessions
  get '/' do
    binding.pry
    session[:user] = 'anonymouse'
    redirect to('/bar')
  end
```

in case to use the short cut of next contine step finish add pry config

```ruby
#.pryrc
Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'
Pry.commands.alias_command 'f', 'finish'
```

visit at http://localhost:9292

## looks like

ruby my_app.rb

![debugger](https://f.cloud.github.com/assets/83296/564574/8d95fa42-c57d-11e2-89c7-e3ff28c3c493.png)

rackup 

![pry](https://f.cloud.github.com/assets/83296/564584/1ab316e4-c57e-11e2-97f3-ddfa55237093.png)

## sinatra console

You may also would like to know how to run console for sinatra and simulate a get or post call from console, try racksh

![racksh](https://f.cloud.github.com/assets/83296/564599/e236e9f0-c580-11e2-842b-8dbefccb7065.png)

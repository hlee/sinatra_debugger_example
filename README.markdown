## Objective

Simply Disply How to debug sinatra application with debugger or pry

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

visit at http://localhost:9292

## looks like

ruby my_app.rb

![debugger](https://f.cloud.github.com/assets/83296/564574/8d95fa42-c57d-11e2-89c7-e3ff28c3c493.png)

rackup 

![pry](https://f.cloud.github.com/assets/83296/564584/1ab316e4-c57e-11e2-97f3-ddfa55237093.png)

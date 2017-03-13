# easy-ruby-request
Make easy request in ruby apps

## GET Request - All params example
```ruby
require 'easy_request'

url = 'https://api.mysite.com/some/endpoint'

headers = {
  'cache-control' => 'no-cache'
  'Content-Type' => 'application/x-www-form-urlencoded'
}

basic_auth = {
  user: 'myuser',
  pass: 'mypass'
}

response = EasyRequest.get(url, basic_auth, headers)

puts response
```

## GET Request - Basic example
```ruby
require 'easy_request'

url = 'https://api.mysite.com/some/endpoint'

response = EasyRequest.get(url)

puts response
```

## POST Request - All params example
```ruby
require 'easy_request'

url = 'https://api.mysite.com/some/endpoint'

data = {
  some: 'json',
  id: 123,
  name: 'John'
}

headers = {
  'cache-control' => 'no-cache'
  'Content-Type' => 'application/json'
}

basic_auth = {
  user: 'myuser',
  pass: 'mypass'
}

response = EasyRequest.post(url, data, basic_auth, headers)

puts response
```

## POST Request - Basic example
```ruby
require 'easy_request'

url = 'https://api.mysite.com/some/endpoint'

response = EasyRequest.post(url)

puts response
```

## PUT Request - All params example
```ruby
require 'easy_request'

url = 'https://api.mysite.com/some/endpoint'

data = {
  some: 'json',
  id: 123,
  name: 'John'
}

headers = {
  'cache-control' => 'no-cache'
  'Content-Type' => 'application/json'
}

basic_auth = {
  user: 'myuser',
  pass: 'mypass'
}

response = EasyRequest.put(url, data, basic_auth, headers)

puts response
```

## PUT Request - Basic example
```ruby
require 'easy_request'

url = 'https://api.mysite.com/some/endpoint'

response = EasyRequest.put(url)

puts response
```
## DELETE Request - All params example
```ruby
require 'easy_request'

url = 'https://api.mysite.com/some/endpoint'

data = {
  some: 'json',
  id: 123,
  name: 'John'
}

headers = {
  'cache-control' => 'no-cache'
  'Content-Type' => 'application/json'
}

basic_auth = {
  user: 'myuser',
  pass: 'mypass'
}

response = EasyRequest.delete(url, data, basic_auth, headers)

puts response
```
## DELETE Request - Basic example
```ruby
require 'easy_request'

url = 'https://api.mysite.com/some/endpoint'

response = EasyRequest.post(url, data, basic_auth, headers)

puts response
```

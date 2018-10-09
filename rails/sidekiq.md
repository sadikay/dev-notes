#### Monit Setup
```shell
# /etc/monit/monitrc
set httpd port 2812 and
    use address localhost
    allow localhost
```

https://www.digitalocean.com/community/questions/monit-error-in-ubuntu

#### Check Redis
```ruby
# rails console
redis_info = Sidekiq.redis { |conn| conn.info }
redis_info['connected_clients'] # => "16"

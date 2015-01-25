# Be sure to restart your server when you modify this file.

# RailsRedis::Application.config.session_store :cookie_store, key: '_rails-redis_session'
RailsRedis::Application.config.session_store :redis_session_store, {
  key: '_rails-redis_session',
  redis: {
    db: 2,
    expire_after: 120.minutes,
    key_prefix: 'rails-redis:session:'#,
    #host: 'host', # Redis host name, default is localhost
    #port: 12345   # Redis port, default is 6379
    }
} 

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# RailsRedis::Application.config.session_store :active_record_store

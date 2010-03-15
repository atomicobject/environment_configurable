# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_stub_rails_session',
  :secret      => '3a182c6602a162a9ee6a1894a24eb4b8de5047ce3383bf3506c2b308b93b1715c75e14d3fa52e6c17350cd9d76f98b9479a1c9c45217e0f9bf0449ece5d7a542'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

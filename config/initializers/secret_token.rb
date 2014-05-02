# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
secret = Rails.env.production? ? ENV['SECRET_TOKEN'] : "abc068d67a8c015c8cb06017e683d92f93486b7557bb09437aab0e57112b4e401f0bde6fc92a97effa5b809266e276209217fe637002dacb9da07f8649fbfe8c"
Kavitha311::Application.config.secret_key_base = secret

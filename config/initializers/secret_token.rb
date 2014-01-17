# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist? (token_file)
	   File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end
		
Sample2App::Application.config.secret_key_base = 'd8a8a5451dd5aa880bf048745ef96dba69f619713ad76a25c4b284439dc34d1bd8b1a20bb3bcc99faaec7f598ba7527ae806e2f6cdff731a8a2831f79df2354b'

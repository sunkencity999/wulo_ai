#!/usr/local/bin/ruby
require File.expand_path('~/wulo/wulo_ai/config/environment.rb', __FILE__)
require 'highline/import'
cli = HighLine.new 
cli.choose do |menu|
	menu.prompt = "Please choose from the following options:\n
	1. I am the Owner and would like to login.\n
	2. I am the Owner and this is my first time using this cyberdeck.\n
	3. I am not the Owner and should probably fuck off.\n"
	menu.choice(1){
		userid = ask("Enter your name:  ") { |q| q.echo = true }
		password = ask("Enter your password:  ") { |q| q.echo = "*" }
	}
	menu.choice(2){ 
		name = cli.ask "My name is Wulo, and I am your Cyberdeck's machine-spirit. 
		I'm going to do my best to serve you well. What is your name?"
		puts "Thank you #{name}! It's good to meet you."

	cli.say("I'm going to ask a series of questions that I will use to better serve your needs 
	and ensure your cyberdeck is a deeply meaninful and valuable artifact for you. Please answer carefully, as these answers may be permanent.")

	age = cli.ask "What is your birthdate?"
	firstName = cli.ask "What is your first name?"
	lastName = cli.ask "What is your last name?"
	parentStatus = cli.ask "Are you a parent?"
	ethnicity = cli.ask "What is your ethnicity/culture?"
	region = cli.ask "What country are you from?"
	favoriteNews = cli.ask "What is your favorite news provider?"
	favoriteTeam = cli.ask "What is your favorite sports team?"
	profession = cli.ask "What is your profession?"
	group = cli.ask "What important (to you) group are you a member of?"
	activity = cli.ask "What is your favorite activity to do?"
	passion = cli.ask "What are you pasionate about?"
	password = cli.ask "What would you like your password to be?"

	cli.choose do |menu|
		menu.prompt = "Are you a dog or a cat person?"
		menu.choice(:dog) { cli.say("Excellent choice! Man's best friend.") } 
		menu.choice(:cat) { cli.say("Cat? OK......that's...great.")}
		menu.default = :dog
	end

	@user = User.new( 
		:age => age,
        	:firstName => firstName,
		:lastName => lastName,
		:parentStatus => parentStatus,
		:ethnicity => ethnicity,
		:region => region,
		:favoriteNews => favoriteNews,
		:favoriteTeam => favoriteTeam,
		:profession => profession,
		:group => group,
		:activity => activity,
		:passion => passion,
		:password => password
	    
	    	)
	@user.save
	}
		menu.choice(3){ exit } 
end

user = User.first

while true

	@user.firstName == user.firstName && @user.password == user.password 
	cli.say(" Hello #{@user.firstName}! It's good to connect with you again. How can
			I serve you today?")
		cli.choose do |menu|
			menu.prompt "Please choose from the below list: \n
			1. Run updates on system.\n
			2. Search for information. \n
			3. Make entry in your Journal. \n
			4. Request oracular advice. \n
			5. Check if web resource is available. \n
			6. Display this month's journal entries. \n
			7. Export this year's journal entries for reading. \n
			8. Export All journal entires for reading. \n
			
			"
			menu.choice(1){"Excellent idea. I'll run the commands at once!"}
			exec("sudo apt-get update && sudo apt-get upgrade")
		end
		if @user.firstName != user.firstName || @user.password != user.password { cli.say ("That is an incorrect combination. Please try again.") } 
break
exit
	end
end



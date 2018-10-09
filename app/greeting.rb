#!/home/pi/.rvm/rubies/ruby-2.5.1/bin/ruby
require File.expand_path('~/wulo/wulo_ai/config/environment.rb', __FILE__)
require 'highline/import'
require 'csv'
require 'rainbow'

system "clear"
HighLine::Menu.index_color = :rgb_77bbff

cli = HighLine.new 
cli.choose do |menu|
	menu.prompt = Rainbow("Please choose from the following options:\n
	1. I am the Owner and would like to login.\n
	2. I am the Owner and this is my first time using this cyberdeck.\n
	3. I am not the Owner and should probably fuck off.\n").red
	menu.choice(1){
		userid = ask("Enter your first name:  ") { |q| q.echo = true }
		password = ask("Enter your password:  ") { |q| q.echo = "*" }
		@user = User.last


system "clear"
	if userid == @user.firstName && password == @user.password 
	cli.say(" Hello #{@user.firstName}! It's good to connect with you again. How can
			I serve you today?")
		
		cli.choose do |menu|
			menu.index_color = :blue
			menu.prompt = Rainbow("Please choose from the below list: \n
			1. Run updates on system.\n
			2. Search for information. \n
			3. Make entry in your Journal. \n
			4. Request oracular advice (think of your question, then hit Enter). \n
			5. Check if web resource is available. \n
			6. Display this month's journal entries. \n
			7. Export all journal entries to CSV. \n
			8. Open Mail application (Mutt). \n
		        9. Display current list of tasks. \n
			10. View a web page using it's URL. \n
			11. Exit Wulo and return to the command line.	
			 ").red
			menu.choice(1) {"Excellent idea #{@user.firstName}. I'll run the commands at once!"
			exec("echo sudo apt-get update && sudo apt-get upgrade")
			
			}
			menu.choice(2) {
				search = cli.ask "Please enter what you'd like to search for."
				exec("googler \'#{search}\' ")
			}
			menu.choice(3) {
				title = cli.ask "What should I title this journal entry #{@user.firstName}?"
				body = cli.ask "What are your thoughts, #{@user.firstName}?"
			
				@post = Post.new
				@post.title = title
				@post.body = body
				@post.save

				cli.say "I've saved that entry #{@user.firstName}, thank you!"
			}
			menu.choice(4) {
				
				cli.say "Here are your cards from the Tarot, #{@user.firstName}!"
				cli.say "This card is the past."
				card = rand(22) 
				if card == 1 then puts "The Magician"
				elsif card == 2 then puts "The High Priestess"
				elsif card == 3 then puts "The Empress"
				elsif card == 4 then puts "The Emperor"
				elsif card == 5 then puts "The Hierophant"
				elsif card == 6 then puts "The Lovers"
				elsif card == 7 then puts "The Chariot"
				elsif card == 8 then puts "Strength"
				elsif card == 9 then puts "The Hermit"
				elsif card == 10 then puts "Wheel of Fortune"
				elsif card == 11 then puts "Justice"
				elsif card == 12 then puts "The Hanged Man"
				elsif card == 13 then puts "Death"
				elsif card == 14 then puts "Temperance"
				elsif card == 15 then puts "The Devil"
				elsif card == 16 then puts "The Tower"
				elsif card == 17 then puts "The Star"
				elsif card == 18 then puts "The Moon"
				elsif card == 19 then puts "The Sun"
				elsif card == 20 then puts "Judgement"
				elsif card == 21 then puts "The World"
				elsif card == 22 then puts "The Fool"
				end
				cli.say "This card is the Present."
				
				card2 = rand(22)
				if card2 == 1 then puts "The Magician"
				elsif card2 == 2 then puts "The High Priestess"
				elsif card2 == 3 then puts "The Empress"
				elsif card2 == 4 then puts "The Emperor"
				elsif card2 == 5 then puts "The Hierophant"
				elsif card2 == 6 then puts "The Lovers"
				elsif card2 == 7 then puts "The Chariot"
				elsif card2 == 8 then puts "Strength"
				elsif card2 == 9 then puts "The Hermit"
				elsif card2 == 10 then puts "Wheel of Fortune"
				elsif card2 == 11 then puts "Justice"
				elsif card2 == 12 then puts "The Hanged Man"
				elsif card2 == 13 then puts "Death"
				elsif card2 == 14 then puts "Temperance"
				elsif card2 == 15 then puts "The Devil"
				elsif card2 == 16 then puts "The Tower"
				elsif card2 == 17 then puts "The Star"
				elsif card2 == 18 then puts "The Moon"
				elsif card2 == 19 then puts "The Sun"
				elsif card2 == 20 then puts "Judgement"
				elsif card2 == 21 then puts "The World"
				elsif card2 == 22 then puts "The Fool"
				end

				cli.say "This card is the Future"
				
				card3 = rand(22)
				
				if card3 == 1 then puts "The Magician"
				elsif card3 == 2 then puts "The High Priestess"
				elsif card3 == 3 then puts "The Empress"
				elsif card3 == 4 then puts "The Emperor"
				elsif card3 == 5 then puts "The Hierophant"
				elsif card3 == 6 then puts "The Lovers"
				elsif card3 == 7 then puts "The Chariot"
				elsif card3 == 8 then puts "Strength"
				elsif card3 == 9 then puts "The Hermit"
				elsif card3 == 10 then puts "Wheel of Fortune"
				elsif card3 == 11 then puts "Justice"
				elsif card3 == 12 then puts "The Hanged Man"
				elsif card3 == 13 then puts "Death"
				elsif card3 == 14 then puts "Temperance"
				elsif card3 == 15 then puts "The Devil"
				elsif card3 == 16 then puts "The Tower"
				elsif card3 == 17 then puts "The Star"
				elsif card3 == 18 then puts "The Moon"
				elsif card3 == 19 then puts "The Sun"
				elsif card3 == 20 then puts "Judgement"
				elsif card3 == 21 then puts "The World"
				elsif card3 == 22 then puts "The Fool"
				end
					
				

					
				
			}
			menu.choice(5) {
				resource = cli.ask "Please enter the URL of the resource \n
			       you wish to verify is available (ex. 'http://www.google.com'."
				exec(" is-reachable #{resource} ")
			}
			menu.choice(6) {
				cli.say "Here are the last month of journal entries."
				@posts = Post.all
				@posts.each do |post|
					puts post.title
					puts post.body
					puts "\n"
					puts "\n"
				end
				
			}
			menu.choice(7) {
				cli.say "Exporting Journal Entries to CSV."
				@posts = Post.all	

				CSV.open("christopherJournal.csv", "w") do |csv|
					csv << ["Title", "Body", "Created At", "Updated At"]
					@posts.each {|row| csv << [row.title, row.body, row.created_at, row.updated_at]}
				end
			
			
			}
			menu.choice(8) {
				cli.say "Opening mail application!"
				exec("mutt")
				
			}
			menu.choice(9) {
				cli.say "Showing current list of tasks."
				exec("task list")
			}
			menu.choice(10){
				webAsk = cli.ask "Please enter the full URL."
				cli.say "Loading up requested web page."
				exec("lynx #{webAsk}")
			}
			menu.choice(11) { 
				cli.say "Thank you #{@user.firstName}! Be well."
				exit
			}
			
		end
		exit
	elsif userid != @user.firstName || password != @user.password { cli.say ("That is an incorrect combination. Please try again.") } 

exit
	end

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
	favoriteTeam = cli.ask "Who is your favorite athlete or team?"
	profession = cli.ask "What is your profession?"
	group = cli.ask "What important (to you) group are you a member of?"
	activity = cli.ask "What is your favorite activity to do?"
	passion = cli.ask "What are you passionate about?"
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

	cli.say "Thank you for telling me about yourself #{@user.firstName}!. Now you can access me Directly!"
		exit
	}	
	menu.choice(3){ exit } 



end




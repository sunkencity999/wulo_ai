require 'highline'

cli = Highline.new
name = cli.ask "Hello! My name is Wulo, and I am your Cyberdeck's machine-spirit. 
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

cli.choose do |menu|
	menu.prompt = "Are you a dog or a cat person?"
	menu.choice(:dog) { cli.say("Excellent choice! Man's best friend.") } 
	menu.choice(:cat) { cli.say("Cat? OK......that's...great.")}
	menu.default = :dog
end



class Tree
	def initialize
		@height = 0
		@fruit = 0
		
	end

	def check_height
	#Observe the height of the tree, this will grow with each one_year_passes
	#Older trees will produce more fruit per year
	#Make tree look older with height
	puts "This tree is currently #{@height} feet tall."

	end


	def one_year_passes
		#Makes time pass. With each passing year the program will check the height of the tree and return a hint on how long it has left to live as well as
		#telling you how much fruit it has produced for the year. 
		@height = @height + 4
		puts "One year of time passes."
		if @fruit > 0
			puts "Oh no! The fruit from the previous year has withered and died."
			@fruit = 0
		end

		if @height >= 16 && @height <= 20
			@fruit = @fruit + 3
			puts "Your tree has produced a small amount of fruit this year!"
		elsif @height >= 24 && @height <= 32
			@fruit = @fruit + 5
			puts "Your tree has produced a sizeable amount of fruit this year!"
		elsif @height >= 36 && @height <= 40
			@fruit = @fruit + 7
			puts "Wow! Your tree produced a bountiful havest this year!"
		end
			

		if @height >= 32 && @height < 40
			puts "Your tree is starting to look a little old. It probably doesn't have many years left"

		elsif @height >= 40
			puts "This fine old tree has lived a complete life and is no longer producing fruit. You decide to cut it down in order to make room for another sapling."
			#Find a way to erase this instance of the tree
			#Add seeds to inventory from soil where tree was torn up
		else
			puts "This tree looks like it still has many years of life left in it."
		end

		end





	def count_oranges
	#Counts the amount of oranges on the tree.
	puts "You count the oranges, there are currently #{@fruit} oranges on the tree waiting to be picked."
	end




	def pick_orange
	#Checks to see if the tree has any oranges and if it does then remove one from the tree and add it to inventory.
		if @fruit > 0
		@fruit = @fruit -1
		puts "You pick an orange off the tree and add it to your inventory."
		$inventory[:Oranges] = $inventory[:Oranges] + 1
		else
		puts "There aren't any oranges on the tree to pick."
		end
	end

	def check_inventory
		# check your inventory, right now this is just the amount of oranges and seeds
		puts "Your current inventory is:"
		puts "#{$inventory}"
	end

	def plant_tree
		if $inventory[:Seeds] >= 1
			puts "You plant an orange tree seed"
			$inventory[:Seeds] = $inventory[:Seeds] - 1
		else
			puts "You don't have any seeds in your inventory to plant."
		end


end
$inventory = {:Oranges => 0, :Seeds => 1}

puts "Welcome to Orange Tree Simulator!"
puts "Please begin by entering your name: "
name = gets.chomp
puts "Welcome #{name}, to play this game you may type in commands to perform certain actions. The commands you have access to are as follows:"
puts "	- Plant - Adds a sapling to your garden. You must have a seed in your inventory."
puts "	- Pass Time - Makes one year of time pass."
puts "	- Count - Count the amount of oranges on your tree."
puts "	- Pick - Pick an orange from your tree."
puts "	- Inventory - Look at your inventory"
puts " 	- Observe - Observe the height of your tree."



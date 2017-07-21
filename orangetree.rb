class Tree
	def initialize
		@height = 0
		@fruit = 0
		@tree_count = 0
	end

	def check_height
	#Observe the height of the tree, this will grow with each one_year_passes
	#Older trees will produce more fruit per year
	#Make tree look older with height
	if @tree_count == 0 
		puts "You currently don't have any trees to observe."
	else
		puts "Your tree is currently #{@height} feet tall."
	end
end

	def one_year_passes
		#Makes time pass. With each passing year the program will check the height of the tree and return a hint on how long it has left to live as well as
		#telling you how much fruit it has produced for the year. 
		if @tree_count >= 1
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
				if $inventory[:Seeds] == 0
					puts "Oh! You look at the torn up soil where your tree once stood and find an orange tree seed. You add it to your inventory."
					$inventory[:Seeds] = $inventory[:Seeds] + 1
				end

				#Find a way to erase this instance of the tree
				#Add seeds to inventory from soil where tree was torn up
			else
				puts "This tree looks like it still has many years of life left in it."
			end
		else
			puts "One year of time passes, nothing happens"
		end

		end

	def count_oranges
	#Counts the amount of oranges on the tree.
	if @tree_count == 0 
		puts "There aren't any trees planted at the moment."
	else
		puts "You count the oranges, there are currently #{@fruit} oranges on the tree waiting to be picked."
		end
	end


	def pick_orange
	#Checks to see if the tree has any oranges and if it does then remove one from the tree and add it to inventory.
		if @tree_count == 0 
			puts "There aren't any trees to pick oranges from."
		else

			if @fruit > 0
			@fruit = @fruit -1
			puts "You pick an orange off the tree and add it to your inventory."
			$inventory[:Oranges] = $inventory[:Oranges] + 1
			else
			puts "There aren't any oranges on the tree to pick."
			end
	end
	end

	def plant_tree
		
		if $inventory[:Seeds] >= 1
			puts "You plant an orange tree seed"
			$inventory[:Seeds] = $inventory[:Seeds] - 1
			@tree_count = @tree_count + 1
		else
			puts "You don't have any seeds in your inventory to plant."
		end
	end

end

def check_inventory
		# check your inventory, right now this is just the amount of oranges and seeds
		puts "Your current inventory is:"
		puts "#{$inventory}"
end

def command_list
puts "	- Plant - Plants a tree, requires a seed in your inventory."
puts "	- Time - Makes one year of time pass."
puts "	- Count - Count the amount of oranges on your tree."
puts "	- Pick - Pick an orange from your tree."
puts "	- Inventory - Look at your inventory"
puts "	- Observe - Observe the height of your tree."
puts "	- Help - Display the list of commands."
puts "	- Quit - Quit playing the game."
end

$inventory = {:Oranges => 0, :Seeds => 1}
game_running = true
tree = Tree.new
puts "Welcome to Orange Tree Simulator!"
puts "Please begin by entering your name: "
name = gets.chomp
puts "Welcome #{name}, to play this game you may type in commands to perform certain actions. The commands you have access to are as follows:"

command_list

puts ""
puts "What would you like to do?"

while game_running
	command = gets.chomp.capitalize
	
	case 
	when command == "Plant"
		tree.plant_tree
	when command == "Time"
		tree.one_year_passes
	when command == "Count"
		tree.count_oranges
	when command == "Pick"
		tree.pick_orange
	when command == "Inventory"
		check_inventory
	when command == "Observe"
		tree.check_height
	when command == "Help"
		command_list
	when command == "Quit"
		game_running = false

	end

end
		









class Tree
	def initialize
		@height = 0
		@fruit = 0
		puts "You plant an orange tree seed"
	end

	def height
	#Observe the height of the tree, this will grow with each one_year_passes
	#Older trees will produce more fruit per year
	#Make tree look older with height


	end


	def one_year_passes
		#Make the tree grow and add oranges
		#Tree will die after X height
		@height = @height + 4
		
		if @fruit > 0
			puts "Oh no! The fruit from the previous year has withered and died."
			@fruit = 0
		end

		if @height >= 16 && @height <= 20
			@fruit = @fruit + 3
			puts "Your tree has finally begun sprouting some fruit!"
		elsif @height >= 24 && @height <= 32
			@fruit = @fruit + 5
			puts "Your tree has grown a sizeable amount of fruit this year!"
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
	#observe the amount of oranges on the tree
	end




	def pick_orange
	#reduce oranges on tree and add them to inventory
	end

	def check_inventory
		# check your inventory, right now this is just the amount of oranges 
	end

end

puts "Welcome to Orange Tree Simulator!"
puts "Please begin by entering your name: "
name = gets.chomp
puts "Welcome #{name}, to play this game you may type in commands to perform certain actions. The commands you have access to are as follows: ."
puts "	- Plant tree"
puts "	- Make time pass"
puts "	- Count fruit"
puts "	- Pick fruit"
puts "	- Check inventory"
puts " 	- Check tree height"
plant = Tree.new
x = 1
while x <= 10
plant.one_year_passes
x = x + 1
puts "#{@height}"
end

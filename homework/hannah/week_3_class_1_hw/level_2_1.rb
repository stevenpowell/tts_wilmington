class Account
	attr_accessor :name, :balance, :pin

	def initialize(name, balance, pin)
		@name = name
		@balance = balance
		@pin = pin
	end

	def display_balance
		if !check_pin
			pin_error
		else
			puts "Balance"
			printf('%.02f', @balance)
		end
	end

	def withdraw(amount)
		if check_pin
			if (@balance - amount) < 0
				puts "Cannot withdraw that amount.  Not enough money in the bank."
			else
				@balance -= amount
			end
		else
			pin_error
		end
	end

	def deposit(amount)
		if check_pin
			@balance += amount
		else
			pin_error
		end
	end

	def pin_error(pin)
		puts "Access denied: incorrect PIN."
	end

	def check_pin
		puts "Please enter your PIN"
		pin = gets.chomp

		if pin != @pin
			return false
		else
			return true
		end
	end
end

puts "Enter your name"
name = gets.chomp
puts "Enter your balance"
balance = gets.chomp.to_f
puts "Enter your pin"
pin = gets.chomp

account = Account.new(name, balance, pin)

puts "What would you like to do? withdraw, check balance, or deposit?"
action = gets.chomp.downcase
if action != 'withdraw' && action != 'check balance' && action != 'deposit' && action != 'done'
	puts "Invalid action. Please try again or type 'done' to exit"
	action = gets.chomp
end

if action != 'done'
	if action == 'withdraw'
		puts "Please enter amount to withdraw"
		amount = gets.to_f
		account.withdraw(amount)
	elsif action == 'check balance'
		account.display_balance
	elsif action == 'deposit'
		puts "Please enter amount to deposit"
		amount = gets.to_f
		account.deposit(amount)
	end
end

puts "Exiting.  Thank you and have a pleasant day."
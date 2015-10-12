
class WelcomeController < ApplicationController
      def index
      @drinks = [ 'Espresso', 'Latte', 'Cappuccino','Green Tea','Hot Tea']
      @size = [ 'Tall', 'Grande', 'Venti']
      end 
end


class CustomHelloController < ApplicationController

def method1
recent_posts = HTTParty.get("http://localhost:8080/WegoShop/api/getOrders")
orders = JSON.parse(recent_posts)
num=orders.size
total=0
                  for current_iteration_number in 0..num-1 do
                    
                            orders_temp = orders[current_iteration_number]
                            orders_json = orders_temp.to_json
                            puts orders_json
                            order = JSON.parse(orders_json)
                            orderNumber = order["orderNumber"];
                            totalPrice = order["totalPrice"];
                            drink = order["drink"];
                            noOfItems = order["noOfItems"];
                            size = order["size"];
                        
                        
                          (orderNumberarray ||= []).push(orderNumber)
                          (totalPricearray ||= []).push(totalPrice)
                           total = total + totalPrice
                          (drinkarray ||= []).push(drink)
                          (noOfItemsarray ||= []).push(noOfItems)
                          (sizearray ||= []).push(size)
                  end
                  
@orderNumberarray=orderNumberarray
@drinkarray =drinkarray
@totalPricearray = totalPricearray
@noi =noOfItemsarray
@size_type = sizearray
@total=total
end   


def method2
 @post = params[:user_search_id]
  recent_posts = HTTParty.post('http://localhost:8080/WegoShop/api/getOrderByDrink', 
    :body => { :drink =>  @post, 
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )
recent_posts.nil?
orderbody = JSON.parse(recent_posts)
num=orderbody.size
total=0
                       for current_iteration_number in 0..num-1 do
                            
                          order_temp = orderbody[current_iteration_number]
                          order_json = order_temp.to_json
                          puts order_json
                          order = JSON.parse(order_json)
                          orderNumber = order["orderNumber"];
                          totalPrice = order["totalPrice"];
                          drink = order["drink"];
                          noOfItems = order["noOfItems"];
                          size = order["size"];

                          (orderNumberarray ||= []).push(orderNumber)
                          (totalPricearray ||= []).push(totalPrice)
                           total = total + totalPrice
                          (drinkarray ||= []).push(drink)
                          (noOfItemsarray ||= []).push(noOfItems)
                          (sizearray ||= []).push(size)
                          
                      end
                      
@orderNumberarray=orderNumberarray
@drinkarray =drinkarray
@totalPricearray = totalPricearray
@noi =noOfItemsarray
@size_type = sizearray
@total=total
end


def method3
  @post = params[:user_search_id]
  recent_posts = HTTParty.post('http://localhost:8080/WegoShop/api/getOrderByType', 
    :body => { :type => @post, 
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )

orderbody = JSON.parse(recent_posts)
num=orderbody.size
total=0
                      for current_iteration_number in 0..num-1 do
                        
                            order_temp = orderbody[current_iteration_number]
                            order_json = order_temp.to_json
                            puts order_json
                            order = JSON.parse(order_json)
                            orderNumber = order["orderNumber"];
                            totalPrice = order["totalPrice"];
                            drink = order["drink"];
                            noOfItems = order["noOfItems"];
                            size = order["size"];
                      
                          (orderNumberarray ||= []).push(orderNumber)
                          (totalPricearray ||= []).push(totalPrice)
                           total = total + totalPrice
                          (drinkarray ||= []).push(drink)
                          (noOfItemsarray ||= []).push(noOfItems)
                          (sizearray ||= []).push(size)
                          
                      end
                      
@orderNumberarray=orderNumberarray
@drinkarray =drinkarray
@totalPricearray = totalPricearray
@noi =noOfItemsarray
@size_type = sizearray
@total=total
end

  def method5
    @size=params[:size]
    @n=params[:n]
    @drink=params[:drink]
  recent_posts = HTTParty.post('http://localhost:8080/WegoShop/api/insertOrder', 
      :body => { :type => @size, :drink => @drink,:n => @n,
               }.to_json,
      :headers => { 'Content-Type' => 'application/json' } )
  @result=recent_posts
  end


  def method4
  @drinks = [ 'Espresso', 'Latte', 'Cappuccino','Green Tea','Hot Tea']
  @size = [ 'Tall', 'Grande', 'Venti']
  end


end 

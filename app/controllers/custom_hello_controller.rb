
class CustomHelloController < ApplicationController

def method1
  
  
  recent_posts = HTTParty.get("http://localhost:8080/WegoShop/api/getOrders")

body = JSON.parse(recent_posts)
num=body.size
total=0
for current_iteration_number in 0..num-1 do
  id = body[current_iteration_number]
hjs = id.to_json
puts hjs
order = JSON.parse(hjs)
orderNumber = order["orderNumber"];
totalPrice = order["totalPrice"];
drink = order["drink"];
noOfItems = order["noOfItems"];
size = order["size"];
(a ||= []).push(orderNumber)

(b ||= []).push(totalPrice)
total = total + totalPrice
(c ||= []).push(drink)
(d ||= []).push(noOfItems)
(e ||= []).push(size)
end
@account_names=a
@combined_conversions =c
@combined_spend = b
@noi =d
@size_type = e
@total=total
  end   


def method2
 @post = params[:user_search_id]
  recent_posts = HTTParty.post('http://localhost:8080/WegoShop/api/getOrderByDrink', 
    :body => { :drink =>  @post, 
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )
recent_posts.nil?
body = JSON.parse(recent_posts)
num=body.size

total=0
for current_iteration_number in 0..num-1 do
  id = body[current_iteration_number]
hjs = id.to_json
puts hjs
order = JSON.parse(hjs)
orderNumber = order["orderNumber"];
totalPrice = order["totalPrice"];
drink = order["drink"];
noOfItems = order["noOfItems"];
size = order["size"];
(a ||= []).push(orderNumber)

(b ||= []).push(totalPrice)
total = total + totalPrice
(c ||= []).push(drink)
(d ||= []).push(noOfItems)
(e ||= []).push(size)
end
@account_names=a
@combined_conversions =c
@combined_spend = b
@noi =d
@size_type = e
@total=total
end


def method3
  @post = params[:user_search_id]
  recent_posts = HTTParty.post('http://localhost:8080/WegoShop/api/getOrderByType', 
    :body => { :type => @post, 
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )

body = JSON.parse(recent_posts)
num=body.size
total=0
for current_iteration_number in 0..num-1 do
  id = body[current_iteration_number]
hjs = id.to_json
puts hjs
order = JSON.parse(hjs)
orderNumber = order["orderNumber"];
totalPrice = order["totalPrice"];
drink = order["drink"];
noOfItems = order["noOfItems"];
size = order["size"];
(a ||= []).push(orderNumber)

(b ||= []).push(totalPrice)
total = total + totalPrice
(c ||= []).push(drink)
(d ||= []).push(noOfItems)
(e ||= []).push(size)
end
@account_names=a
@combined_conversions =c
@combined_spend = b
@noi =d
@size_type = e
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

# cash-register-app

<h2>Description:</h2>
<br>
With this small and simple app, the user is able to add and remove products to/from a basket and the app will automatically compute the total price. Taking into account different promotions: 
<br>
<ul>
  <li><strong> Bogo </strong> β in this case if you buy one you get one free; </li>
  <li><strong> Price Drop </strong> β if you buy more than 3 specific items the price will drop .50 β¬; and lastly, </li>
  <li><strong> 2/3 Discount </strong> β if you buy more than 3 of certain product the price will drop 33%. </li>
</ul>
<br>
This app is build following a MVC pattern that allows us to organize the code in a way in which the app can easily grow as we are able to add new products and conditions, in this case discounts/promotions. It is written in Ruby π; It follows a Test Driven Development (TDD) methodology, therefore it includes spec files to make sure the conditions work correctly.

<h2>Project Insights: </h2>
  <br>
  I decided to add a discount repository as it seemed easier to store current and future discounts there; I thought this could be the best way to make it easier to expand. Each product is composed by 3 attributes: code, name and price. Each item has a unique <strong> code </strong>, for example: Green Teaβs code is GR1. And <strong> price </strong> means the regular price of the product (without discount). 

In the same way, each discount has 4 attributes: product, type, quantity, and value. 
<ul>
  <li><strong> Product </strong> is just the name of the item in stock, I included 3: Green Tea π΅, Strawberries π and Coffee β. </li>
  <li><strong> Type </strong> means which category of discount: Bogo, Price Drop or 2/3 Discount; this attribute makes it less complicated to categorize the discounts and easier to apply the same discounts to different items. </li>
  <li><strong> Quantity </strong> means how many items the user needs to add to the basket in order to βunlockβ the promo. </li>
  <li><strong> Value </strong>, this last attribute refers to the price of the item once the discount is applied. </li>
</ul>

<h2>And to finishβ¦</h2>
  <br>
  Even though this is a small app, it was quite challenging as I consider myself to be more of a front end developer,
  and the last months I have been doing CSS and HTML mostly, and learning React; so I had to dust off my Ruby knowledge and get to work πͺπ».<br>
  
  ![](https://c.tenor.com/58DNSt-Lvw0AAAAM/corgi-computer.gif)
  
  In the future it would be a good practice to implement some frontend, maybe React. As now it is only a first-stage application with which we can interact through the terminalπ©π»βπ». Despite there are some minor changes that I would like to implement later on; overall, I am happy with the final result of the app. I believe is straightforward and easily adaptable

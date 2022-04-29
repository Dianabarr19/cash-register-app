# cash-register-app

<h2>Description:</h2>
With this small and simple app, the user is able to add products to a cart and will automatically compute the total price. Taking into account different promotions: Bogo – in this case if you buy one you get one free; Price Drop – if you buy more than 3 specific items the price will drop .50 €; and lastly 2/3 Discount – if you buy more than 3 of certain product the price will drop 33%.
This app is build following a MVC pattern that allows us to organize the code in a way in which the app can easily grow as we are able to add new products and conditions, in this case discounts/promotions. It is written in Ruby; It follows a Test Driven Development (TDD) methodology, therefore it includes spec files to make sure the conditions work correctly. 
In the future it would be a good practice to implement some frontend, maybe react. As now it is only a straightforward application with which we can interact through the terminal. 

<h2>Project Insights: </h2>
I decided to add a discount repository as it seemed easier to store current and future discounts there; I thought this could be the best way to make it easier to expand. Each product is composed by 3 attributes: code, name and price. Each item has a unique code, for example: Green Tea’s code is GR1. And price is the regular price of the product (without discount). In the same way, each discount has 4 attributes: product,  type, quantity, and value. Product is just the name of the item in stock, I included 3: Green Tea, Strawberries and Coffee. Type means which category of discount: Bogo, Price Drop; this attribute makes it less complicated to categorize the discounts and easier to apply the same discounts to different items. Quantity means how many items the user needs to add to the basket in order to ‘unlock’ the promo. And value, this last attribute refers to the price of the item once the discount is applied. 

<h2>And to finish…</h2>
Even though this is a small app, it was quite challenging as I consider myself to be more of a front end developer, and the last months I have been doing CSS and HTML mostly, and learning react; so I had to dust off my ruby knowledge. 

Despite there are some minor changes that I would like to implement later on; overall, I am happy with the final result of the app. I believe is straightforward and easily adaptable
![image](https://user-images.githubusercontent.com/90432547/165948339-b9be111a-02c0-4b21-8fa9-321e84aaa51c.png)
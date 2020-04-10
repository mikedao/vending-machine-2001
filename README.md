# Vending Machine Tracker
​
We're developing an application to track vending machines across the city. This will test your ability to set up and test many-to-many relationships and access attributes and methods through those relationships.
​
Vending machines may be stocked with different snacks, and the same snack may be available at many different places throughout the city. Before you begin: what does that mean the relationship is between vending machines and snacks? How many snacks does a vending machine have? How many vending machines can a snack be in?
​
## Be sure to read all user stories BEFORE beginning your work
​
Snacks table
  name
  price


MachineSnacks joins table
belongs to machine
belongs to snacks

on machine table need to create association
on snacks table need to create association

​
```
User Story 3 of 3
​
As a visitor
When I visit a snack show page
I see the name of that snack
  and I see the price for that snack
  and I see a list of locations with vending machines that carry that snack
  and I see the average price for snacks in those vending machines
  and I see a count of the different kinds of items in that vending machine.
```
​
### Example
​
```
Flaming Hot Cheetos
Price: $2.50
Locations
* Don's Mixed Drinks (3 kinds of snacks, average price of $2.50)
* Turing Basement (2 kinds of snacks, average price of $3.00)

# Vending Machine Tracker
​
We're developing an application to track vending machines across the city. This will test your ability to set up and test many-to-many relationships and access attributes and methods through those relationships.
​
Vending machines may be stocked with different snacks, and the same snack may be available at many different places throughout the city. Before you begin: what does that mean, "the relationship is between vending machines and snacks"? How many snacks does a vending machine have? How many vending machines can a snack be in?


​
## Be sure to read all user stories BEFORE beginning your work

## Setup

- Fork and clone this repo
- Perform the usual setup steps after cloning a Rails application



## Requirements

- TDD all new work; you do not need to test for or create validations

## Not Required

- No form input is required
- No visual styling is required


## User Stories

```
User Story 1 of 3

As a visitor
When I visit a vending machine show page
I see the name of all of the snacks associated with that vending machine along with their price
and I also see an average price for all of the snacks in that machine. 
```
Example:
```Don's Mixed Drinks
Snacks
* White Castle Burger: $3.50
* Pop Rocks: $1.50
* Flaming Hot Cheetos: $2.50
Average Price: $2.50
```

```
User Story 2 of 3
​
As a visitor
When I visit a vending machine show page
I see a form to add an existing snack to that vending machine
When I fill in the form with the ID of a snack that already exists in the database
And I click Submit
Then I am redirected to that vending machine's show page
And I see that snack is now listed. 
```



```
User Story 3 of 3

As a visitor
When I visit a snack show page
I see the name of that snack
  and I see the price for that snack
  and I see a list of locations with vending machines that carry that snack
  and I see the average price for snacks in those vending machines
  and I see a count of the different kinds of items in that vending machine.
```
​Example: 
```
Flaming Hot Cheetos
Price: $2.50
Locations
* Don's Mixed Drinks (3 kinds of snacks, average price of $2.50)
* Turing Basement (2 kinds of snacks, average price of $3.00)
```


**Extension**
```
As a visitor
When I visit a vending machine show page
I see a button (or link) next to each snack that says "Remove Snack"
When I click that button,
I am redirected to this vending machine's show page
And I no longer see that snack listed on this page
And when I visit a different vending machine's show page that also has that snack
I still see that snack listed. 
```

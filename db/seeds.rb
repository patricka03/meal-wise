# db/seeds.rb

puts "Cleaning database..."
Recipe.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.create!(
email: "patrick@example.com",
password: "password123"
)

user2 = User.create!(
email: "sarah@example.com",
password: "password123"
)

puts "Creating recipes..."

recipes = [
{
title: "Jollof Rice",
description: "A rich and flavourful West African rice dish.",
ingredients: "Rice, tomatoes, onions, pepper, seasoning, chicken stock",
instructions: "Blend tomatoes and peppers. Fry onions. Add tomato mix and seasoning. Add rice and stock then cook until soft.",
cook_time: 45,
prep_time: 15,
servings: 4,
difficulty: "Medium",
category: "Dinner",
user: user1
},
{
title: "Pancakes",
description: "Soft fluffy breakfast pancakes.",
ingredients: "Flour, milk, eggs, sugar, butter",
instructions: "Mix ingredients together. Pour batter into pan and cook both sides until golden.",
cook_time: 10,
prep_time: 10,
servings: 2,
difficulty: "Easy",
category: "Breakfast",
user: user2
},
{
title: "Chicken Alfredo",
description: "Creamy pasta with grilled chicken.",
ingredients: "Pasta, chicken breast, cream, garlic, parmesan",
instructions: "Cook pasta. Grill chicken. Make cream sauce and combine together.",
cook_time: 25,
prep_time: 15,
servings: 3,
difficulty: "Medium",
category: "Dinner",
user: user1
},
{
title: "Chocolate Cake",
description: "Moist homemade chocolate cake.",
ingredients: "Flour, cocoa powder, eggs, sugar, butter",
instructions: "Mix ingredients and bake in oven for 35 minutes.",
cook_time: 35,
prep_time: 20,
servings: 8,
difficulty: "Medium",
category: "Dessert",
user: user2
},
{
title: "French Toast",
description: "Classic sweet breakfast toast.",
ingredients: "Bread, eggs, milk, cinnamon, sugar",
instructions: "Dip bread in egg mixture and fry until golden brown.",
cook_time: 10,
prep_time: 5,
servings: 2,
difficulty: "Easy",
category: "Breakfast",
user: user1
},
{
title: "Beef Stir Fry",
description: "Quick beef and vegetable stir fry.",
ingredients: "Beef, peppers, broccoli, soy sauce, garlic",
instructions: "Cook beef first then add vegetables and sauce.",
cook_time: 20,
prep_time: 15,
servings: 4,
difficulty: "Medium",
category: "Dinner",
user: user2
},
{
title: "Cheesecake",
description: "Creamy baked cheesecake dessert.",
ingredients: "Cream cheese, biscuits, butter, sugar, eggs",
instructions: "Prepare base then bake cheesecake mixture.",
cook_time: 50,
prep_time: 25,
servings: 6,
difficulty: "Hard",
category: "Dessert",
user: user1
},
{
title: "Omelette",
description: "Simple cheese omelette.",
ingredients: "Eggs, cheese, butter, salt, pepper",
instructions: "Whisk eggs and cook in pan with cheese.",
cook_time: 5,
prep_time: 5,
servings: 1,
difficulty: "Easy",
category: "Breakfast",
user: user2
},
{
title: "Spaghetti Bolognese",
description: "Traditional Italian pasta dish.",
ingredients: "Spaghetti, minced beef, tomato sauce, onions, garlic",
instructions: "Cook beef and sauce then serve with spaghetti.",
cook_time: 30,
prep_time: 15,
servings: 4,
difficulty: "Medium",
category: "Dinner",
user: user1
},
{
title: "Apple Pie",
description: "Classic baked apple pie.",
ingredients: "Apples, flour, butter, sugar, cinnamon",
instructions: "Prepare pastry and apple filling then bake.",
cook_time: 45,
prep_time: 20,
servings: 6,
difficulty: "Hard",
category: "Dessert",
user: user2
},
{
title: "Avocado Toast",
description: "Healthy breakfast toast.",
ingredients: "Bread, avocado, lemon, salt, pepper",
instructions: "Toast bread and spread mashed avocado on top.",
cook_time: 5,
prep_time: 5,
servings: 1,
difficulty: "Easy",
category: "Breakfast",
user: user1
},
{
title: "Grilled Salmon",
description: "Healthy grilled salmon dinner.",
ingredients: "Salmon, lemon, garlic, olive oil",
instructions: "Season salmon and grill until cooked.",
cook_time: 20,
prep_time: 10,
servings: 2,
difficulty: "Medium",
category: "Dinner",
user: user2
},
{
title: "Brownies",
description: "Rich chocolate brownies.",
ingredients: "Chocolate, flour, butter, eggs, sugar",
instructions: "Mix ingredients and bake until fudgy.",
cook_time: 30,
prep_time: 15,
servings: 8,
difficulty: "Easy",
category: "Dessert",
user: user1
},
{
title: "Chicken Curry",
description: "Spicy homemade chicken curry.",
ingredients: "Chicken, curry powder, onions, garlic, coconut milk",
instructions: "Cook onions and spices then simmer chicken in sauce.",
cook_time: 40,
prep_time: 20,
servings: 4,
difficulty: "Medium",
category: "Dinner",
user: user2
},
{
title: "Banana Smoothie",
description: "Refreshing breakfast smoothie.",
ingredients: "Bananas, milk, honey, yogurt",
instructions: "Blend all ingredients until smooth.",
cook_time: 2,
prep_time: 5,
servings: 1,
difficulty: "Easy",
category: "Breakfast",
user: user1
},
{
title: "Tiramisu",
description: "Classic Italian dessert.",
ingredients: "Coffee, mascarpone, biscuits, cocoa powder",
instructions: "Layer ingredients and chill before serving.",
cook_time: 15,
prep_time: 30,
servings: 6,
difficulty: "Hard",
category: "Dessert",
user: user2
},
{
title: "Fried Rice",
description: "Quick homemade fried rice.",
ingredients: "Rice, eggs, peas, carrots, soy sauce",
instructions: "Cook vegetables and eggs then stir fry with rice.",
cook_time: 20,
prep_time: 10,
servings: 3,
difficulty: "Easy",
category: "Dinner",
user: user1
},
{
title: "Waffles",
description: "Golden crispy waffles.",
ingredients: "Flour, eggs, milk, sugar, butter",
instructions: "Prepare batter and cook in waffle machine.",
cook_time: 10,
prep_time: 10,
servings: 2,
difficulty: "Easy",
category: "Breakfast",
user: user2
},
{
title: "Lasagna",
description: "Layered beef lasagna.",
ingredients: "Lasagna sheets, minced beef, cheese, tomato sauce",
instructions: "Layer ingredients and bake until golden.",
cook_time: 50,
prep_time: 25,
servings: 5,
difficulty: "Hard",
category: "Dinner",
user: user1
},
{
title: "Ice Cream Sundae",
description: "Sweet and simple dessert.",
ingredients: "Ice cream, chocolate syrup, whipped cream, nuts",
instructions: "Assemble ingredients in serving bowl.",
cook_time: 2,
prep_time: 5,
servings: 2,
difficulty: "Easy",
category: "Dessert",
user: user2
}
]

recipes.each do |recipe|
Recipe.create!(recipe)
end

puts "Created #{Recipe.count} recipes"
puts "Finished seeding!"

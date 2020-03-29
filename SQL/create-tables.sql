DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS ingredientsForRecipe;
DROP TABLE IF EXISTS ingredients;
DROP TABLE IF EXISTS measurents;

CREATE TABLE recipes (
    recipeID int,
    recipeName varchar(255),
    recipeInstructions TEXT
);

CREATE TABLE ingredientsForRecipe (
    recipeID int,
    ingredientID int,
    measurementID int
);

CREATE TABLE ingredients (
    ingredientID int,
    ingredientName varchar(255)
);

CREATE TABLE measurents (
    measurementID int,
    measurementSTR VARCHAR(255)
);

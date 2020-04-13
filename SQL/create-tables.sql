DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS glasses;
DROP TABLE IF EXISTS ingredientsForRecipe;
DROP TABLE IF EXISTS ingredients;
DROP TABLE IF EXISTS measurement;

CREATE TABLE recipes (
    recipeID int,
    recipeName varchar(255),
    drinkCategory varchar(255),
    glassID int,
    recipeInstructions TEXT,
    imgLink varchar(255)
);

CREATE TABLE glasses (
    glassID int,
    glassType varchar(255)
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

CREATE TABLE measurement (
    measurementID int,
    measurementSTR varchar(255)
);

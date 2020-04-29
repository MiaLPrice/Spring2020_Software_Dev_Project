DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS glasses;
DROP TABLE IF EXISTS ingredientsForRecipe;
DROP TABLE IF EXISTS ingredients;
DROP TABLE IF EXISTS measurement;

CREATE TABLE recipes (
    recipeID int,
    recipeName TEXT,
    drinkCategory TEXT,
    glassID int,
    recipeInstructions TEXT,
    imgLink TEXT
);

CREATE TABLE glasses (
    glassID int,
    glassType TEXT
);

CREATE TABLE ingredientsForRecipe (
    recipeID int,
    ingredientID int,
    measurementID int
);

CREATE TABLE ingredients (
    ingredientID int,
    ingredientName TEXT
);

CREATE TABLE measurement (
    measurementID int,
    measurementSTR TEXT
);

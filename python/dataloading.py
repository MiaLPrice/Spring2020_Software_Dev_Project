import psycopg2
import pandas as pd
import sys
import re

'''
    table                 done
    recipes                 x
    glasses                 x
    ingredientsForRecipes   x
    ingredients             x
    measurements            x
'''

try:
    conn = psycopg2.connect("user = 'postgres' host = 'localhost' password='postgres'")
except psycopg2.DatabaseError:
   print('I am unable to connect the database')
   sys.exit(1)

cursor = conn.cursor()

drinks_csv = pd.read_csv("files/all_drinks.csv")

# start with recipes 
# work your way into ingredients 
# then into measurements --- glasses 



# fill the glasses table
count = 1
glasses = {}
for each in drinks_csv['strGlass']:
    glasses.update( { each : count } )
    count = count + 1

for each in glasses:
    query =  """INSERT INTO glasses (glassID, glassType) VALUES (%s, %s)"""
    record = (glasses[each], each)
    cursor.execute(query, record)

# fill the recipes table
recipes = {} 
for i in range(0 , len(drinks_csv['idDrink'])):
    query =  """INSERT INTO recipes (recipeID, recipeName, drinkCategory, 
        glassID, recipeINstructions, imgLink) VALUES (%s, %s, %s, %s, %s, %s)"""

    index_for = int(drinks_csv['idDrink'][i])
    recipe_name = drinks_csv['strDrink'][i]
    recipes.update( { recipe_name : index_for } )
    record = (  str(index_for), 
                recipe_name, 
                drinks_csv['strCategory'][i], 
                glasses[drinks_csv['strGlass'][i]], 
                drinks_csv['strInstructions'][i], 
                drinks_csv['strDrinkThumb'][i])
    cursor.execute(query, record)

# fill the ingredients and measurements table 
basicIngStr= "strIngredient"
basicMeaStr = "strMeasure"
ingredients = {} 
measurements = {} 

count = 1
for i in range(1, 16):
    ingName = basicIngStr + str(i)
    meaName = basicMeaStr + str(i)
    for j in range(0, len(drinks_csv[ingName])):
        if pd.isna(drinks_csv[ingName][j]) != True:
            ingredients.update( { drinks_csv[ingName][j] : count } )
            measurements.update( { drinks_csv[meaName][j] : count } )
        count = count + 1

for each in ingredients:
    query =  """INSERT INTO ingredients (ingredientID, ingredientName) VALUES (%s, %s)"""
    record = (ingredients[each], each)
    cursor.execute(query, record)

for each in measurements:
    query =  """INSERT INTO measurement (measurementID, measurementSTR) VALUES (%s, %s)"""
    record = (measurements[each], each)
    cursor.execute(query, record)

# fill the ingredientsForRecipe table 
for i in range(0 , len(drinks_csv['idDrink'])):
    recipe_name = drinks_csv['strDrink'][i]
    recipeID = recipes[recipe_name]
    for j in range(1, 16):
        ingName = basicIngStr + str(j)
        meaName = basicMeaStr + str(j)
        if pd.isna(drinks_csv[ingName][i]) != True and pd.isna(drinks_csv[meaName][i]) != True:
            ingredientID = ingredients[drinks_csv[ingName][i]]
            measurentID = measurements[drinks_csv[meaName][i]]
            query =  """INSERT INTO ingredientsForRecipe (recipeID, ingredientID, measurementID) VALUES (%s, %s, %s)"""
            record = (recipeID, ingredientID, measurentID)
            cursor.execute(query, record)
            
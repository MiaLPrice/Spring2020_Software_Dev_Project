import psycopg2
import pandas as pd
import sys
import re

'''
    table                 done
    recipes                 x
    glasses                 x
    ingredientsForRecipes   
    ingredients             
    measurements            
'''

try:
    conn = psycopg2.connect("dbname = 'softdev_project' user = 'postgres' password='abc123456' host = 'localhost'")
except psycopg2.DatabaseError:
   print('I am unable to connect the database')
   sys.exit(1)

cursor = conn.cursor()

drinks_csv = pd.read_csv("files/all_drinks.csv")

# start with recipes 
# work your way into ingredients 
# then into measurements --- glasses 

count = 1
glasses = {}
for each in drinks_csv: 
    glass[each['strGlass']] = [count]
    count = count + 1

for each in glasses:
    query =  """INSERT INTO glasses (glassID, glassType) VALUES (%s, %s)"""
    record = (glasses[each], each)
    cursor.execute(query, record)

for each in drinks_csv: 
    query =  """INSERT INTO recipes (recipeID, recipeName, drinkCategory, 
        glassID, recipeINstructions, imgLink) VALUES (%s, %s, %s, %s, %s, %s)"""
    record = (each['recipeID'], each['strDrink'], each['strCategory'], glasses[each['strGlass']], each['strInstructions'], 
                    each['strDrinkThumb'])
    cursor.execute(query, record)
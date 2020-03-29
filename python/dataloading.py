import psycopg2
import pandas as pd
import sys
import re


try:
    conn = psycopg2.connect("dbname = 'softdev_project' user = 'postgres' password='abC123456' host = 'localhost'")
except psycopg2.DatabaseError:
    print('I am unable to connect the database')
    sys.exit(1)
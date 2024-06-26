﻿# The SQL BETWEEN Operator
# The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
#
# The BETWEEN operator is inclusive: begin and end values are included.
#
# ExampleGet your own SQL Serve

use personal_database;

select *
from products
where Price between  10 and 20;
/*
 +-----------+---------------------------------+------------+------------+---------------------+-------+
| ProductID | ProductName                     | SupplierID | CategoryID | Unit                | Price |
+-----------+---------------------------------+------------+------------+---------------------+-------+
|         1 | Chais                           |          1 |          1 | 10 boxes x 20 bags  | 18.00 |
|         2 | Chang                           |          1 |          1 | 24 - 12 oz bottles  | 19.00 |
|         3 | Aniseed Syrup                   |          1 |          2 | 12 - 550 ml bottles | 10.00 |
|        15 | Genen Shouyu                    |          6 |          2 | 24 - 250 ml bottles | 15.50 |
|        16 | Pavlova                         |          7 |          3 | 32 - 500 g boxes    | 17.45 |
|        21 | Sir Rodney's Scones             |          8 |          3 | 24 pkgs. x 4 pieces | 10.00 |
|        25 | NuNuCa Nuß-Nougat-Creme         |         11 |          3 | 20 - 450 g glasses  | 14.00 |
|        31 | Gorgonzola Telino               |         14 |          4 | 12 - 100 g pkgs     | 12.50 |
|        34 | Sasquatch Ale                   |         16 |          1 | 24 - 12 oz bottles  | 14.00 |
|        35 | Steeleye Stout                  |         16 |          1 | 24 - 12 oz bottles  | 18.00 |
|        36 | Inlagd Sill                     |         17 |          8 | 24 - 250 g jars     | 19.00 |
|        39 | Chartreuse verte                |         18 |          1 | 750 cc per bottle   | 18.00 |
|        40 | Boston Crab Meat                |         19 |          8 | 24 - 4 oz tins      | 18.40 |
|        42 | Singaporean Hokkien Fried Mee   |         20 |          5 | 32 - 1 kg pkgs.     | 14.00 |
|        44 | Gula Malacca                    |         20 |          2 | 20 - 2 kg bags      | 19.45 |
|        46 | Spegesild                       |         21 |          8 | 4 - 450 g glasses   | 12.00 |
|        48 | Chocolade                       |         22 |          3 | 10 pkgs.            | 12.75 |
|        49 | Maxilaku                        |         23 |          3 | 24 - 50 g pkgs.     | 20.00 |
|        50 | Valkoinen suklaa                |         23 |          3 | 12 - 100 g bars     | 16.25 |
|        57 | Ravioli Angelo                  |         26 |          5 | 24 - 250 g pkgs.    | 19.50 |
|        58 | Escargots de Bourgogne          |         27 |          8 | 24 pieces           | 13.25 |
|        66 | Louisiana Hot Spiced Okra       |          2 |          2 | 24 - 8 oz jars      | 17.00 |
|        67 | Laughing Lumberjack Lager       |         16 |          1 | 24 - 12 oz bottles  | 14.00 |
|        68 | Scottish Longbreads             |          8 |          3 | 10 boxes x 8 pieces | 12.50 |
|        70 | Outback Lager                   |          7 |          1 | 24 - 355 ml bottles | 15.00 |
|        73 | Röd Kaviar                      |         17 |          8 | 24 - 150 g jars     | 15.00 |
|        74 | Longlife Tofu                   |          4 |          7 | 5 kg pkg.           | 10.00 |
|        76 | Lakkalikööri                    |         23 |          1 | 500 ml              | 18.00 |
|        77 | Original Frankfurter grüne Soße |         12 |          2 | 12 boxes            | 13.00 |
+-----------+---------------------------------+------------+------------+---------------------+-------+
 */

 select * from products
 where Price not between 10 and 20;

/*
 +-----------+----------------------------------+------------+------------+----------------------+-------+
| ProductID | ProductName                      | SupplierID | CategoryID | Unit                 | Price |
+-----------+----------------------------------+------------+------------+----------------------+-------+
|         4 | Chef Anton's Cajun Seasoning     |          2 |          2 | 48 - 6 oz jars       | 22.00 |
|         5 | Chef Anton's Gumbo Mix           |          2 |          2 | 36 boxes             | 21.35 |
|         6 | Grandma's Boysenberry Spread     |          3 |          2 | 12 - 8 oz jars       | 25.00 |
|         7 | Uncle Bob's Organic Dried Pears  |          3 |          7 | 12 - 1 lb pkgs.      | 30.00 |
|         8 | Northwoods Cranberry Sauce       |          3 |          2 | 12 - 12 oz jars      | 40.00 |
|        10 | Ikura                            |          4 |          8 | 12 - 200 ml jars     | 31.00 |
|        11 | Queso Cabrales                   |          5 |          4 | 1 kg pkg.            | 21.00 |
|        12 | Queso Manchego La Pastora        |          5 |          4 | 10 - 500 g pkgs.     | 38.00 |
|        13 | Konbu                            |          6 |          8 | 2 kg box             |  6.00 |
|        14 | Tofu                             |          6 |          7 | 40 - 100 g pkgs.     | 23.25 |
|        17 | Alice Mutton                     |          7 |          6 | 20 - 1 kg tins       | 39.00 |
|        19 | Teatime Chocolate Biscuits       |          8 |          3 | 10 boxes x 12 pieces |  9.20 |
|        22 | Gustaf's Knäckebröd              |          9 |          5 | 24 - 500 g pkgs.     | 21.00 |
|        23 | Tunnbröd                         |          9 |          5 | 12 - 250 g pkgs.     |  9.00 |
|        24 | Guaraná Fantástica               |         10 |          1 | 12 - 355 ml cans     |  4.50 |
|        26 | Gumbär Gummibärchen              |         11 |          3 | 100 - 250 g bags     | 31.23 |
|        27 | Schoggi Schokolade               |         11 |          3 | 100 - 100 g pieces   | 43.90 |
|        28 | Rössle Sauerkraut                |         12 |          7 | 25 - 825 g cans      | 45.60 |
|        30 | Nord-Ost Matjeshering            |         13 |          8 | 10 - 200 g glasses   | 25.89 |
|        32 | Mascarpone Fabioli               |         14 |          4 | 24 - 200 g pkgs.     | 32.00 |
|        33 | Geitost                          |         15 |          4 | 500 g                |  2.50 |
|        37 | Gravad lax                       |         17 |          8 | 12 - 500 g pkgs.     | 26.00 |
|        41 | Jack's New England Clam Chowder  |         19 |          8 | 12 - 12 oz cans      |  9.65 |
|        43 | Ipoh Coffee                      |         20 |          1 | 16 - 500 g tins      | 46.00 |
|        45 | Røgede sild                      |         21 |          8 | 1k pkg.              |  9.50 |
|        47 | Zaanse koeken                    |         22 |          3 | 10 - 4 oz boxes      |  9.50 |
|        52 | Filo Mix                         |         24 |          5 | 16 - 2 kg boxes      |  7.00 |
|        53 | Perth Pasties                    |         24 |          6 | 48 pieces            | 32.80 |
|        54 | Tourtière                        |         25 |          6 | 16 pies              |  7.45 |
|        55 | Pâté chinois                     |         25 |          6 | 24 boxes x 2 pies    | 24.00 |
|        56 | Gnocchi di nonna Alice           |         26 |          5 | 24 - 250 g pkgs.     | 38.00 |
|        60 | Camembert Pierrot                |         28 |          4 | 15 - 300 g rounds    | 34.00 |
|        61 | Sirop d'érable                   |         29 |          2 | 24 - 500 ml bottles  | 28.50 |
|        62 | Tarte au sucre                   |         29 |          3 | 48 pies              | 49.30 |
|        63 | Vegie-spread                     |          7 |          2 | 15 - 625 g jars      | 43.90 |
|        64 | Wimmers gute Semmelknödel        |         12 |          5 | 20 bags x 4 pieces   | 33.25 |
|        65 | Louisiana Fiery Hot Pepper Sauce |          2 |          2 | 32 - 8 oz bottles    | 21.05 |
|        69 | Gudbrandsdalsost                 |         15 |          4 | 10 kg pkg.           | 36.00 |
|        71 | Fløtemysost                      |         15 |          4 | 10 - 500 g pkgs.     | 21.50 |
|        72 | Mozzarella di Giovanni           |         14 |          4 | 24 - 200 g pkgs.     | 34.80 |
|        75 | Rhönbräu Klosterbier             |         12 |          1 | 24 - 0.5 l bottles   |  7.75 |
+-----------+----------------------------------+------------+------------+----------------------+-------+
 */
 select * from products
 where Price between 10 and 20
 and CategoryID in (1,2,3);
/*
 +-----------+---------------------------------+------------+------------+---------------------+-------+
| ProductID | ProductName                     | SupplierID | CategoryID | Unit                | Price |
+-----------+---------------------------------+------------+------------+---------------------+-------+
|         1 | Chais                           |          1 |          1 | 10 boxes x 20 bags  | 18.00 |
|         2 | Chang                           |          1 |          1 | 24 - 12 oz bottles  | 19.00 |
|         3 | Aniseed Syrup                   |          1 |          2 | 12 - 550 ml bottles | 10.00 |
|        15 | Genen Shouyu                    |          6 |          2 | 24 - 250 ml bottles | 15.50 |
|        16 | Pavlova                         |          7 |          3 | 32 - 500 g boxes    | 17.45 |
|        21 | Sir Rodney's Scones             |          8 |          3 | 24 pkgs. x 4 pieces | 10.00 |
|        25 | NuNuCa Nuß-Nougat-Creme         |         11 |          3 | 20 - 450 g glasses  | 14.00 |
|        34 | Sasquatch Ale                   |         16 |          1 | 24 - 12 oz bottles  | 14.00 |
|        35 | Steeleye Stout                  |         16 |          1 | 24 - 12 oz bottles  | 18.00 |
|        39 | Chartreuse verte                |         18 |          1 | 750 cc per bottle   | 18.00 |
|        44 | Gula Malacca                    |         20 |          2 | 20 - 2 kg bags      | 19.45 |
|        48 | Chocolade                       |         22 |          3 | 10 pkgs.            | 12.75 |
|        49 | Maxilaku                        |         23 |          3 | 24 - 50 g pkgs.     | 20.00 |
|        50 | Valkoinen suklaa                |         23 |          3 | 12 - 100 g bars     | 16.25 |
|        66 | Louisiana Hot Spiced Okra       |          2 |          2 | 24 - 8 oz jars      | 17.00 |
|        67 | Laughing Lumberjack Lager       |         16 |          1 | 24 - 12 oz bottles  | 14.00 |
|        68 | Scottish Longbreads             |          8 |          3 | 10 boxes x 8 pieces | 12.50 |
|        70 | Outback Lager                   |          7 |          1 | 24 - 355 ml bottles | 15.00 |
|        76 | Lakkalikööri                    |         23 |          1 | 500 ml              | 18.00 |
|        77 | Original Frankfurter grüne Soße |         12 |          2 | 12 boxes            | 13.00 |
+-----------+---------------------------------+------------+------------+---------------------+-------+
 */
SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
/*
 +-----------+----------------------------------+------------+------------+---------------------+-------+
| ProductID | ProductName                      | SupplierID | CategoryID | Unit                | Price |
+-----------+----------------------------------+------------+------------+---------------------+-------+
|         1 | Chais                            |          1 |          1 | 10 boxes x 20 bags  | 18.00 |
|         2 | Chang                            |          1 |          1 | 24 - 12 oz bottles  | 19.00 |
|        39 | Chartreuse verte                 |         18 |          1 | 750 cc per bottle   | 18.00 |
|         4 | Chef Anton's Cajun Seasoning     |          2 |          2 | 48 - 6 oz jars      | 22.00 |
|         5 | Chef Anton's Gumbo Mix           |          2 |          2 | 36 boxes            | 21.35 |
|        48 | Chocolade                        |         22 |          3 | 10 pkgs.            | 12.75 |
|        58 | Escargots de Bourgogne           |         27 |          8 | 24 pieces           | 13.25 |
|        52 | Filo Mix                         |         24 |          5 | 16 - 2 kg boxes     |  7.00 |
|        71 | Fløtemysost                      |         15 |          4 | 10 - 500 g pkgs.    | 21.50 |
|        33 | Geitost                          |         15 |          4 | 500 g               |  2.50 |
|        15 | Genen Shouyu                     |          6 |          2 | 24 - 250 ml bottles | 15.50 |
|        56 | Gnocchi di nonna Alice           |         26 |          5 | 24 - 250 g pkgs.    | 38.00 |
|        31 | Gorgonzola Telino                |         14 |          4 | 12 - 100 g pkgs     | 12.50 |
|         6 | Grandma's Boysenberry Spread     |          3 |          2 | 12 - 8 oz jars      | 25.00 |
|        37 | Gravad lax                       |         17 |          8 | 12 - 500 g pkgs.    | 26.00 |
|        24 | Guaraná Fantástica               |         10 |          1 | 12 - 355 ml cans    |  4.50 |
|        69 | Gudbrandsdalsost                 |         15 |          4 | 10 kg pkg.          | 36.00 |
|        44 | Gula Malacca                     |         20 |          2 | 20 - 2 kg bags      | 19.45 |
|        26 | Gumbär Gummibärchen              |         11 |          3 | 100 - 250 g bags    | 31.23 |
|        22 | Gustaf's Knäckebröd              |          9 |          5 | 24 - 500 g pkgs.    | 21.00 |
|        10 | Ikura                            |          4 |          8 | 12 - 200 ml jars    | 31.00 |
|        36 | Inlagd Sill                      |         17 |          8 | 24 - 250 g jars     | 19.00 |
|        43 | Ipoh Coffee                      |         20 |          1 | 16 - 500 g tins     | 46.00 |
|        41 | Jack's New England Clam Chowder  |         19 |          8 | 12 - 12 oz cans     |  9.65 |
|        13 | Konbu                            |          6 |          8 | 2 kg box            |  6.00 |
|        76 | Lakkalikööri                     |         23 |          1 | 500 ml              | 18.00 |
|        67 | Laughing Lumberjack Lager        |         16 |          1 | 24 - 12 oz bottles  | 14.00 |
|        74 | Longlife Tofu                    |          4 |          7 | 5 kg pkg.           | 10.00 |
|        65 | Louisiana Fiery Hot Pepper Sauce |          2 |          2 | 32 - 8 oz bottles   | 21.05 |
|        66 | Louisiana Hot Spiced Okra        |          2 |          2 | 24 - 8 oz jars      | 17.00 |
|        32 | Mascarpone Fabioli               |         14 |          4 | 24 - 200 g pkgs.    | 32.00 |
|        49 | Maxilaku                         |         23 |          3 | 24 - 50 g pkgs.     | 20.00 |
|        72 | Mozzarella di Giovanni           |         14 |          4 | 24 - 200 g pkgs.    | 34.80 |
+-----------+----------------------------------+------------+------------+---------------------+-------+
 */

SELECT * FROM Products
WHERE ProductName not  BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
/*
+-----------+---------------------------------+------------+------------+----------------------+-------+
| ProductID | ProductName                     | SupplierID | CategoryID | Unit                 | Price |
+-----------+---------------------------------+------------+------------+----------------------+-------+
|        17 | Alice Mutton                    |          7 |          6 | 20 - 1 kg tins       | 39.00 |
|         3 | Aniseed Syrup                   |          1 |          2 | 12 - 550 ml bottles  | 10.00 |
|        40 | Boston Crab Meat                |         19 |          8 | 24 - 4 oz tins       | 18.40 |
|        60 | Camembert Pierrot               |         28 |          4 | 15 - 300 g rounds    | 34.00 |
|        30 | Nord-Ost Matjeshering           |         13 |          8 | 10 - 200 g glasses   | 25.89 |
|         8 | Northwoods Cranberry Sauce      |          3 |          2 | 12 - 12 oz jars      | 40.00 |
|        25 | NuNuCa Nuß-Nougat-Creme         |         11 |          3 | 20 - 450 g glasses   | 14.00 |
|        77 | Original Frankfurter grüne Soße |         12 |          2 | 12 boxes             | 13.00 |
|        70 | Outback Lager                   |          7 |          1 | 24 - 355 ml bottles  | 15.00 |
|        55 | Pâté chinois                    |         25 |          6 | 24 boxes x 2 pies    | 24.00 |
|        16 | Pavlova                         |          7 |          3 | 32 - 500 g boxes     | 17.45 |
|        53 | Perth Pasties                   |         24 |          6 | 48 pieces            | 32.80 |
|        11 | Queso Cabrales                  |          5 |          4 | 1 kg pkg.            | 21.00 |
|        12 | Queso Manchego La Pastora       |          5 |          4 | 10 - 500 g pkgs.     | 38.00 |
|        57 | Ravioli Angelo                  |         26 |          5 | 24 - 250 g pkgs.     | 19.50 |
|        75 | Rhönbräu Klosterbier            |         12 |          1 | 24 - 0.5 l bottles   |  7.75 |
|        73 | Röd Kaviar                      |         17 |          8 | 24 - 150 g jars      | 15.00 |
|        45 | Røgede sild                     |         21 |          8 | 1k pkg.              |  9.50 |
|        28 | Rössle Sauerkraut               |         12 |          7 | 25 - 825 g cans      | 45.60 |
|        34 | Sasquatch Ale                   |         16 |          1 | 24 - 12 oz bottles   | 14.00 |
|        27 | Schoggi Schokolade              |         11 |          3 | 100 - 100 g pieces   | 43.90 |
|        68 | Scottish Longbreads             |          8 |          3 | 10 boxes x 8 pieces  | 12.50 |
|        42 | Singaporean Hokkien Fried Mee   |         20 |          5 | 32 - 1 kg pkgs.      | 14.00 |
|        21 | Sir Rodney's Scones             |          8 |          3 | 24 pkgs. x 4 pieces  | 10.00 |
|        61 | Sirop d'érable                  |         29 |          2 | 24 - 500 ml bottles  | 28.50 |
|        46 | Spegesild                       |         21 |          8 | 4 - 450 g glasses    | 12.00 |
|        35 | Steeleye Stout                  |         16 |          1 | 24 - 12 oz bottles   | 18.00 |
|        62 | Tarte au sucre                  |         29 |          3 | 48 pies              | 49.30 |
|        19 | Teatime Chocolate Biscuits      |          8 |          3 | 10 boxes x 12 pieces |  9.20 |
|        14 | Tofu                            |          6 |          7 | 40 - 100 g pkgs.     | 23.25 |
|        54 | Tourtière                       |         25 |          6 | 16 pies              |  7.45 |
|        23 | Tunnbröd                        |          9 |          5 | 12 - 250 g pkgs.     |  9.00 |
|         7 | Uncle Bob's Organic Dried Pears |          3 |          7 | 12 - 1 lb pkgs.      | 30.00 |
|        50 | Valkoinen suklaa                |         23 |          3 | 12 - 100 g bars      | 16.25 |
|        63 | Vegie-spread                    |          7 |          2 | 15 - 625 g jars      | 43.90 |
|        64 | Wimmers gute Semmelknödel       |         12 |          5 | 20 bags x 4 pieces   | 33.25 |
|        47 | Zaanse koeken                   |         22 |          3 | 10 - 4 oz boxes      |  9.50 |
+-----------+---------------------------------+------------+------------+----------------------+-------+

 */

select *
from employees
where personal_database.employees.BirthDate  between '1960-01-01' and '1970-07-30';
/*
 +------------+-----------+-----------+------------+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EmployeeID | LastName  | FirstName | BirthDate  | Photo      | Notes
                                                                                                                                            |
+------------+-----------+-----------+------------+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|          1 | Davolio   | Nancy     | 1968-12-08 | EmpID1.pic | Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of "Toastmasters International".                                                                                                                                                |
|          3 | Leverling | Janet     | 1963-08-30 | EmpID3.pic | Janet has a BS degree in chemistry from Boston College. She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.                                                                                                      |
|          6 | Suyama    | Michael   | 1963-07-02 | EmpID6.pic | Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional". He is fluent in Japanese and can read and write French, Portuguese, and Spanish. |
|          7 | King      | Robert    | 1960-05-29 | EmpID7.pic | Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled "Selling in Europe", he was transferred to the London office.                                                    |
|          9 | Dodsworth | Anne      | 1969-07-02 | EmpID9.pic | Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.
                                                                                                                                            |
+------------+-----------+-----------+------------+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
 */

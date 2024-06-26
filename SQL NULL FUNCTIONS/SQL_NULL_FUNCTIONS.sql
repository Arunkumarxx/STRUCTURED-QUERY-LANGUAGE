﻿# In MySQL, you can use the IFNULL() function to handle NULL values.

# It returns the first non-NULL expression among its arguments. The syntax for the IFNULL() function is:

# sql
# Copy code
# IFNULL(expr1, expr2)
# Here's what each part of the syntax means:

# expr1: This is the expression that you want to check for NULL. If expr1 is not NULL, the IFNULL() function returns expr1.
# expr2: This is the value that is returned if expr1 is NULL.
# If expr1 is NULL, the IFNULL() function returns expr2.

# Here's an example of how you can use the IFNULL() function in a SQL query:

update customers
set CustomerName=null
where CustomerID=2;

# [2024-05-29 20:24:14] 1 row affected in 1 ms

select ifnull(CustomerName,'Unknown') as CustomerName,ifnull(City,'Unknown') as city from customers;

/*
 +--------------------------------------+-----------------+
| CustomerName                         | city            |
+--------------------------------------+-----------------+
| Alfreds Futterkiste                  | Berlin          |
| Unknown                              | México D.F.     |
| Antonio Moreno Taquería              | México D.F.     |
| Around the Horn                      | London          |
| Berglunds snabbköp                   | Luleå           |
| Blauer See Delikatessen              | Mannheim        |
| Blondel père et fils                 | Strasbourg      |
| Bólido Comidas preparadas            | Madrid          |
| Bon app'                             | Marseille       |
| Bottom-Dollar Marketse               | Tsawassen       |
| B's Beverages                        | London          |
| Cactus Comidas para llevar           | Buenos Aires    |
| Centro comercial Moctezuma           | México D.F.     |
| Chop-suey Chinese                    | Bern            |
| Comércio Mineiro                     | São Paulo       |
| Consolidated Holdings                | London          |
| Drachenblut Delikatessend            | Aachen          |
| Du monde entier                      | Nantes          |
| Eastern Connection                   | London          |
| Ernst Handel                         | Graz            |
| Familia Arquibaldo                   | São Paulo       |
| FISSA Fabrica Inter. Salchichas S.A. | Madrid          |
| Folies gourmandes                    | Lille           |
| Folk och fä HB                       | Bräcke          |
| Frankenversand                       | München         |
| France restauration                  | Nantes          |
| Franchi S.p.A.                       | Torino          |
| Furia Bacalhau e Frutos do Mar       | Lisboa          |
| Galería del gastrónomo               | Barcelona       |
| Godos Cocina Típica                  | Sevilla         |
| Gourmet Lanchonetes                  | Campinas        |
| Great Lakes Food Market              | Eugene          |
| GROSELLA-Restaurante                 | Caracas         |
| Hanari Carnes                        | Rio de Janeiro  |
| HILARIÓN-Abastos                     | San Cristóbal   |
| Hungry Coyote Import Store           | Elgin           |
| Hungry Owl All-Night Grocers         | Cork            |
| Island Trading                       | Cowes           |
| Königlich Essen                      | Brandenburg     |
| La corne d'abondance                 | Versailles      |
| La maison d'Asie                     | Toulouse        |
| Laughing Bacchus Wine Cellars        | Vancouver       |
| Lazy K Kountry Store                 | Walla Walla     |
| Lehmanns Marktstand                  | Frankfurt a.M.  |
| Let's Stop N Shop                    | San Francisco   |
| LILA-Supermercado                    | Barquisimeto    |
| LINO-Delicateses                     | I. de Margarita |
| Lonesome Pine Restaurant             | Portland        |
| Magazzini Alimentari Riuniti         | Bergamo         |
| Maison Dewey                         | Bruxelles       |
| Mère Paillarde                       | Montréal        |
| Morgenstern Gesundkost               | Leipzig         |
| North/South                          | London          |
| Océano Atlántico Ltda.               | Buenos Aires    |
| Old World Delicatessen               | Anchorage       |
| Ottilies Käseladen                   | Köln            |
| Paris spécialités                    | Paris           |
| Pericles Comidas clásicas            | México D.F.     |
| Piccolo und mehr                     | Salzburg        |
| Princesa Isabel Vinhoss              | Lisboa          |
| Que Delícia                          | Rio de Janeiro  |
| Queen Cozinha                        | São Paulo       |
| QUICK-Stop                           | Cunewalde       |
| Rancho grande                        | Buenos Aires    |
| Rattlesnake Canyon Grocery           | Albuquerque     |
| Reggiani Caseifici                   | Reggio Emilia   |
| Ricardo Adocicados                   | Rio de Janeiro  |
| Richter Supermarkt                   | Genève          |
| Romero y tomillo                     | Madrid          |
| Santé Gourmet                        | Stavern         |
| Save-a-lot Markets                   | Boise           |
| Seven Seas Imports                   | London          |
| Simons bistro                        | København       |
| Spécialités du monde                 | Lyon            |
| Split Rail Beer & Ale                | Lander          |
| Suprêmes délices                     | Charleroi       |
| The Big Cheese                       | Portland        |
| The Cracker Box                      | Butte           |
| Toms Spezialitäten                   | Münster         |
| Tortuga Restaurante                  | México D.F.     |
| Tradição Hipermercados               | São Paulo       |
| Trail's Head Gourmet Provisioners    | Kirkland        |
| Vaffeljernet                         | Århus           |
| Victuailles en stock                 | Lyon            |
| Vins et alcools Chevalier            | Reims           |
| Die Wandernde Kuh                    | Stuttgart       |
| Wartian Herkku                       | Oulu            |
| Wellington Importadora               | Resende         |
| White Clover Markets                 | Seattle         |
| Wilman Kala                          | Helsinki        |
| Wolski                               | Walla           |
+--------------------------------------+-----------------+
 */

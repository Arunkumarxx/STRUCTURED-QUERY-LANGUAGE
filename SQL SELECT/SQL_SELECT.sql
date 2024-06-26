﻿# SQL SELECT Statement

# The SELECT statement
# it is used to select data from a database.
# SELECT column1, column2, ...
# FROM table_name;

# Syntax
# SELECT column1, column2, ...
# FROM table_name;
USE personal_database;

SELECT CustomerName,City
FROM Customers;
/*
+--------------------------------------+-----------------+
| CustomerName                         | City            |
+--------------------------------------+-----------------+
| Alfreds Futterkiste                  | Berlin          |
| Ana Trujillo Emparedados y helados   | México D.F.     |
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
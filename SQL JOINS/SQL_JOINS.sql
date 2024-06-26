﻿# SQL JOIN
# A JOIN clause is used to combine rows from two or more tables,
# based on a related column between them.
#
# Let's look at a selection from the "Orders" table:

select * from orders;

SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers
ON Orders.OrderDetailID=Customers.CustomerID;
/*
 +---------+--------------------------------------+
| OrderID | CustomerName                         |
+---------+--------------------------------------+
|   10248 | Ana Trujillo Emparedados y helados   |
|   10248 | Antonio Moreno Taquería              |
|   10249 | Around the Horn                      |
|   10249 | Berglunds snabbköp                   |
|   10250 | Blauer See Delikatessen              |
|   10250 | Blondel père et fils                 |
|   10250 | Bólido Comidas preparadas            |
|   10251 | Bon app'                             |
|   10251 | Bottom-Dollar Marketse               |
|   10251 | B's Beverages                        |
|   10252 | Cactus Comidas para llevar           |
|   10252 | Centro comercial Moctezuma           |
|   10252 | Chop-suey Chinese                    |
|   10253 | Comércio Mineiro                     |
|   10253 | Consolidated Holdings                |
|   10253 | Drachenblut Delikatessend            |
|   10254 | Du monde entier                      |
|   10254 | Eastern Connection                   |
|   10254 | Ernst Handel                         |
|   10255 | Familia Arquibaldo                   |
|   10255 | FISSA Fabrica Inter. Salchichas S.A. |
|   10255 | Folies gourmandes                    |
|   10256 | Folk och fä HB                       |
|   10256 | Frankenversand                       |
|   10257 | France restauration                  |
|   10257 | Franchi S.p.A.                       |
|   10257 | Furia Bacalhau e Frutos do Mar       |
|   10258 | Galería del gastrónomo               |
|   10258 | Godos Cocina Típica                  |
|   10258 | Gourmet Lanchonetes                  |
|   10259 | Great Lakes Food Market              |
|   10259 | GROSELLA-Restaurante                 |
|   10260 | Hanari Carnes                        |
|   10260 | HILARIÓN-Abastos                     |
|   10260 | Hungry Coyote Import Store           |
|   10260 | Hungry Owl All-Night Grocers         |
|   10261 | Island Trading                       |
|   10261 | Königlich Essen                      |
|   10262 | La corne d'abondance                 |
|   10262 | La maison d'Asie                     |
|   10262 | Laughing Bacchus Wine Cellars        |
|   10263 | Lazy K Kountry Store                 |
|   10263 | Lehmanns Marktstand                  |
|   10263 | Let's Stop N Shop                    |
|   10263 | LILA-Supermercado                    |
|   10264 | LINO-Delicateses                     |
|   10264 | Lonesome Pine Restaurant             |
|   10265 | Magazzini Alimentari Riuniti         |
|   10265 | Maison Dewey                         |
|   10266 | Mère Paillarde                       |
|   10267 | Morgenstern Gesundkost               |
|   10267 | North/South                          |
|   10267 | Océano Atlántico Ltda.               |
|   10268 | Old World Delicatessen               |
|   10268 | Ottilies Käseladen                   |
|   10269 | Paris spécialités                    |
|   10269 | Pericles Comidas clásicas            |
|   10270 | Piccolo und mehr                     |
|   10270 | Princesa Isabel Vinhoss              |
|   10271 | Que Delícia                          |
|   10272 | Queen Cozinha                        |
|   10272 | QUICK-Stop                           |
|   10272 | Rancho grande                        |
|   10273 | Rattlesnake Canyon Grocery           |
|   10273 | Reggiani Caseifici                   |
|   10273 | Ricardo Adocicados                   |
|   10273 | Richter Supermarkt                   |
|   10273 | Romero y tomillo                     |
|   10274 | Santé Gourmet                        |
|   10274 | Save-a-lot Markets                   |
|   10275 | Seven Seas Imports                   |
|   10275 | Simons bistro                        |
|   10276 | Spécialités du monde                 |
|   10276 | Split Rail Beer & Ale                |
|   10277 | Suprêmes délices                     |
|   10277 | The Big Cheese                       |
|   10278 | The Cracker Box                      |
|   10278 | Toms Spezialitäten                   |
|   10278 | Tortuga Restaurante                  |
|   10278 | Tradição Hipermercados               |
|   10279 | Trail's Head Gourmet Provisioners    |
|   10280 | Vaffeljernet                         |
|   10280 | Victuailles en stock                 |
|   10280 | Vins et alcools Chevalier            |
|   10281 | Die Wandernde Kuh                    |
|   10281 | Wartian Herkku                       |
|   10281 | Wellington Importadora               |
|   10282 | White Clover Markets                 |
|   10282 | Wilman Kala                          |
|   10283 | Wolski                               |
+---------+--------------------------------------+
 */
select * from orders;
/*
 +---------------+---------+-----------+----------+
| OrderDetailID | OrderID | ProductID | Quantity |
+---------------+---------+-----------+----------+
|             1 |   10248 |        11 |       12 |
|             2 |   10248 |        42 |       10 |
|             3 |   10248 |        72 |        5 |
|             4 |   10249 |        14 |        9 |
|             5 |   10249 |        51 |       40 |
|             6 |   10250 |        41 |       10 |
|             7 |   10250 |        51 |       35 |
|             8 |   10250 |        65 |       15 |
|             9 |   10251 |        22 |        6 |
|            10 |   10251 |        57 |       15 |
|            11 |   10251 |        65 |       20 |
|            12 |   10252 |        20 |       40 |
|            13 |   10252 |        33 |       25 |
|            14 |   10252 |        60 |       40 |
|            15 |   10253 |        31 |       20 |
|            16 |   10253 |        39 |       42 |
|            17 |   10253 |        49 |       40 |
|            18 |   10254 |        24 |       15 |
|            19 |   10254 |        55 |       21 |
|            20 |   10254 |        74 |       21 |
|            21 |   10255 |        16 |       35 |
|            22 |   10255 |        36 |       25 |
|            23 |   10255 |        59 |       30 |
|            24 |   10256 |        53 |       15 |
|            25 |   10256 |        77 |       12 |
|            26 |   10257 |        27 |       25 |
|            27 |   10257 |        39 |        6 |
|            28 |   10257 |        77 |       15 |
|            29 |   10258 |         2 |       50 |
|            30 |   10258 |         5 |       65 |
|            31 |   10258 |        32 |        6 |
|            32 |   10259 |        21 |       10 |
|            33 |   10259 |        37 |        1 |
|            34 |   10260 |        41 |       16 |
|            35 |   10260 |        57 |       50 |
|            36 |   10260 |        62 |       15 |
|            37 |   10260 |        70 |       21 |
|            38 |   10261 |        21 |       20 |
|            39 |   10261 |        35 |       20 |
|            40 |   10262 |         5 |       12 |
|            41 |   10262 |         7 |       15 |
|            42 |   10262 |        56 |        2 |
|            43 |   10263 |        16 |       60 |
|            44 |   10263 |        24 |       28 |
|            45 |   10263 |        30 |       60 |
|            46 |   10263 |        74 |       36 |
|            47 |   10264 |         2 |       35 |
|            48 |   10264 |        41 |       25 |
|            49 |   10265 |        17 |       30 |
|            50 |   10265 |        70 |       20 |
|            51 |   10266 |        12 |       12 |
|            52 |   10267 |        40 |       50 |
|            53 |   10267 |        59 |       70 |
|            54 |   10267 |        76 |       15 |
|            55 |   10268 |        29 |       10 |
|            56 |   10268 |        72 |        4 |
|            57 |   10269 |        33 |       60 |
|            58 |   10269 |        72 |       20 |
|            59 |   10270 |        36 |       30 |
|            60 |   10270 |        43 |       25 |
|            61 |   10271 |        33 |       24 |
|            62 |   10272 |        20 |        6 |
|            63 |   10272 |        31 |       40 |
|            64 |   10272 |        72 |       24 |
|            65 |   10273 |        10 |       24 |
|            66 |   10273 |        31 |       15 |
|            67 |   10273 |        33 |       20 |
|            68 |   10273 |        40 |       60 |
|            69 |   10273 |        76 |       33 |
|            70 |   10274 |        71 |       20 |
|            71 |   10274 |        72 |        7 |
|            72 |   10275 |        24 |       12 |
|            73 |   10275 |        59 |        6 |
|            74 |   10276 |        10 |       15 |
|            75 |   10276 |        13 |       10 |
|            76 |   10277 |        28 |       20 |
|            77 |   10277 |        62 |       12 |
|            78 |   10278 |        44 |       16 |
|            79 |   10278 |        59 |       15 |
|            80 |   10278 |        63 |        8 |
|            81 |   10278 |        73 |       25 |
|            82 |   10279 |        17 |       15 |
|            83 |   10280 |        24 |       12 |
|            84 |   10280 |        55 |       20 |
|            85 |   10280 |        75 |       30 |
|            86 |   10281 |        19 |        1 |
|            87 |   10281 |        24 |        6 |
|            88 |   10281 |        35 |        4 |
|            89 |   10282 |        30 |        6 |
|            90 |   10282 |        57 |        2 |
|            91 |   10283 |        15 |       20 |
|            92 |   10283 |        19 |       18 |
|            93 |   10283 |        60 |       35 |
|            94 |   10283 |        72 |        3 |
|            95 |   10284 |        27 |       15 |
|            96 |   10284 |        44 |       21 |
|            97 |   10284 |        60 |       20 |
|            98 |   10284 |        67 |        5 |
|            99 |   10285 |         1 |       45 |
|           100 |   10285 |        40 |       40 |
|           101 |   10285 |        53 |       36 |
|           102 |   10286 |        35 |      100 |
|           103 |   10286 |        62 |       40 |
|           104 |   10287 |        16 |       40 |
|           105 |   10287 |        34 |       20 |
|           106 |   10287 |        46 |       15 |
|           107 |   10288 |        54 |       10 |
|           108 |   10288 |        68 |        3 |
|           109 |   10289 |         3 |       30 |
|           110 |   10289 |        64 |        9 |
|           111 |   10290 |         5 |       20 |
|           112 |   10290 |        29 |       15 |
|           113 |   10290 |        49 |       15 |
|           114 |   10290 |        77 |       10 |
|           115 |   10291 |        13 |       20 |
|           116 |   10291 |        44 |       24 |
|           117 |   10291 |        51 |        2 |
|           118 |   10292 |        20 |       20 |
|           119 |   10293 |        18 |       12 |
|           120 |   10293 |        24 |       10 |
|           121 |   10293 |        63 |        5 |
|           122 |   10293 |        75 |        6 |
|           123 |   10294 |         1 |       18 |
|           124 |   10294 |        17 |       15 |
|           125 |   10294 |        43 |       15 |
|           126 |   10294 |        60 |       21 |
|           127 |   10294 |        75 |       50 |
|           128 |   10295 |        56 |        4 |
|           129 |   10296 |        11 |       12 |
|           130 |   10296 |        16 |       30 |
|           131 |   10296 |        69 |       15 |
|           132 |   10297 |        39 |       60 |
|           133 |   10297 |        72 |       20 |
|           134 |   10298 |         2 |       40 |
|           135 |   10298 |        36 |       40 |
|           136 |   10298 |        59 |       30 |
|           137 |   10299 |        19 |       15 |
|           138 |   10299 |        70 |       20 |
|           139 |   10300 |        66 |       30 |
|           140 |   10300 |        68 |       20 |
|           141 |   10301 |        40 |       10 |
|           142 |   10302 |        17 |       40 |
|           143 |   10302 |        28 |       28 |
|           144 |   10302 |        43 |       28 |
|           145 |   10302 |        60 |       60 |
|           146 |   10303 |        70 |       15 |
|           147 |   10303 |        71 |        8 |
|           148 |   10303 |        72 |       12 |
|           149 |   10304 |        21 |        6 |
|           150 |   10304 |        72 |       21 |
|           151 |   10304 |        77 |       20 |
|           152 |   10305 |        18 |       40 |
|           153 |   10305 |        51 |       20 |
|           154 |   10305 |        76 |        6 |
|           155 |   10306 |         1 |       10 |
|           156 |   10306 |        10 |       70 |
|           157 |   10306 |        21 |        4 |
|           158 |   10307 |        26 |       30 |
|           159 |   10307 |        35 |       15 |
|           160 |   10307 |        77 |        7 |
|           161 |   10308 |        14 |       12 |
|           162 |   10308 |        42 |       15 |
|           163 |   10308 |        60 |       21 |
|           164 |   10308 |        71 |        5 |
|           165 |   10309 |        31 |       20 |
|           166 |   10309 |        58 |       18 |
|           167 |   10309 |        72 |       20 |
|           168 |   10310 |        20 |       15 |
|           169 |   10310 |        31 |        3 |
|           170 |   10310 |        35 |       10 |
|           171 |   10311 |         4 |       24 |
|           172 |   10311 |        17 |       15 |
|           173 |   10311 |        43 |       15 |
|           174 |   10312 |        37 |       25 |
|           175 |   10312 |        40 |       21 |
|           176 |   10312 |        51 |       20 |
|           177 |   10312 |        60 |       10 |
|           178 |   10313 |        31 |       20 |
|           179 |   10314 |        16 |       20 |
|           180 |   10314 |        31 |       10 |
|           181 |   10314 |        56 |        5 |
|           182 |   10314 |        72 |        3 |
|           183 |   10315 |        16 |       21 |
|           184 |   10315 |        17 |        6 |
|           185 |   10315 |        22 |       10 |
|           186 |   10315 |        31 |       12 |
|           187 |   10315 |        33 |        4 |
|           188 |   10315 |        40 |        5 |
|           189 |   10315 |        55 |       10 |
|           190 |   10315 |        64 |        6 |
|           191 |   10315 |        74 |        9 |
|           192 |   10316 |        26 |        5 |
|           193 |   10316 |        52 |       40 |
|           194 |   10316 |        53 |       28 |
|           195 |   10316 |        67 |       25 |
|           196 |   10317 |        10 |       10 |
|           197 |   10317 |        31 |       10 |
|           198 |   10317 |        77 |       10 |
|           199 |   10318 |         2 |       20 |
|           200 |   10318 |        47 |       20 |
|           201 |   10318 |        61 |       30 |
|           202 |   10319 |        26 |       30 |
|           203 |   10319 |        35 |       15 |
|           204 |   10319 |        64 |       24 |
|           205 |   10320 |        10 |       40 |
|           206 |   10320 |        20 |       20 |
|           207 |   10321 |        30 |       40 |
|           208 |   10321 |        40 |       10 |
|           209 |   10322 |        23 |        5 |
|           210 |   10322 |        61 |       15 |
|           211 |   10322 |        75 |       20 |
|           212 |   10323 |        15 |       25 |
|           213 |   10323 |        70 |       25 |
|           214 |   10323 |        71 |       30 |
|           215 |   10324 |        59 |       15 |
|           216 |   10324 |        65 |       24 |
|           217 |   10324 |        71 |       15 |
|           218 |   10324 |        77 |       30 |
|           219 |   10325 |        55 |       10 |
|           220 |   10325 |        62 |       12 |
|           221 |   10325 |        64 |       21 |
|           222 |   10326 |         1 |       20 |
|           223 |   10326 |        31 |       40 |
|           224 |   10326 |        57 |       35 |
|           225 |   10327 |        10 |       50 |
|           226 |   10327 |        39 |       20 |
|           227 |   10328 |        20 |       10 |
|           228 |   10328 |        28 |        6 |
|           229 |   10328 |        66 |       40 |
|           230 |   10329 |         2 |       50 |
|           231 |   10329 |         5 |       50 |
|           232 |   10329 |        29 |       35 |
|           233 |   10330 |        59 |       60 |
|           234 |   10331 |        30 |       20 |
|           235 |   10331 |        40 |        8 |
|           236 |   10331 |        55 |        6 |
|           237 |   10332 |        31 |       60 |
|           238 |   10333 |        12 |       50 |
|           239 |   10333 |        13 |       20 |
|           240 |   10333 |        26 |       65 |
|           241 |   10333 |        62 |       80 |
|           242 |   10333 |        69 |       15 |
|           243 |   10334 |        11 |       20 |
|           244 |   10334 |        28 |        2 |
|           245 |   10334 |        44 |       10 |
|           246 |   10335 |        11 |       30 |
|           247 |   10335 |        40 |        2 |
|           248 |   10336 |        19 |       50 |
|           249 |   10336 |        69 |       30 |
|           250 |   10336 |        72 |       30 |
|           251 |   10337 |        31 |        8 |
|           252 |   10337 |        66 |        8 |
|           253 |   10338 |        17 |       20 |
|           254 |   10338 |        34 |       20 |
|           255 |   10338 |        41 |       13 |
|           256 |   10338 |        47 |       20 |
|           257 |   10338 |        56 |       20 |
|           258 |   10339 |         3 |       20 |
|           259 |   10339 |        26 |        2 |
|           260 |   10339 |        29 |        2 |
|           261 |   10339 |        38 |       30 |
|           262 |   10340 |        10 |        4 |
|           263 |   10340 |        28 |       20 |
|           264 |   10340 |        49 |       24 |
|           265 |   10341 |         2 |       20 |
|           266 |   10341 |        24 |       15 |
|           267 |   10341 |        35 |       21 |
|           268 |   10342 |        35 |      100 |
|           269 |   10342 |        43 |       40 |
|           270 |   10342 |        68 |        4 |
|           271 |   10343 |         1 |       36 |
|           272 |   10343 |        36 |        6 |
|           273 |   10343 |        56 |       40 |
|           274 |   10344 |        11 |       14 |
|           275 |   10344 |        50 |       20 |
|           276 |   10345 |         2 |       10 |
|           277 |   10345 |        31 |       70 |
|           278 |   10345 |        68 |       15 |
|           279 |   10346 |        11 |       50 |
|           280 |   10346 |        33 |       50 |
|           281 |   10347 |        17 |       12 |
|           282 |   10347 |        31 |        5 |
|           283 |   10347 |        40 |        4 |
|           284 |   10347 |        75 |       21 |
|           285 |   10348 |        24 |        4 |
|           286 |   10348 |        55 |       25 |
|           287 |   10349 |         1 |       20 |
|           288 |   10349 |        23 |       15 |
|           289 |   10349 |        64 |       30 |
|           290 |   10349 |        68 |       60 |
|           291 |   10350 |        51 |       15 |
|           292 |   10350 |        65 |       20 |
|           293 |   10350 |        74 |       21 |
|           294 |   10351 |        22 |       10 |
|           295 |   10351 |        57 |       15 |
|           296 |   10351 |        65 |        6 |
|           297 |   10352 |        30 |       40 |
|           298 |   10352 |        66 |       40 |
|           299 |   10352 |        69 |       24 |
|           300 |   10352 |        70 |       60 |
|           301 |   10353 |        42 |       35 |
|           302 |   10353 |        49 |       28 |
|           303 |   10353 |        54 |       12 |
|           304 |   10354 |        16 |       28 |
|           305 |   10354 |        32 |       70 |
|           306 |   10355 |        42 |       35 |
|           307 |   10355 |        49 |       30 |
|           308 |   10355 |        61 |       60 |
|           309 |   10356 |         2 |       15 |
|           310 |   10356 |        25 |        4 |
|           311 |   10357 |        59 |       50 |
|           312 |   10357 |        63 |       34 |
|           313 |   10357 |        72 |        2 |
|           314 |   10358 |        47 |       10 |
|           315 |   10358 |        51 |        3 |
|           316 |   10358 |        63 |       30 |
|           317 |   10359 |         4 |       20 |
|           318 |   10359 |        24 |       15 |
|           319 |   10359 |        31 |        4 |
|           320 |   10359 |        33 |       30 |
|           321 |   10359 |        66 |       10 |
|           322 |   10360 |        10 |       30 |
|           323 |   10360 |        36 |       35 |
|           324 |   10360 |        49 |       28 |
|           325 |   10360 |        70 |       15 |
|           326 |   10361 |        19 |       18 |
|           327 |   10361 |        23 |       20 |
|           328 |   10361 |        26 |       30 |
|           329 |   10361 |        54 |       80 |
|           330 |   10362 |         9 |       16 |
|           331 |   10362 |        13 |       60 |
|           332 |   10362 |        70 |       50 |
|           333 |   10363 |        60 |       15 |
|           334 |   10363 |        71 |       10 |
|           335 |   10364 |         6 |       30 |
|           336 |   10364 |        16 |       20 |
|           337 |   10364 |        17 |       30 |
|           338 |   10364 |        58 |       15 |
|           339 |   10365 |        59 |       12 |
|           340 |   10365 |        73 |       20 |
|           341 |   10365 |        75 |       12 |
|           342 |   10366 |         1 |       30 |
|           343 |   10366 |        40 |       10 |
|           344 |   10367 |        11 |       15 |
|           345 |   10367 |        69 |       25 |
|           346 |   10368 |         2 |       15 |
|           347 |   10368 |        23 |       60 |
|           348 |   10368 |        62 |        8 |
|           349 |   10368 |        64 |        6 |
|           350 |   10369 |        33 |        6 |
|           351 |   10369 |        72 |        4 |
|           352 |   10370 |        31 |       15 |
|           353 |   10370 |        45 |       20 |
|           354 |   10370 |        51 |        6 |
|           355 |   10370 |        74 |       30 |
|           356 |   10371 |        62 |       60 |
|           357 |   10371 |        76 |       50 |
|           358 |   10372 |        20 |       30 |
|           359 |   10372 |        31 |       15 |
|           360 |   10372 |        72 |       20 |
|           361 |   10373 |        14 |       20 |
|           362 |   10373 |        19 |       20 |
|           363 |   10373 |        60 |        6 |
|           364 |   10374 |        16 |       20 |
|           365 |   10374 |        31 |       14 |
|           366 |   10374 |        43 |       10 |
|           367 |   10374 |        75 |        6 |
|           368 |   10375 |         1 |       50 |
|           369 |   10375 |        36 |       20 |
|           370 |   10375 |        68 |       10 |
|           371 |   10375 |        71 |        6 |
|           372 |   10376 |         6 |       15 |
|           373 |   10376 |        14 |       10 |
|           374 |   10376 |        19 |       21 |
|           375 |   10376 |        39 |       20 |
|           376 |   10376 |        40 |       20 |
|           377 |   10376 |        75 |       24 |
|           378 |   10377 |         1 |       15 |
|           379 |   10377 |         9 |       20 |
|           380 |   10377 |        47 |       15 |
|           381 |   10377 |        58 |       30 |
|           382 |   10377 |        70 |       30 |
|           383 |   10378 |        31 |       20 |
|           384 |   10378 |        58 |       30 |
|           385 |   10379 |        45 |       20 |
|           386 |   10379 |        59 |       30 |
|           387 |   10379 |        71 |       20 |
|           388 |   10380 |        75 |       12 |
|           389 |   10381 |        24 |       35 |
|           390 |   10381 |        57 |       15 |
|           391 |   10382 |        10 |       16 |
|           392 |   10382 |        29 |       20 |
|           393 |   10383 |         2 |       50 |
|           394 |   10383 |        14 |       20 |
|           395 |   10383 |        25 |       20 |
|           396 |   10383 |        26 |       10 |
|           397 |   10383 |        31 |       20 |
|           398 |   10383 |        75 |       30 |
|           399 |   10384 |        31 |       20 |
|           400 |   10384 |        62 |       15 |
|           401 |   10385 |        32 |        6 |
|           402 |   10385 |        36 |       40 |
|           403 |   10385 |        40 |       20 |
|           404 |   10385 |        75 |        6 |
|           405 |   10386 |         4 |       24 |
|           406 |   10386 |        18 |        6 |
|           407 |   10387 |        11 |       12 |
|           408 |   10387 |        17 |        8 |
|           409 |   10387 |        31 |       20 |
|           410 |   10387 |        69 |       15 |
|           411 |   10388 |        23 |       25 |
|           412 |   10388 |        46 |       15 |
|           413 |   10388 |        68 |       20 |
|           414 |   10388 |        75 |       30 |
|           415 |   10389 |         1 |       20 |
|           416 |   10389 |        29 |       15 |
|           417 |   10389 |        39 |       21 |
|           418 |   10389 |        60 |       20 |
|           419 |   10390 |        18 |       10 |
|           420 |   10390 |        70 |       12 |
|           421 |   10391 |        29 |       20 |
|           422 |   10391 |        41 |        6 |
|           423 |   10391 |        55 |       15 |
|           424 |   10391 |        71 |       12 |
|           425 |   10392 |         2 |       10 |
|           426 |   10392 |        68 |        4 |
|           427 |   10392 |        76 |       20 |
|           428 |   10393 |        18 |       15 |
|           429 |   10393 |        42 |       25 |
|           430 |   10393 |        47 |       15 |
|           431 |   10393 |        63 |       35 |
|           432 |   10394 |        17 |       50 |
|           433 |   10394 |        29 |       10 |
|           434 |   10395 |         1 |       45 |
|           435 |   10395 |        40 |       50 |
|           436 |   10395 |        53 |       36 |
|           437 |   10396 |        56 |       20 |
|           438 |   10396 |        60 |       10 |
|           439 |   10397 |        24 |        5 |
|           440 |   10397 |        55 |       10 |
|           441 |   10397 |        74 |       20 |
|           442 |   10398 |        11 |       30 |
|           443 |   10398 |        51 |       20 |
|           444 |   10398 |        54 |       16 |
|           445 |   10399 |        68 |        5 |
|           446 |   10400 |         2 |       40 |
|           447 |   10400 |        47 |       30 |
|           448 |   10400 |        61 |       10 |
|           449 |   10401 |        17 |       10 |
|           450 |   10401 |        33 |       20 |
|           451 |   10401 |        35 |       20 |
|           452 |   10401 |        42 |       60 |
|           453 |   10402 |        30 |       25 |
|           454 |   10402 |        54 |       12 |
|           455 |   10402 |        68 |       40 |
|           456 |   10402 |        69 |       70 |
|           457 |   10402 |        73 |        8 |
|           458 |   10403 |        11 |        6 |
|           459 |   10403 |        17 |        8 |
|           460 |   10403 |        40 |        6 |
|           461 |   10403 |        47 |       12 |
|           462 |   10403 |        62 |       30 |
|           463 |   10403 |        73 |       24 |
|           464 |   10404 |        36 |       18 |
|           465 |   10404 |        56 |       40 |
|           466 |   10405 |        11 |       15 |
|           467 |   10405 |        33 |        2 |
|           468 |   10405 |        67 |       30 |
|           469 |   10406 |        53 |       15 |
|           470 |   10406 |        69 |       20 |
|           471 |   10406 |        76 |       30 |
|           472 |   10407 |        30 |       34 |
|           473 |   10407 |        33 |        8 |
|           474 |   10407 |        54 |       20 |
|           475 |   10408 |        19 |        8 |
|           476 |   10408 |        34 |       14 |
|           477 |   10408 |        47 |       10 |
|           478 |   10408 |        73 |       21 |
|           479 |   10409 |        16 |       20 |
|           480 |   10409 |        19 |       24 |
|           481 |   10409 |        36 |       30 |
|           482 |   10410 |         1 |       16 |
|           483 |   10410 |        60 |       20 |
|           484 |   10411 |        55 |       10 |
|           485 |   10411 |        57 |       10 |
|           486 |   10412 |        18 |        8 |
|           487 |   10412 |        42 |        2 |
|           488 |   10412 |        47 |       40 |
|           489 |   10412 |        48 |       15 |
|           490 |   10412 |        60 |       15 |
|           491 |   10413 |        13 |        8 |
|           492 |   10413 |        19 |        6 |
|           493 |   10413 |        36 |       18 |
|           494 |   10413 |        49 |        6 |
|           495 |   10414 |        18 |       12 |
|           496 |   10414 |        21 |       12 |
|           497 |   10414 |        39 |       10 |
|           498 |   10415 |        10 |       16 |
|           499 |   10415 |        75 |       10 |
|           500 |   10416 |        56 |        3 |
|           501 |   10417 |         1 |       40 |
|           502 |   10417 |        35 |       35 |
|           503 |   10417 |        42 |       10 |
|           504 |   10418 |        21 |       40 |
|           505 |   10418 |        30 |       28 |
|           506 |   10418 |        55 |       15 |
|           507 |   10418 |        60 |       25 |
|           508 |   10418 |        70 |       20 |
|           509 |   10419 |        21 |        5 |
|           510 |   10419 |        40 |        8 |
|           511 |   10419 |        60 |       10 |
|           512 |   10420 |         1 |       12 |
|           513 |   10420 |        13 |       60 |
|           514 |   10420 |        24 |        7 |
|           515 |   10420 |        35 |       35 |
|           516 |   10420 |        62 |       10 |
|           517 |   10421 |        18 |       40 |
|           518 |   10421 |        44 |        2 |
+---------------+---------+-----------+----------+
 */


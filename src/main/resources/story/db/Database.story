Description: Simple Database result set test

Scenario: Authorization
When I log in as a user'$user' with <email> and <password>
Select email, password
FROM table
|id|user         |email                    |password|
|1 |AlenaSamusik |elena_samusik@mail.ru    |12345678|



Scenario: Verify database result set
When I execute SQL query `
SELECT id, name
FROM rnc_taxonomy
ORDER by id
LIMIT 10
` against `rna` and save result to scenario variable `data`
Then `${data}` matching rows using `id` from `rna` is equal to data from:
|id|name                     |
|1 |root                     |
|2 |Bacteria                 |
|6 |Azorhizobium             |
|7 |Azorhizobium caulinodans |
|9 |Buchnera aphidicola      |
|10|Cellvibrio               |
|11|Cellulomonas gilvus      |
|12|Photobacterium profundum |
|13|Dictyoglomus             |
|14|Dictyoglomus thermophilum|

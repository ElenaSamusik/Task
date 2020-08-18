Scenario: Authorization
Given I am on the main application page
When I log in as a user '$user' with <email> and <password>
Then I sign in to the URL 'https://www.imdb.com/'


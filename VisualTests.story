Scenario: Authorization
Given I am on the main application page
When I log in as a user '$user' with <email> and <password>
Then I sign in on the main application page

Scenario: Searching Box
Given I am in the field '$Search_IMDb'
When I enter '$The_Chronicles_of_Narnia' in a field with the name '$Search_IMDb'
and I click on a magnify icon
Then context contains list of link items with the text and link: '$The_Chronicles_of_Narnia'

Scenario: Open page from list of link items
Given I am on list of links of films : '$The_Chronicles_of_Narnia'
When I click on a link with the text '$The_Chronicles_of_Narnia'
Then page with selected film is opened

Scenario: Adding film to 'Watchlist'
Given I am on a page with selected film '$The_Chronicles_of_Narnia'
When I click on a button with the name '$Add_to_Watchlist'
Then button with the name '$Added_to_Watchlist' is displayed

Scenario: Navigation to 'Your Watchlist'
Given I am on the main application page
When I click on an element by the xpath '$//*[@id="imdbHeader"]/div[2]/div[5]/div/label[2]/div/span'
and click on a button with the name '$Your_Watchlist' from drop-down list
Then list of films added to "$My_Watchlist" is displayed

Scenario: Sorting list from 'Your WatchList'
Given I am on a page with the URL '$https://www.imdb.com/user/ur123192556/watchlist?ref_=nv_usr_wl'
Given at least one film added to 'Your Watchlist'
When I select parameter with the name '$Popularity' from drop-down list with the name '$Sort_by:'
Then films from 'Your WatchList' are sorted in order by parameter with the name '$Popularity'

Scenario: Exporting films from 'Your WatchList'
Given I am on a page with the URL '$https://www.imdb.com/user/ur123192556/watchlist?ref_=nv_usr_wl'
Given at least one film added to 'Your Watchlist'
When I click on a link with the text '$Export_this_list'
Then WATCHLIST.csv file is downloaded to computer
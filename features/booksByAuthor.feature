Feature: Books by author name
 Scenario: Correct non-zero number of books found by author 
    Given I have the following books in the store
    | title | author |
    | The Devil in the White City | Erick Larson |
    | The Lion, the Witch and the Wardrope | C.S.Lewis |
    | In the Garden of Beast | Erick Larson |
    When I search for the books by author "Erick Larson"
    Then I find 2 books
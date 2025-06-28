Feature: Books by author name
 Scenario Outline: Scenario Outline name: Correct non-zero number of books found by author 
    Given I have the following books in the store
    | title | author |
    | The Devil in the White City | Erick Larson |
    | The Lion, the Witch and the Wardrope | C.S.Lewis |
    | In the Garden of Beast | Erick Larson |
    When I search for the books by author "<author>"
    Then I find <countOfBooks> books

    Examples:
        | author | countOfBooks | 
        | Erick Larson  |  2  | 
        |  C.S.Lewis | 1 |
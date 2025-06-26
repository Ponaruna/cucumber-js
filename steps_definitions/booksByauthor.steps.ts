import { Given, When, Then, DataTable } from '@cucumber/cucumber'
import { expect } from 'chai'


interface Book {
  title: string,
  author: string
}


let books: Book[] = []
let searchResult: Book[] = []
Given('I have the following books in the store', function (dataTable) {
  books = dataTable.hashes()
  //    console.log(books);

});


When('I search for the books by author {string}', function (authorNAme) {
  searchResult = books.filter(book => book.author === authorNAme)
})
Then('I find {int} books', function (NoOfBooks) {
  expect(searchResult.length).to.equal(NoOfBooks)
  console.log(searchResult)
})

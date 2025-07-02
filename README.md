# Assignment 9: Cucumber Data Table Book Search

This project demonstrates how to use Cucumber with TypeScript for data-driven testing using data tables. The example searches for books by author and verifies the number of books found.

## Project Structure

```
assignment_9/
├── features/                  # Cucumber feature files
├── steps_definitions/         # Step definition files
├── reports/                   # Test reports (HTML & JSON)
├── .github/workflows/         # GitHub Actions CI workflow
├── .vscode/                   # VSCode settings for Cucumber autocomplete
├── Jenkinsfile                # Jenkins pipeline for CI
├── cucumber.json              # Cucumber configuration
├── package.json               # Project dependencies and scripts
├── report.js                  # HTML report generator script
├── tsconfig.json              # TypeScript configuration
└── README.md                  # Project documentation
```

## Prerequisites

- Node.js (v16 or higher)
- npm

## Installation

```sh
npm install
```

## Running Tests

```sh
npm test
```

## Generating HTML Report

After running tests, generate the HTML report:

```sh
npm run report
```

The report will be available at `reports/cucumber_report.html`.

## CI/CD

- **GitHub Actions:** Automated test and report upload on push/PR.
- **Jenkins:** Pipeline steps for CI.

## How It Works

- The feature file defines scenarios for searching books by author using a data table.
- Step definitions implement the logic for storing books and searching by author.
- Reports are generated in both JSON and HTML formats.

## Example Feature

```gherkin
Feature: Books by author name
  Scenario Outline: Correct non-zero number of books found by author
    Given I have the following books in the store
      | title                         | author        |
      | The Devil in the White City   | Erick Larson  |
      | The Lion, the Witch and the Wardrope | C.S.Lewis |
      | In the Garden of Beast        | Erick Larson  |
    When I search for the books by author "<author>"
    Then I find <countOfBooks> books

    Examples:
      | author        | countOfBooks |
      | Erick Larson | 2            |
      | C.S.Lewis    | 1            |
```

## License

MIT
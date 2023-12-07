# ruby-demo

This is a Ruby on Rails project implementing a soft delete mechanism. Follow the instructions below to set up your environment and run tests.


## Getting Started

### Prerequisites
- Ruby (version 3.2.2)
- Rails 
- SQLite

Here is a [link](https://github.com/railsinstaller/railsinstaller-windows/releases/tag/v4.1.0) to installing Rails on Windows. 

### Clone the Repository
Clone this repository to your local machine:

```bash
git clone https://github.com/rromer07/ruby-demo.git
cd ruby-demo
```

### Install Dependencies
Install the depedencies that are within the `Gemfile`
```bash
bundle install 
```

### Database Setup
Set up the development and test databases by running the migrations for each:
1. For the development database:
    ```bash
    bin/rails db:create db:migrate
    ```
2. The for test database:
    ```bash
    RAILS_ENV=test bin/rails db:migrate
    ```
*Note*: It's important to migrate both the development and test databases to ensure consistency across your development and testing environments.
### Running Tests
Tests are ran with RSpec, which should be included after running `bundle install`
```bash
bundle exec rspec
```

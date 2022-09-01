# IMC Calculator API

## Built With

- Ruby on Rails
- PostgreSQL

## Requirements 
Install:
- [Ruby v.3.1.2](https://www.ruby-lang.org/en/documentation/installation/)
- [Rails v.7.0.3](https://guides.rubyonrails.org/v5.0/getting_started.html#installing-rails)
- [psql (PostgreSQL) v.14.3](https://www.postgresql.org/download/)

## Getting Started

To get a local copy follow these simple example steps.  

1. Open the terminal window and clone the repository using this command:  
`git@github.com:leopiresgoss/imc-calculator-api.git` 
1. Change the directory:`cd imc-calculator-api`
2. Install the project's dependencies by running this command:   
`bundle install`
4. Make sure that PostgreSQL is running perfectly in your computer
5. Run `rails db:create` and then `rails db:migrate` to create and setup the database in PostgreSQL
6. Run `rails db:seed` to add default data
7. Run `rails s` to start the server
8. [OPTIONAL] To test the application, run `rspec`

### Example
 This is an example request, with a valid token
 <br>
 `
     curl --location --request POST 'http://127.0.0.1:3000/imc' \
    --header 'Authorization: eyJhbGciOiJub94lIn0.IkkkM2NSM3RUMGszbiI.' \
    --header 'Content-Type: application/json' \
    --data-raw '{
      "weight": "100",
      "height": "1.70"
    }'
 `
<br>
## Author
👤 **Leonardo Pires Goss**
- GitHub: [leopiresgoss](https://github.com/leopiresgoss)
- Twitter: [@leonardopgoss](https://twitter.com/leonardopgoss)
- [LinkedIn](https://www.linkedin.com/in/leonardogoss/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/leopiresgoss/imc-calculator-api/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](/LICENSE) licensed.

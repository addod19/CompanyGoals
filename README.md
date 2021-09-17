# Company Goals API

>  As a backend engineer for a team which is building Alignment of OKRs. The team has a design ready and the frontend engineers are ready to write code. They are expecting you to give APIs so that they can write code

## Features

1. CEO can create a goal 
2. Team members break down the goal
3. The VP Sales who reports to the CEO will write a goal "Get 1000 demoes by Q1"
4. Sales Director of (say East zone) who reports to the will break his manager (VP Sales Goal) and write a goal "Get 200 demoes from East Zone by Q1


## Future Feature (v1.12)

1. Add more controller actions like create, destroy, etc
2. Add more test



## Built With

- Ruby 2.7.1
- Ruby on Rails 6.0.4 (Rails only API)
- Heroku
- Postgresql

## Live Demo

[Live Demo Link]()

## Getting Started

To get a local copy up and running follow these simple example steps.

1. `git clone https://github.com/addod19/CompanyGoals.git`
2. `bundle install`
3. `rails db:create`
4. `rails db:migrate`
5. `rails s`

### Prerequisites

- Ruby v2.7.1
- Heroku
- Rails v6.0.4

## Test using Postman

- To Get a specific goal with all it's children `http://localhost:3000/goals/1`
- After clicking `send` we either expect a success or failure message, in our case `success` message as seen below: We expect a `json` response in the format. Here is what I have currently without the parent/company goals. But it will be fixed
```
[
    "id": 1,
    "title": "Close 1$mn revenuer by Q1",
    "progress": 0,
    "children": [
        {
        "id": 2,
        "title": "Get 1000 demoes by Q1",
        "progress": 0,
        "children": [
            {
                "id": 3,
                "title": "Get 200 demoes from East Zone by Q1",
                "progress": 0,
                "children": [],
                "created_at": "2021-09-16T12:03:08.186Z",
                "updated_at": "2021-09-16T12:03:08.186Z",
                "parent_id": 2
            },
            {
                "id": 4,
                "title": "Get 700 demoes from West Zone",
                "progress": 0,
                "children": [],
                "created_at": "2021-09-16T12:03:38.225Z",
                "updated_at": "2021-09-16T12:03:38.225Z",
                "parent_id": 2
            }
        ],
        "created_at": "2021-09-16T11:55:26.914Z",
        "updated_at": "2021-09-16T11:55:26.914Z",
        "parent_id": 1
    },
    {
        "id": 5,
        "title": "Get 1 Lakh visitors in our website by Q1",
        "progress": 0,
        "children": [],
        "created_at": "2021-09-16T12:04:46.469Z",
        "updated_at": "2021-09-16T12:04:46.469Z",
        "parent_id": 1
    }
    ] 
]
```
- To Update a Goal
  - copy this link `http://localhost:3000/goals/3`
  - Navigate to the params of postman, fill in the key value pairs, `{progress: 100}`
  - If we get a `200` or `201` status code, goal added successful otherwise `401` or `404` for failure

## RSpec Test

- run `rspec`

### Deployment

- `Heroku create`
- `git push heroku master`
- `Heroku run rails db:migrate`
- `Heroku open`

## Authors

👤 **Daniel Larbi Addo**

- Github: [@addod19](https://github.com/addod19)
- Twitter: [@DanielLarbiAdd1](https://twitter.com/DanielLarbiAdd1)
- Linkedin: [Daniel Larbi Addo](https://linkedin.com/in/daniel-larbi-addo/)
- Email: [Daniel Larbi Addo](addodaniellarbi@gmail.com)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/addod19/CompanyGoals/issues).

1. Fork it (https://github.com/addod19/CompanyGoals/fork)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Show your support

Give us a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [Apache](lic.url) licensed.


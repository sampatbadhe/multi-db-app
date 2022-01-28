# Multi-Database Application

Sample Rails applications for demonstrating [Rails 7 - Associations across databases with disable_joins](https://blog.kiprosh.com/rails7-association-across-databases-with-disable-joins/)

* Ruby version: 2.7.1

* Rails version: 7.0.0

## Installation/Setup

1. Clone the application on your local

```
git clone https://github.com/sampatbadhe/multi-db-app.git
```

2. cd to the `passwordless-authentication-api` application directory

```
  cd multi-db-app
```

3. Run `bundle` command to install all gems

```
  bundle install
```

4. Configure your `database.yml` file.

5. Run `bundle exec rails db:create`

6. Run `bundle exec rails db:migrate`

7. Run `bundle exec rails db:seed`. The sample data would be then loaded into application database.

8. Run the rails console using `bundle exec rails console` or `bundle exec rails c`

9. Run following operations and observe the queries.

    - **Without `disable_joins` option**

      We would have to add custom methods, as has_many :through/has_one :through associations won't work across databases.
      ```ruby
      # Set the user
      > user = User.find_by(email: 'luke@example.com')
      # Fetch the messages of all the events of a user
      > user.event_messages
      # Fetch the latest message on the latest event of a user
      > user.latest_event_message
      ```

    - **With `disable_joins` option**

      ```ruby
      # Set the user
      > user = User.find_by(email: 'luke@example.com')
      # We can use `has_many :through` association to fetch the messages of all the events of a user
      > user.messages
      # We can use `has_one :through` association to fetch the latest message on the latest event of a user
      > user.latest_message
      ```

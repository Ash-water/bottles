# README

## users table
|Column             |Type       |Options                   |
|-------------------|-----------|--------------------------|
|nickname           |string     |null: false               |
|email              |string     |null: false               |
|encrypted_password |string     |null: false               |

### Association
has_many :ideas

## ideas table
|Column             |Type       |Options                   |
|-------------------|-----------|--------------------------|
|name               |string     |null: false               |
|description        |string     |null: false               |

### Association
belongs_to :user

## messageテーブル
|Column|Type|Options|
|-------|----|-------|
|text|text|
|image|string|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|name|string|null: false|
|password|string|null: false|
### Association
- has_many :groups, through: :users_groups
- has_many :users_groups

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- has_many :users
- has_many :groups through: :users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user|string|null: false|
### Association
- has_many :users, through: :users_groups
- has_many :users_groups
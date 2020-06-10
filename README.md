## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|name|string|null: false|
|password|string|null: false|

### Association
- has_many :messages
- has_many :groups

## messageテーブル
|Column|Type|Options|
|-------|----|-------|
|text|text|null: false|
|image|string|null: false|

### Association
- belongs_to :group
- belongs_to :user

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|adduser|string|null: false|

### Association
- belongs_to :user

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- has_many :users
- has_many :groups through: :users
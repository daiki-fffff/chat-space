## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|name|string|null: false|
|password|string|null: false|

### Association
- has_many :messages
- has_many :posts

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

## Group_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
- has_many :groups,through: :users
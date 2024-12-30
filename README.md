# テーブル設計

## users テーブル

| Column             | Type    | Options                    |
|--------------------|---------|----------------------------|
| id                 | integer | primary key                |
| nickname           | string  | null: false                |
| email              | string  | null: false, unique: true  |
| encrypted_password | string  | null: false                |
| height             | integer | null: false                |
| weight             | integer | null: false                |
| experience_level   | integer | null: false                |
| style              | integer | null: false                |
| budget             | integer | null: false                |

### Association
- has_many :favorites
- has_many :boards, through: :favorites
- has_many :recs

---

## boards テーブル

| Column            | Type    | Options                    |
|-------------------|---------|----------------------------|
| id                | integer | primary key                |
| name              | string  | null: false                |
| info              | text    | null: false                |
| board_type        | integer | null: false                |
| brand             | string  | null: false                |
| price             | integer | null: false                |
| size              | integer | null: false                |
| weight            | integer | null: false                |
| flex              | integer | null: false                |
| style             | integer | null: false                |
| level             | integer | null: false                |

### Association
- has_many :favorites
- has_many :users, through: :favorites
- has_many :recs
- has_many :reviews

---

## favorites テーブル

| Column            | Type       | Options                        |
|-------------------|------------|--------------------------------|
| id                | integer    | primary key                    |
| user_id           | references | null: false, foreign_key: true |
| board_id          | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :board

---

## recs テーブル

| Column            | Type       | Options                        |
|-------------------|------------|--------------------------------|
| id                | integer    | primary key                    |
| user_id           | references | null: false, foreign_key: true |
| board_id          | references | null: false, foreign_key: true |
| score             | float      | null: false                    |
| reason            | text       |                                |

### Association
- belongs_to :user
- belongs_to :board

---

## reviews テーブル

| Column            | Type       | Options                        |
|-------------------|------------|--------------------------------|
| id                | integer    | primary key                    |
| board_id          | references | null: false, foreign_key: true |
| rating            | integer    | null: false                    |
| comment           | text       | null: false                    |
| user_exp          | integer    | null: false                    |

### Association
- belongs_to :board
require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection

class User < ActiveRecord::Base
    has_secure_password
    validates :name,
      presence: true,
      format: { with: /\A[\p{Han}\p{Hiragana}\p{Katakana}a-zA-Z0-9]+\z/ }
    validates :password,
        length: { in:5..20 }
    has_many :tasks
end
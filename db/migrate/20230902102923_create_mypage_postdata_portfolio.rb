class CreateMypagePostdataPortfolio < ActiveRecord::Migration[6.1]
  def change
    create_table :mypage do |t|
      t.string :myoageImg, null: false
      t.string :course, null: false
      t.string :mypageClass, null: false
      t.string :attribute, null: false
      t.string :mypageUsers, null: false
    end
    
    create_table :postData do |t|
      t.string :text, null: false
      t.string :tag, null: false
      t.string :postImg, null: false
      t.string :postUsers, null: false
    end
    
    create_table :portfolio do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.string :detail, null: false
      t.string :portfolioImg, null: false
      t.string :postPortfolio, null: false
    end
    
  end
end

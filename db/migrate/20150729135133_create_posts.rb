  class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |x|
      x.string :desc
      x.integer :category_id

        #EITHER WRITE X.INTEGER = CATEGORY.ID OR WRITE THIS:
        #x.belongs_to  :categories
       

       # x.string :secret_key

      x.timestamps null:false
    end
  end
end





      # x.string  :name
      # x.string  :description
      # x.string  :title
      # x.string  :email
      # x.string  :location
      # x.string  :phone
      # x.decimal :price
      # x.string :secret_key

      # x.timestamps  null: false

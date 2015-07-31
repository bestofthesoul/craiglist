require_relative '../config/environment'

50.times do
  Post.create   :category_id       => Faker::Number.between(1,5),
                :desc              => Faker::Address.state
                # :secret_key 		=> SecretKey.generate
end

array = ["Car","Food","Travel","Love","Career"]
array.each do |x|
  Category.create   :name   => x
end



# 5.times.each do |x|

#  

#   post_data = {
#       :name => Faker::Name.name,
#       :title => Faker::Name.name,
#       :description => "Selling #{post_title}",
#       :location => Faker::Address.city,
#       :phone => Faker::PhoneNumber.phone_number,
#       :email => Faker::Internet.email,
#       :price => Faker::Commerce.price,
#       :secret_key => SecretKey.generate,

#       :categories_id => Faker::Number.between(1,5)
#   }

#   Post.create(post_data)

# end

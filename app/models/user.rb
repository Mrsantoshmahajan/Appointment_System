class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         validates :first_name ,:last_name ,presence: true
         validates :gender,inclusion:{ in: %w(male female other),
           message: "%{invalid gender} "}
          validates :city, :state ,:pincode ,presence: true
          validates :pincode, length: {is: 6}
          validates :pincode ,numericality: {only_integer: true }

         enum user_type: [ :doctor, :patient ]


          
end

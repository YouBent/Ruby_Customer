class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true,
                      length: { minimum: 2 }
  validates :phone_number, numericality: { only_integer: true },
                      length: { is: 10 }     
  validates :dob, format: { with: /((2-(0[1-9]|1[0-9]|2[0-8]))|((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30)))-(19|20)\d{2}/ } 
   
  validates :email, format: {with: /(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})/}
end

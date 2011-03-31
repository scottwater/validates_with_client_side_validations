class UserValidator < ActiveModel::Validator
  def validate(record)
    if record.first_name.blank? 
      record.errors[:first_name] << "Need a first name"
    end
    if record.last_name.blank? 
      record.errors[:last_name] << "Need a last name"
    end
  end
end

class User < ActiveRecord::Base
 validates_presence_of :email 
 # if you comment out the UserValidator the example will work
 validates_with UserValidator, :on => :create
end


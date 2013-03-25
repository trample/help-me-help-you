class User < ActiveRecord::Base
  attr_accessible :password
  EMAIL_REGES = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/i
end

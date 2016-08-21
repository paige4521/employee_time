class User < ActiveRecord::Base
  #validates :email, format: {with: /@/}, uniqueness: true, :message => "Email Address is Already in Use"

  validates :email, format: {with: /@/}, uniqueness: true
  validates_presence_of :email, :message => "Email Address is Required"
  validates :password, confirmation: true
  validates_confirmation_of :password, :message => "Password Confirmation MUST MATCH give password"
  #validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, :message => "Please Enter a Valid Email Address."
  validates_uniqueness_of  :email, :message => "Email Address is Already in Use. Have you forgotten your password?"
  has_secure_password




end

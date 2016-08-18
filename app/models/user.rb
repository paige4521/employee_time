class User < ActiveRecord::Migration
  #validates :email, format: {with: /@/}, uniqueness: true, :message => "Email Address is Already in Use"
  validates :password_digest, presence: true
  validates :password, confirmation: true
  validates_confirmation_of :password, :message => "Password Confirmation MUST MATCH give password"
  validates_presence_of :email, message => "Email Address is Required"
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, :message => "Please Enter a Valid Email Address."
  validates_uniqueness  :email, :message => "Email Address is Already in Use. Have you forgotten your password?"
  has_secure_password

  before_save :encrypt_password
end

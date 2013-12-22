require 'active_model'
class Inquiry
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  
  attr_accessor :name, :email, :message
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def deliver
    Pony.mail({
      :from => %("#{name}" <#{email}>),
      :reply_to => email,
      :subject => "Website inquiry",
      :body => message,
    })
  end
      
  def persisted?
    false
  end
end
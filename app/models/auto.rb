class Auto < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :type
  validates_presence_of :name, :type_id, :message => "Все поля должны быть заполнены."
end

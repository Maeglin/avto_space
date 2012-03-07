class Type < ActiveRecord::Base
  include ActiveModel::Validations
  has_many :autos
  validates_presence_of :name, :clean_m, :clean_n, :clean_b, :resto, :defend, :ceramic, :message => "Все поля должны быть заполнены."
end

class Finca < ApplicationRecord
  belongs_to :region,optional: true
  belongs_to :soil,optional: true
  belongs_to :variety,optional: true
  belongs_to :altitude,optional: true
  has_many :scalas
end

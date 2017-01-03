class Item < ActiveRecord::Base
  belongs_to :user
  enum status: [:to_be_done, :doing, :done]
  serialize :tags, Array
  has_and_belongs_to_many :labels

end

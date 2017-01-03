class Task < ActiveRecord::Base
  belongs_to :user
  enum status: [:to_be_done, :doing, :done]
  serialize :tags, Array
end

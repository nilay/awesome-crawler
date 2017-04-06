class Website < ApplicationRecord

  validates_uniqueness_of :url, message: "has already been saved to be crawled"
end

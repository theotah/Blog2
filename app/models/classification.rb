class Classification < ActiveRecord::Base
    has_many :article_classifications
    has_many :articles, through: :article_classifications
    
    validates :classification, presence: true, length: {minimum: 1, maximum: 6}
    validates_uniqueness_of :classification
    validates :class_description, length: {maximum: 300}
    validates_uniqueness_of :class_description
end
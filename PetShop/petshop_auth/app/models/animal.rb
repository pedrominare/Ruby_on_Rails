class Animal < ApplicationRecord

    belongs_to :user

    validates :raca, :nome, :idade, presence: true
end

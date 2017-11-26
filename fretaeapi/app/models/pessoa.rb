class Pessoa < ApplicationRecord
  validates :nome, presence: true
  validates :email, presence: true
  validates :senha, presence: true
  validates :telefone, presence: true
end

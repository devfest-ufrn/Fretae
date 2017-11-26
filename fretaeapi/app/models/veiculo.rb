class Veiculo < ApplicationRecord
  validates :categoria, presence: true
  validates :cor, presence: true
  validates :modelo, presence: true
end

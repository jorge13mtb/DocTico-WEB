class Centro < ActiveRecord::Base
  belongs_to :usuario
  validates :usuario_id, presence: true
  validates :nombre, presence: true,
                    length: { minimum: 5 }
end

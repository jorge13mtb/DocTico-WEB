class Centro < ActiveRecord::Base
  belongs_to :usuario
  validates :usuario_id, presence: true
  validates :nombre, presence: true
  validates :latitud, presence: true
  validates :longitud, presence: true
  validates :tipo, presence: true
  validates :horario, presence: true
  validates :descripcion, presence: true
end

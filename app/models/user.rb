class User < ApplicationRecord
  # Direct associations

  has_many   :histories,
             :dependent => :destroy

  # Indirect associations

  has_many   :wines,
             :through => :histories,
             :source => :wine

  has_many   :locations,
             :through => :histories,
             :source => :location

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

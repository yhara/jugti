require 'foundations/classic'
require 'layers/orm/providers/sequel'

module Jugti
  include Waves::Foundations::Classic
  include Waves::Layers::ORM::Sequel
end
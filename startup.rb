require 'foundations/classic'
require 'layers/orm/providers/sequel'

module Jugti
  VERSION = "0.1"

  include Waves::Foundations::Classic
  include Waves::Layers::ORM::Sequel
end

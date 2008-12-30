module Jugti
  module Models
    class Trick < Default
      one_to_many :records, :class => Jugti::Models::Record
    end
  end
end

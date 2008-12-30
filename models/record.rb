module Jugti
  module Models
    class Record < Default
      many_to_one :trick
    end
  end
end

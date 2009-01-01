module Jugti
  module Models
    class Record < Default
      many_to_one :trick, :class => Jugti::Models::Trick

      before_save do
        set_with_params(:updated_at => Time.now)
      end

      def date_str
        self.date.strftime("%Y-%m-%d")
      end
    end
  end
end

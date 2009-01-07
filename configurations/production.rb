module Jugti

  module Configurations

    class Production < Default

#      database :host => 'localhost', :adapter => 'mysql', :database => 'jugti',
#        :user => 'root', :password => ''
      database :adapter => 'sqlite', :database => 'jugti'

      reloadable []

      log :level => :error,
        :output => ( :log / "waves.#{$$}" ),
        :rotation => :weekly

      host 'localhost'

      port 3001

      application do
        use ::Rack::Static, :urls => [ '/css/', '/javascript/', '/favicon.ico' ], :root => 'public'
        run ::Waves::Dispatchers::Default.new
      end
      
      server Waves::Servers::Mongrel

    end
  end
end

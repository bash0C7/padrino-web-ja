class PadrinoWeb < Padrino::Application
  enable :sessions
  register Padrino::Helpers
  register Padrino::Mailer
  register Padrino::Cache
  register Padrino::Contrib::ExceptionNotifier
  register Padrino::Contrib::Helpers::AssetsCompressor if Padrino.env == :production
  set :caching, true
  set :delivery_method, :smtp => {
    :address         => 'smtp.lipsiasoft.com',
    :port            => '25',
    :user_name       => 'mailer@lipsiasoft.com',
    :password        => 'mailer!',
    :authentication  => :login # :plain, :login, :cram_md5, no auth by default
  }
  set :exceptions_subject, "PadrinoWeb"
  set :exceptions_from,    "Padrino WebSite <exceptions@jp.padrinorb.com>"
  set :exceptions_to,      Account.all.map(&:email)
  set :exceptions_page,    "base/errors"
  # # Uncomment this for test in development
  # disable :raise_errors
  # disable :show_exceptions
  # Remove this when padrino 0.9.24 was relased
end # PadrinoWeb

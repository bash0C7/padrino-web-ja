class PadrinoWeb < Padrino::Application
  register Padrino::Helpers
  register Padrino::Mailer
  register Padrino::Cache
  register Padrino::Contrib::ExceptionNotifier
  register Padrino::Contrib::Helpers::AssetsCompressor if Padrino.env == :production
  set :caching, true
  set :exceptions_subject, "PadrinoWeb"
  set :exceptions_from,    "Padrino WebSite <exceptions@jp.padrinorb.com>"
  set :exceptions_to,      Account.all.map(&:email)
  set :exceptions_page,    "base/errors"
  # # Uncomment this for test in development
  # disable :raise_errors
  # disable :show_exceptions
end # PadrinoWeb


module Language
  extend ActiveSupport::Concern

  included do
    around_action :switch_local

    private

    def switch_local(&action)
      I18n.with_locale(locale_from_header, &action)
    end

    def locale_from_header
      request.env['HTTP_ACCEPT_LANGUAGE']&.scan(/^[a-z]{2}/)&.first
    end
  end
end

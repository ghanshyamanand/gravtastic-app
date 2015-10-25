module Gravatar
  extend ActiveSupport::Concern
  included do
    include Gravtastic
    gravtastic :secure => true,
              :filetype => :gif,
              :size => 120,
              :default => "identicon"
  end
end

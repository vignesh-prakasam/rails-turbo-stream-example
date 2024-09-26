# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@hotwired/turbo-rails", to: "@hotwired--turbo-rails.js" # @7.2.5
pin "@hotwired/turbo", to: "@hotwired--turbo.js" # @7.3.0
pin "@rails/actioncable/src", to: "@rails--actioncable--src.js" # @7.2.100

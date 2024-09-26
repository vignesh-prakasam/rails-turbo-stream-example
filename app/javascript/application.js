// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { StreamActions } from "@hotwired/turbo"

StreamActions.console_log = function() {
  console.log(this.getAttribute("message"), this.templateContent, this.targetElements)
}

StreamActions.notification = function() {
  let title = this.getAttribute("title")
  Notification.requestPermission(function(status) {
    console.log(status)
    if (status == "granted") {
      new Notification(title)
    }
  })
}

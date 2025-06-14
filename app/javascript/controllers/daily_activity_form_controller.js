import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="daily-activity-form"
export default class extends Controller {
  static targets = [ "button" ]

  connect() {
  }

  update(){
    this.buttonTarget.click()
    console.log("update called")
  }
}

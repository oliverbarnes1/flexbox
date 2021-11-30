import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button"]

  send() {
    const button = this.buttonTarget
    console.log(button)
  }
}

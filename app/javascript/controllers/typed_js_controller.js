import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Change your life", "Find your dream in 1 click !"],
      typeSpeed: 100,
      loop: true
    })
  }
}

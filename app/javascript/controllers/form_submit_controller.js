import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  submit() {
    this.element.submit();
    this.element.value = "";
  }
}

import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Développeuse web Fullstack Junior", "Création de site web et application web"],
      typeSpeed: 50,
      loop: true
    })
  }
}

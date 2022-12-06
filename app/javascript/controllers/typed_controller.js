import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typed"
export default class extends Controller {
  static values = {
   story: String
  }
  connect() {
    new Typed(this.element, {
      strings: [this.storyValue],
      typeSpeed: 15,
      showCursor: false,
    });
  }

}

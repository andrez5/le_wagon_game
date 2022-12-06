import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="select-choice"
export default class extends Controller {
  connect() {
    console.log("opa iai vei")
  }

  const moveChoice = (event) => {
    if (event.key === 38) {
      moveForward(1);
    } else if (event.key === 40) {
      moveForward(2);
    }
  };
}

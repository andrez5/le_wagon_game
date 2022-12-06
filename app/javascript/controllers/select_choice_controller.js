import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="select-choice"
export default class extends Controller {
  static targets = ["choice"]

  connect() {
    console.log("opa iai vei")
    console.log(this.choiceTargets[0])
    console.log(this.choiceTargets.length)
    this.choiceTargets[0].classList.add("bg-choice")
  }

  choose(event) {
    this.chosen = this.choiceTargets.find(choice => choice.classList.contains("bg-choice"))
    if (event.key === "ArrowUp") {
      if (this.chosen === this.choiceTargets[0]) {
        this.chosen.classList.remove("bg-choice")
        this.choiceTargets[this.choiceTargets.length - 1].classList.add("bg-choice")
      } else {
        this.chosen.classList.remove("bg-choice")
        this.chosen.previousElementSibling.classList.add("bg-choice")
      }
    }
    if (event.key === "ArrowDown") {
      if (this.chosen === this.choiceTargets[this.choiceTargets.length - 1]) {
        this.chosen.classList.remove("bg-choice")
        this.choiceTargets[0].classList.add("bg-choice")
      } else {
        this.chosen.classList.remove("bg-choice")
        this.chosen.nextElementSibling.classList.add("bg-choice")
      }
    }
  }

  selectChoice(event) {
    this.chosen = this.choiceTargets.find(choice => choice.classList.contains("bg-choice"))
    if (event.key === " " || event.key === "Enter") {
      this.chosen.click()
    }
  }
}

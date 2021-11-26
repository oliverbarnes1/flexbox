import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["wsdetails", "button", "exercises", "bottombuttons"]

  connect() {
    console.log("connected!")
  }

  buttontest(event) {
    event.preventDefault()
    const exercise = this.exercisesTarget
    console.log(exercise)
    const details = this.wsdetailsTarget
    const button = this.buttonTarget
    const bottombuttons = this.bottombuttonsTarget
    exercise.classList.add("active")
    button.classList.add("ws-details-disappear")
    details.classList.add("ws-details-disappear")
    bottombuttons.classList.add("ws-details-disappear")
    setTimeout(function () {
      button.classList.add("ws-details-fold")
      details.classList.add("ws-details-fold")
      bottombuttons.classList.add("ws-details-fold")
    }, 2000);
  }

  nextExercise(event) {
    event.preventDefault()
    const exercises = this.exercisesTargets
    let thing = "true"
    exercises.forEach((exercise) => {
      if (exercise.nextElementSibling) {
        console.log(exercise.nextElementSibling)
        if (exercise.classList.contains("active") && thing=="true") {
          exercise.nextElementSibling.classList.add("active")
          exercise.classList.remove("active")
          thing = "false"
          console.log(thing)
        }
      }
    })
  }
}

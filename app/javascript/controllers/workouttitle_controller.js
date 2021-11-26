import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["wsdetails", "button", "exercises", "bottombuttons", "header", "picture", "emoji", "name"]

  connect() {
    console.log("connected!")
  }

  buttontest(event) {
    event.preventDefault()
    const exercise = this.exercisesTarget
    console.log(exercise)
    const details = this.wsdetailsTarget
    const header = this.headerTarget
    const button = this.buttonTarget
    const backbutton = this.backbuttonTarget
    const bottombuttons = this.bottombuttonsTarget
    const pictures = this.pictureTargets
    const emojis = this.emojiTargets
    const names = this.nameTargets
    button.classList.add("ws-details-disappear")
    details.classList.add("ws-details-disappear")
    bottombuttons.classList.add("ws-details-disappear")


    setTimeout(function () {
      pictures.forEach((picture) => {
        picture.classList.add("ws-details-disappear")
      })
      emojis.forEach((emoji) => {
        emoji.classList.add("ws-details-disappear")
      })
      names.forEach((name) => {
        name.classList.add("ws-details-disappear")
      })
      button.classList.add("ws-details-fold")
      details.classList.add("ws-details-fold")
      bottombuttons.classList.add("ws-details-fold")
      header.classList.add("ws-details-fold")

      setTimeout(function () {
        pictures.forEach((picture) => {
          picture.remove()
        })
        emojis.forEach((emoji) => {
          emoji.remove()
        })
        names.forEach((name) => {
          name.classList.add("ws-exercise-name-after")
          name.classList.remove("ws-details-disappear")
        })
        exercise.classList.add("active")
      }, 500)
    }, 500);
  }

  nextExercise(event) {
    event.preventDefault()
      const exercises = this.exercisesTargets
      let muscles = document.querySelector('.active')
      if (muscles) {
        if (muscles.nextElementSibling) {
        muscles.nextElementSibling.classList.add("active")
        muscles.classList.remove("active")
        }
      }
  }

}

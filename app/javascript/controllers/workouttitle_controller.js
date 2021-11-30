import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["wsdetails", "button", "exercises", "bottombuttons", "header", "picture", "emoji", "name", "heading"]

  connect() {
    console.log("connected!")
  }

  buttontest(event) {
    event.preventDefault()
    window.scroll({
      top: 0,
      left: 0,
      behavior: 'smooth'
    });
    const exercise = this.exercisesTarget
    console.log(exercise)
    const details = this.wsdetailsTarget
    const header = this.headerTarget
    const button = this.buttonTarget
    const heading = this.headingTarget
    const backbutton = this.backbuttonTarget
    const bottombuttons = this.bottombuttonsTarget
    const pictures = this.pictureTargets
    const emojis = this.emojiTargets
    const names = this.nameTargets
    button.classList.add("ws-details-disappear")
    heading.classList.add("ws-details-disappear")
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
      heading.classList.add("ws-details-fold")


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
        bottombuttons.remove()
        exercise.classList.add("active")
        if (exercise.dataset.time) {
          let time = exercise.dataset.time
          exercise.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info\"></p></div>`)
        }
        else {
          exercise.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info\">${exercise.dataset.reps} reps</p></div>`)
        }
          setTimeout(function () {
          let info = document.querySelector('.workout-reps-time')
          info.classList.add("reps-size-add")
          setTimeout(function () {
            let opacity = document.querySelector(".exercise-info")
            opacity.classList.add("info-add")
          }, 200)
        }, 400)
      }, 500)
    }, 500);
  }

  nextExercise(event) {
    event.preventDefault()
      let muscles = document.querySelector('.active')
      if (muscles) {
        if (muscles.nextElementSibling) {
          let fadeout = document.querySelector(".exercise-info")
          fadeout.classList.remove("info-add")
          console.log(fadeout)
          setTimeout(function () {
            fadeout.remove()
            let removeinfo = document.querySelector('.workout-reps-time')
            console.log(removeinfo)
            removeinfo.classList.remove("reps-size-add")
            setTimeout(function () {
              window.scrollBy({
                top: 88,
                left: 0,
                behavior: 'smooth'
              });
              removeinfo.remove()
              muscles.classList.remove("active")
              muscles.nextElementSibling.classList.add("active")
              if (muscles.dataset.time) {
                let time = muscles.dataset.time
                muscles.nextElementSibling.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info\"></p></div>`)
              }
              else {
                muscles.nextElementSibling.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info\">${muscles.dataset.reps} reps</p></div>`)
              }
              setTimeout(function () {
                let addinfo = document.querySelector('.workout-reps-time')
                addinfo.classList.add("reps-size-add")
                setTimeout(function () {
                  let infopacity = document.querySelector(".exercise-info")
                  infopacity.classList.add("info-add")
                  if (muscles.dataset.time) {
                    let timer = muscles.dataset.time
                    let duration = document.querySelector('.exercise-info')
                    duration.innerHTML = (timer == 1) ? `${timer} second<br> remaining` : `${timer} seconds<br> remaining`
                    let x = setInterval(function () {
                      duration.innerHTML = (timer == 1) ? `${timer} second<br> remaining` : `${timer} seconds<br> remaining`
                      timer -= 1
                      if (timer == -1) {
                        clearInterval(x)
                        duration.innerHTML = "press any key<br> to continue"
                      }
                    }, 50);
                  }
                }, 200)
              }, 400)
            }, 400)
          }, 200)
        } else {
          console.log(document.querySelector('.cwb-container'))

            window.scroll({
              bottom: 0,
              left: 0,
              behavior: 'smooth'
            });
            setTimeout(function () {
              let cwbcontainer = document.querySelector('.cwb-container')
              console.log(cwbcontainer)
              cwbcontainer.classList.add('cwb-container-unfold')
              let cwbutton = document.querySelector('.complete-workout-button')
              cwbutton.classList.remove('cwb-displaynone')
              console.log(cwbutton)
              setTimeout(function () {
                cwbutton.classList.add('cwb-button-visible')
              }, 1)
            }, 1)

        }
      }
  }
}

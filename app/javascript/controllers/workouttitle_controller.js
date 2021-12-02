import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["wsdetails", "button", "exercises", "bottombuttons", "header", "picture", "emoji", "name", "heading", "workoutheading"]

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
    const workoutheading = this.workoutheadingTarget
    const backbutton = this.backbuttonTarget
    const bottombuttons = this.bottombuttonsTarget
    const pictures = this.pictureTargets
    const emojis = this.emojiTargets
    const names = this.nameTargets
    button.classList.add("ws-details-disappear")
    heading.classList.add("ws-details-disappear")
    workoutheading.classList.add("ws-details-disappear")
    details.classList.add("ws-details-disappear")
    bottombuttons.classList.add("ws-details-disappear")
    setTimeout(function () {
      header.classList.add("ws-header-disappear")

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
        header.classList.add("ws-header-fold")
        heading.classList.add("ws-details-fold")
        workoutheading.classList.add("ws-details-fold")


        setTimeout(function () {
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
            exercise.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info t\"></p></div>`)
          }
          else if (muscles.dataset.reps) {
            exercise.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info\">${exercise.dataset.reps} reps</p></div>`)
          }
          else {
            exercise.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info\"></p></div>`)
          }
            setTimeout(function () {
            let info = document.querySelector('.workout-reps-time')
            info.classList.add("reps-size-add")
            setTimeout(function () {
              let picture = document.querySelector('.picture')
              picture.classList.remove("ws-details-disappear")
              let opacity = document.querySelector(".exercise-info")
              opacity.classList.add("info-add")
              if (exercise.dataset.time) {
                let timer = exercise.dataset.time
                let duration = document.querySelector('.t')
                duration.innerHTML = (timer == 1) ? `${timer} second<br> remaining` : `${timer} seconds<br> remaining`
                let x = setInterval(function () {
                  duration.innerHTML = (timer == 1) ? `${timer} second<br> remaining` : `${timer} seconds<br> remaining`
                  timer -= 1
                  if (timer == -1) {
                    clearInterval(x)
                    duration.innerHTML = "press any key<br> to continue"
                  }
                }, 1000);
              }
            }, 200)
          }, 400)
        }, 500)
      }, 100);
    }, 500);
  }

  nextExercise(event) {
    event.preventDefault()
      let muscles = document.querySelector('.active')
      if (muscles) {
        if (muscles.nextElementSibling) {
          let fadeout = document.querySelector(".exercise-info")
          fadeout.classList.remove("info-add")
          let picturefade = document.querySelector('.picture')
          picturefade.classList.add("ws-details-disappear")
          console.log(fadeout)
          setTimeout(function () {
            picturefade.classList.remove("picture")
            fadeout.remove()
            let removeinfo = document.querySelector('.workout-reps-time')
            console.log(removeinfo)
            removeinfo.classList.remove("reps-size-add")
            setTimeout(function () {
              window.scrollBy({
                top: 94,
                left: 0,
                behavior: 'smooth'
              });
              removeinfo.classList.remove('workout-reps-time')
              muscles.classList.remove("active")
              muscles.nextElementSibling.classList.add("active")
              if (muscles.dataset.time) {
                let time = muscles.dataset.time
                muscles.nextElementSibling.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info t\"></p></div>`)
              }
              else if (muscles.dataset.reps) {
                muscles.nextElementSibling.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info\">${muscles.dataset.reps} reps</p></div>`)
              }
              else {
                exercise.insertAdjacentHTML("beforeend", `<div class=\"workout-reps-time ws-workout-reps-time-display\"><p class=\"exercise-info\"></p></div>`)
              }
              setTimeout(function () {
                let addinfo = document.querySelector('.workout-reps-time')
                addinfo.classList.add("reps-size-add")
                setTimeout(function () {
                  let infopacity = document.querySelector(".exercise-info")
                  infopacity.classList.add("info-add")
                  let picture = document.querySelector('.picture')
                  picture.classList.remove("ws-details-disappear")
                  if (muscles.dataset.time) {
                    let timer = muscles.dataset.time
                    let duration = document.querySelector('t')
                    duration.innerHTML = (timer == 1) ? `${timer} second<br> remaining` : `${timer} seconds<br> remaining`
                    let x = setInterval(function () {
                      duration.innerHTML = (timer == 1) ? `${timer} second<br> remaining` : `${timer} seconds<br> remaining`
                      timer -= 1
                      if (timer == -1) {
                        clearInterval(x)
                        duration.innerHTML = "press any key<br> to continue"
                      }
                    }, 1000);
                  }
                }, 200)
              }, 400)
            }, 400)
          }, 200)
        } else {
          let picturefade = document.querySelector('.picture')
          picturefade.classList.add("ws-details-disappear")
          let muscles = document.querySelector('.active')
          let fadeout = document.querySelector(".exercise-info")
          fadeout.classList.remove("info-add")
          setTimeout(function () {
            let removeinfo = document.querySelector('.workout-reps-time')
            removeinfo.classList.remove("reps-size-add")
            muscles.classList.remove("active")
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
          }, 500)
        }
      }
  }
}

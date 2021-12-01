const selectWe = () => {

  const weEditButtons = document.querySelectorAll('.edit-button')
  console.log(weEditButtons);

  weEditButtons.forEach((button) => {
    button.addEventListener("click", (event) => {
      const thing = document.getElementById(`workout_exercise_${button.id}`);
      console.log(thing);
      thing.classList.toggle("edit-we-form");

    });
  });

};

export { selectWe };

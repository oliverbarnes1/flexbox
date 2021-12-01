const deleteWe = () => {

  const weDeleteButtons = document.querySelectorAll('.delete-button')
  console.log(weDeleteButtons);

  weDeleteButtons.forEach((button) => {
    button.addEventListener("click", (event) => {
      const thing = document.getElementById(`workout_exercise_${button.id}`);
      console.log(thing);
      thing.classList.toggle("delete-we-form");
    });
  });

};

export { deleteWe };

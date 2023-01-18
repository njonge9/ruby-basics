const buttons = document.querySelector("button");
const body = document.querySelector("body");

// // body.append(buttons);
// function myFunction() {
//   const randomColors = Math.floor(Math.random() * 256);
//   buttons.style.backgroundColor = `rgb(${randomColors}, ${randomColors}, ${randomColors})`;
// }

// buttons.addEventListener("click", myFunction);
const array = ["yellow", "Green", "blue", "cyan", "red", "black"];

// function myFunction() {
//   const arrayIndexRandom = Math.floor(Math.random() * array.length);
//   body.style.backgroundColor = array[arrayIndexRandom];
// }

function myFunction2() {
  array.forEach((elem, index) => {
    console.log(index++);
  });
}

// buttons.addEventListener("click", myFunction);

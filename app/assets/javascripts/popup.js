const form = document.getElementById("new_order");
const popUp = document.querySelector(".modal-body");

form.addEventListener("submit", (event) => {
  event.preventDefault()
  const timeSelect = document.getElementById("order_time");
  const time = timeSelect.options[timeSelect.selectedIndex].value;

  const confirmation = `Please confirm that your order will be picked up at <strong>${time}</strong>`;
  popUp.insertAdjacentHTML ("beforeend", confirmation);
  // get the time selected by the user
  // Target the modal message
  // Replace the modal message with what the user chose
});



document.querySelector(".modal-footer .btn-success").addEventListener("click", (event) => {
  form.submit()
});

const openBtn = document.getElementById("pwd_open");
const modal = document.querySelector(".modal");

const openModal = () => {
    modal.classList.remove("hidden");
}
openBtn.addEventListener("click",openModal);


const closeBtn = document.querySelector(".closeModal");
const closeBg = document.querySelector(".bg");

const closeModal = () => {
    modal.classList.add("hidden");
}

closeBtn.addEventListener("click",closeModal);
closeBg.addEventListener("click",closeModal);

const modal = () => {
  const modalopen = document.getElementById('modal-open')
  modalopen.addEventListener("click", function(){
    document.getElementById("modal").classList.add("active")
    document.getElementById("mask").classList.add("active")
  })
  const close = document.getElementById("no")
  close.addEventListener("click", function(){
    document.getElementById("modal").classList.remove("active")
    document.getElementById("mask").classList.remove("active")
  })
}

window.addEventListener("load", modal)
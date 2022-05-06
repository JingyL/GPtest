let pageNum = 1;

function nextPage() {
  if(pageNum >= 3){
    return
  }
  document.getElementById(`block${pageNum}`).style.display = "none";
  pageNum += 1
  document.getElementById(`block${pageNum}`).style.display = "block";
}


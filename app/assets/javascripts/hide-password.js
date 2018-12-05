
function showHidePass() {
    var x = document.getElementById("passblock");
    if (x.style.display === "none") {
        x.style.display = "block";
        document.getElementById("passchange").classList.add("active")
    } else {
        x.style.display = "none";
        document.getElementById("passchange").classList.remove("active")
    }
}
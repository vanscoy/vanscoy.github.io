function toggleVisibility(id) {
  var x = document.getElementById(id);
  if (x.style.display == 'block') {
    x.style.display = 'none';
  } else {
    x.style.display = 'block';
  }
}

function hideId(id) {
  var element = document.getElementById(id);
  if (element) {
    element.style.display = 'none';
  }
}

function showId(id) {
  var element = document.getElementById(id);
  if (element) {
    element.style.display = 'block';
  }
}

function publicationVisibility() {
  var obj = document.getElementById("pubsort");
  for (var i=0; i<obj.options.length; i++) {
    var opt = obj.options[i].text.toLowerCase();
    var id = "publications-by-".concat(opt);
    if (i == obj.selectedIndex) {
      showId(id);
    } else {
      hideId(id);
    }
  }
}
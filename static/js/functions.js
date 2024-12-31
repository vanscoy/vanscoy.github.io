// toggle visibility of element with given id
function toggle_visibility(pageid,buttonid) {
  var p = document.getElementById(pageid);
  var b = document.getElementById(buttonid);
  if (p.style.display == 'block')
  {
    p.style.display = 'none';
    b.innerHTML = "[more]";
  }
  else
  {
     p.style.display = 'block';
     b.innerHTML = "[less]";
  }
}

// course tabs
function opentab(courseid,tab) {
  var course = document.getElementById(courseid);
  var tabs = course.getElementsByClassName("tab-content");
  for (var i = 0; i < tabs.length; i++) {
    tabs[i].style.display = "none";
  }
  course.getElementsByClassName(tab)[0].style.display = "block";
}

// toggle visibility
function toggleVisibility(id) {
  var x = document.getElementById(id);
  if (x.style.display == 'block') {
    x.style.display = 'none';
  } else {
    x.style.display = 'block';
  }
}

// show/hide by class names
function hideClassNames(names) {
  var elements = document.getElementsByClassName(names);
  for (var i=0; i<elements.length; i++) {
    elements[i].style.display = 'none';
  }
}
function showClassNames(names) {
  var elements = document.getElementsByClassName(names);
  for (var i=0; i<elements.length; i++) {
    elements[i].style.display = 'block';
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


/* Toggle visibility of more content
  <div id="id">
    <div class="summary"></div>
    <div class="more"></div>
    <a class="more-less-button"><i></i></a>
  </div>
*/
function toggle_more(id) {
  var div = document.getElementById(id);
  var summary = div.querySelector('.summary');
  var full = div.querySelector('.full');
  var button = div.querySelector('.more-less-button');
  var i = button.getElementsByTagName('i')[0];
  if (summary.style.display == 'block')
  {
    summary.style.display = 'none';
    full.style.display = 'block';
    i.classList.remove('fa-angles-down');
    i.classList.add('fa-angles-up');
  }
  else
  {
    summary.style.display = 'block';
    full.style.display = 'none';
    i.classList.remove('fa-angles-up');
    i.classList.add('fa-angles-down');
  }
}

// Show the given page and hide all others
function show(link,page) {
  var pages = document.getElementsByClassName('page');

  for (var j=0; j<pages.length; ++j) {
    pages[j].style.display='none';
  }
  document.getElementById(page).style.display='block';

  var navlinks = document.getElementsByClassName('nav-link');

  for (var j=0; j<navlinks.length; ++j) {
    navlinks[j].classList.remove('active');
  }
  document.getElementsByClassName('nav-link ' + link)[0].classList.add('active');

  // Scroll to top
  $('html,body').scrollTop(0);

  return false;
}


// Toggle display of BibTex
function toggleBibtex(articleid) {
  var bib = document.getElementById('bib_'+articleid);
  if (bib) {
    if (bib.className.indexOf('bibtex') != -1) {
      bib.className.indexOf('noshow') == -1 ? bib.className = 'bibtex noshow' : bib.className = 'bibtex';
    }
  }
}

$(function(){
  var navMain = $(".navbar-collapse");

  navMain.on("click", "a", null, function () {
    if (!$(this).hasClass('research')) {
      $(".navbar-collapse").collapse('hide');
    }
  });
});

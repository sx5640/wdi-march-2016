"use strict";

var es6Variable = "This is an ES2015 variable";

var movie = {
  title: "Captain America: Civil War",
  year: 2016,
  fullTitle: function fullTitle() {
    return title + " (" + year + ")";
  }
};
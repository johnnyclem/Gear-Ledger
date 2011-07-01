// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $("#item_package_tokens").tokenInput("/packages.json", {
    crossDomain: false,
    prePopulate: $("#item_package_tokens").data("pre"),
    theme: "facebook"
  });
});

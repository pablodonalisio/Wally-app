// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
// eslint-disable-next-line import/no-unresolved
import "channels";
import React from "react";
import ReactDOM from "react-dom";
import Routes from "./Routes";

Rails.start();
Turbolinks.start();
ActiveStorage.start();

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    // eslint-disable-next-line react/jsx-filename-extension
    <Routes name="React" />,
    document.body.appendChild(document.createElement("div"))
  );
});

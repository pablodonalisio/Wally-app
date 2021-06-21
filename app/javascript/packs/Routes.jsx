import React, { useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import Home from "./Home/Home";
import Picture from "./Picture/Picture";

const Routes = () => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={Home} />
        <Route path="/pictures/:pictureId" component={Picture} />
      </Switch>
    </BrowserRouter>
  );
};

export default Routes;

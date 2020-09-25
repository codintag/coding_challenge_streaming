import React, { Component } from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Movies from "./Movies";
import Series from "./Series";

class Home extends Component {
  render() {
    return (
      <div>
        <Router>
          <Switch>
            <Route path="/" component={(props) => <Home {...props} />} />
            <Route
              path="/movies"
              component={(props) => <Movies {...props} />}
            />
            <Route
              path="/series"
              component={(props) => <Series {...props} />}
            />
          </Switch>
        </Router>
      </div>
    );
  }
}

export default Home;

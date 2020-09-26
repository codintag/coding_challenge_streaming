import React from 'react';
import '../styles/App.css';
import Home from './Home';
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Movies from "./Movies";
import Series from "./Series";
import Navbar from "./Navbar";
import Footer from './Footer';
import NotFound from './NotFound';


const App = () => {
  return (
    <div className="App">
          
        <Router>
          <Navbar />
          <Switch>
            <Route exact path="/" component={Home} /> {/* (props) => <Home {...props} /> */}
            <Route exact path="/movies" component={Movies} />
            <Route exact path="/series" component={Series} />
            <Route component={NotFound} />
          </Switch>
        </Router>
        <Footer />
    </div>
  );
}

export default App;

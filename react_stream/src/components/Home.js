import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import Axios from "axios";
// import placeHolderImg from "../images/assets/placeholder.png";
// let placeHolderImg = require('../images/assets/placeholder.png');
let adresseImage = 'https://www.luiz.fr/wp-content/uploads/2016/04/Top-des-films-2.jpg'

const Home = () => {
  const [categories, setCategories] = useState([]);
  const [error, setError] = useState(null);
  const [isLoaded, setIsLoaded] = useState(false);

  // Declaration de la method componentDidMount avec l'utilisation des hook
  useEffect(() => {
    setTimeout(() => {
      Axios.get("http://localhost:3051/films/categories")
        .then((response) => response)
        .then(
          (datas) => {
            console.log(datas.data);
            setCategories(datas.data);
            setIsLoaded(true);
          },
          (error) => {
            setIsLoaded(true);
            setError(error);
          }
        );
    }, 1000);
  }, []);

  if (error) {
    return (
      <div className="container my-5 py-5 errorContainer">
        <h4 className="py-5">Oops... something went wrong... -_-</h4>
      </div>
    );
  } else if (!isLoaded) {
    return (
        <section className="sectionLoading loadingContainer">
          <span id="grand-load3">
            <h2 className="loadingText">Loading...</h2>
            <span id="grand3"></span>
          </span>
        </section>
    );
  } else {
    return (
      <div>
        <nav className="navbar navbar-expand-sm bg-info navbar-info">
          <span className="container font-weight-bold navbarText">
            Popular Titles
          </span>
        </nav>

        <section>
          <div className="container d-flex">
            {categories.map((categorie, index) => (
              <figure className="my-5 ml-4" key={index}>
                <span className="badge badge-dark position-absolute p-3">
                  Go to {categorie.name_category}
                </span>
                <Link to={`/${categorie.name_category}`}>
                  <img
                    src={adresseImage}
                    className="img-fluid border border-dark figShadow"
                    alt={categorie.name_category}
                  />
                </Link>
                <figcaption> Popular {categorie.name_category}</figcaption>
              </figure>
            ))}
          </div>
        </section>
      </div>
    );
  }
};

export default Home;

import React, { useState, useEffect } from "react";
import Axios from "axios";

const Movies = () => {
  const [movies, setMovies] = useState([]);

  // Declaration de la method componentDidMount avec l'utilisation des hook
  useEffect(() => {
    Axios.get("http://localhost:3051/films/allmovies")
      .then((response) => response)
      .then((datas) => {
        console.log(datas.data);
        setMovies(datas.data);
      });
  }, []);

  console.log(movies);

  return (
    <section>
      <nav className="navbar navbar-expand-sm bg-info navbar-info shadow-sm">
        <span className="container font-weight-bold navbarText">
          Popular Movies
        </span>
      </nav>

      <div className="container mt-5 d-flex flex-wrap">
        {movies.map((movie, i) => (
          <div key={i} className="ml-5 mb-5">
            <div className="card" style={{ width: "14rem" }}>
              <span className="badge badge-info position-absolute p-3">
                {movie.release_year}
              </span>
              <img
                src={movie.url_image_movie}
                className="card-img-top"
                alt="movie image"
              />
              <div className="card-body">
                <h5 className="card-title">{movie.title_movie}</h5>
                <p className="card-text">{movie.description_movie}</p>
              </div>
            </div>
          </div>
        ))}
      </div>
    </section>
  );
};

export default Movies;

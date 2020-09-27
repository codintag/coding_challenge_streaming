import React, { useState, useEffect } from "react";
import Axios from "axios";

const Series = () => {
  //state  //setState
  const [series, setSeries] = useState([]);

  // Declaration de la method componentDidMount avec l'utilisation des hooks
  useEffect(() => {
    Axios.get("http://localhost:3051/films/allseries")
      .then((response) => response)
      .then((datas) => {
        console.log(datas.data);
        setSeries(datas.data); // setState
      });
  }, []);

  console.log(series);

  return (
    <section>
      <nav className="navbar navbar-expand-sm bg-info navbar-info shadow-sm">
        <span className="container font-weight-bold navbarText">
          Popular Series
        </span>
      </nav>

      <div className="container mt-5 d-flex flex-wrap">
        {series.map((serie, i) => {
          return (
            <div key={i} className="ml-5  mb-5">
              {/* <img src={serie.url_image_movie} width="150" height="150" />
                <p>{serie.title_movie}</p> */}
              <div className="card" style={{ width: "14rem" }}>
                <span className="badge badge-info position-absolute p-3">
                  {serie.release_year}
                </span>
                <img
                  src={serie.url_image_movie}
                  className="card-img-top"
                  alt="movie image"
                />
                <div className="card-body">
                  <h5 className="card-title">{serie.title_movie}</h5>
                  <p className="card-text">{serie.description_movie}</p>
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </section>
  );
};

export default Series;

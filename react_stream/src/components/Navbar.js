import React from 'react'
import { Link } from 'react-router-dom';

const Navbar = () => {
    return (
        <nav className="navbar navbar-expand-sm bg-dark navbar-dark shadow-sm">
            <div className="container">
            <ul className="navbar-nav">
                <li className="nav-item active">
                    <Link to="/" className="nav-link linkSize">Streaming Demo</Link>
                </li>
                {/* <li className="nav-item">
                    <Link to="/series" className="nav-link linkSize">Series</Link>
                </li>
                <li className="nav-item">
                    <Link to="/movies" className="nav-link linkSize">Movies</Link>
                </li> */}
                {/* <li className="nav-item">
                    <Link to="/update" className="nav-link">Mettre à jour</Link>
                </li> */}
            </ul>
            <form className="form-inline my-2 my-lg-0">
                <button className="btn btn-outline-info my-2 my-sm-0" type="submit">Login</button>
                <button className="btn btn-outline-info ml-3 my-2 my-sm-0" type="submit">Start your free trial</button>
            </form>
            </div>
        </nav>
    )
}

export default Navbar
import { NavLink } from "react-router-dom";

function MovieNavBar(movies) {
    const movieList = movies.map((item) => {
            return <NavLink to={item.id} key={item.id} > {item.title} </NavLink>
    })

    return (
        <nav>
            {movieList}
        </nav>
    )

}

export default MovieNavBar;
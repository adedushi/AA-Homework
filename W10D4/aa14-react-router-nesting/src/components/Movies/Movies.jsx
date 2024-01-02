import { Outlet } from "react-router-dom";
import MovieNavBar from "./MovieNavBar";

function Movies(movies) {
  const { id, title, description } = movies;
  return (
    <div className="comp orange">
      <h1>Movies Component</h1>
      <MovieNavBar movies={["hello", "goodbye"]}/>
      <Outlet /> 
    </div>
  );
}

export default Movies;

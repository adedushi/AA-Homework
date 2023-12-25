import { createBrowserRouter, RouterProvider, Link, Outlet, NavLink } from 'react-router-dom';
import Home from './components/Home';
import Stocks from './components/Stocks';
import Movies from './components/Movies';

function Layout() {
  return (
    <div className='app'>
      <h1>App Component</h1>
      <nav className="comp nav">
        <ul>
          <NavLink 
            to='/' 
            className={({ isActive }) => isActive ? 'purple' : ''}
            style={({isActive}) => isActive ? {fontWeight: 'bold'} : {} }
          >
            Home
          </NavLink>

          <NavLink 
            to='stocks'
            className={({ isActive }) => isActive ? 'purple' : ''}
            style={({isActive}) => isActive ? {fontWeight: 'bold'} : {} }
          >
            Stocks
          </NavLink>

          <NavLink to='movies' 
            className={({ isActive }) => isActive ? 'purple' : ''}
            style={({isActive}) => isActive ? {fontWeight: 'bold'} : {} }
          >
            Movies
          </NavLink>
        </ul>
      </nav>
      <main>
        <Outlet />
      </main>
    </div>
  );
}

const router = createBrowserRouter([
  {
    element: <Layout />,
    children: [
      {
        path: '/',
        element: <Home />
      },
      {
        path: 'stocks',
        element: <Stocks />,
      },
      {
        path: 'movies',
        element: <Movies />
      },
      {
        path: '*',
        element: <h1>Page Not Found</h1>
      },
      {
        path: 'not-logged-in',
        element: <h1>You Must Be Logged In To Enter.</h1>
      }
    ]
  }
]);

function App() {
  return <RouterProvider router={router} />
}




export default App;

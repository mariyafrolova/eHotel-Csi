import logo from './logo.svg';
import './App.css';
import NavBar from './pages/NavBar/NavBar';
import Home from './pages/Home/Home';
import About from'./pages/About/About';
import Populaires from './pages/Populaires/populaires';

const App = () => {
  return (
    <>
    <NavBar/>
    <Home/>
    <Populaires/>
    {/*<About/>
    */}
  

    </>
  );
  }

export default App;

//import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'; // Change BrowserRouter to Router
import NavBar from './pages/NavBar/NavBar';
import Home from './pages/Home/Home';
import About from './pages/About/About';
import Login from './pages/Login/Login'; 
import SignUp from './pages/SignUp/SignUp';
import Contact from './pages/Contact/Contact';
import Populaires from './pages/Populaires/populaires';
import { Auth0Provider } from '@auth0/auth0-react';



const domain = 'dev-rmv46okc6a4bov13.us.auth0.com';
const clientId = 'FPc37KeSqfXT91T4ULRTFBsy5ppSUPGe';
const App = () => {
  return (
    <Auth0Provider
      domain={domain}
      clientId={clientId}
      redirectUri={'http://localhost:3000'}
    >
      <Router>
        <div className="App">
          <NavBar />
          <Routes> 
            <Route path="/" element={<Home />} /> 
            <Route path="/about" element={<About />} />
            <Route path="/login" element={<Login />} />
            <Route path="/signup" element={<SignUp />} />
            <Route path="/contact" element={<Contact />} />
          </Routes>
          <Populaires/>
        </div>
      </Router>
    </Auth0Provider>
  );
}


export default App;

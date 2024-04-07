import React from 'react';
import './Login.css';
import { useAuth0 } from '@auth0/auth0-react';

const Login = () => {
  const { loginWithRedirect } = useAuth0();

  const handleLogin = (userType) => {
    
    if (userType === 'client') {

      loginWithRedirect();
    } else if (userType === 'employee') {
    
      loginWithRedirect();
    } else {
      
      loginWithRedirect();
    }
  };

  return (
    <div className="login-container">
      <form className="login-form">
        <h2>Login</h2>
        <div className="user-type-buttons">
          <button className="btn" onClick={() => handleLogin('client')}>Client</button>
          <button className="btn" onClick={() => handleLogin('employee')}>Employee</button>
        </div>
      </form>
    </div>
  );
};

export default Login;

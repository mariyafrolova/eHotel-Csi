import React from 'react';
import { useAuth0 } from '@auth0/auth0-react';

const SignUp = () => {
  const { loginWithRedirect } = useAuth0();

  const handleSignUp = (e) => {
    e.preventDefault();
    loginWithRedirect();
  };

  return (
    <div className="signup-container">
      <form className="signup-form" onSubmit={handleSignUp}>
        <h2>Sign Up</h2>
        <button type="submit">Sign Up</button>
      </form>
    </div>
  );
};

export default SignUp;

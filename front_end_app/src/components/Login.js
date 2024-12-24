import React from 'react';
import { useNavigate } from 'react-router-dom';
import './Login.css';

const Login = () => {
  const navigate = useNavigate();

  const handleLogin = () => {
    // Placeholder login functionality
    navigate('/dashboard');
  };

  return (
    <div className="login-container">
      <h1>Login</h1>
      <form onSubmit={(e) => { e.preventDefault(); handleLogin(); }}>
        <div className="form-group">
          <label htmlFor="username">Username:</label>
          <input type="text" id="username" required />
        </div>
        <div className="form-group">
          <label htmlFor="password">Password:</label>
          <input type="password" id="password" required />
        </div>
        <button type="submit" className="login-button">Login</button>
      </form>
    </div>
  );
};

export default Login;
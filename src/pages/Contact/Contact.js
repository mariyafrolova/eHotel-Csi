import React from 'react';
import './Contact.css';

const Contact = () => {
  return (
    <div className="contact-container">
      <h1>Contact Jillion Hotel</h1>
      <div className="contact-info">
        <div className="contact-item">
          <h2>Email:</h2>
          <p>info@jillionhotel.com</p>
        </div>
        <div className="contact-item">
          <h2>Phone Number:</h2>
          <p>+1 (123) 456-7890</p>
        </div>
        <div className="contact-item">
          <h2>Head Address:</h2>
          <p>123 Main Street, City, Country</p>
        </div>
        
      </div>
    </div>
  );
};

export default Contact;

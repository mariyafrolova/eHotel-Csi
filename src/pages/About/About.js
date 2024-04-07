import React from 'react';
import './about.css';

const About = () => {
    return (
        <div className="about-container">
            <div className="background-image">
                <img src="https://hips.hearstapps.com/hmg-prod/images/ceara-donnelley-charleston-house-tour-bedroom-jpg-1618427139.jpg?crop=1.00xw:0.762xh;0,0.129xh&resize=1200:*" alt="Hotel" />
            </div>
            <div className="content">
                <h2>About Jillian Hotel</h2>
                <p>Welcome to Jillian Hotel, where luxury meets comfort. Nestled in the heart of the city, our boutique hotel offers a unique blend of sophistication and charm.</p>
                <p>Step into a world of elegance and tranquility, where every detail is meticulously crafted to ensure a memorable stay. From our beautifully appointed rooms and suites to our gourmet dining options and personalized service, we strive to create an unforgettable experience for our guests.</p>
                <p>Whether you're visiting for business or pleasure, our dedicated team is committed to exceeding your expectations and creating moments that will last a lifetime. Experience the magic of Jillian Hotel and discover why we're the preferred destination for discerning travelers.</p>
            </div>
        </div>
    );
};

export default About;

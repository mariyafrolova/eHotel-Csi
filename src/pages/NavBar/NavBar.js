import React from 'react';
import './navbar.css';
import { RiHotelLine } from "react-icons/ri";
import { IoIosCloseCircle } from "react-icons/io";
import { SlMenu } from "react-icons/sl";
import { useAuth0 } from '@auth0/auth0-react';
import { Link } from 'react-router-dom';

const NavBar = () => {
    const { loginWithRedirect } = useAuth0();

    return(
        <section className='navBarSection'>
            <div className='header'>
                <div className='logoDiv'>
                    <a href='a' className='logo'>
                       <h1 className='flex'> <RiHotelLine className='icon'/> Jillian </h1> 
                    </a>
                </div>

                <div className='navBar'>
                    <ul className='navLists flex'>
                        <li className='navItem'>
                        <Link to='/' className='navLink'> Home </Link>
                        </li>
                        <li className='navItem'>
                        <Link to='/about' className='navLink'> About </Link>
                        </li>
                        <li className='navItem'>
                            <a href='#' className='navLink'> Reservations </a>
                        </li>
                        <li className='navItem'>
                        <Link to="/contact" className='navLink'>Contact</Link>
                        </li>

                        <div className='headerBtns flex'>
                            <button className='btn loginBtn' onClick={() => loginWithRedirect()}>
                                Client
                            </button>
                            <button className='btn' onClick={() => loginWithRedirect()}>
                                Employee
                            </button>
                        </div>
                    </ul>
                    <div className='closeNavbar'>
                        <IoIosCloseCircle className='icon'/>  
                    </div> 
                </div>
                <div className='toggleNavbar'>
                    <SlMenu className='icon'/>
                </div>

            </div>
        </section>
    );
};

export default NavBar;

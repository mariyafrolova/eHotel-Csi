import React from 'react'
import './navbar.css'
import { RiHotelLine } from "react-icons/ri";
import { IoIosCloseCircle } from "react-icons/io";
import { SlMenu } from "react-icons/sl";

const NavBar = () => {
    return(
        <section className='navBarSection'>
            <div className='header'>
                <div className='logoDiv'>
                    <a href='a' className='logo'>
                       <h1 className='flex'> <RiHotelLine className='icon'/> 
                       Jillian
                       </h1> 
                       
                    </a>
                </div>

                <div className='navBar'>
                 <ul className='navLists flex'>
                    <li className='navItem'>
                    <a href='#' className='navLink'> Home </a>
                    </li>
                    <li className='navItem'>
                    <a href='#' className='navLink'> About </a>
                    </li>
                    <li className='navItem'>
                    <a href='#' className='navLink'> Reservations </a>
                    </li>
                    <li className='navItem'>
                    <a href='#' className='navLink'> Contact </a>
                    </li>

                    <div className='headerBtns flex'>
                        <button className='btn loginBtn'>
                            <a href='#'> Login </a>   
                        </button>
                        <button className='btn'>
                            <a href='#'> Sign up </a>   
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
        )
    }
export default NavBar
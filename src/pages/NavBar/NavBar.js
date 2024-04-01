import React from 'react'
import './navbar.css'
import { RiHotelLine } from "react-icons/ri";;

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
                 <ul className='navlists flex'>
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
                    <a href='#' className='navLink'> Login </a>
                    </li>
                 
                 </ul>
                </div>
            </div>
        </section>
        )
    }
export default NavBar
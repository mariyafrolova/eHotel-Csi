import React from 'react'
import './home.css'

const Home = () => {
    return(
        <section className='home'>
            <div className='secContainer container'>
                <div className='homeText'>
                    <h1 className='title'>
                        Bienvenue
                    </h1>
                    <p className='subTitle'>
                        Venez vous dorloter dans nos hôtels aménagés pour vous et votre famille!
                    </p>
                    
                </div>

                <div className='homeCard grid'>
                
                    <div className='locationDiv'>
                        <label htmlFor='location'>Location</label>
                        <input type='text' placeholder='Location'/>
                    </div>

                    <div className='dateDiv'>
                        <label htmlFor='date'>Date</label>
                        <input type='text' placeholder='Date'/>
                    </div>

                    <div className='priceDiv'>
                        <label htmlFor='price'> Price </label>
                        <input type='text' placeholder='Price range'/>
                    </div>

                    <div className='hotelDiv'>
                        <label htmlFor='hotel'>Hôtel</label>
                        <input type='text' placeholder='Hôtel'/>
                    </div>

                    <div className='adultsDiv'>
                        <label htmlFor='number'>Adults</label>
                        <input type='text' placeholder='Number of Adults'/>
                    </div>

                    <div className='kidsDiv'>
                        <label htmlFor='number'>Children</label>
                        <input type='text' placeholder='Number of children'/>
                    </div>
                    
                    <button className='btn'>
                        Search
                    </button>
                </div>
            </div>
        </section>
        )
    }
export default Home
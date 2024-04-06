import React, {useState} from 'react'
import './home.css'
import DatePicker from 'react-date-picker';
import 'react-date-picker/dist/DatePicker.css';


const Home = () => {

    const[startDate, setStartDate] = useState();
    const[endDate, setEndDate] = useState();

    function onChangeDataHandler(value){
        setStartDate(value[0]);
        setEndDate(value[1]);
    }

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
                        <input type='text' placeholder='location'/>
                    </div>

                    <div className='dateDiv'>
                        <label htmlFor='date'>Date</label>
                        <DatePicker
                            selectRange = {true}
                            startDate ={startDate}
                            endDate={endDate}
                            onChange={onChangeDataHandler}
                            dateFormat='dd MMM yyyy' />
                        
                    </div>

                    <div className='priceDiv'>
                        <label htmlFor='price'> Price </label>
                        <select>
                            <option value="select">Select</option>
                            <option value="option1">100$ - 200$</option>
                            <option value="option2">400$ - 800$</option>
                            <option value="option3">1000$ - 1500$</option>
                            <option value="option4">2000$ - 3000$</option>
                        </select>
                    </div>

                    <div className='hotelDiv'>
                        <label htmlFor='hotel'>Hôtel</label>
                        <select>
                            <option value="select">Select</option>
                            <option value="hilton">Hilton</option>
                            <option value="holidayInn">Holiday Inn</option>
                            <option value="trivago">Trivago</option>
                            <option value="comfortInn">Comfort Inn</option>
                            <option value="mariott">Marriott</option>

                        </select>
                    </div>

                    <div className='adultsDiv'>
                        <label htmlFor='number'>Adults</label>
                        <select>
                            <option value="un">1</option>
                            <option value="deux">2</option>
                            <option value="trois">3</option>
                            <option value="quatre">4</option>
                            <option value="cinq">5</option>
                        </select>
                    </div>

                    <div className='kidsDiv'>
                        <label htmlFor='number'>Children</label>
                        <select>
                            <option value="un enfant">1</option>
                            <option value="deux enfants">2</option>
                            <option value="trois enfants">3</option>
                            <option value="quatre enfants">4</option>
                            <option value="cinq enfants">5</option>
                        </select>
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
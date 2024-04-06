import React from 'react'
import './populaires.css'
import img1 from '../../Assets/Chambre avec vue gratte-ciel.png'
import img2 from '../../Assets/Chambre avec vue sur la mer et grand lit king.jpg'
import img3 from '../../Assets/Chambre avec vue sur la mer.jpg'
import img4 from '../../Assets/Chambre avec vue sur les montagnes.jpg'

const Populaires = () =>{
    return(
        <section className='popular section container'>

            <div className='secContainer'>
                <div className='secHeader flex'>
                    <div className='textDiv'>
                        <h2 className='secTitle'>
                            Meilleures chambres
                        </h2>
                        <p>
                            Séléctionné parmis les meilleurs, une gamme incroyable de résidences familiaux de qualité supérieur!
                        </p>
                    </div>
                    
                </div>
            <div className='mainContent grid'>
                <div className='singleDestination'>
                    <div className='destImage'>
                        
                        <img src={img1} alt='Image Title'/>
                        <div className='overlayInfo'>
                          <h3> Luxia suite </h3>  
                          <p> Find afordable rooms for you and your family. Enjoy your stay while visiting this destination

                          </p>
                          </div>
                          <img src={img2} alt='Image Title'/>
                        <div className='overlayInfo'>
                          <h3> Luxia suite </h3>  
                          <p> Find afordable rooms for you and your family. Enjoy your stay while visiting this destination

                          </p>
                          </div>
                          <img src={img3} alt='Image Title'/>
                        <div className='overlayInfo'>
                          <h3> Luxia suite </h3>  
                          <p> Find afordable rooms for you and your family. Enjoy your stay while visiting this destination

                          </p>
                          </div>
                          <img src={img4} alt='Image Title'/>
                        <div className='overlayInfo'>
                          <h3> Luxia suite </h3>  
                          <p> Find afordable rooms for you and your family. Enjoy your stay while visiting this destination

                          </p>
                        </div>
                    </div>
                </div>
            </div>

            </div>
        </section>
    )
}

export default Populaires
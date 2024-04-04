import React from 'react'
import './populaires.css'
import { BsArrowLeftCircleFill } from "react-icons/bs";

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
            </div>
        </section>
    )
}

export default Populaires
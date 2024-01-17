// Filename Mole.js


import {useEffect} from 'react'
import moleImg from '../images/mole.png'

function Mole(props){
    useEffect(() => {
        // THIS IS THE VALUE THAT ADJUSTS MOLE DURATION Math.ceil(Math.random() * 1999
        // AROUND 2000 SEEMS PLAYABLE
        // LOWERING NUMBER INCREASES THE SPEED OF THE OPPONENTS
    
       
        let randSeconds = Math.ceil(Math.random() * 1999
        )
        let timer = setTimeout(() => {
            props.setDisplayMole(false)
        }, randSeconds)
        return () => clearTimeout(timer)
    })

    return (
        <div>
            <img 
            src={moleImg}
            onClick={props.whackEm} />
        </div>
    )
}


export default Mole
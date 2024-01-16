import { useState } from 'react';
import Mole from './Mole';
import EmptySlot from './EmptySlot';

const MoleContainer = (props) => {
    let [theMole, setTheMole] = useState(false); // State to determine whether a mole is present or not.

    const handleClick = (e) => {
        props.setScore(props.score + 1); // Increases the score upon mole click.
        setTheMole(false); // Hides the mole after being clicked.
    };

    let displayMole = theMole ? <Mole setScore={props.setScore} toggle={setTheMole} handleClick={handleClick} /> 
                              : <EmptySlot toggle={setTheMole} />;
    // Determines whether to show the Mole or an EmptySlot.

    return (
        <div style={{'display': 'inline-block', 'width': '30vw'}}>
            {displayMole}
        </div>
    );
};

export default MoleContainer;

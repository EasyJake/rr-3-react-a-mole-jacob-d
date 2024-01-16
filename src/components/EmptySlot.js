// This component represents an empty slot in the game. It uses a timer to randomly toggle the mole's appearance.
import { useEffect } from "react";
import MoleHill from '../assets/molehill.png'; // Importing the molehill image.

const EmptySlot = (props) => {
    useEffect(() => {
        let randSeconds = Math.ceil(Math.random() * 2300);
        let timer = setTimeout(() => {
            props.toggle(true); // Toggle the display to show the mole after a random interval.
        }, randSeconds);
        return () => clearTimeout(timer); // Clear the timer when the component unmounts.
    });

    return (
        <div>
            <img style={{'width': '30vw'}} src={MoleHill} />
        </div>
    );
};

export default EmptySlot;

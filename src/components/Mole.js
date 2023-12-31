import React from 'react';
import moleImage from '../assets/mole.png';

function Mole() {
  // Logic for when the mole is clicked can go here
  const handleClick = () => {
    console.log('Mole clicked!');
    // Include logic to update the score and hide the mole
  };

  return (
    <div onClick={handleClick}>
      <img src={moleImage} alt="Mole" />
    </div>
  );
}

export default Mole;

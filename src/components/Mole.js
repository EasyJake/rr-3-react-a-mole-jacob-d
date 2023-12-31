// filename src/components/Mole.js
import React from 'react';
import moleImage from '../assets/mole.png';
import './Mole.css';

function Mole() {
  return (
    <div className="mole">
      <img src={moleImage} alt="Mole" />
    </div>
  );
}

export default Mole;

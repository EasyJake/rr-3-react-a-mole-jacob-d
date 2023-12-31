import React from 'react';
import molehillImage from '../assets/molehill.png';

function EmptySlot() {
  // This can be a simple component just displaying the molehill image
  return (
    <div>
      <img src={molehillImage} alt="Empty molehill" />
    </div>
  );
}

export default EmptySlot;

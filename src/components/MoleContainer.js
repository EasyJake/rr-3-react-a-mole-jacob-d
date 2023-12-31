// filename src/components/MoleContainer.js
import React, { useState } from 'react';
import Mole from './Mole';
import EmptySlot from './EmptySlot';
import './MoleContainer.css';

function MoleContainer() {
  const [isMoleVisible, setIsMoleVisible] = useState(false);

  // Logic to toggle the mole's visibility
  const showMole = () => {
    setIsMoleVisible(true);
    // Hide the mole after a random time
    setTimeout(() => setIsMoleVisible(false), Math.random() * 3000 + 1000);
  };

  // Trigger mole appearance randomly
  React.useEffect(() => {
    const timerId = setInterval(showMole, Math.random() * 3000 + 2000);
    return () => clearInterval(timerId);
  }, []);

  return (
    <div className="mole-container" onClick={() => setIsMoleVisible(false)}>
      {isMoleVisible ? <Mole /> : <EmptySlot />}
    </div>
  );
}

export default MoleContainer;

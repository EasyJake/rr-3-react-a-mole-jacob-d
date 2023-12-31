import React from 'react';
import Mole from './Mole';
import EmptySlot from './EmptySlot';

function MoleContainer() {
  // Add state and logic to determine whether a Mole or EmptySlot should be displayed
  const [isMoleVisible, setIsMoleVisible] = React.useState(false);

  return (
    <div>
      {isMoleVisible ? <Mole /> : <EmptySlot />}
    </div>
  );
}

export default MoleContainer;

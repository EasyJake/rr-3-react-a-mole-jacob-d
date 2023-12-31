// filename src/App.js
import React, { useState } from 'react';
import MoleContainer from './components/MoleContainer';
import './App.css';

function App() {
  const [score, setScore] = useState(0);

  // Increment score when a mole is whacked
  const handleMoleWhacked = () => {
    setScore(prevScore => prevScore + 1);
  };

  // Generate nine MoleContainers and pass the score handler to them
  const moleHills = Array.from({ length: 9 }, (_, i) => (
    <MoleContainer key={i} onMoleWhacked={handleMoleWhacked} />
  ));

  return (
    <div className="App">
      <h1>React-A-Mole!</h1>
      <h2>{score}</h2> {/* Display the score */}
      <div className="game-board">
        {moleHills}
      </div>
    </div>
  );
}

export default App;

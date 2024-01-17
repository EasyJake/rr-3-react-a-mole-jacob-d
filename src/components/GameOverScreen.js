import React from 'react';

function GameOverScreen({ score, onRestart }) {
  return (
    <div className="game-over-screen">
      <h1>Game Over</h1>
      <p>Final Score: {score}</p>
      <button onClick={onRestart}>Play Again</button>
    </div>
  );
}

export default GameOverScreen;

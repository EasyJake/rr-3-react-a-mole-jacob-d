// StartScreen.js content goes here

// Filename StartScreen.js

function StartScreen({ onStart }) {
    return (
      <div className="start-screen">
        <h1 style={{ color: 'yellow', backgroundColor: 'red' }}>Whack-a-Mole!</h1>
        <button onClick={onStart}>Start</button>
      </div>
    );
  }
  
  export default StartScreen;
  
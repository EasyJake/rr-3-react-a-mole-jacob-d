
#!/bin/bash

# Create project directory and navigate into it
mkdir react-a-mole
cd react-a-mole

# Initialize a new React app
npx create-react-app .

# Create components and assets directories
mkdir -p src/components
mkdir -p src/assets

# Create CSS files
echo "/* filename src/components/EmptySlot.css */
/* EmptySlot component styles */
.empty-slot {
  width: 100px;
  height: 100px;
  background-image: url('../assets/molehill.png');
  background-size: cover;
}" > src/components/EmptySlot.css

echo "/* filename src/components/Mole.css */
.mole-container {
  cursor: pointer;
  transition: transform 0.3s ease;
  transform: translateY(100%);
}

.mole-container.visible {
  transform: translateY(0);
}

.mole {
  width: 100px;
  user-select: none;
  pointer-events: none;
}" > src/components/Mole.css

echo "/* filename src/components/MoleContainer.css */
/* MoleContainer component styles */
.mole-container {
  width: 100px; /* Or the size of the mole image */
  height: 100px; /* Or the size of the mole image */
  position: relative;
}" > src/components/MoleContainer.css

# Create JavaScript files
echo "// filename src/components/EmptySlot.js
import React from 'react';
import './EmptySlot.css';

function EmptySlot() {
  return <div className='empty-slot'></div>;
}

export default EmptySlot;" > src/components/EmptySlot.js

echo "// filename src/components/Mole.js
import React from 'react';
import moleImage from '../assets/mole.png';
import './Mole.css';

function Mole() {
  return (
    <div className='mole'>
      <img src={moleImage} alt='Mole' draggable='false' />
    </div>
  );
}

export default Mole;" > src/components/Mole.js

echo "// filename src/components/MoleContainer.js
import React, { useState, useEffect } from 'react';
import Mole from './Mole';
import EmptySlot from './EmptySlot';
import './MoleContainer.css';

function MoleContainer({ onMoleWhacked }) {
  const [isMoleVisible, setIsMoleVisible] = useState(false);

  useEffect(() => {
    let timerId;
    if (isMoleVisible) {
      timerId = setTimeout(() => setIsMoleVisible(false), Math.random() * 3000 + 1000);
    }
    return () => clearTimeout(timerId);
  }, [isMoleVisible]);

  useEffect(() => {
    const intervalId = setInterval(() => setIsMoleVisible(true), Math.random() * 3000 + 2000);
    return () => clearInterval(intervalId);
  }, []);

  const handleClick = () => {
    if (isMoleVisible) {
      onMoleWhacked();
      setIsMoleVisible(false);
    }
  };

  return (
    <div className={\`mole-container \${isMoleVisible ? 'visible' : ''}\`} onClick={handleClick}>
      {isMoleVisible ? <Mole /> : <EmptySlot />}
    </div>
  );
}

export default MoleContainer;" > src/components/MoleContainer.js

echo "// filename src/App.js
import React, { useState } from 'react';
import MoleContainer from './components/MoleContainer';
import './App.css';

function App() {
  const [score, setScore] = useState(0);

  const handleMoleWhacked = () => {
    setScore(score + 1);
  };

  return (
    <div className='App'>
      <h1>Whack-a-Mole! 🎉</h1>
      <h2>Score: {score}</h2>
      <div className='game-board'>
        {Array.from({ length: 9 }, (_, i) => (
          <MoleContainer key={i} onMoleWhacked={handleMoleWhacked} />
        ))}
      </div>
    </div>
  );
}

export default App;" > src/App.js

echo "/* filename src/index.css */
body {
  margin: 0;
  padding: 0;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
}

.App {
  text-align: center;
}" > src/index.css

# Overwrite index.js
echo "import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);" > src/index.js

# Install dependencies (if any)
# npm install

# Start the development server
# npm start

// This file serves as the entry point for the React application. 
// It sets up the main structure, imports necessary components and CSS, 
// manages the score state, and generates the molehill components.

import "./App.css"; // Importing the CSS for styling.
import { useState } from "react"; // Importing useState hook from React for state management.
import MoleContainer from "./components/MoleContainer"; // Importing the MoleContainer component.

function App() {
  let [score, setScore] = useState(0); // State to keep track of the score.

  const createMoleHill = () => {
    let hills = [];
    for (let i = 0; i < 9; i++) {
      // Creating 9 MoleContainers, each with a unique key.
      hills.push(<MoleContainer key={i} setScore={setScore} score={score} />);
    }
    return <div>{hills}</div>; // Returning a div containing all MoleContainers.
  };

  return (
    <div className="App">
      <h1>React-A-Mole!</h1> // Displaying the title.
      {score} // Displaying the current score.
      {createMoleHill()} // Rendering the MoleHill components.
    </div>
  );
}

export default App;

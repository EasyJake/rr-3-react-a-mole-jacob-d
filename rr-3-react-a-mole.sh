# # # # # # # # # #!/bin/bash

# # # # # # # # # # Define the project directory
# # # # # # # # # PROJECT_DIR="react_a_mole"

# # # # # # # # # # Create a new React application
# # # # # # # # # npx create-react-app $PROJECT_DIR

# # # # # # # # # # Navigate into the project directory
# # # # # # # # # cd $PROJECT_DIR

# # # # # # # # # # Remove the boilerplate code (Assuming standard CRA structure)
# # # # # # # # # rm -rf src/*

# # # # # # # # # # Clone the image assets repository
# # # # # # # # # git clone https://github.com/HackerUSA-CE/RR-React-A-Mole-Images src/assets

# # # # # # # # # # Notify the user
# # # # # # # # # echo "Setup complete. The project directory is $PROJECT_DIR"
# # # # # # # # # echo "Image assets have been downloaded to $PROJECT_DIR/src/assets"

# # # # # # # # #!/bin/bash

# # # # # # # # # Navigate to the project directory
# # # # # # # # cd react_a_mole

# # # # # # # # # Remove boilerplate code, but leave index.js and App.js intact
# # # # # # # # find src -type f ! -name 'index.js' ! -name 'App.js' -delete

# # # # # # # # # Clean up index.js to only include necessary imports and rendering of the App component
# # # # # # # # cat > src/index.js <<EOL
# # # # # # # # import React from 'react';
# # # # # # # # import ReactDOM from 'react-dom';
# # # # # # # # import './index.css';
# # # # # # # # import App from './App';

# # # # # # # # ReactDOM.render(
# # # # # # # #   <React.StrictMode>
# # # # # # # #     <App />
# # # # # # # #   </React.StrictMode>,
# # # # # # # #   document.getElementById('root')
# # # # # # # # );
# # # # # # # # EOL

# # # # # # # # # Modify App.js to be a functional component with a basic structure
# # # # # # # # cat > src/App.js <<EOL
# # # # # # # # import React from 'react';

# # # # # # # # function App() {
# # # # # # # #   return (
# # # # # # # #     <div className="App">
# # # # # # # #       {/* Your game components will go here */}
# # # # # # # #     </div>
# # # # # # # #   );
# # # # # # # # }

# # # # # # # # export default App;
# # # # # # # # EOL

# # # # # # # # # Create the necessary component files
# # # # # # # # mkdir -p src/components
# # # # # # # # touch src/components/MoleContainer.js
# # # # # # # # touch src/components/Mole.js
# # # # # # # # touch src/components/EmptySlot.js

# # # # # # # # # Clone image assets into the src/assets directory if not already present
# # # # # # # # if [ ! -d "src/assets" ]; then
# # # # # # # #   git clone https://github.com/HackerUSA-CE/RR-React-A-Mole-Images src/assets
# # # # # # # # fi

# # # # # # # # # Notify the user
# # # # # # # # echo "Setup and component file creation complete."
# # # # # # # # echo "You can now start developing your components within the src/components directory."
# # # # # # # # echo "Don't forget to import and use them in App.js!"

# # # # # # # #!/bin/bash

# # # # # # # # Define the project directory name
# # # # # # # PROJECT_DIR="react_a_mole"

# # # # # # # # Check if the project directory exists
# # # # # # # if [ -d "$PROJECT_DIR" ]; then
# # # # # # #   # Move into the project directory
# # # # # # #   cd "$PROJECT_DIR"

# # # # # # #   # Move everything up one directory
# # # # # # #   mv -v * .[^.]* ..

# # # # # # #   # Move back to parent directory
# # # # # # #   cd ..

# # # # # # #   # Remove the now empty project directory
# # # # # # #   rmdir "$PROJECT_DIR"

# # # # # # #   echo "All files have been moved up one directory."
# # # # # # # else
# # # # # # #   echo "The directory $PROJECT_DIR does not exist."
# # # # # # # fi


# # # # # # #!/bin/bash

# # # # # # # Navigate to the src directory of your React project
# # # # # # cd path/to/your/react_a_mole/src

# # # # # # # Check if the assets directory exists and is empty
# # # # # # if [ -d "assets" ] && [ ! "$(ls -A assets)" ]; then
# # # # # #   echo "The assets directory is empty. Attempting to clone assets..."

# # # # # #   # Remove the existing empty assets directory
# # # # # #   rm -rf assets

# # # # # #   # Clone the assets from the GitHub repository
# # # # # #   git clone https://github.com/HackerUSA-CE/RR-React-A-Mole-Images assets

# # # # # #   echo "Assets have been cloned."
# # # # # # else
# # # # # #   echo "The assets directory is not empty or does not exist. No action taken."
# # # # # # fi

# # # # # #!/bin/bash

# # # # # # Navigate to the src directory
# # # # # cd src

# # # # # # Check if the index.css file already exists
# # # # # if [ ! -f "index.css" ]; then
# # # # #     # If the file does not exist, create it with basic content
# # # # #     cat <<EOL > index.css
# # # # # /* Add your global styles here */
# # # # # body {
# # # # #   margin: 0;
# # # # #   padding: 0;
# # # # #   font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
# # # # # }

# # # # # /* Styles for the main application container */
# # # # # .App {
# # # # #   text-align: center;
# # # # # }

# # # # # /* Add more styles as needed */
# # # # # EOL

# # # # #     echo "index.css file created successfully."
# # # # # else
# # # # #     echo "index.css file already exists."
# # # # # fi

# # # # # # Navigate back to the project root
# # # # # cd ..


# # # # #!/bin/bash

# # # # # Define your project's source directory
# # # # SRC_DIR="src"
# # # # COMPONENTS_DIR="$SRC_DIR/components"

# # # # # Check if the components directory exists
# # # # if [ ! -d "$COMPONENTS_DIR" ]; then
# # # #   echo "Creating components directory..."
# # # #   mkdir -p "$COMPONENTS_DIR"
# # # # fi

# # # # # Create App.js
# # # # cat > "$SRC_DIR/App.js" <<EOL
# # # # import React from 'react';
# # # # import MoleContainer from './components/MoleContainer';
# # # # import './App.css';

# # # # function App() {
# # # #   return (
# # # #     <div className="App">
# # # #       <h1>Whack-a-Mole! 🎉</h1>
# # # #       <div className="game-board">
# # # #         <MoleContainer />
# # # #         {/* Add more MoleContainer components as needed */}
# # # #       </div>
# # # #     </div>
# # # #   );
# # # # }

# # # # export default App;
# # # # EOL

# # # # # Create MoleContainer.js
# # # # cat > "$COMPONENTS_DIR/MoleContainer.js" <<EOL
# # # # import React, { useState } from 'react';
# # # # import Mole from './Mole';
# # # # import EmptySlot from './EmptySlot';
# # # # import './MoleContainer.css';

# # # # function MoleContainer() {
# # # #   const [isMoleVisible, setIsMoleVisible] = useState(false);

# # # #   // Logic to toggle the mole's visibility
# # # #   const showMole = () => {
# # # #     setIsMoleVisible(true);
# # # #     // Hide the mole after a random time
# # # #     setTimeout(() => setIsMoleVisible(false), Math.random() * 3000 + 1000);
# # # #   };

# # # #   // Trigger mole appearance randomly
# # # #   React.useEffect(() => {
# # # #     const timerId = setInterval(showMole, Math.random() * 3000 + 2000);
# # # #     return () => clearInterval(timerId);
# # # #   }, []);

# # # #   return (
# # # #     <div className="mole-container" onClick={() => setIsMoleVisible(false)}>
# # # #       {isMoleVisible ? <Mole /> : <EmptySlot />}
# # # #     </div>
# # # #   );
# # # # }

# # # # export default MoleContainer;
# # # # EOL

# # # # # Create Mole.js
# # # # cat > "$COMPONENTS_DIR/Mole.js" <<EOL
# # # # import React from 'react';
# # # # import moleImage from '../assets/mole.png';
# # # # import './Mole.css';

# # # # function Mole() {
# # # #   return (
# # # #     <div className="mole">
# # # #       <img src={moleImage} alt="Mole" />
# # # #     </div>
# # # #   );
# # # # }

# # # # export default Mole;
# # # # EOL

# # # # # Create EmptySlot.js
# # # # cat > "$COMPONENTS_DIR/EmptySlot.js" <<EOL
# # # # import React from 'react';
# # # # import './EmptySlot.css';

# # # # function EmptySlot() {
# # # #   return <div className="empty-slot"></div>;
# # # # }

# # # # export default EmptySlot;
# # # # EOL

# # # # # Create index.js
# # # # cat > "$SRC_DIR/index.js" <<EOL
# # # # import React from 'react';
# # # # import ReactDOM from 'react-dom';
# # # # import './index.css';
# # # # import App from './App';

# # # # ReactDOM.render(
# # # #   <React.StrictMode>
# # # #     <App />
# # # #   </React.StrictMode>,
# # # #   document.getElementById('root')
# # # # );
# # # # EOL

# # # # echo "All files have been created or updated successfully."

# # # #!/bin/bash

# # # # Define the directory variables
# # # SRC_DIR="src"
# # # COMPONENTS_DIR="$SRC_DIR/components"

# # # # Create the App.css file if it doesn't exist
# # # if [ ! -f "$SRC_DIR/App.css" ]; then
# # #     touch "$SRC_DIR/App.css"
# # #     echo "/* App component styles */" > "$SRC_DIR/App.css"
# # #     echo "App.css file created."
# # # else
# # #     echo "App.css already exists."
# # # fi

# # # # Create the MoleContainer.css file if it doesn't exist
# # # if [ ! -f "$COMPONENTS_DIR/MoleContainer.css" ]; then
# # #     touch "$COMPONENTS_DIR/MoleContainer.css"
# # #     echo "/* MoleContainer component styles */" > "$COMPONENTS_DIR/MoleContainer.css"
# # #     echo "MoleContainer.css file created."
# # # else
# # #     echo "MoleContainer.css already exists."
# # # fi

# # # # Create the EmptySlot.css file if it doesn't exist
# # # if [ ! -f "$COMPONENTS_DIR/EmptySlot.css" ]; then
# # #     touch "$COMPONENTS_DIR/EmptySlot.css"
# # #     echo "/* EmptySlot component styles */" > "$COMPONENTS_DIR/EmptySlot.css"
# # #     echo "EmptySlot.css file created."
# # # else
# # #     echo "EmptySlot.css already exists."
# # # fi

# # # # Create the Mole.css file if it doesn't exist
# # # if [ ! -f "$COMPONENTS_DIR/Mole.css" ]; then
# # #     touch "$COMPONENTS_DIR/Mole.css"
# # #     echo "/* Mole component styles */" > "$COMPONENTS_DIR/Mole.css"
# # #     echo "Mole.css file created."
# # # else
# # #     echo "Mole.css already exists."
# # # fi

# # # echo "All missing CSS files have been created."


# # #!/bin/bash

# # # List all files and folders in the project directory
# # echo "Files and Folders in the Project Directory:"
# # echo "-------------------------------------------"
# # ls -a /path/to/your/project/directory
# # echo "-------------------------------------------"


# #!/bin/bash

# # Navigate to the project directory (replace '/path/to/your/project/directory' with your actual project path)
# cd /path/to/your/project/directory || exit

# # List all files and folders in the current directory
# echo "Files and Folders in the Project Directory:"
# echo "-------------------------------------------"
# ls -a
# echo "-------------------------------------------"


#!/bin/bash
# This script adds a comment with the filepath and filename to the top of each .js and .css file for macOS

# Find all .js and .css files in the src directory
for file in $(find src -type f \( -name "*.js" -o -name "*.css" \)); do
    # Extract the filename and filepath without extension
    filename=$(basename -- "$file")
    filepath=$(dirname -- "$file")
    
    # Prepare the comment string
    comment="// filename $filepath/$filename"

    # Check if the file is a .css file, if so, use CSS comment syntax
    if [[ $file == *.css ]]; then
        comment="/* filename $filepath/$filename */"
    fi

    # Add the comment to the top of the file
    # Use the "|" delimiter instead of "/" to avoid conflict with file paths
    # For macOS, we need to provide an empty string after the -i option to sed
    sed -i '' "1s|^|$comment\n|" "$file"
done

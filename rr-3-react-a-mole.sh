# # # #!/bin/bash

# # # # Define the project directory
# # # PROJECT_DIR="react_a_mole"

# # # # Create a new React application
# # # npx create-react-app $PROJECT_DIR

# # # # Navigate into the project directory
# # # cd $PROJECT_DIR

# # # # Remove the boilerplate code (Assuming standard CRA structure)
# # # rm -rf src/*

# # # # Clone the image assets repository
# # # git clone https://github.com/HackerUSA-CE/RR-React-A-Mole-Images src/assets

# # # # Notify the user
# # # echo "Setup complete. The project directory is $PROJECT_DIR"
# # # echo "Image assets have been downloaded to $PROJECT_DIR/src/assets"

# # #!/bin/bash

# # # Navigate to the project directory
# # cd react_a_mole

# # # Remove boilerplate code, but leave index.js and App.js intact
# # find src -type f ! -name 'index.js' ! -name 'App.js' -delete

# # # Clean up index.js to only include necessary imports and rendering of the App component
# # cat > src/index.js <<EOL
# # import React from 'react';
# # import ReactDOM from 'react-dom';
# # import './index.css';
# # import App from './App';

# # ReactDOM.render(
# #   <React.StrictMode>
# #     <App />
# #   </React.StrictMode>,
# #   document.getElementById('root')
# # );
# # EOL

# # # Modify App.js to be a functional component with a basic structure
# # cat > src/App.js <<EOL
# # import React from 'react';

# # function App() {
# #   return (
# #     <div className="App">
# #       {/* Your game components will go here */}
# #     </div>
# #   );
# # }

# # export default App;
# # EOL

# # # Create the necessary component files
# # mkdir -p src/components
# # touch src/components/MoleContainer.js
# # touch src/components/Mole.js
# # touch src/components/EmptySlot.js

# # # Clone image assets into the src/assets directory if not already present
# # if [ ! -d "src/assets" ]; then
# #   git clone https://github.com/HackerUSA-CE/RR-React-A-Mole-Images src/assets
# # fi

# # # Notify the user
# # echo "Setup and component file creation complete."
# # echo "You can now start developing your components within the src/components directory."
# # echo "Don't forget to import and use them in App.js!"

# #!/bin/bash

# # Define the project directory name
# PROJECT_DIR="react_a_mole"

# # Check if the project directory exists
# if [ -d "$PROJECT_DIR" ]; then
#   # Move into the project directory
#   cd "$PROJECT_DIR"

#   # Move everything up one directory
#   mv -v * .[^.]* ..

#   # Move back to parent directory
#   cd ..

#   # Remove the now empty project directory
#   rmdir "$PROJECT_DIR"

#   echo "All files have been moved up one directory."
# else
#   echo "The directory $PROJECT_DIR does not exist."
# fi


#!/bin/bash

# Navigate to the src directory of your React project
cd path/to/your/react_a_mole/src

# Check if the assets directory exists and is empty
if [ -d "assets" ] && [ ! "$(ls -A assets)" ]; then
  echo "The assets directory is empty. Attempting to clone assets..."

  # Remove the existing empty assets directory
  rm -rf assets

  # Clone the assets from the GitHub repository
  git clone https://github.com/HackerUSA-CE/RR-React-A-Mole-Images assets

  echo "Assets have been cloned."
else
  echo "The assets directory is not empty or does not exist. No action taken."
fi

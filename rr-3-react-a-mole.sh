# #!/bin/bash

# # Define the project directory
# PROJECT_DIR="react_a_mole"

# # Create a new React application
# npx create-react-app $PROJECT_DIR

# # Navigate into the project directory
# cd $PROJECT_DIR

# # Remove the boilerplate code (Assuming standard CRA structure)
# rm -rf src/*

# # Clone the image assets repository
# git clone https://github.com/HackerUSA-CE/RR-React-A-Mole-Images src/assets

# # Notify the user
# echo "Setup complete. The project directory is $PROJECT_DIR"
# echo "Image assets have been downloaded to $PROJECT_DIR/src/assets"

#!/bin/bash

# Navigate to the project directory
cd react_a_mole

# Remove boilerplate code, but leave index.js and App.js intact
find src -type f ! -name 'index.js' ! -name 'App.js' -delete

# Clean up index.js to only include necessary imports and rendering of the App component
cat > src/index.js <<EOL
import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);
EOL

# Modify App.js to be a functional component with a basic structure
cat > src/App.js <<EOL
import React from 'react';

function App() {
  return (
    <div className="App">
      {/* Your game components will go here */}
    </div>
  );
}

export default App;
EOL

# Create the necessary component files
mkdir -p src/components
touch src/components/MoleContainer.js
touch src/components/Mole.js
touch src/components/EmptySlot.js

# Clone image assets into the src/assets directory if not already present
if [ ! -d "src/assets" ]; then
  git clone https://github.com/HackerUSA-CE/RR-React-A-Mole-Images src/assets
fi

# Notify the user
echo "Setup and component file creation complete."
echo "You can now start developing your components within the src/components directory."
echo "Don't forget to import and use them in App.js!"

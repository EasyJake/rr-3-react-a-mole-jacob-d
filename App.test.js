import { render, screen } from '@testing-library/react';
import App from './App';


// This file includes a basic test for the App component using React Testing Library. 
// It checks if the "learn react" link is rendered in the component.




est('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});

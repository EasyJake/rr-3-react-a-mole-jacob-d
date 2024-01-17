import React, { useState, useEffect } from 'react';
import MoleContainer from './components/MoleContainer';
import StartScreen from './components/StartScreen';
import GameOverScreen from './components/GameOverScreen';
import './App.css';

function App() {
    const [score, setScore] = useState(0);
    const [gameStatus, setGameStatus] = useState('start'); // Possible values: 'start', 'playing', 'gameOver'
    const [timeLeft, setTimeLeft] = useState(20); // 20 seconds timer

    useEffect(() => {
        let timer;
        if (gameStatus === 'playing') {
            if (timeLeft > 0) {
                timer = setTimeout(() => {
                    setTimeLeft(timeLeft - 1);
                }, 1000);
            } else {
                setGameStatus('gameOver');
            }
        }
        // Cleanup timeout when component is unmounted or timeLeft has changed
        return () => clearTimeout(timer);
    }, [gameStatus, timeLeft]);

    const resetGame = () => {
        setScore(0);
        setTimeLeft(20);
        setGameStatus('playing');
    };

    const createMoleHill = () => {
        let hills = [];
        for (let i = 0; i < 9; i++) {
            hills.push(
                <MoleContainer
                    key={i}
                    setScore={setScore}
                    score={score}
                />
            );
        }
        return <div>{hills}</div>;
    };

    return (
        <div className="App">
            {gameStatus === 'start' && <StartScreen onStart={() => setGameStatus('playing')} />}
            {gameStatus === 'playing' && (
                <>
                    <h1>React-a-Mole!</h1>
                    <div>Score: {score}</div>
                    <div>Time: {timeLeft}</div>
                    {createMoleHill()}
                </>
            )}
            {gameStatus === 'gameOver' && <GameOverScreen score={score} onRestart={resetGame} />}
        </div>
    );
}

export default App;

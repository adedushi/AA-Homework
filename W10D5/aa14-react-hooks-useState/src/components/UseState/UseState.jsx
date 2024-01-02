import './UseState.css'
import { useState } from 'react';

const UseState = () => {
  const [theme, setTheme] = useState('light');
  const [count, setCount] = useState(0);

  const toggle = () => {
    if(theme === 'light') {
      setTheme('dark')
    } else {
      setTheme('light')
    }
  }

  return (
    <div className={`state ${theme}`}>
      <h1>UseState Component</h1>
      <button onClick={(event) => setTheme('dark')}>Dark</button>
      <button onClick={(event) => setTheme('light')}>Light</button>
      <button onClick={(event) => toggle()}>Toggle Theme</button>
      <h2>{count}</h2>
      <button onClick={() => setCount((prevCount) => prevCount + 1)}>
        Increment
      </button>
      <button onClick={() => setCount((prevCount) => prevCount -1)}>
        Decrement
      </button>
    </div>
  );
};

export default UseState;

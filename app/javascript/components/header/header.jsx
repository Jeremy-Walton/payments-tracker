import React from 'react'
import ReactDOM from 'react-dom'

class Header extends React.Component {
  constructor() {
    super();
  }

  render() {
    return (
      <header className='header'>
        <nav className='navigation'>
          <a href='/' className='navigation__logo'>Payments Tracker</a>
        </nav>
      </header>
    );
  }
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Header/>,
    document.body.appendChild(document.createElement('div')),
  )
})

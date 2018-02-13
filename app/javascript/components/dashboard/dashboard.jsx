import React from 'react'
import ReactDOM from 'react-dom'
// import PropTypes from 'prop-types'

class Dashboard extends React.Component {
  constructor() {
    super();
  }

  render() {
    return (
      <div>
        <h1>Dashboard</h1>
        <a href='/payment_accounts/new'>Create Payment Account</a>
      </div>
    );
  }
}

// Dashboard.defaultProps = {
//   name: 'Jeremy'
// }
//
// Dashboard.propTypes = {
//   name: PropTypes.string
// }

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Dashboard/>,
    document.body.appendChild(document.createElement('div')),
  )
})

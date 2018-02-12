// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

class Dashboard extends React.Component {
  constructor() {
    super();
    this.state = { color: 'brown' };
  }

  render() {
    return (
      <div>
        <h1>Dashboard {this.props.name}!</h1>
        <p>This is a test of {this.state.color}!</p>
      </div>
    );
  }
}

Dashboard.defaultProps = {
  name: 'Jeremy'
}

Dashboard.propTypes = {
  name: PropTypes.string
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Dashboard/>,
    document.body.appendChild(document.createElement('div')),
  )
})

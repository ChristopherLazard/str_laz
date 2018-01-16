import React, { Component } from 'react';
import { Header } from 'semantic-ui-react';
import axios from 'axios'

axios.get('https://api.got.show/api/characters/locations')
  .then( res => {
    console.log(res.data);
  })
  .catch(err => {
    console.log(err.response);
});


class Home extends Component {
  state = []

  render() {
    return (
      <Header as='h1' textAlign='center'>Locations</Header>

      
    );
  }
}

export default Home;

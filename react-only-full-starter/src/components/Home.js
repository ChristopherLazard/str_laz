import React, { Component } from 'react';
import { Header, Segment } from 'semantic-ui-react';
import axios from 'axios'
import ReactDOM from 'react-dom';
import { Carousel } from 'react-responsive-carousel';


axios.get('https://api.got.show/api/houses/')
  .then( res => {
    console.log(res.data);
  })
  .catch(err => {
    console.log(err.response);
});


class Home extends Component {
  state = {}

  render() {
    return (
      <Segment>
      <Header as='h1' textAlign='center'>{}</Header>
 
       <Carousel>
                <div>
                    <img src="http://unrealitymag.com/wp-content/uploads/2011/09/thrones1.jpg" />
                    <p className="legend">House Stark</p>
                </div>
                <div>
                    <img src="http://unrealitymag.com/wp-content/uploads/2011/09/thrones4.jpg" />
                    <p className="legend">House Lannister</p>
                </div>
                <div>
                    <img src="https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiVttCu-dLYAhUH12MKHTnxDGMQjRwIBw&url=http%3A%2F%2Funrealitymag.com%2Ftelevision%2Fthe-full-game-of-thrones-family-crest-line-up%2F&psig=AOvVaw06R5U_XvjsX7XX6fBlqtfB&ust=1515864406215033" />
                    <p className="legend">Legend 3</p>
                </div>
                <div>
                    <img src="https://s-media-cache-ak0.pinimg.com/originals/f2/bf/8b/f2bf8b8d032db2ba98dcb6a63ca88cf5.jpg" />
                    <p className="legend">Legend 4</p>
                </div>
                <div>
                    <img src="" />
                    <p className="legend">Legend 5</p>
                </div>
                <div>
                    <img src="" />
                    <p className="legend">Legend 6</p>
                </div>
            </Carousel>
            </Segment>
      
          
        )
  
    }
}


      


export default Home;

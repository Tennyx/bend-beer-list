import React, { Component } from 'react';
import './App.css';
import Client from './Client';
import 'bootstrap/dist/css/bootstrap.min.css';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCircle as fasCircle } from '@fortawesome/free-solid-svg-icons';
import { faBars as fasBars } from '@fortawesome/free-solid-svg-icons';

function BeerList(props) {
  if(props.showList){
    return (
      <>
      {
      props.beerList.map((d) =>
        <div className="row justify-content-center">
          <div className="col-md-6 text-center beer-cell">
            {d}
          </div>
        </div>
      )
      }
      </>
    );
  }
  else {
    return '';
  }
}

class BreweryList extends Component {
  constructor(props){
    super(props);
    this.state = {
      breweryList : [],
      clickedCircle : [0,false],
      showList : false
    };
    this.toggleCircle = this.toggleCircle.bind(this);
    this.toggleMenu = this.toggleMenu.bind(this);
  }

  toggleCircle(e){
    let currentBreweryList = this.state.breweryList;
    let componentId = e.currentTarget.id;

    for(let i=0;i<currentBreweryList.length;i++){
      if(currentBreweryList[i].id == componentId){
        let flippedBoolean = !currentBreweryList[i].visited;
        currentBreweryList[i].visited = flippedBoolean;
        this.setState({
                      breweryList : currentBreweryList,
                      'clickedCircle' : [currentBreweryList[i].id, flippedBoolean]
                      })
      }
    }
  }

  toggleMenu(e){
    console.log(e.currentTarget.id);
    let currentShowListVal = this.state.showList;
    this.setState({showList: !currentShowListVal});
  }

  componentDidMount(){
    Client.search('breweries', (obj) => {
      this.setState({breweryList : obj});
    });
  }

  componentDidUpdate(props){
    let breweryData = this.state.clickedCircle;

    if(breweryData[0] != 0){
      let url = 'api/v1/breweries/' + breweryData[0];
      let data = {visited: breweryData[1]};

      fetch(url, {
        method: 'PUT',
        body: JSON.stringify(data),
        headers:{
          'Content-Type': 'application/json'
        }
      }).then(res => res.json())
      .then(response => console.log('Success:', JSON.stringify(response)))
      .catch(error => console.error('Error:', error)); 
    }
  }

  render(){
    return(
      <div className="container text-center" id="table-container">
          <div className="row justify-content-center">
            <div className="col-md-1 cell placeholder"></div>
            <div className="col-md-3 cell cell-header">Brewery</div>
            <div className="col-md-3 cell cell-header">Location</div>
            <div className="col-md-1 cell placeholder"></div>
          </div>
          
          {
          this.state.breweryList.map((d) =>
          <>
            <div className="row justify-content-center" key={'brewery-container-' + d.id}>
              <div className="col-md-1 cell circle-check"><FontAwesomeIcon icon={fasCircle} size="lg" className="circle-font" onClick={this.toggleCircle} id={d.id} color={d.visited ? '#5cd152' : '#ebebeb'} /></div>
              <div className="col-md-3 cell" key={d.name}>{d.name}</div>
              <div className="col-md-3 cell" key={d.location}>{d.location}</div>
              <div className="col-md-1 cell placeholder"><FontAwesomeIcon icon={fasBars} size="lg" onClick={this.toggleMenu} id={'menu-' + d.id} /></div>
            </div>
            <BeerList beerList={['dwed','dewd','wefwefefwefewf','fwefew']} showList={this.state.showList} />
          </>
          )
          }
      </div>  
    );
  }
}

class App extends Component {
  state = {
  }


  render() {

    return (
      <div className='App'>
        <BreweryList />
      </div>
    );
  }
}

export default App;

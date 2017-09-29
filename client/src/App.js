import React, { Component } from 'react';
import SongForm from './components/SongForm';
import SongList from './components/SongList';

class App extends Component {
  state = { songs: [] }

  componentDidMount() {

  }

  addSong = (song) => {

  }

  updateSong = (id) => {

  }

  deleteSong = (id) => {

  }

  render() {
    return (
      <div className="container">
        <SongForm addSong={this.addSong} />
        <SongList
          songs={this.state.songs}
          updateSong={this.updateSong}
          deleteSong={this.deleteSong}
        />
      </div>
    );
  };
};

export default App;
import React, { Component } from 'react';
import './App.css';

class App extends Component {
  constructor() {
    super();
    this.state = {};
    this.getPosts = this.getPosts.bind(this);
  }

  componentDidMount() {
    this.getPosts();
  }

  fetch(endpoint) {
    return window.fetch(endpoint)
      .then(response => response.json())
      .catch(error => console.log(error));
  }

  getPosts() {
    this.fetch('/api/posts')
      .then(posts => {
        if (posts.length) {
          this.setState({ posts: posts })
        } else {
          this.setState({ posts: [] })
        }
      });
  }

  render() {
    let { posts } = this.state;
    const postContent = posts && posts.map((post) =>
      <div className="post" key={post.id}>
        <h2>{post.title}</h2>
        <h3>{post.subtitle}</h3>
        <p>{post.body}</p>
      </div>
    );
    return posts
      ? (<div className="App">
          <h1>Building things, and writing about them</h1>
          {postContent}
        </div>)
      : (<div className="App">
          <p>Loading...</p>
        </div>);

  }
}

export default App;

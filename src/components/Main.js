import React, { Component } from 'react';

class Main extends Component {

  render() {
    return (
      <div className="container-fluid text-monospace">
      <br></br>
      &nbsp;
      <br></br>
        <div className="row">
          <div className="col-md-10">
            <div className="embed-responsive embed-responsive-16by9" style={{ maxHeight: '768px'}}>
              {/* Video... */}
              <video src={`https://ipfs.infura.io/ipfs/${this.props.currentHash}`} controls></video>
            </div>
            <h3>
            {/* Current Title Here: inside the h3 */}
            <b><i>{this.props.currentTitle}</i></b>
            </h3>
          </div>
          <div className="col-md-2 overflow-auto text-center" style={{ maxHeight: '768px', minWidth: '175px' }}>

            <h5><b></b></h5>

            <form onSubmit={(event) => {
              {/* Upload Video...*/}
              event.preventDefault()
              const title = this.videoTitle.value
              this.props.uploadVideo(title)
            }} >
              &nbsp;
              {/* upload your video */}
              <input type='file' accept=".mp4, .mkv .ogg .wmv" onChange={this.props.captureFile} style={{ width: '250px' }} />

              <div className="form-group mr-sm-2">
                {/* title input */}
                <input
                    id="videoTitle"
                    type="text"
                    ref={(input) => { this.videoTitle = input }}
                    className="form-control-sm"
                    placeholder="Title..."
                    required />
              </div>

              {/* Button...*/}
              <button type="submit" className="btn btn-danger btn-block btn-sm">Upload!</button>
              &nbsp;
            </form>
            {/* Map Video...*/}
              {/* Return Video...*/}
              <div style={{ width: '175px'}}>
                <div className="card-title bg-dark">
                  <small className="text-white"><b>{/*Video title*/}</b></small>
                </div>
                  <div>
                    {/* Change Video...*/}
                    {/* Return Side Videos...*/}
                  </div>
              </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Main;
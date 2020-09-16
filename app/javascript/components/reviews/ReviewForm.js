import React from "react"
import axios from "axios"
import { getCSRFToken } from "../utils";

class ReviewForm extends React.Component {
  buildGameOptions() {
    let gameOptions = this.props.games.map(function(nameId) {
      return <option key={nameId[1]} value={nameId[1]}>{ nameId[0] }</option>
    });

    return gameOptions
  }

  handleSubmit(event) {
    event.preventDefault()
    let formData = new FormData(event.target)
    let formEntries = Object.fromEntries(formData)

    axios.post(
      '/reviews',
      { review: formEntries },
      {
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-TOKEN': getCSRFToken()
        }
      }
    ).then((response) => {
      alert(response.data)
    })
  }

  render() {
    return (
      <React.Fragment>
        <form onSubmit={ this.handleSubmit }>
          <label htmlFor="games">
              Games
            </label>
            <select id="game_id" name="game_id">
              { this.buildGameOptions() }
            </select>

            <label htmlFor="rating">
              Rating
            </label>
            <select id="rating" name="rating">
              <option value="5">5</option>
              <option value="4">4</option>
              <option value="3">3</option>
              <option value="2">2</option>
              <option value="1">1</option>
            </select>

            <label htmlFor="comment">Comment</label>
            <textarea id="comment" name="comment" cols="30" rows="10"></textarea>

            <label htmlFor="posted_on">Date</label>
            <input type="date" id="posted_on" name="posted_at" />

            <input type="hidden" name="user_id" id="user_id" value={ this.props.user_id } />

            <input type="submit" />
        </form>
      </React.Fragment>
    );
  }
}

export default ReviewForm

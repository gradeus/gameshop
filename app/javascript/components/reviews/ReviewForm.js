import React from "react"
import PropTypes from "prop-types"

class ReviewForm extends React.Component {
  buildGameOptions() {
    let gameOptions = this.props.games.map(function(nameId) {
      return <option key={nameId[1]} value={nameId[1]}>{ nameId[0] }</option>
    });

    return gameOptions
  }

  handleSubmit(event) {
    event.preventDefault()
    alert('Form submitted')
  }

  render() {
    return (
      <React.Fragment>
        <form onSubmit={ this.handleSubmit }>
          <div>
            <label htmlFor="games">
              Games
            </label>
            <select name="game_id">
              { this.buildGameOptions() }
            </select>


            <label htmlFor="rating">
              Rating
            </label>
            <select name="rating">
              <option value="5">5</option>
              <option value="4">4</option>
              <option value="3">3</option>
              <option value="2">2</option>
              <option value="1">1</option>
            </select>

            <label htmlFor="comment">Comment</label>
            <textarea name="comment" cols="30" rows="10"></textarea>

            <label htmlFor="posted_on">Date</label>
            <input type="date" name="posted_on" />

            <input type="hidden" name="user_id" value={ this.props.user_id } />

            <input type="submit" />
          </div>
        </form>
      </React.Fragment>
    );
  }
}

export default ReviewForm

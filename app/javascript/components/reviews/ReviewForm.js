import React from "react"
import PropTypes from "prop-types"

class ReviewForm extends React.Component {
  render () {
    return (
      <React.Fragment>
        <form width="50%">
          <div>
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
          </div>
        </form>
      </React.Fragment>
    );
  }
}

export default ReviewForm

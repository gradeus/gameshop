import React from "react"
import PropTypes from "prop-types"

class Review extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div className="review">
          <h2 className="review-text">{ this.props.title }</h2>
          <p>{ this.props.rating }</p>
          <p>{ this.props.comment }</p>
          <p>{ this.props.posted_at }</p>
        </div>
      </React.Fragment>
    );
  }
}

Review.propTypes = {
  title: PropTypes.string,
  rating: PropTypes.number,
  comment: PropTypes.string,
  posted_at: PropTypes.string
};

export default Review

import React from "react"
import PropTypes from "prop-types"

class Review extends React.Component {
  render () {
    return (
      <React.Fragment>
        <h2>{ this.props.title }</h2>
        <p>{ this.props.rating }</p>
        <p>{ this.props.comment }</p>
        <p>{ this.props.posted_at }</p>
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

import React from "react"
import Review from "./Review"
import PropTypes from "prop-types"

class ReviewList extends React.Component {
  render () {
    let reviews = this.props.reviews.map(function(review) {
      return <Review key={ review.id } title={ review.game_id } rating={ review.rating } comment={ review.comment} posted_at={ review.posted_at } />
    });

    return (
      <div>{ reviews }</div>
    );
  }
}

Review.propTypes = {
  reviews: PropTypes.array
};

export default ReviewList

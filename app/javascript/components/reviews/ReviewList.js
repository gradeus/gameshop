import React from "react"
import Review from "./Review"
import PropTypes from "prop-types"

class ReviewList extends React.Component {
  render () {
    let reviews = this.props.reviews.data.map(function(review) {
      return (
        <Review
          key={ review.id }
          title={ review.attributes.game_name }
          rating={ review.attributes.rating }
          comment={ review.attributes.comment}
          posted_at={ review.attributes.posted_at }
        />
      )
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

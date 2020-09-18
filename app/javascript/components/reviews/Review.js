import React from "react"
import PropTypes from "prop-types"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faStar } from '@fortawesome/free-solid-svg-icons'

class Review extends React.Component {
  renderRating() {
    let checkedStars = this.props.rating

    return (
      Array(checkedStars).fill().map((_, i) => {
        return <FontAwesomeIcon key={i} icon={ faStar } color="gold" />
      })
    )
  }

  render () {
    console.log(this.props.user_name)
    return (
      <React.Fragment>
        <div className="review">
          <h2 className="review-text">{ this.props.title }</h2>
          <p>{ this.renderRating() }</p>
          <p>{ this.props.comment }</p>
          <br />
          <p>
            <i>{ this.props.user_name }</i>
            <br />
            <small>{ this.props.posted_at }</small>
          </p>
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

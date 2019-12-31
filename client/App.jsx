import React from 'react';
import ProductDescription from './Components/ProductDescription/ProductDescriptionComponent.jsx';
import ProductSize from './Components/ProductSize/ProductSize.jsx';
import CareInstructions from './Components/CareInstructions/CareInstructions.jsx';
import EnvironmentAndMaterials from './Components/EnvironmentAndMaterials/EnvironmentAndMaterials.jsx';
import PackageDetails from './Components/PackageDetails/PackageDetails.jsx';
import AssemblyAndDocuments from './Components/AssemblyAndDocuments.jsx';
import Reviews from './Components/Reviews/Reviews.jsx';
import ProductAvailability from './Components/ProductAvailability.jsx';
const axios = require('axios');
import ReviewFormModal from './Components/ReviewFormModal.jsx';

// const baseURL = 'http://drawersreviews-env.bz3ikgcjmi.us-east-2.elasticbeanstalk.com/';
// const baseURL = 'localhost:3333';

export default class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      currentItem: {},
      reviews: [],
      showModal: false
    };

    this.getCurrentItem = this.getCurrentItem.bind(this);
    this.getReviews = this.getReviews.bind(this);
    this.formatSizeData = this.formatSizeData.bind(this);
    this.updateReviewHelpful = this.updateReviewHelpful.bind(this);
    this.addNewReviewClickhandler = this.addNewReviewClickhandler.bind(this);
    this.submitNewReviewClickHandler = this.submitNewReviewClickHandler.bind(this);
  }

  componentDidMount() {
    this.getCurrentItem(22);
    this.getReviews(22);
    window.addEventListener('productChanged', event => {
      let id = event.detail.productId;
      this.getCurrentItem(id);
      this.getReviews(id);
    });
  }

  getCurrentItem(currentId) {
    axios
      .get('/item', {
        params: { itemId: currentId },
        baseURL: baseURL
      })
      .then(result => {
        let data = result.data[0];
        data.product_size = this.formatSizeData(data.product_size);
        this.setState({
          currentItem: data
        });
      })
      .catch(error => console.log(error));
  }

  getReviews(currentId) {
    axios
      .get('/reviews', {
        params: { itemId: currentId },
        baseURL: baseURL
      })
      .then(result => {
        let data = result.data;
        data = data.reverse();
        this.setState({
          reviews: data
        });
      })
      .catch(error => console.log(error));
  }

  updateReviewHelpful(review, yesPlus, noPlus) {
    let reviewId = review.review_id;
    let yesCount = review.review_helpful_yes + yesPlus;
    let noCount = review.review_helpful_no + noPlus;
    axios
      .put(
        '/reviews',
        {
          reviewId: reviewId,
          yesAdd: yesCount,
          noAdd: noCount
        },
        { baseURL: baseURL }
      )
      .then(this.getReviews(this.state.currentItem.id))
      .catch(error => console.log(error));
  }

  formatSizeData(data) {
    let formattedData = data;
    if (formattedData.includes('\n')) {
      formattedData = formattedData.split('\n');
    }
    let newData = [];
    for (let i = 0; i < formattedData.length; i++) {
      if (formattedData[i] !== '') {
        let current = formattedData[i].split(':');
        current[0] = current[0] + ':';
        newData.push(current);
      }
    }
    return newData;
  }

  addNewReviewClickhandler() {
    this.setState({
      showModal: true
    });
  }

  submitNewReviewClickHandler() {
    this.setState({
      showModal: false
    });
    this.getReviews(this.state.currentItem.id);
  }

  render() {
    const {
      id,
      box_number,
      product_description,
      product_size,
      care_instructions,
      environment_and_materials,
      package_details
    } = this.state.currentItem;
    const { reviews } = this.state;
    return (
      <div>
        <ProductDescription id={id} boxNumber={box_number} description={product_description} />
        <ProductSize id={id} sizeData={product_size} />
        <CareInstructions id={id} instructions={care_instructions} />
        <EnvironmentAndMaterials id={id} environmentAndMaterials={environment_and_materials} />
        <PackageDetails id={id} packageDetails={package_details} />
        <AssemblyAndDocuments />
        <Reviews
          clickUpdateHelpful={this.updateReviewHelpful}
          reviews={reviews}
          newReviewHandler={this.addNewReviewClickhandler}
        />
        <ProductAvailability />
        {this.state.showModal ? (
          <ReviewFormModal
            getReviews={this.getReviews}
            itemId={id}
            submitReview={this.submitNewReviewClickHandler}
          />
        ) : null}
      </div>
    );
  }
}
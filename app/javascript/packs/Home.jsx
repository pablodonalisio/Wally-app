import React from "react";
import Wally1 from "../../assets/images/wally1.jpg";
import Wally2 from "../../assets/images/wally2.jpg";
import Wally3 from "../../assets/images/wally3.jpg";
import Wally4 from "../../assets/images/wally4.jpg";

const Home = (props) => {
  return (
    <div className="home">
      <div className="pictures">
        <img src={Wally1} alt="First picture" />
        <img src={Wally2} alt="Second picture" />
        <img src={Wally3} alt="Third picture" />
        <img src={Wally4} alt="Fourth picture" />
      </div>
    </div>
  );
};
export default Home;

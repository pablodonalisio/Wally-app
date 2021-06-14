import React from "react";
import { Link } from "react-router-dom";
import Wally1 from "../../../assets/images/pictures/wally1.jpg";
import Wally2 from "../../../assets/images/pictures/wally2.jpg";
import Wally3 from "../../../assets/images/pictures/wally3.jpg";
import Wally4 from "../../../assets/images/pictures/wally4.jpg";

const Home = () => {
  const pictureUrls = [
    { img_url: Wally1, link_url: "/pictures/1", id: "1" },
    { img_url: Wally2, link_url: "/pictures/2", id: "2" },
    { img_url: Wally3, link_url: "/pictures/3", id: "3" },
    { img_url: Wally4, link_url: "/pictures/4", id: "4" },
  ];
  return (
    <div className="home">
      <div className="pictures">
        {pictureUrls.map((picture) => (
          <figure className="picture-container" key={picture.id}>
            <img
              className="picture"
              src={picture.img_url}
              alt="miniature wally pic"
            />
            <div className="link-container">
              <Link to={picture.link_url}>PLAY</Link>
            </div>
          </figure>
        ))}
      </div>
    </div>
  );
};
export default Home;

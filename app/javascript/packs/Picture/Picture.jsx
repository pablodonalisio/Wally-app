import React from "react";
import { useParams } from "react-router-dom";
import Wally1 from "../../../assets/images/pictures/wally1.jpg";
import Wally2 from "../../../assets/images/pictures/wally2.jpg";
import Wally3 from "../../../assets/images/pictures/wally3.jpg";
import Wally4 from "../../../assets/images/pictures/wally4.jpg";

const Picture = () => {
  const pictures = [Wally1, Wally2, Wally3, Wally4];
  const { pictureId } = useParams();
  return (
    <div className="picture">
      <img src={pictures[pictureId]} alt="Wally hidding" />
    </div>
  );
};
export default Picture;

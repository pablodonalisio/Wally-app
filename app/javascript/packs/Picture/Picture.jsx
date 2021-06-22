import React, { useEffect } from "react";
import { useParams, Link } from "react-router-dom";
import Wally1 from "../../../assets/images/pictures/wally1.jpg";
import Wally2 from "../../../assets/images/pictures/wally2.jpg";
import Wally3 from "../../../assets/images/pictures/wally3.jpg";
import Wally4 from "../../../assets/images/pictures/wally4.jpg";

const Picture = () => {
  const pictures = {
    0: { image: Wally1, characters: ["Wally", "Wenda", "Odlaw"] },
    1: { image: Wally2, characters: ["Wally", "Wenda", "Odlaw"] },
    2: { image: Wally3, characters: ["Wally", "Wenda", "Odlaw"] },
    3: { image: Wally4, characters: ["Wally", "Wenda", "Odlaw"] },
  }
  const { pictureId } = useParams();

  const displaySelection = (e) => {
    const ul = document.createElement("ul")
    ul.classList.add("character-selector")
    pictures[pictureId].characters.forEach((character) => {
      const li = document.createElement("li")
      li.textContent = character
      ul.appendChild(li)
    })
    document.getElementsByClassName('picture')[0].appendChild(ul)
    ul.style.top = `${e.clientY}px`
    ul.style.left = `${e.clientX}px`
    setTimeout(() => {
      document.addEventListener('click', () => ul.remove())
    }, 100);
  }
  useEffect(() => {
    const picture = document.getElementById("game-picture")
    picture.addEventListener('click', (e) => displaySelection(e));
  })
  return (
    <div className="picture">
      <div className="picture-nav">
        <Link to="/">Home</Link>
      </div>
      <div className="picture-container">
        <img src={pictures[pictureId].image} id="game-picture" alt="Wally hidding" />
      </div>
    </div>
  );
};
export default Picture;

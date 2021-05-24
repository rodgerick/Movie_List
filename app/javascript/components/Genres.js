import React from "react";

const Genres = (props) => {
  const { genres } = props;

  const renderGenres = () => {
    return genres.map((genre) => {
      return <h3>{genre.name}</h3>;
    });
  };

  return (
    <div>
      <h1> All Movie Genres! </h1>
      {renderGenres()}
    </div>
  );
};

export default Genres;

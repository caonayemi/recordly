$(document).ready(function() {
  $(".artist-fav-star").on("click", function(event) {
    event.preventDefault();
    var id = $(this).attr("id").replace("fav_artist_", "");
    var request = $.ajax({
      url: '/artists/'+id+'/edit', // How do I link to edit_artist_path with JS?
      method: "PUT",
      data: {is_favorite: false}
      // dataType: "json"
    });

    request.done(function(response) {
      $(".fav-star").hide();
      $(".blank-star").show();
    });
  });

  $(".artist-blank-star").on("click", function(event) {

  });

  $(".album-fav-star").on("click", function(event) {

  });

  $(".album-blank-star").on("click", function(event) {

  });

  $(".song-fav-star").on("click", function(event) {

  });

  $(".song-blank-star").on("click", function(event) {

  });
});

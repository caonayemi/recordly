// $(document).ready(function() {
//   $(".artist-fav-star").on("click", function(event) {
//     event.preventDefault();
//     var id = $(this).attr("id").replace("fav_artist_", "");
//     var request = $.ajax({
//       url: "/artists/"+id,
//       method: "PUT",
//       data: {"artist_id": id, "is_favorite": "false"},
//       dataType: "json"
//     });
//     // console.log(request);
//
//     request.done(function(response) {
//       $(".fav-star").hide();
//       $(".blank-star").show();
//     });
//   });
//
//   $(".artist-blank-star").on("click", function(event) {
//     event.preventDefault();
//     var id = $(this).attr("id").replace("fav_artist_", "");
//     var request = $.ajax({
//       url: "/artists/"+id,
//       method: "PUT",
//       data: {"artist_id": id, "is_favorite": "true"},
//       dataType: "json"
//     });
//     // console.log(request);
//
//     request.done(function(response) {
//       $(".fav-star").hide();
//       $(".blank-star").show();
//     });
//   });
//
//   $(".album-fav-star").on("click", function(event) {
//
//   });
//
//   $(".album-blank-star").on("click", function(event) {
//
//   });
//
//   $(".song-fav-star").on("click", function(event) {
//
//   });
//
//   $(".song-blank-star").on("click", function(event) {
//
//   });
// });

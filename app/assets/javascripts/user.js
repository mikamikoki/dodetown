// $(function() {
//   $(".search-input").on("keyup", function() {
//     let input = $(".search-input").val();
//     $.ajax({
//       type: 'GET',
//       url: '/search',
//       data: { keyword: input },
//       dataType: 'json'
//     })
//     .done(function(samples) {
//       $(".contents.row").empty();
//       if (samples.length !== 0) {
//         samples.forEach(function(sample){
//           appendSample(sample);
//         });
//       }
//       else {
//         appendErrMsgToHTML("");
//       }
//     })
//   });
// });


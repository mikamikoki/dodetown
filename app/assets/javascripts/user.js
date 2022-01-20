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

// document.addEventListener('turbolinks:load',function(){
// $('.search__form__input').on('keyup', function(e){
//       Rails.fire($(".search__form")[0], "submit");
//   });
// });

// $(document).on('turbolinks:load', function(){
//     $(document).on('keyup', '#form', function(e){
//     e.preventDefault();
//     var input = $.trim($(this).val());
//     //ここから追記
//     $.ajax({ //ajax通信で以下のことを行います
//       url: '/users/search', //urlを指定
//       type: 'GET', //メソッドを指定
//       data: ('keyword=' + input), //コントローラーに渡すデータを'keyword=input(入力された文字のことですね)'にするように指定
//       processData: false, //おまじない
//       contentType: false, //おまじない
//       dataType: 'json' //データ形式を指定
//     })
//     .done(function(data){ //データを受け取ることに成功したら、dataを引数に取って以下のことする(dataには@usersが入っている状態ですね)
//       $('#result').find('li').remove();  //idがresultの子要素のliを削除する
//       $(data).each(function(i, user){ //dataをuserという変数に代入して、以下のことを繰り返し行う(単純なeach文ですね)
//         $('#result').append('<li>' + user.name + '</li>') //resultというidの要素に対して、<li>ユーザーの名前</li>を追加する。
//       });
//     })
//     });
//   });
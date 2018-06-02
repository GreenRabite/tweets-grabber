var tweets = document.querySelectorAll(".tweet-box");
tweets.forEach(tweet=>{
  tweet.addEventListener('click',openURL);
});

function openURL(e){
  window.open(e.currentTarget.getAttribute('data-url'), "_blank");
}

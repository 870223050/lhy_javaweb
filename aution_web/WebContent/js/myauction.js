
//获得按钮
var infobtn = document.querySelector('.info-btn');
var auctionbtn = document.querySelector('.auction-btn');
var newsbtn = document.querySelector('.news-btn');
var attentionbtn = document.querySelector('.attention-btn');
//获得页面
var infotype = document.querySelector('.my-right-info.clearfix');
var auctiontype = document.querySelector('.my-right-auction.vanish');
var newstype = document.querySelector('.my-right-news.vanish');
var attentiontype = document.querySelector('.my-right-attention.vanish');

var info = function() {
    infotype.className = 'my-right-info clearfix';
    auctiontype.className = 'my-right-auction vanish';
    newstype.className = 'my-right-news vanish';
    attentiontype.className = 'my-right-attention vanish';
    infobtn.style.color="red";
    auctionbtn.style.color="black";
    newsbtn.style.color="black";
    attentionbtn.style.color="black";
}

var auction = function() {
    infotype.className = 'my-right-info clearfix vanish';
    auctiontype.className = 'my-right-auction';
    newstype.className = 'my-right-news vanish';
    attentiontype.className = 'my-right-attention vanish';
    infobtn.style.color="black";
    auctionbtn.style.color="red";
    newsbtn.style.color="black";
    attentionbtn.style.color="black";
}

var news = function() {
    infotype.className = 'my-right-info clearfix vanish';
    auctiontype.className = 'my-right-auction vanish';
    newstype.className = 'my-right-news';
    attentiontype.className = 'my-right-attention vanish';
    infobtn.style.color="black";
    auctionbtn.style.color="black";
    newsbtn.style.color="red";
    attentionbtn.style.color="black";
}

var attention = function() {
    infotype.className = 'my-right-info clearfix vanish';
    auctiontype.className = 'my-right-auction vanish';
    newstype.className = 'my-right-news vanish';
    attentiontype.className = 'my-right-attention';
    infobtn.style.color="black";
    auctionbtn.style.color="black";
    newsbtn.style.color="black";
    attentionbtn.style.color="red";
}

infobtn.addEventListener('click',info);

auctionbtn.addEventListener('click', auction);

newsbtn.addEventListener('click', news);

attentionbtn.addEventListener('click', attention);

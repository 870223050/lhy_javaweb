var items = document.getElementsByClassName('center-slide-item');//图片
var goprebtn = document.getElementById('gopre');
var gonextbtn = document.getElementById('gonext');
var points = document.getElementsByClassName('center-point');//点

var index = 0;//表示第几张图片在展示，第index张图片有类名active,第几个点在展示
//清除creative
var clearactive = function() {
    for(var i=0;i<items.length;i++){
        items[i].className='center-slide-item';
    }
    for(var i=0;i<items.length;i++){
        points[i].className='center-point';
    }
}
//添加active
var goindex = function() {
    clearactive();
    items[index].className = 'center-slide-item center-active';
    points[index].className = 'center-point center-active'
}
//下一页按钮
var gonext = function() {
    if(index < items.length-1) {
        index++;
    }else {
        index=0;
    }
    goindex();
}
//上一页按钮
var gopre = function() {
    if(index == 0) {
        index = items.length-1;
    }else {
        index--;
    }
    goindex();
}
//按钮实现
gonextbtn.addEventListener('click',function(){
    gonext();
})

goprebtn.addEventListener('click',function(){
    gopre();
})
//点击小点
for(var i = 0;i<points.length;i++) {
    points[i].addEventListener('click',function(){
        var pointindex = this.getAttribute('data-index');
        index = pointindex;
        goindex();
    })
}
//自动轮播
setInterval(function(){
    gonext();
},2000)

/***************************页面选中情况********************/
//获得页面标签
var homepage = document.querySelector('.home-page');
var auctionpage = document.querySelector('.auction-page');
var auctionlistpage = document.querySelector('.auctionlist-page');
var auctionflowpage  = document.querySelector('.auctionflow-page');
var mypage = document.querySelector('.my-page');

homepage.addEventListener('click',function(){
    homepage.style.color="red";
    auctionpage.style.color="black";
    auctionlistpage.style.color="black";
    auctionflowpage.style.color="black";
    mypage.style.color="black";
})

auctionpage.addEventListener('click',function(){
    homepage.style.color="black";
    auctionpage.style.color="red";
    auctionlistpage.style.color="black";
    auctionflowpage.style.color="black";
    mypage.style.color="black";
})

auctionlistpage.addEventListener('click',function(){
    homepage.style.color="black";
    auctionpage.style.color="black";
    auctionlistpage.style.color="red";
    auctionflowpage.style.color="black";
    mypage.style.color="black";
})

auctionflowpage.addEventListener('click',function(){
    homepage.style.color="black";
    auctionpage.style.color="black";
    auctionlistpage.style.color="black";
    auctionflowpage.style.color="red";
    mypage.style.color="black";
})

mypage.addEventListener('click',function(){
    homepage.style.color="black";
    auctionpage.style.color="black";
    auctionlistpage.style.color="black";
    auctionflowpage.style.color="black";
    mypage.style.color="red";
})


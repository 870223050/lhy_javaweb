<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>拍卖大厅_中拍平台</title>
    <meta name="keywords" content="中国拍卖行业协会,中拍平台,中拍平台网络科技股份有限公司,中拍网,拍卖,拍卖网站,网络拍卖,在线拍卖,拍卖平台,司法拍卖平台,司法入围平台,司法拍卖,公车拍卖,房产拍卖,机动车拍卖,资产拍卖,土地拍卖,艺术品拍卖,农产品拍卖,拍卖公告,电子公告, 互联网公告,互联网媒体公告">
    <meta name="description" content="中国拍卖行业协会,中拍平台,中拍平台网络科技股份有限公司,中拍网,拍卖,拍卖网站,网络拍卖,在线拍卖,拍卖平台,司法拍卖平台,司法入围平台,司法拍卖,公车拍卖,房产拍卖,机动车拍卖,资产拍卖,土地拍卖,艺术品拍卖,农产品拍卖,拍卖公告,电子公告, 互联网公告,互联网媒体公告">
    <meta http-equiv="pragram" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache, must-revalidate">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="icon" href="/themes/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="/themes/images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/themes/css/comm/comm-5872cc344b.css?|now|" />
    <link rel="stylesheet" type="text/css" href="/themes/css/pages/auction_detail-f24d89989e.css?|now|">
    <link rel="stylesheet" type="text/css" href="/themes/css/pages/auctionhall-8f343c743f.css?|now|">
    <link rel="stylesheet" type="text/css" href="/themes/css/pages/profession-504eec415d.css?|now|">
</head>

<body>
    <!-- 支付未完成 -->
    <!--<div class="dialog prompt pay-error">
        <div class="dialogBg">
            <p class="pay-tit error-icon">保证金支付失败。</p>
            <div class="error-list">
                <label class="pay-error-title">您可能因为以下原因导致保证金支付未成功：</label>
                <ul class="pay-error-list">
                    <li> 支付环境影响，电脑上使用网银支付时请注意浏览器及版本，并合理设置网上支付额度</li>
                    <li> 如果支付中断，您下次可通过以下路径继续完成支付；电脑登陆中国拍卖行业协会，进入【我的竞拍】&gt;【<a href="/pages/personal/home.html" target="_blank">参标的</a> 】
                    </li>
                </ul>
            </div>
            <div class="btn">
                <input class="sureBtn close_tip" type="button" value="我知道了">
            </div>
        </div>
    </div>-->
    <!-- 支付提示 -->
    <!--<div class="dialog payDiv">
        <div class="dialogBg">
            <p class="pay-tit">请在您新打开的页面上完成付款。</p>
            <div class="content">
                <p>支付完成前，请不要关闭此支付验证窗口。</p>
                <p>支付完成后，请根据您的支付的情况点击下面按钮。</p>
            </div>
            <div class="btn">
                <input class="successBtn" type="button" value="支付完成">
                <input class="dangerBtn" type="button" value="支付遇到问题">
            </div>
        </div>
    </div>-->
    <!-- 视频小窗 -->
    <!-- <div class="fixed-video" id="JfixedVideo">
        <video id="video_fixed"></video>
    </div> -->
    <!-- 图片放大弹框结束 -->
    <div class="img_enlarge" style="display: none;opacity: 0;">
        <img  alt="" onmousewheel="return bbimg(this)">
        <p>100%</p>
    </div>  

    <!-- 图片放大弹框结束 -->
    <!-- 报名提示 -->
    <div class="dialog applyDiv">
        <div class="dialogBg">
            <p class="pay-tit">请根据您的报名情况，选择下方按钮！</p>
            <div class="btn">
                <input class="successBtn" type="button" value="报名成功">
                <input class="dangerBtn" type="button" value="支付遇到问题">
            </div>
        </div>
    </div>
    <!--报名失败提示-->
    <div class="dialog prompt apply-error">
        <div class="dialogBg">
            <p class="pay-tit error-icon">报名失败</p>
            <div class="error-list">
                <label class="pay-error-title">您可能因为以下原因导致报名未成功：</label>
                <ul class="pay-error-list">
                    <li>1.网络环境不稳定导致报名失败，请检查网络并重新报名；</li>
                    <li>2.支付环境影响，电脑上使用网银支付时请注意浏览器版本，并合理设置网上支付额度；</li>
                    <li>3.因网络原因造成的支付反馈延时，请刷新页面；</li>
                </ul>
            </div>
            <div class="btn">
                <input class="sureBtn close_tip" type="button" value="我知道了">
            </div>
        </div>
    </div>
    <!-- 提示 -->
    <div class="dialog prompt error-tip">
        <div class="dialogBg">
            <p class="error_msg">出价小于当前最高价，请重新出价</p>
            <div class="btn">
                <input class="sureBtn close_tip" type="button" value="确定">
            </div>
        </div>
    </div>
    <!-- 出价 -->
    <div class="dialog offerDiv">
        <div class="dialogBg">
            <h3>
                <p class="is-top-price" style="display: none;"></p>尊敬的<em id="jph"></em>号，您提交的竞价为：</h3>
            <div class="Rmb-what">人民币：<a><span id="check_price"></span><em style="font-size: 15px;color: #666;">元<em id="upper_price"></em></em></a></div><a><em style="font-size: 15px;color: #666;"></em></a>
            <div class="btn">
                <input class="sureBtn submit_bid hoverclick" type="button" value="确认出价">
                <input class="closeBtn" type="button" value="取消">
            </div>
        </div>
    </div>
    <!--首页顶部 -- 登录到导航栏-->
    <div class="sifa-head" style="display: none;">
        <div class="container-fluid">
            <div class="container-outtitle">
                <ul class="nav_title">
                    <li class="newnav_avtive"><a href="/index.html" target="_blank">中拍平台</a></li>
                    <li><a href="/pages/asset/index.html" target="_blank">资产拍卖</a></li>
                    <li><a href="https://sf.caa123.org.cn/" target="_blank">司法拍卖</a></li>
                    <li><a href="/pages/service/index.html" target="_blank">拍卖服务</a></li>
                </ul>
                <div class="J-container-title container-title">
                    <div class="nologin-info">
                        <a class="float-left link-old" target="_blank" href="//pm.caa123.org.cn"></a>
                        <p>
                            <a target="_blank" href="/index.html" class="float-left shop-test">进入测试版</a>
                            <a class="shop-official" href="/shop" target="_blank">拍卖企业登录</a>
                            <a href="/pages/user/register.html">免费注册</a>
                            <a href="/pages/user/login.html">登录</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="nav-con">
                <div class="container">
                    <a href="/index.html" class="head-img"><img src="/themes/images/headerlogo.png" alt="司法拍卖"
                            class="caa-logo"></a>
                    <div class="nav-wrap clearfix">
                        <ul class="main-nav">
                            <li>
                                <a class="nav-a text14-fff" href="/index.html">首页</a>
                            </li>
                            <li>
                                <a class="nav-a text14-fff" href="/pages/lots/list.html">标的</a>
                            </li>
                            <li>
                                <a class="nav-a text14-fff" href="/pages/meeting/list.html">拍卖会</a>
                            </li>
                            <li>
                                <a class="nav-a text14-fff" href="/pages/notice/list.html">拍卖公告</a>
                            </li>
                            <li>
                                <a class="nav-a text14-fff" href="/pages/enterprises/list.html">拍卖企业</a>
                            </li>
                            <li>
                                <a class="nav-a text14-fff" href="/pages/asset/index.html?wttype=1">破产资产</a>
                                <em class="N_box"><img class="margin-left-img" src="/themes/images/N.png" /></em> 
                            </li>
                            <li>
                                <a class="nav-a text14-fff" href="/pages/invest/list.html">资产招商</a>
                            </li>
                            <!--<li>
                                <a class="nav-a text14-fff" href="/pages/personal/home.html">我的竞拍</a>
                            </li>-->
                        </ul>                 
                        <div class="nav-search">
                            <div class="other-nav">
                                <a href="/pages/personal/home.html" class="color-333">我的竞拍</a>
                            </div>
                            <form class="search-form" action="/pages/lots/list.html" type="get">
                                <input type="text" name="name" placeholder="搜索标的" class="search-input search-lot">
                                <button class="search-btn" type="submit"></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    


    <div class="sifa-head" style="display: none;">
            <div class="container-fluid">
                <div class="container-outtitle">
                        <ul class="nav_title">
                                <li><a href="/index.html" target="_blank">中拍平台</a></li>
                                <li class="newnav_avtive"><a href="/pages/asset/index.html" target="_blank">资产拍卖</a></li>
                                <li><a href="https://sf.caa123.org.cn/" target="_blank">司法拍卖</a></li>
                                <li><a href="/pages/service/index.html" target="_blank">拍卖服务</a></li>
                        </ul>
                        <div class="J-container-title container-title">
                                <div class="nologin-info">
                                    <a class="float-left link-old" target="_blank" href="//pm.caa123.org.cn"></a>
                                    <p>
                                        <a target="_blank" href="/index.html" class="float-left shop-test">进入测试版</a>
                                        <a class="shop-official" href="/shop" target="_blank">拍卖企业登录</a>
                                        <a href="/pages/user/register.html">免费注册</a>
                                        <a href="/pages/user/login.html">登录</a>
                                    </p>
                                </div>
                        </div>
                </div>
                <div class="new_nav">
                    <div class="container">
                        <div class="new_logo"><p style="background:url(/themes/images/newlogo_asset.png) no-repeat left center;background-size: 68px 74px;">中拍平台·资产<em class="glob_test" style="display: none">（测试版）</em></p></div>					
                    </div>
                </div>
                <div class="nav-con">
                        <div class="container">
                                <a href="javascript:;" class="head-img"><img src="/themes/images/headerlogo.png" alt="司法拍卖" class="caa-logo"></a>
                            <div class="nav-wrap clearfix">
                                <ul class="main-nav">
                                    <li>
                                        <a class="nav-a text14-fff" href="/pages/asset/index.html">首页</a>
                                    </li>
                                    <li>
                                        <a class="nav-a text14-fff" href="/pages/asset/index.html?wttype=1">破产资产</a>
                                    </li>
                                    <li>
                                        <a class="nav-a text14-fff" href="/pages/asset/index.html?wttype=2">金融资产</a>
                                    </li>
                                    <!-- <li style="display: none;">
                                        <a class="nav-a text14-fff" href="/pages/asset/index.html?wttype=3">工业用品</a>
                                    </li> -->
                                    <li>
                                        <a class="nav-a text14-fff" href="/pages/invest/list.html">资产招商</a>
                                    </li>
                                    <li>
                                        <a class="nav-a text14-fff" href="/pages/notice/list.html">拍卖公告</a>
                                    </li>
                                </ul>
                                <div class="nav-search">
                                    <div class="other-nav">
                                        <a href="/pages/personal/home.html" class="color-333">我的竞拍</a>
                                    </div>
                                    <div class="search-form">
                                        <input type="text" name="name" placeholder="搜索标的" class="search-input search-lot">
                                        <button class="search-btn" type="button"></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    <!--拍卖师暂停  -->
    <div class="pauseDiv">
        <p class="pay-tit"></p>
        <span class="close_btn"></span>
        <div class="btn">
            <input class="pauseBtn" type="button" value="暂不切换">
            <input class="onceBtn" type="button" value="立即切换">
        </div>
    </div>
    <div class="auction_list" style="height: 215px;">
        <div class="auction_msg">
            <h2 class="J-meet-name ellipsis2" style="margin-top: 50px;"></h2>
            <p class="lineheight26 pmjg-message">
                拍卖企业：<a class="companyName" target="_blank"></a><br>
                <span id="link"> 联系方式：
                <span class="linkman"></span>
                <span class="companyTel"></span> </span>
            </p>
        </div>
         <div class="pro_upcoming_pic" style="height: auto;">
         	<p style="width:92%;overflow: hidden;">
         	   <input type="text" name="name" id="getLotIdByName" autocomplete="off" placeholder="本场拍卖会标的名称" style="margin-top: 20px;border-style: none;background: #f3f5f7 url('/themes/images/sous.png') no-repeat left 10px center;text-indent: 30px;height: 30px;line-height: 35px;vertical-align: middle;outline: 0px;position: relative;width:256px;height: 30px;color: rgb(0, 0, 0);float: right;"/>
         	</p>
	        <div style="width: 100%;overflow: hidden;">
	            <a class="btn-left" style="top: 93px;"></a>
	            <div class="pro_upcoming_wrap">
	                <ul class="pro_upcoming_list J-meet-catalog">
	
	                </ul>
	                <div class="scroll_small"></div>
	            </div>
	            <a class="btn-right" style="top: 93px;"></a>
            </div>
         </div>
    </div>
    <div class="sifa-content-div orderbid-content clearfix">
        <div id="page" class="sf-wrap">
            <div class="time-info" id="timeDif" style="display: none;">
                提醒：您电脑时间和系统时间不一致，为避免错过合理的出价时间，请尽早出价！
            </div>
            <div class="grid-c hall-wrap  clearfix">
                <div class="module-sf  clearfix" data-spm="detail">
                    <input type="hidden" id="my-jmh" />
                    <div class="pm-main clearfix">
                        <div class="pm-main-l">
                            <div id="showbox">
                                <div class="main-img">
                                    <div class="lot-video J-lot-video">
                                    </div>
                                    <div class="lot-img"><span id="moveposition"></span><img src="/themes/images/lotdetail.png" class="showimg"></div>
                                </div>
                                <p id="bigpicshow">
                                    <img src="/themes/images/lotdetail.png">
                                </p>
                            </div>
                            <!--展示图片盒子-->
                            <div id="showsum">
                                <p><span class="dis_block_child current"><img src="/themes/images/lotdetail.png"></span></p>
                            </div>
                            <div class="follow_count"></div>
                            <div class="look_count"><span></span>次围观</div>
                            <div class="join_count"><span></span>人报名</div>
                        </div>
                        <div class="pm-main-l auction-interaction profession-main">
                            <h1 id="pro_bid_name"></h1>
                            <!-- 即将开始 -->
                            <div class="free_bid action_bid_aera" id="DISPLAY_BID_COMMING"></div>
                            <!-- 正在进行-->
                            <div class="bzj_state action_bid_aera" id="DISPLAY_BID_PROGRESSING"></div>
                            <!-- 已结束   -->
                            <div class="bzj_state action_bid_aera" id="DISPLAY_BID_FINISH"></div>
                            <span id="status_tip"></span>
                            <div class="auctionnews dis_block_parent pt20">
                                <p class="p_td1 dis_block_child">
                                    <span id="assess_price" class="typeTips">
                                        <span></span><em class="detail-tip-icon detail-tip-icon-top"></em>
                                    </span> 评估价：
                                    <span class="J_Price" id="assessPrice"></span>
                                    <em class="m-i">元</em>
                                </p>
                                <p class="p_td2 dis_block_child">
                                    <span id="deposite_price" class="typeTips">
                                        <span></span><em class="detail-tip-icon detail-tip-icon-top"></em>
                                    </span> 保证金：
                                    <span class="J_Price" id="cashDeposit"></span>
                                    <em class="m-i">元</em>
                                </p>
                                <p class="p_td3 dis_block_child">
                                    <span id="rate_price" class="typeTips">
                                        <span></span><em class="detail-tip-icon detail-tip-icon-top"></em>
                                    </span> 加价幅度：
                                    <span class="color-red">
                                        <span class="J_Price" id="rateLadder"></span>
                                    <em class="m-i">元</em>
                                    </span>
                                </p>
                            </div>
                            <div class="auctionnews dis_block_parent">
                                <p class="p_td1 dis_block_child">
                                    <span id="start_price" class="typeTips">
                                        <span></span><em class="detail-tip-icon detail-tip-icon-top"></em>
                                    </span> 起拍价：
                                    <span class="J_Price" id="startPrice"></span>
                                </p>
                                <p class="p_td2 dis_block_child">
                                    <span class="retain_typeTips typeTips" style="color:#333;">
                                       拍卖企业设定的标的最低成交价格，最终的价格低于该价格即流拍<br>
                                    <a href="/pages/help/helpcenter_explain.html#c14" target="_blank" style="color:#d6363b;">
                                        <span>详细。</span>
                                    </a>
                                    <em class="detail-tip-icon detail-tip-icon-top"></em>
                                    </span>
                                    保留价：
                                    <em id="retain"></em>
                                </p>
                                <p class="p_td3 dis_block_child">
                                    <span id="first_tips" class="typeTips" style="color:#333;">
                                       优先购买权又称先买权，是指法律赋予特定对象（特定人） 依照法律规定或合同约定，在出卖标的于第三人时，享有的在同等条件下优先<br>
                                    <a href="/pages/help/helpcenter_explain.html#c8" target="_blank" style="color:#d6363b;">
                                        <span>详细。</span>
                                    </a>
                                    <em class="detail-tip-icon detail-tip-icon-top"></em>
                                    </span> 优先购买权人：
                                    <em id="prior_span">无</em>
                                </p>
                            </div>
                            <div class="auctionnews dis_block_parent w220">
                                <p class="p_td1 dis_block_child">
                                    <!-- <span class="typeTips" style="color:#333;">
                                       优先购买权又称先买权，是指法律赋予特定对象（特定人） 依照法律规定或合同约定，在出卖标的于第三人时，享有的在同等条件下优先<br>
                                    <a href="/pages/helpcenter_explain.html#c10" style="color:#d6363b;">
                                        <span>详细。</span>
                                    </a> -->
                                    自由竞价时间：<span id="bidCycle"></span>
                                </p>
                                <p class="p_td2 dis_block_child">
                                    <span class="limited typeTips" style="color:#333;width:183px;text-align:left;">
                                                                                竞拍最后<em></em>内，若有用户出价，即进入限时竞价时间。<br>
	                                    <!--<a href="/pages/helpcenter_explain.html#c10" style="color:#d6363b;">
	                                        <span>详细。</span>
	                                    </a>-->
                                   </span> 
                                    限时竞价时间：<span id="delayTimes"></span>
                                </p>
                            </div>
                            <div class="auctionnews dis_block_parent w220 lot_allnum">
                                <p class="p_td1 dis_block_child">
                                    <!-- <span class="typeTips" style="color:#333;">
                                       优先购买权又称先买权，是指法律赋予特定对象（特定人） 依照法律规定或合同约定，在出卖标的于第三人时，享有的在同等条件下优先<br>
                                    <a href="/pages/helpcenter_explain.html#c10" style="color:#d6363b;">
                                        <span>详细。</span>
                                    </a> -->
                                    标的总量：<span id="lot_allnum"></span>
                                </p>
                                <p class="p_td2 dis_block_child">
                                    <!-- <span class="typeTips" style="color:#333;">
                                       优先购买权又称先买权，是指法律赋予特定对象（特定人） 依照法律规定或合同约定，在出卖标的于第三人时，享有的在同等条件下优先<br>
                                    <a href="/pages/helpcenter_explain.html#c10" style="color:#d6363b;">
                                        <span>详细。</span>
                                    </a> -->
                                    单位：<span id="unit"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pm-bid-right same_bid_right" style="display: block">
                    <!-- 拍卖师发言-->
                    <p class="p_tit" style="padding-left: 0px">
                        <span class="active">拍卖师发言</span>
                        <span class="right">拍卖师信息</span>
                    </p>
                    <ul class="auctioneerspeak">

                    </ul>
                    <!-- 拍卖师信息-->
                    <div class="auctioneer dis_block_parent hidden">
                        <div class="auctioneerpic">
                            <img src="" class="auctioneer-pic J_auctionPhoto" />
                            <img src="" class="auctioneer-pic J_auctionIdCardPhoto hidden">
                        </div>
                        <ul class="square-list">
                            <li class="square J_auctionPhoto active"></li>
                            <li class="square J_auctionIdCardPhoto"></li>
                        </ul>
                        <div class="auctioneerintroduce lineh16 f12">
                            <p class="auctioneername"></p>
                            <p class="auctioneername2"><span class="color-333">拍卖师证号：</span><span class="color-333"></span></p>
                        </div>
                    </div>
                    <!-- 竞价记录 -->
                    <h2 class="state">
                        <span>状态</span>
                        <span class="bid-number">竞买号</span>
                        <span class="offer-price">出价</span>
                    </h2>
                    <ul class="recordUl recordList" style="overflow: auto;height:152px;">
                        <li class="no-pay-records">没有更多出价记录...</li>
                    </ul>
                    <a class="see-record" style="display: none">更多</a>
                </div>
            </div>
        </div>
    </div>
    <div class="profession mt15 clearfix">
        <div class="module-sf" data-spm="tabs">
            <div class="pm-addition clearfix">
                <div class="detail-for-remind">
                    <ul class="tab-menu ks-switchable-nav">
                        <li class="current"><a href="#NoticeDetail">重要提示</a></li>
                        <li><a href="#ItemNotice">拍卖公告</a></li>
                        <li><a href="#RemindTip">竞拍须知</a></li>
                        <li><a href="#AuctIntroduce">标的介绍</a></li>
                        <li class="price_log"><a href="javascript:void(0)">竞价记录(<span class="J_Record">0</span>)</a></li>
                        <li class="hidden"><a href="javascript:void(0)">成交确认书</a></li>
                    </ul>
                </div>
                <!-- 重要提示 -->
                <div id="DetailTabMain" class="detail-main">
                    <div class="addition-desc record-list">
                        <div class="pai-title">
                            <div class="pai-title-text">重要提示</div>
                        </div>
                        <div class="pai-remind-tip">
                            <!--<p>1.竞拍前请务必遵照《拍卖公告》、《竞拍须知》及《标的物情况介绍表》要求，进行实地看样、调查标的物信息（如过户要求、违章情况等）、了解竞买资质、委托代理及尾款支付方式等内容。 <b>如违反相关规定，您的保证金可能会被法院划扣并产生其他司法处罚等后果，请理性参拍！</b></p>
                                    <p>2.竞买人如欲委托他人参拍的，请提前与法院确认是否可行并办理相应的委托手续，否则法院将视被委托人为实际竞买人并办理交割手续。 <b>因未办理委托手续导致的二次过户风险及因此产生的相关税费由竞买人自行承担。</b>
                                    </p>
                                    <p>3.<b><span style="background:#FBFCFC;">请仔细阅读标的物详情，再进行竞拍，包括房屋面积，周边配套，交通，学区等标的物详细情况，</span><span style="background:#FBFCFC;">以法院</span><span style="background:#FBFCFC;">实地告知</span><span style="background:#FBFCFC;">为准，</span><span style="background:#FBFCFC;">如有疑问请咨询法院。</span></b>
                                    </p>-->
                        </div>
                    </div>
                    <div class="tabDiv">
                        <!-- 拍卖公告 -->
                        <div id="NoticeDetail" class="record-list hidden">
                            <div class="pai-title">
                                <div class="pai-title-text">拍卖公告</div>
                            </div>
                            <div class="detail-common-text">拍卖公告加载中......</div>
                          <div class="detail-adjunct">
                                <h2 class="detail-common-head">相关附件</h2>
                                <ul id="J_DownLoadFirst">
                                    附件加载中......
                                </ul>
                            </div>
                        </div>
                        <!-- 竞拍须知 -->
                        <div id="ItemNotice" class="record-list hidden">
                            <div class="pai-title">
                                <div class="pai-title-text">竞拍须知</div>
                            </div>
                            <div id="J_ItemNotice" class="detail-common-text">竞拍须知加载中......</div>
                        </div>
                        <!-- 标的物介绍 -->
                        <div id="RemindTip" class="addition-desc hidden record-list">
                            <div class="pai-title" id="RemindTip">
                                <div class="pai-title-text">标的介绍</div>
                            </div>
                            <h2 class="detail-common-head">具体描述</h2>
                            <div id="J_desc" class="detail-common-text clearfix">
                                <!-- 请致电0835-2855044咨询。 -->
                            </div>
                            <div class="auc-parameter">
                                <div class="paramter-tit">参数配置</div>
                                <table>
                                    <tbody>
                                        <tr class="group-tit">
                                            <td colspan="4"><span>基本信息</span></td>
                                        </tr>
                                        <tr>
                                            <td><span>车主</span></td>
                                            <td class="bgColor car_owner"></td>
                                            <td><span>车牌号</span></td>
                                            <td class="bgColor car_number"></td>
                                        </tr>
                                        <tr>
                                            <td><span>品牌</span></td>
                                            <td class="bgColor car_brand"></td>
                                            <td><span>车型</span></td>
                                            <td class="bgColor car_type"></td>
                                        </tr>
                                        <tr>
                                            <td><span>排放标准</span></td>
                                            <td class="bgColor gear_type"></td>
                                            <td><span>档位类型</span></td>
                                            <td class="bgColor standardvm"></td>
                                        </tr>
                                        <tr>
                                            <td><span>排量</span></td>
                                            <td class="bgColor vent_mete"></td>
                                            <td><span>颜色</span></td>
                                            <td class="bgColor car_color"></td>
                                        </tr>
                                        <tr>
                                            <td><span>拍照日期</span></td>
                                            <td class="bgColor photo_time"></td>
                                            <td><span>行驶里程</span></td>
                                            <td class="bgColor run_kilometres"></td>
                                        </tr>
                                        <tr>
                                            <td><span>车辆状况</span></td>
                                            <td class="bgColor car_condition"></td>
                                            <td><span>车辆用途</span></td>
                                            <td class="bgColor use_condition"></td>
                                        </tr>
                                        <tr>
                                            <td><span>进口/国产</span></td>
                                            <td class="bgColor car_entrance"></td>
                                            <td><span></span></td>
                                            <td class="bgColor"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="video-img">
                                <div class="video_slide">
                                    <div id="lotVideo">视频加载中。。。</div>
                                </div>
                                <div class="sf-pic-slide clearfix">
                                    <!-- <div class="slide-bigpic"><img src="../images/p1.jpg"></div>
                                <div class="slide-bigpic"><img src="../images/p2.jpg"></div>
                                <div class="slide-bigpic"><img src="../images/p3.jpg"></div>
                                <div class="slide-bigpic"><img src="../images/p4.jpg"></div>
                                <div class="slide-bigpic"><img src="../images/p5.jpg"></div> -->
                                </div>
                            </div>
                            <h2 class="detail-common-head">所在地</h2>
                            <div class="detail-common-text" id="position">
                                <!-- 标的物所在地：四川 成都 武侯 -->
                            </div>
                            <div class="detail-adjunct">
                                <h2 class="detail-common-head">相关附件</h2>
                                <ul id="J_DownLoadSecond">
                                    附件加载中......
                                </ul>
                            </div>
                        </div>
                        <!-- <div id="speaklog" class="record-list hidden">
                            <div class="pai-title" id="RemindTip">
                                <div class="pai-title-text">拍卖师发言</div>
                            </div>
                            <div class="speaklog-title">
                                <div class="inline_block inline_block_one">发言类型</div>
                                <div class="inline_block inline_block_two">发言内容</div>
                                <div class="inline_block inline_block_three">发言时间</div>
                            </div>
                            <ul class="speaklogs-list">

                            </ul>
                            <div class="page-wrap-two">
                            </div>
                        </div> -->
                        <!-- 竞价记录 -->
                        <div id="RecordContent" class="introduce-bid hidden record-list" has-data="0">
                            <div class="pai-title">
                                <div class="pai-title-text">竞价记录</div>
                            </div>
                            <table class="record-table" id="J_RecordList">
                                <thead>
                                    <tr>
                                        <th>状态</th>
                                        <th class="bid-number">竞买号</th>
                                        <th class="offer-price">价格</th>
                                        <th class="price-time">时间</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                            <div class="page-wrap">
                            </div>
                        </div>
                        <!--竞价成功确认书-->
                        <!--竞价成功确认书-->
                        <div id="AuctConfirmation" class="record-list AuctConfirmation hidden">
                            <div class="pai-title">
                                <div class="pai-title-text">竞价成功确认书</div>
                            </div>
                            <!--<div id="" class="detail-common-text">本次为变卖，一人报名参与竞价即可成交。</div>-->
                            <div class="auction-confirmation-content">
                                <h2 class="confirmation-head">网络拍卖竞价成功确认书</h2>
                                <hr class="largeline">
                                <hr class="smalline">
                                <div class="auction-info">
                                    <div class="detail-common-text">拍卖企业：<span class="courtName"></span></div>
                                    <div class="detail-common-text">标的名称：<span class="lotName"><!-- 【第二次拍卖】佛山市南海区桂城街道南桂东路66号桂南名都国际605房 --></span></div>
                                    <div class="detail-common-text">标的网拍链接：<span class="linkUrl"><!-- http://shskdhsdjsdk.html --></span></div>
                                    <div class="detail-common-text">网拍公告时间：<span class="noticeTime"><!-- 2016/10/xx 16:00 --></span></div>
                                    <div class="detail-common-text">网拍开始时间：<span class="startTime"><!-- 2016/10/xx 10:00 --></span></div>
                                    <div class="detail-common-text">网拍结束时间：<span class="endTime"><!-- 2016/10/xx 10:00 --></span></div>
                                </div>
                                <div class="auction-end">
                                    <h3>【网络拍卖竞价结果】</h3>
                                    <div class="detail-common-text">用户姓名<span class="bargainUserName"><!-- xx --></span>通过竞买号<span class="nowPriceNum"><!-- xxxx --></span> 于
                                        <span class="bargainYear"><!-- xxxx --></span>年<span class="bargainMonth"><!-- xxxx --></span>月<span class="bargainDay"><!-- xxxx --></span>日 在
                                        <span class="courtName"><!-- xxxx --></span>于中拍平台展开的“
                                        <span class="lotName"><!-- 【第二次拍卖】佛山市南海区桂城街道南桂东路66号桂南名都国际605房 --></span>”拍卖项目公开竞价中,以最高价胜出。</div>
                                    <div class="detail-common-text">该标的网络拍卖成交价格：<span class="bargainPrice"><!-- ¥24400 --></span><span class="bargainPriceL"><!-- （贰万肆仟肆拾元整） --></span></div>
                                    <div class="detail-common-text slidelarge">在网络拍卖中竞买成功的用户，必须依照标的《竞拍须知》、《拍卖公告》要求，按时完成余款交付、办理相关手续。</div>
                                    <div class="detail-common-text">标的最终成交以<span class="courtName"><!-- xx --></span>出具拍卖成交裁定为准。</div>
                                </div>
                                <div class="auction-end-time">
                                    <div class="detail-common-text">网拍竞价结果确认时间：<span class="bargainTime"><!-- xxxx年xxxx月xxxx日 --></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 页脚-->
    <div class="sifa-foot J-sifa-foot">

    </div>

    <div class="detail-wx toor-wx">
        <img class="toor-wx-img detail-wx-img J-wx-img" src="" alt="">
        <p class="toor-wx-tit">微信扫一扫</p>
        <p class="toor-wx-tit">手机也能参拍</p>
    </div>
    <script src="https://res2.wx.qq.com/open/js/jweixin-1.4.0.js"></script>
    <script src="/scripts/loading.js?|now|"></script>
    <div class="app_frame">
        <p>手机浏览器暂不支持此功能，如需报名与出价，请使用《中拍平台》APP。</p>
        <div class="app_box">
            <button class="app_sure">确认</button>
            <button class="app_close">取消</button>
        </div>
   </div>
</body>
</html>
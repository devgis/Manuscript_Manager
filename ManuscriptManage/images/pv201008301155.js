(function(){function v(e,z){for(var A,y=0,x=e.length;y<x;y++){A=z(e[y],y,e);if(A!==undefined){return A}}}function n(z,e){var y=document.createElement("script");y.type="text/javascript";y.src=z;var x=document.getElementsByTagName("head")||document.getElementsByTagName("body");if(x&&x[0]){x[0].appendChild(y)}if(e===true){return y}}function k(e){return e.replace(/(^\s*)|(\s*$)/g,"")}function m(e){return Object.prototype.toString.apply(e)==="[object Array]"}function f(e){this.$name=e;var x=v(document.cookie.split(";"),function(z,A,y){z=k(z);if(z.substring(0,e.length+1)==(e+"=")){return z}});if(!x){return}this.value=unescape(x.substring(e.length+1))}var w="ku6.com",c="http://analytics.ku6.com/",a=new Date(),r=escape(a.getTime()*1000+Math.round(Math.random()*1000)),b=36500,u="",s=0,i=[["images.google","q"],["google.cn","q"],["google.com.tw","q"],["google.com.hk","q"],["google.com.sg","q"],["google.sg","q"],["cn.yahoo.com","p"],["yahoo.cn","p"],["image.baidu.com","word"],["zhidao.baidu.com","wd"],["video.baidu.com","word"],["sogou","query"],["zhongsou","word"],["soso","q"],["114","kw"],["yodao","q"],["google.com","q"],["yahoo.com","p"],["msn","q"],["live","q"],["baidu.com","wd"]];if(document.domain.search(/juchang.com/)>=0){w="juchang.com"}try{if(top.location.href!=window.location.href){s=1}}catch(t){s=1}f.prototype={store:function(e,B,z,A){var y=this.value||"";y=escape(y);var x=this.$name+"="+y;if(e||e==0){x+="; max-age="+(e*24*60*60)}if(B){x+="; path="+B}if(z){x+="; domain="+z}if(A){x+="; secure"}document.cookie=x},remove:function(y,e,x){delete this.value;this.store(0,y,e,x)},enabled:function(){document.cookie="testcookie=test; max-age=10000; domain="+w;var e=document.cookie;if(e.indexOf("testcookie=test")==-1){return false}else{document.cookie="testcookie=test; max-age=0; domain="+w;return true}}};var g=new f("KUT"),j=new f("KUP"),o=new f("KUID"),d=new f("systemPPCLoginUser"),q=new f("loginUser"),p=0;function l(){if(w=="ku6.com"&&d.value&&d.value.split("_--_").length>=5){p=1}if(w=="juchang.com"&&q.value&&q.value.split("|").length>=4){p=1}if(!o.enabled()){return}if(!o.value){o.value=r;o.store(b,"/",w)}g.value=Math.round(a.getTime()/1000);g.store(b,"/",w);j.value="0";j.store(b,"/",w)}function h(){var z=document.referrer;if(!z||z.indexOf("://")<0){return""}var e=z.split("/");var x=e[2]?e[2].toLowerCase():"";var y=e[e.length-1];y=y&&y.split("?")[1];if(!x||!y){return""}return v(i,function(A){if(x.indexOf(A[0].toLowerCase())<0){return}u=A[0];return v(y.split("&"),function(E,C,B){var D=E.split("=");if(D[0]==A[1]){return D[1].replace(/%20/gi,"+")}})})}this._st=function(){};this.ku_track=function(){l();if(typeof _ximg!="undefined"&&m(_ximg)){var e=h()||"";v(_ximg,function(y,z,x){var A=[c,y,"?t?=",r,"?r?=",escape(document.referrer),"?p?=",escape(window.location.href),"?s?=",u,"?k?=",e,"?u?=",p,"?if?=",s].join("");n(A)})}}})();
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>考试阅卷 - ${pagetitle}</title>
<link type="text/css" rel="stylesheet" href="statics/css/exam.css"/>
<script type="text/javascript" src="statics/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="statics/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="statics/js/popup.js"></script>
<script type="text/javascript" src="statics/js/jquery.form.js"></script>
<script type="text/javascript" src="statics/js/exam.js"></script>
<script type="text/javascript" src="statics/js/jquery.nicescroll.min.js"></script>
<%plugin(layer) %>
<%include(_limitkey.aspx) %>
</head>
<script type="text/javascript">
    function nice() {
        window.niceObj = $(".rnlt2").niceScroll({ cursorcolor: "#6E737B", cursoropacitymin: 1, cursorwidth: "6px", cursorborder: "none", cursorborderradius: "4px" });
    }

    function niceback(b) {
        if (!window.ascrail2000) return;
        if (b) {
            window.ascrail2000.css({
                "position": "fixed",
                "z-index": '9999',
                'top': '235px'
            });
        } else {
            window.ascrail2000.css({
                "position": "absolute",
                "z-index": '9999',
                'top': '305px'
            });
        }
        return true;
    }

    $(function () {
        var ipt = $("label input");
        ipt.parent().removeClass("sd");
        ipt.filter(":checked").parent().addClass("sd");
        layer.use('extend/layer.ext.js');//弹出层插件
        nice();
        window.ascrail2000 = $('#ascrail2000');
        $('.rnav').mouseover(function () {
            niceback($('.hbx1').hasClass("fixed"));
        });
    });
</script>
<body>
<div class="hbx1">
  <div class="hbx2">
    <div class="hbx3"><img src="statics/images/top.jpg"/></div>
    <div class="hbx4">
      <div class="fr">
         <a href="javascript:;" class="btnq1" onclick="window.print()">打印</a>
        <a href="#" class="btnq2" onclick="ExamReadSave();return false;">提交阅卷</a>
      </div>
      <span class="tab3 tab3a">考试阅卷</span> </div>
  </div>
</div>
<div class="hbx2">
  <div class="rnav">
    <div class="rnavhd">试题卡</div>
    <div class="rnavct">
      <div class="mb10"> 试题数：${examresult.questions}题<br/>
        错题数：${examresult.wrongs}题<br/>
        未答数：${examresult.unanswer}题<br/>
        总得分：${examresult.score}分 </div>
      <ul class="rnlt1 fc">
        <li><span class="bg1"></span>正确题</li>
        <li><span class="bg2"></span>错误题</li>
        <li><span class="bg3"></span>未答题</li>
        <li><span class="bg4"></span>问答题</li>
      </ul>
      <ul class="rnlt2 fc" tabindex="5000" style="overflow-y: hidden; outline: none;height:385px;">
        <%set (int){en}=0  %>
        <%loop (ExamResultTopic) examtopic examtopicresultlist %>
        <%loop (ExamQuestion) item GetQuestionList(examtopic) %>
          <%set {en}=en+1  %>
          <%if item.type==5%>
          <li><a href="#${en}" id="fc_${en}" class="bg4">${en}</a></li>
          <%else if item.useranswer=="" %>
          <li><a href="#${en}" id="fc_${en}" class="bg3">${en}</a></li>
          <%else if item.userscore>0 %>
          <li><a href="#${en}" id="fc_${en}" class="bg1">${en}</a></li>
          <%else%>
          <li><a href="#${en}" id="fc_${en}" class="bg2">${en}</a></li>
          <%/if %>
        <%/loop %>
        <%/loop %>
      </ul>
     <script type="text/javascript">
         $(function () {
             $('.rnlt2 a').click(function () {
                 var top = $($(this).attr('href')).offset().top + 120;
                 $(window).scrollTop(top);
                 return false;
             });
         });
	</script>
    </div>
    <div class="rnavft"></div>
  </div>
  <div class="wp wpa">
    <div class="wp2">
      <div class="wp3">
        <div class="wp4 wp4_none">
          <h1 class="t" style="text-align:center;">${examresult.examname}</h1>
          <div class="fc box">
            <div class="fl">
              <div class="img-sprite icon_count">
                <p class="count1">考生分数</p>
                <p class="count2">${examresult.score}</p>
              </div>
            </div>
            <div class="fr">
              <p class="m">考生：${examresult.IUser.username}，考试时间：${fmdate(examresult.endtime,"yyyy-MM-dd HH:mm:ss")}
                  <%if examresult.status==0 %>
                  ，尚未完成答卷。
                  <%else if examresult.status==1  %>
                  ，尚未阅卷。
                  <%else if examresult.status==2  %>
                  ，已阅卷。
                  <%/if %>
              </p>
              <table>
                <tr class="t">
                  <td>分数组成</td>
                  <td>全体排名</td>
                  <td>答卷耗时</td>
                  <td>错题数量</td>
                </tr>
                <tr>
                    <td>客观题${examresult.score1}分 + 主观题${examresult.score2}分</td>
                    <td>${display}</td>
                    <td>${(examresult.utime/60+1)}分钟</td>
                    <td>${examresult.wrongs}题</td>
                  </tr>
                  <tr class="t">
                    <td>试卷满分</td>
                    <td>及格分数</td>
                    <td>最高分数</td>
                    <td>平均分数</td>
                  </tr>
                  <tr>
                    <td>${examresult.total}分</td>
                    <td>${examresult.passmark}分</td>
                    <td>${maxscore}分</td>
                    <td>${avgscore}分</td>
                  </tr>
                  <tr>
                    <td colspan="4" style="text-align:left;width:100%">&nbsp;&nbsp;&nbsp;&nbsp;
                        <%if examresult.exnote!="" %> 评语：${examresult.exnote}，<%/if %>
                             获得经验值为${examresult.exp}。
                    </td>
                  </tr>
              </table>
            </div>
          </div>
          <!--head end -->
          <form id="testProcessForm" name="testProcessForm" action="" method="post">
            <input type="hidden" name="resultid" value="${resultid}"/>
            <div class="tit1 pd1">本次考试评语：</div>
            <div class="bx1 pd1m mb20">
                <div>
                <textarea class="jdt" name="exnote" id="exnote">${examresult.exnote}</textarea>
                </div>
            </div>
            <a id="1"></a>
            <%set (int){topicnum}=0 %>
            <%loop (ExamResultTopic) examtopic examtopicresultlist %>
            <%if examtopic.questions>0 %>
            <div class="tit1 pd1"></div>
            <div class="tit1 pd1">${examtopic.title}<span class="ft3">(共${examtopic.questions}题，每题${examtopic.perscore}分，共${(examtopic.questions*examtopic.perscore)}分)</span></div>
            <%loop (ExamQuestion) item GetQuestionList(examtopic) %>
            <%set {topicnum}=topicnum+1 %>
            <%if item.type==1 %>
            <%--单选题--%>
            <dl class="st tm_zt_0">
              <dt class="nobold"><span class="num" id='${(topicnum+1)}'>${topicnum}</span>
                <p>${item.title}<%if examtopic.type==6 %>（单选）<%/if %></p>
              </dt>
              <dd>
                ${Option(item.option,item.ascount,item.optionlist)}
              </dd>
              <dd class="dAn fc">
               <span class="ft4 fl">考生答案：</span> 
               <span class="fl w2 bx7">
                <%loop (string) str answerarr %>
                <%if {str._id}<=item.ascount %>
                <label><input type="radio" name="answer_${item.id}" <%if str==item.useranswer %> checked="checked" <%/if %> value="${str}" disabled="disabled">${str}</label>
                <%/if %>
                <%/loop%>
                </span>
              </dd>
              <dd>
                <div class="mb10">正确答案：<span class="ft11 ftc1">${item.answer}</span></div>
                <%if item.explain!="" %>
                <div class="mb10">答案解析：
                  ${item.explain}
                </div>
                <%/if %>
                <div class="mb10">本题得分：
                  <span class="bx5 dis_ib">
                  <input type="text" id="score_${item.id}" name="score_${item.id}" value="${item.userscore}" class="ipt"/>
                  <span class="bx5a">分</span></span>
                </div>
              </dd>
            </dl>
            <%else if item.type==2 %>
            <%--多选题--%>
            <dl class="st tm_zt_0">
              <dt class="nobold"><span class="num" id='${(topicnum+1)}'>${topicnum}</span>
                <p>${item.title}<%if examtopic.type==6 %>（多选）<%/if %></p>
              </dt>
              <dd>
                ${Option(item.option,item.ascount,item.optionlist)}
              </dd>
              <dd class="dAn fc"><span class="ft4 fl">考生答案：</span> 
               <span class="fl w2 bx7">
                <%loop (string) str answerarr %>
                <%if {str._id}<=item.ascount %>
                <label><input type="checkbox" name="answer_${item.id}" <%if ischecked(str,item.useranswer) %> checked="checked" <%/if %> value="${str}" disabled="disabled">${str}</label>
                <%/if %>
                <%/loop%>
                </span>
              </dd>
              <dd>
                <div class="mb10">正确答案：<span class="ft11 ftc1">${item.answer}</span></div>
                <%if item.explain!="" %>
                <div class="mb10">答案解析：
                  ${item.explain}
                </div>
                <%/if %>
                <div class="mb10">本题得分：
                  <span class="bx5 dis_ib">
                  <input type="text" id="score_${item.id}" name="score_${item.id}" value="${item.userscore}" class="ipt"/>
                  <span class="bx5a">分</span></span>
                </div>
              </dd>
            </dl>
            <%else if item.type==3 %>
            <%--判断题--%>
            <dl class="st tm_zt_0">
              <dt class="nobold"><span class="num" id='${(topicnum+1)}'>${topicnum}</span>
                <p>${item.title}</p>
              </dt>
              <dd class="dAn fc"><span class="ft4 fl">考生答案：</span> 
               <span class="fl w2 bx7">
                 <%if item.useranswer=="Y"%>
                 <label><input type="radio" name="answer_${item.id}" checked="checked" value="Y" disabled="disabled">正确</label>
                 <%else %>
                 <label><input type="radio" name="answer_${item.id}" value="Y" disabled="disabled">正确</label>
                 <%/if %>
                 <%if item.useranswer=="N"%>
                 <label><input type="radio" name="answer_${item.id}" checked="checked" value="N" disabled="disabled">错误</label>
                 <%else %>
                 <label><input type="radio" name="answer_${item.id}" value="N" disabled="disabled">错误</label>
                 <%/if %>
                </span>
              </dd>
              <dd>
                <div class="mb10">正确答案：
                <span class="ft11 ftc1">
                <%if {item.answer}=="Y"  %>
                正确
                <%else if {item.answer}=="N" %>
                错误
                <%/if %>
                </span></div>
                <%if item.explain!="" %>
                <div class="mb10">答案解析：
                  ${item.explain}
                </div>
                <%/if %>
                <div class="mb10">本题得分：
                  <span class="bx5 dis_ib">
                  <input type="text" id="score_${item.id}" name="score_${item.id}" value="${item.userscore}" class="ipt"/>
                  <span class="bx5a">分</span></span>
                </div>
              </dd>
            </dl>
            <%else if item.type==4 %>
            <%--填空题--%>
            <dl class="st tm_zt_0">
              <dt class="nobold"><span class="num" id='${(topicnum+1)}'>${topicnum}</span>
                <p>${FmAnswer(item.title,item.id,item.useranswer)}</p>
              </dt>
              <dd>
                <div class="mb10">正确答案：
                <span class="ft11 ftc1">
                ${item.answer}
                </span></div>
                <%if item.explain!="" %>
                <div class="mb10">答案解析：
                ${item.explain}
                </div>
                <%/if %>
                <div class="mb10">本题得分：
                  <span class="bx5 dis_ib">
                  <input type="text" id="score_${item.id}" name="score_${item.id}" value="${item.userscore}" class="ipt"/>
                  <span class="bx5a">分</span></span>
                </div>
              </dd>
            </dl>
            <%else if item.type==5 %>
            <%--问答题--%>
            <dl class="st tm_zt_0">
              <dt class="nobold"><span class="num" id='${(topicnum+1)}'>${topicnum}</span>
                <p>${item.title}</p>
              </dt>
              <dd>
                <div class="ft4">考生答案</div>
                <textarea class="jdt" readonly="readonly" name="answer_${item.id}">${item.useranswer}</textarea>
              </dd>
              <dd>
                <div class="mb10">正确答案：
                <span class="ft11 ftc1">
                ${item.answer}
                </span></div>
                <%if item.explain!="" %>
                <div class="mb10">答案解析：
                ${item.explain}
                </div>
                <%/if %>
                <div class="mb10">本题得分：
                  <span class="bx5 dis_ib">
                  <input type="text" id="score_${item.id}" name="score_${item.id}" value="${item.userscore}" class="ipt"/>
                  <span class="bx5a">分</span></span>
                </div>
              </dd>
            </dl>
            <%else if item.type==6 %>
            <%--打字题--%>
            <dl class="st tm_zt_0">
              <dt class="nobold"><span class="num" id='${(topicnum+1)}'>${topicnum}</span>
                <p>${item.title}</p>
              </dt>
              <dd>
                <div class="ft4">考生答案</div>
                <textarea class="jdt" readonly="readonly" name="answer_${item.id}">${item.useranswer}</textarea>
              </dd>
              <dd>
                <%if item.explain!="" %>
                <div class="mb10">答案解析：
                  ${item.explain}
                </div>
                <%/if %>
                <div class="mb10">本题得分：
                  <span class="bx5 dis_ib">
                  <input type="text" id="score_${item.id}" name="score_${item.id}" value="${item.userscore}" class="ipt"/>
                  <span class="bx5a">分</span></span>
                </div>
              </dd>
            </dl>
            <%/if %>
            <%/loop %>
            <%/if %>
            <%/loop %>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
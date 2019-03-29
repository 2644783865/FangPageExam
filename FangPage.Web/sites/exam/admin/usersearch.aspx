﻿<%using(FangPage.WMS.Model) %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="content-type"/>
<title>查询用户</title>
<link rel="stylesheet" type="text/css" href="${adminpath}/css/admin.css"/>
<link href="${adminpath}/css/datagrid.css" rel="stylesheet" type="text/css"/>
<%plugin(jquery)%>
<script type="text/javascript" src="${adminpath}/js/admin.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btnok").click(function () {
            $("#frmpost").submit();
        });
    })
</script>
</head>
<body>
  <form id="frmpost" method="post" name="frmpost" action="">
  <table class="ntcplist">
    <tr>
      <td>
        <input id="keyword" name="keyword" value="${keyword}" type="text" />
        <input type="button" name="btnok" value="搜索" id="btnok" class="adminsubmit_short"/>
     </td>
    </tr>
    <tr>
      <td>
      <table class="datalist" border="1" rules="all" cellspacing="0">
          <tbody>
            <tr class="thead">
              <td width="30"><input id="checkall" name="checkall" type="checkbox"/></td>
        	  <td>用户名</td>
        	  <td>姓名</td>
            </tr>
            <%loop (UserInfo) item userlist %>
            <tr class="tlist" onmouseover="curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'" onmouseout="this.style.backgroundColor=curcolor">
               <td>
                   <input id="chkid" name="chkid" data="" value="${item.id}" type="checkbox"/>
               </td>
               <td>${item.username}</td>
               <td>${item.realname}</td>
            </tr>
            <%/loop %>
          </tbody>
        </table>
       </td>
    </tr>
  </table>
  </form>
</body>
</html>

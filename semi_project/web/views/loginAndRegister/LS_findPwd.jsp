<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
int page11 = 5;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" />
 <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet"
    crossorigin="anonymous" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"
    crossorigin="anonymous"></script>
</head>
<style>
        .btn{
            background: black !important;
            border-color:black !important;
            outline: black !important;
        }
        .find_info {
            font-size: 15px;
            line-height: 14px;
            padding-top: 20px;
            text-align: center;
            color: #8e8e8e;
        }
        .form-control{
            position: relative;
            height: 38px;
            margin: 0 0 14px;
            padding: 10px 35px 10px 15px;
            border: solid 1px #dadada;
            background: #fff;
        }
        .findPwd{
            font-size: 13px;
            line-height: 14px;
            padding-top: 20px;
            text-align: center;
            color: #8e8e8e;
        }
        #closelogin{
            color:white !important; 
            text-decoration: none;
        }
    </style>
<body>

<article class="container">
        
        <div class="row">
            <div class="col">
            </div>
        <div class="col-6">
              <br>
            <div class="page-header" align='center'>
                  <div><a href="home.html"><img src="<%=request.getContextPath()%>/image/logo2.png"></a></div>
            </div>
            <div class>
                <form role="form" action="LS_login.html" method="post" onsubmit="return validate();">
                <div class="form-group"><br><br>
                    <label class="findPwd">비밀번호 찾기</label><hr>
                    <div class="form-group">
                        <label for="userId">아이디</label>
                        <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해 주세요" >
                    </div>
                    <label for="userName">이름</label>
                    <input type="text" class="form-control" id="userName" name="userName" placeholder="이름을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="email">이메일</label>
                        <input type="text" class="form-control" id="email" name="email" placeholder="이메일 주소를 입력해주세요" >
                    </div>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col">
                            <br><br>
                            <div class="form-group"><div class="form-group"><input type="submit" value="인증하기" class="btn btn-primary btn-block" id="certify"></div></div>
                        </div>
                        <div class="col"></div>
                    </div>
                    
                    <br><br><br><br>
                    
                </form>
            </div>
        </div>
                      
        <div class="col">
        </div>
        </div>
        </article>
        
<!--footer-->
      <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid">
          <div class="d-flex align-items-center justify-content-between small">
            <div class="text-muted">Copyright &copy; Your Website 2019</div>
            <div>
              <a href="#">Privacy Policy</a>
              &middot;
              <a href="#">Terms &amp; Conditions</a>
            </div>
          </div>
        </div>
      </footer>
            
      <script>
            function validate(){
                var reg = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;


            // 비밀번호 찾기 함수
            if($("#userName").val().trim().length == 0 && $("#email").val().trim().length == 0&&$("#userId").val().trim().length==0)
            {
                alert("아이디와 이름 그리고 이메일을 입력해주세요");
                $("#userName").focus();
                return false;
            }
            if($("#userId").val().trim().length==0) 
            {
            alert('아이디를 입력하세요');
            $("#userId").focus();
            return false;
            }

            if($("#userName").val() == '')
            {
            alert("이름을 입력해주세요");
            $("#userName").focus();
            return false;
            }
            if($("#email").val().trim().length==0)
            {
            alert('이메일을 입력하세요');
            $("#email").focus();
            return false;
            }
            if(reg.test($("#email").val()) == false) 
            {
            alert('이메일 양식을 확인 해주세요');
            $("#email").focus();
            return false;
            }
            else {
                alert('임시 비밀번호를 이메일로 전송하였습니다');
                return true;
            }
            }
           </script>
      
 <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
      </div>
</body>
</html>
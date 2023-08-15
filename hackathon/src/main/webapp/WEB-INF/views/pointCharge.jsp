<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome BookMall</title>
<link rel="stylesheet" href="/resources/css/order.css">
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 
</head>
<body>


<div class="container" style="margin-top: 100px;">
    <h2>í¬ì¸í¸ ì¶©ì </h2>

    <div class="btn-group" >
        <form action="/member/pointCharge" method="post" name="updatePoint" th:object="${member}">

            <input type="hidden" name="memberId" id="memberId"th:value="${member.memberId}" >
            <input type="hidden" name="pointType" id="pointType"value="í¬ì¸í¸ ì¶©ì " >

            <div class="form-check">
                <input class="form-check-input" type="radio" id="50000" name="pointPoint" th:value="50000" checked>
                <label class="form-check-label" for="50000">
                    50000p
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="pointPoint" id="100000" th:value="100000">
                <label class="form-check-label" for="100000">
                    100000p
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="200000" name="pointPoint" th:value="200000" checked>
                <label class="form-check-label" for="200000">
                    200000p
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="pointPoint" id="500000" th:value="500000">
                <label class="form-check-label" for="500000">
                    500000p
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="pointPoint" id="1000000" th:value="1000000">
                <label class="form-check-label" for="1000000">
                    1000000p
                </label>
            </div>

            <input class="btn btn-outline-danger" type="button" onclick="requestPay()" value="í¬ì¸í¸ ì¶©ì ">
        </form>
    </div>
</div>

</body>
<script>
    //í¬ì¸í¸ ê°ê³¼ êµ¬ë§¤ìì ì´ë¦, ì´ë©ì¼
    const pointAmount = document.querySelector("input[name='pointPoint']:checked").value;
    const pointBuyerEmail = "[[${member.memberEmail}]]"
    const pointBuyerName = "[[${member.memberName}]]"

    const IMP = window.IMP;
    IMP.init('imp76260272');
    function requestPay() {
        // IMP.request_pay(param, callback) ê²°ì ì°½ í¸ì¶
        IMP.request_pay({ // param
            pg: "kakao",
            pay_method: "card",
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: "í¬ì¸í¸ ì¶©ì ",
            amount: pointAmount,
            buyer_email: pointBuyerEmail,
            buyer_name: pointBuyerName,

        }, function (rsp) { // callback
            if (rsp.success) {
                const msg = 'ê²°ì ê° ìë£ëììµëë¤.';
                alert(msg);
                updatePoint.submit();

            } else {
                const msg = 'ê²°ì ì ì¤í¨íììµëë¤.';
                alert(msg);
            }
        });
    }
</script>
</html>
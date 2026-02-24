<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>첫번째 포트폴리오</title>
    <style>
        /* 2단계: CSS 설정 */
        /* 전체 선택자 : 전체 태그가 공통으로 적용되어질 값을 선택할 때 사용.  */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #f6f6fa;
            color: #2f3640;
            font-family: 'Malgun Gothic', sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 50px;
        }
        /* [2] 프로필 카드: Flexbox로 내부 정렬 */
        #profile-card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            display: flex; /* 가로 정렬의 시작 */
            flex-direction: column;
            gap: 30px;     /* 부품 간의 간격 */
            align-items: center;
            width: 100%;
            max-width: 600px;
        }

        /* [3] 이미지 영역 꾸미기 */
        .photo-area {
            max-width: 120px;
            max-height: 120px;
            background: #dcdde1;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
        }

        .photo-area img {
            max-width: initial;
            max-height: initial;
            border-radius: 50%;
        }

        /* [4] 버튼 스타일 */
        button {
            background: #448aff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <header>
        <h1>My Coding Journey</h1>
    </header>
    <%-- 상세 내용 --%>
    <main>
        <article id="profile-card">
            <div class='photo-area'>
                <img src="images/image0.jpg" width="120px" height="120px" alt="Photo">
            </div>
            <div class='info-area'>
                <h2>홍준표</h2>
                <p>집가고싶다</p>
                <button id='msg-btn'>오늘의 한마디</button>
                <p id='display-msg'></p>
            </div>
        </article>
        <br>
        <section id="skills">
            <h3>My Skill</h3>
            <ul>
                <li>HTML5 / CSS</li>
                <li>JAVA / JSP / Spring</li>
                <li>JavaScript</li>
                <li>Oracle / MySQL / MariaDB</li>
            </ul>    
    </main>
    <br>
    <footer>
        <p>&copy; 2026 joonpyo's develop portfolio</p>
    </footer>
    <%-- 3단계: 자바스크립트를 통한 동적 기능 구현 --%>
    <script>
        // 1. HTML에서 동적으로 작업할 요소 찾기
        const msgBtn = document.getElementById('msg-btn');
        const displayArea = document.getElementById('display-msg');

        // 2. 찾은 요소에 적용할 내용 작성
        const messages = [
            "집보내줘",
            "집가고싶어",
            "집으로가게해줘"   
        ]
        // 3. 이벤트를 위한 처리
        msgBtn.addEventListener('click', function() {
            // 랜덤한 메세지 출력
            const randomIndex = Math.floor(Math.random() * messages.length);
            // 화면에 표시(랜덤 값에 인덱스 값을 출력)
            displayArea.innerText = messages[randomIndex];
            // 강조 효과를 위해 색상 변경
            displayArea.style.color = '#448aff';
            // font-weight => fontWeight(캐멀 스타일)
            displayArea.style.fontWeight = 'bold';
        })
    </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }

        #card {
            width: 500px;
            height: 800px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            animation: fadeIn 1s ease-in-out;
        }

        #upper-side {
            position: relative;
            background: #B8EDB5;
            color: #fff;
            text-align: center;
            padding: 30px 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #checkmark {
            width: 60px;
            height: 60px;
            margin-right: 10px; /* Add some space between the checkmark and the text */
        }

        #status {
            color:#000;
            font-size: 28px;
            margin: 0;
        }

        #lower-side {
            padding: 20px;
            text-align: center;
            height: calc(100% - 130px);
            overflow-y: auto;
        }

        #message {
            font-size: 18px;
            margin: 0 0 20px 0;
            color: #333;
        }

        #registration-date {
            font-size: 16px;
            color: #555;
            margin-bottom: 10px;
        }

        #contBtn {
            display: inline-block;
            padding: 12px 24px;
            font-size: 18px;
            color: #fff;
            background: #007bff;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        #contBtn:hover {
            background: #0056b3;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div id="card" class="animated fadeIn">
        <div id="upper-side">
            <!-- SVG 체크 마크 -->
            <svg version="1.1" id="checkmark" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 64 64" xml:space="preserve">
                <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                <g id="SVGRepo_iconCarrier">
                    <path style="fill:#fff;" d="M51.5,8.5c-1.2-1.2-3.2-1.2-4.4,0L22,23.6L17.2,18.8c-1.2-1.2-3.2-1.2-4.4,0c-1.2,1.2-1.2,3.2,0,4.4 l6,6c1.2,1.2,3.2,1.2,4.4,0l24-24C52.7,11.7,52.7,9.7,51.5,8.5z"></path>
                </g>
            </svg>
            <h3 id="status">Success</h3>
        </div>
        <div id="lower-side">
            <p id="registration-date">
                <% 
                    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                    String currentDateTime = sdf.format(new java.util.Date());
                    out.print("가입일시: " + currentDateTime); 
                %>
            </p>
            <p id="message">축하드립니다, 회원가입이 완료되었습니다.</p>
            <a href="#" id="contBtn" onclick="window.close(); return false;">Continue</a>
        </div>
    </div>
</body>
</html>
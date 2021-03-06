<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>이거 언제 다만드냐</title>

    <meta name="author" content="3team">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- 대표 로고 -->
    <link rel="icon" href="../../image/PNG/favicon.png">
    <link rel="apple-touch-icon" href="../../image/PNG/favicon.png">
    
    <link rel="stylesheet" href="../../css/reset.css">
    <link rel="stylesheet" href="../../css/writephoto.css">
    
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />

    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
</head>
<body>
    <!-- body 태그에 직접적으로 css는 부여하지 않는다. 컨테이너를 따로 지정하자. -->
    <!-- 언더바 두개를 사용하는 이유 -->
<div class="body__container"> <!-- body의 일부분인 컨테이너임을 의미 -->

    <!-- HEADER -->
<header class="section">
    <!-- 콘텐츠가 들어가는 inner영역 -->
    <div class="inner clearfix">

        <div class="menu-group float--left">
            
            <div class="logo">
                <img src="../../image/PNG/favicon.png" alt="">
                <a href="./home.html">우리의집</a>
            </div>

        </div>

    </div>
</header>

<section class="section section-write">

    <div class="inner">

        <h2 class="summary__title">💛 질문글 작성 💛</h2>

        <!-- 셀렉트 박스는요 css가 안먹혀요 쓰레기같은 태그예요 -->
        <form class="writeform">

            <div class="select-container">
                
                <!-- 평수, 주거형태 등 셀렉트 폼 -->
                <div class="selectbox select1"> 
                    <!-- label은 선택된걸 보여줌 for속성 이름 마음대로 변경하세용-->
                    <label for="ex_Acreage">평수</label> 
                    	<!-- select id 마음대로 변경하세용 -->
                        <select id="acreage" onchange=""> 
                            <option disabled>선택하세요</option> 
                            <option>10평미만</option> 
                            <option>10평따리</option> 
                            <option>20평따리</option> 
                        </select> 
                </div>
                <!-- 평수, 주거형태 등 셀렉트 폼 -->
                
                <div class="selectbox select2"> 
                    <label for="ex_building">빌라/연립</label> 
                        <select id="building" onchange="">
                            <option disabled>선택하세요</option> 
                            <option>10평미만</option> 
                            <option>10평따리</option> 
                            <option>20평따리</option> 
                        </select> 
                </div>
                
                <div class="selectbox select3"> 
                    <label for="ex_building">빌라/연립</label> 
                        <select id="building" onchange="">
                            <option disabled>선택하세요</option> 
                            <option>프로방스&로맨틱</option> 
                            <option>10평따리</option> 
                            <option>20평따리</option> 
                        </select> 
                </div>

                <div class="selectbox select4"> 
                    <label for="ex_building">빌라/연립</label> 
                        <select id="building" onchange="">
                            <option disabled>선택하세요</option> 
                            <option>프로방스&로맨틱</option> 
                            <option>10평따리</option> 
                            <option>20평따리</option> 
                        </select> 
                </div>

                <div class="selectbox select5"> 
                    <label for="ex_building">빌라/연립</label> 
                        <select id="building" onchange="">
                            <option disabled>선택하세요</option> 
                            <option>프로방스&로맨틱</option> 
                            <option>10평따리</option> 
                            <option>20평따리</option> 
                        </select> 
                </div>
            </div>
			
			<br><br>
   
            <!-- 사진, 글내용 작성폼 사진 추가 버튼 클릭시 이 태그가 복사되어 추가됨 -->
            <div class="selectform1" title="write-form" style="position: relative;">

				<!-- 사진 업로드, 글내용 작성폼 -->
                <div class="write-contents">

					<!-- 이미지 업로드 컨테이너(div) 박스 -->
                    <div class="img-container">
                    	
                    	<!-- 이미지 업로드 폼. 이미지 업로드시 hide()됨 이미지 삭제되면 다시 show()됨 -->
                        <div class="image-upload-wrap">
                        
                        	<!-- 이미지 업로드 하는 input 폼 -->
                            <input class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" />
                            
 							<!-- 이미지 업로드 텍스트를 표시하는 폼 -->
                            <div class="drag-text">
                                <h3>이미지 업로드</h3>   
                            </div>
                        </div>
                
                		<!-- 이미지 업로드시 업로드된 사진이 보이는 폼. 이미지 업로드시 show()됨 삭제시에는 hide()됨.-->
                        <div class="file-upload-content">
                
                            <div class="imgBox">
                            
                            	<!-- 업로드된 이미지가 보일 img태그 -->
                                <img class="file-upload-image" src="#" alt="your image" />
                
                				<!-- 이미지 삭제 버튼 -->
                                <button type="button" onclick="removeUpload(this)" class="remove-image"><i class="fas fa-times"></i></button>
                            </div>    
                
                        </div>
                    </div>

				

                </div>
            
            	<!-- 게시글 번호 표시 -->
                <p class="number" onclick="">1</p>

            </div>
            <!-- 여기까지가 사진, 글내용 작성폼 사진 추가 버튼 클릭시 이 태그가 복사되어 추가됨 -->
            
            <!-- 위에 복제한 태그가 추가될 곳 -->
            	<!-- 글 내용 작성 폼 -->
            	<span>작성할 내용</span>
                    <textarea class="input--text comment" name="" id="" cols="30" rows="10"></textarea>
            
            
            <!-- 글 추가버튼 클릭시 위에 주석 내용 위치에 추가됨 -->
            <button type="button" class="btn addform" onclick="writeAdd(this)">사진 추가하기</button>
	
			
	
            <div class="formbtn-group">
                
                <input type="submit" class="btn complete" value="작성완료">
                <input type="button" class="btn previous" value="이전으로">

            </div>

        </form>

    </div>

</section>

</div>

<!-- 팝업창 얘는 어디에 위치해있든 상관없음. position이 화면전체임. -->
<div class="modal-container">
    <div class="modal-bg">
        <div class="modal">

            <div class="popup-title">
            </div>

            <div class="popupbtn-group">
                <button class="btn-cancel">확인</button>
            </div>
        </div>
    </div>
</div>

    <script src="../../js/writephoto.js"></script>
</body>
</html>













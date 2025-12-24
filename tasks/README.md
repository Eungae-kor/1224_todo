1. 페이지 나누기
    1. HomePage
    2. DetailPage

2. 페이지별 레이아웃 나누기
    1. HomePage
        1. AppBar : "해진's Task", 중앙정렬
        2. NoToDoBox : "아직 할 일이 없음" - 할일이 추가되면 이미지는 사라지도록.
        3. AddBotton : 빨간색 원형 버튼, 흰색 + 기호
            - BottomSheet : 제목 입력창(TextField), 상세내용 입력 버튼, 상세내용 입력창(TextField), 즐겨찾기 버튼, 저장 버튼, 키보드
        4. ToDoViewBox : ToDoEntry를 인자로 받는 위젯
            - Icon(circle & check_circle)
            - 취소선 상태 적용
            - Icon(star & star_border)
    2. DetailPage
        1. AppBar
            - BackButton
            - FavoriteButton
        2. ToDoEntry를 받아서 화면 콘텐츠 채우기

3. 각 페이지 위젯 만들기
    - lib
        - home
            - home_page.dart
            - widgets
        - detail
            - detail_page.dart  
            - widgets
        - widgets
##  스프링 프레임워크 스터디2
### <a href = "https://github.com/leedongjoon121/SpringFramework_study">스프링프레임워크 스터디1</a>의 upgrade version 입니다.

### name :  Dongjoonlee 
### nation : south korea
### date of birth : 1993.04.06
### univ : gachon university
### email : ehdwns46@naver.com

<br/>

- 본 스터디 내용은 SEOUL WIZ의 Kim Myoung-ho (Nickname :블스)님의 강의 내용에 기반한 것 입니다.
- 스터디의 내용을 각 단계별 branch에 업로드 하였습니다.
- 각 branch 와 master 상관이 없습니다. 별도의 내용을 정리한 저장소입니다.
- Spring의 기본 부터 개념 및 예제를 각 Branch에서 확인가능 합니다.

<br/>

<hr/>

# SpringFramework Simple SNS

- DB : oracle
- Server : Tomcat 7.0
- Oracle JDBC driver 

* [1. 프로젝트구조](#프로젝트구조)
* [2. 프로젝트디렉터리](#프로젝트디렉터리)
* [3. 환경설정](#환경설정)
* [4. 코드](#코드)
* [5. 결과](#결과)


<hr/>

<br/>
<br/>

# 프로젝트구조

> 클라이언트로 부터 요청이오면 Dispatcher가 해당 요청을 MainController에게 넘기고 MainController는 각각의 세부적인
  컨트롤러에 명령을 할당 DAO를 통해 글쓰기,내용확인,수정,삭제,댓글 등의 기능을 수행하기 위한 DB Connection 및 SQL 쿼리문을 전송
   
## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/architecture.PNG?raw=true)

<br/>

# 프로젝트디렉터리
- Controller 및 DAO, DTO, 각종 view로 구성

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/directory1.PNG?raw=true)

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/directory2.PNG?raw=true)

<br/>

# 환경설정
## pom.xml
- 오라클 JDBC 드라이버를 가져오기 위해 리포지토리를 추가 및, 오라클 jdbc드라이버 dependency 추가

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/pom_xml.PNG?raw=true)

<br/>

## Server : context.xml
- Oracle DB와 연동하기 위해 Resource 추가
- Server context는 보안상 업로드 하지 않았다 => 각자 본인의 Server 환경을 설정해주면된다

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/server_context_xml.png?raw=true)

<br/>

# 코드

<br/>


## DTO
- 데이터 구조 셋팅, 각종 getter,setter 메서드

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/DTO.PNG?raw=true)

<br/>


## DAO
- Oracle DB Connection 설정
- 각종 글쓰기, 수정, 삭제, 댓글 등의 해당 메서드
- 각종 sql 쿼리문

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/DAO.PNG?raw=true)

<br/>


## MainController
- @RequestMapping을 통해 url 매핑
- 각종 Command 객체 구현 및 Model 구현 (request 활용)   

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/controller.PNG?raw=true)

<br/>

## ListCommand
- 글의 List를 모두 보여주는 Command

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/List_command.PNG?raw=true)


<br/>

## WriteCommnad
- 글을 작성하는 Command

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/write_command.PNG?raw=true)


<br/>

## List View(list.jsp)
- 모든 글의 list를 보여주는 view

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/list_jsp.PNG?raw=true)


<br/>

# 결과

## list
- 사용자별 번호,이름,제목,날짜,조회수 등을 확인할 수있다.

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/list_view.PNG?raw=true)

<br/>

## write 
- 사용자별 제목,이름,내용 등을 작성할 수있다.

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/write.PNG?raw=true)

<br/>

## modify
- 사용자가 작성한 글을 수정,삭제, 답변 할수있다.

## ![사진](https://github.com/leedongjoon121/SpringFramework_study/blob/master/document_img/modify.PNG?raw=true)


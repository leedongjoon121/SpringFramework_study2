##  스프링 프레임워크 스터디2
### <a href = "https://github.com/leedongjoon121/SpringFramework_study">스프링프레임워크 스터디1</a>의 upgrade version 입니다.
- spring-jdbc를 이용하여 기존의 버전보다 반복되는 코드를 줄였습니다.
- 프로젝트의 개념이 아닌 스프링 프레임워크를 학습한 내용을 정리한 것입니다.

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

> 기존의 버전1은 DAO객체를 이용해 쿼리를 날릴때 마다 매번 같은 동작을 반복해서 사용했습니다.
  (드라이버로드,커넥션 및 DB연결,쿼리,자원해제)
- 이런 반복적인 작업을 Spring-jdbc기반의 jdbcTemplate을 구현하여 간단하게 처리

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/theory1.PNG?raw=true)

<br/>

# Spring빈을 이용해 코드 간소화
- spring 설정 파일에서 jdbctemplate 빈을 만들어서 datasource 빈을 만들고 내가 필요한 java파일에서 가져다 쓰는 원리
- 특히, DAO클래스가 많이 줄어들게 된다.

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/theory2.PNG?raw=true)

# 프로젝트디렉터리
- Controller 및 DAO, DTO, 각종 view로 구성

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/directory1.PNG?raw=true)

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/directory2.PNG?raw=true)

<br/>

# 환경설정
## pom.xml
- 오라클 JDBC 드라이버를 가져오기 위해 리포지토리를 추가 및, 오라클 jdbc드라이버 dependency 추가
- jdbc 디펜던시를 추가 해서 spring jdbc를 사용한다.

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/pom_xml.PNG?raw=true)

<br/>

## DataBase에 접근하기 위해 dataSource빈을 구현 : servlet-context.xml
- jdbc 드라이버 클래스추가, url 추가, username & password추가
- jdbc Template빈 생성 => dataSource 참조

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/servlet-context.PNG?raw=true)

<br/>

# 코드

<br/>


## DTO
- 데이터 구조 셋팅, 각종 getter,setter 메서드

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/BDto.PNG?raw=true)

<br/>


## DAO
- 각종 글쓰기, 수정, 삭제, 댓글 등의 해당 메서드
- 각종 sql 쿼리문

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/BDao.PNG?raw=true)

<br/>

## 기존 버전1과 비교
- 코드의 양이 많이 간소화됨

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/theory3.PNG?raw=true)

<br/>

## JDBC template을 효율적으로 사용하기 위한 클래스
- template이 필요한 곳에 할당

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/Constant.PNG?raw=true)

<br/>

## MainController
- JDBC Template을 추가 하였고, @Autowired를 통해 자동으로 빈을 생성해서 dataSource 할당
- @RequestMapping을 통해 url 매핑
- 각종 Command 객체 구현 및 Model 구현 (request 활용)   

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/Main_Controller.PNG?raw=true)

<br/>

## WriteCommnad
- 글을 작성하는 Command (버전1과 유사)

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/BWriteCommand.PNG?raw=true)


<br/>

## DeleteCommand
- 글을 삭제하는 Command(버전1과 유사)

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/BDeleteCommand.PNG?raw=true)


<br/>

# 결과

## list
- 사용자별 번호,이름,제목,날짜,조회수 등을 확인할 수있다. (버전1과 유사)

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/result_list.PNG?raw=true)

<br/>

## write 
- 사용자별 제목,이름,내용 등을 작성할 수있다. (버전1과 유사)

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/result_write.PNG?raw=true)

<br/>

## modify
- 사용자가 작성한 글을 수정,삭제, 답변 할수있다. (버전1과 유사)

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/master/document_img/result_modify.PNG?raw=true)


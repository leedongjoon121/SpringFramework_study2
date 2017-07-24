# Spring Mybatis
- Mabatis를 이용하여 간단하게 데이터를 CRUD할 수 있다.
- 데이터베이스에 접근 할때 복잡한 커넥션 과정이 많이 감소 되고 Mabatis가 알아서 처리해줌

<br/>

<hr/>

## 마이바티스를 사용하려면

### 1. Mabatis 라이브러리를 다운받는다. 
- pom.xml에서 dependencies를 이용하여 mabatis 라이브러리를 다운 받는다.

### 2. Spring 설정 파일(servlet-context.xml)에서 sqlSessionFactoryBean을 생성

### 3. xml 파일 생성 (쿼리문) 
- namespace에 주의 하며, 마이바티스공식 홈페이지 doc에 좋은 <a href = "http://www.mybatis.org/mybatis-3/ko/sqlmap-xml.html">예제</a> 에 있음

### 4. 사용시에는 sqlSession 객체를 생성하여 씀
- 각 세션에서 sqlSession.getMapper를 통해 xml을 구해온다.

<br/>

## 프로젝트 디렉터리

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/directory1.PNG?raw=true)

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/directory2.PNG?raw=true)

<br/>

## pom.xml => Mabatis 라이브러리를 다운 
- 필요한 라이브러리를 다운 받는다.

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/pom_xml_dependency_add.PNG?raw=true)

<br/>

## Spring 설정 파일(servlet-context.xml)에서 sqlSessionFactoryBean을 생성
- 기존의 jdbcTemplate을 따로 생성 하지 않고 sqlSessionFactory에서 처리 해준다.
- DB 커넥션에 관련된 dataSource 설정

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/servlet-context_xml.PNG?raw=true)

<br/>

## xml 파일 생성 (쿼리문) 
- sql 쿼리문을 생성 => select , insert , delete 태그문을 이용해 생성
- 값에 접근할 때는 #{param1} 의 규격으로 접근

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/IDao_xml.PNG?raw=true)

<br/>

## ContentDto
- DO 클래스

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/ContentDto_java.PNG?raw=true)

<br/>

## IDao  Interface
- dao 메서드에 해당하는 인터페이스 정의

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/IDao_java.PNG?raw=true)

<br/>

## HomeController1

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/HomeController1_java.PNG?raw=true)

- 기존의 전역 DAO 객체를 이용하지 않는다.
- SqlSession 객체를 정의하여 servlet-context.xml에서 정의한 사항을 매핑
- @Autowired를 사용하기 때문에 별도의 setter 메서드가 필요없다.

<br/>

## HomeController2
- @RequestMapping을 통해 url별로 할당
- sqlSession.getMapper()를 통해 Dao클래스 매핑
- 사용할 로직별로 model 객체에 매핑

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/HomeController2_java.PNG?raw=true)

## Result => list확인

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/Result1.PNG?raw=true)

<br/>

## Result => 글 작성 확인

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/Result2.PNG?raw=true)

<br/>



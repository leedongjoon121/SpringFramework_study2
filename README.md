# Spring Mybatis
- Mabatis를 이용하여 간단하게 데이터를 CRUD할 수 있다.
- 데이터베이스에 접근 할때 복잡한 커넥션 과정이 많이 감소 되고 Mabatis가 알아서 처리해줌

## 마이바티스를 사용하려면

1. Mabatis 라이브러리를 다운받는다. 
- pom.xml에서 dependencies를 이용하여 mabatis 라이브러리를 다운 받는다.

2. Spring 설정 파일(servlet-context.xml)에서 sqlSessionFactoryBean을 생성

3. xml 파일 생성 (쿼리문) 
- namespace에 주의 하며, 마이바티스공식 홈페이지 doc에 좋은 <a href = "http://www.mybatis.org/mybatis-3/ko/sqlmap-xml.html">예제</a> 에 있음

4. 사용시에는 sqlSession 객체를 생성하여 씀
- 각 세션에서 sqlSession.getMapper를 통해 xml을 구해온다.

<br/>

## 프로젝트 디렉터리

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/directory1.PNG=true)

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/mabatis/document_img/directory2.PNG=true)


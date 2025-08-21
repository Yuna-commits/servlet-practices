## Eclipse Maven War Project 만들기

### 1. war packaging maven project 생성

### 2. pom.xml 수정

1) properties -> java version 21

``` xml
<properties>
	<project.build.sourceEncoding>utf-8</project.build.sourceEncoding>
	<maven.compiler.source>21</maven.compiler.source>
	<maven.compiler.target>21</maven.compiler.target>
</properties>
```
	
2) Dependency(Servlet API, JSP API) 추가

```xml
<dependencies>
	<!-- servlet api -->
	<dependency>
		<groupId>jakarta.servlet</groupId>
		<artifactId>jakarta.servlet-api</artifactId>
		<version>5.0.0</version>
		<scope>provided</scope>
	</dependency>
		
	<!-- jsp api -->
	<dependency>
		<groupId>jakarta.servlet.jsp</groupId>
		<artifactId>jakarta.servlet.jsp-api</artifactId>
		<version>4.0.0</version>
		<scope>provided</scope>
	</dependency>
</dependencies>
```

3) 패키징 war 파일 이름 사용자 지정

```xml
<build>
	<finalName>파일명</finalName>
</build>
```

4) Update Maven Project

### 3. web.xml 생성

* 프로젝트 우클릭 > Java EE Tools > Generate Deployment Descriptor

* servlet api version이 적용 안되면 web.xml 삭제후 재시도

### 4. Targeted Runtimes 설정

1) 프로젝트 우클릭 > Properties > Targeted Runtimes

2) 프로젝트의 서버 선택
	
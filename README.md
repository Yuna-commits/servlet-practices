### Eclipse Maven War Project 만들기

#### 1. war packaging maven project 생성

#### 2. pom.xml 수정

* properties -> java version 21

``` xml
<properties>
	<project.build.sourceEncoding>utf-8</project.build.sourceEncoding>
	<maven.compiler.source>21</maven.compiler.source>
	<maven.compiler.target>21</maven.compiler.target>
</properties>
```

* 패키징 war 파일 이름 사용자 지정

```xml
<build>
	<finalName>프로젝트명</finalName>
</build>
```

#### 3. web.xml 생성

* Java EE tools > Generate Deployment Descriptor

#### 4. web.xml version 변경

```xml
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns="https://jakarta.ee/xml/ns/jakartaee"
	xsi:schemaLocation="https://jakarta.ee/xml/ns/jakartaee https://jakarta.ee/xml/ns/jakartaee/web-app_5_0.xsd"
	version="5.0">
```
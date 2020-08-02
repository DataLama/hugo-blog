# hugo 기반의 정적 블로그
hugo 기반의 정적 블로그, 테마는 LoveIt을 사용함.

---

## blog 만들기
hugo 기반의 블로그를 만드는데 아래의 자료들을 참고함.
- [hugo기반의 정적블로그 만드는 법](https://github.com/Integerous/Integerous.github.io)
- [LoveIt 테마 공식 사용법](https://hugoloveit.com/theme-documentation-basics)
- [sanghoho의 LoveIt을 사용한 Hugo blog](https://github.com/sanghoho/hugo-blog-main)

### step 1 - 블로그 전용 컨테이너 환경을 만들자
- LoveIt테마를 사용하기 위한 Hugo 버전은 ubuntu의 경우 20:04 버전 부터 사용 가능함.
- ubuntu 도커에 hugo, python, jupyterlab (손쉬운 블로그 편집을 위함.)을 설치함.
- docker build
```bash
docker build --tag datalama/blog:latest .
```
- docker run
```bash
docker run -itd -p 8888:8888 -p 1313:1313 --name blog datalama/blog:latest
```

### step 2 - hugo 블로그 시작하기
- 우선 `hugo new site blog`를 한다.
- hugo blog는 하나의 main repo와 두개의 sub repo가 필요하다.
    - blog main repo
        - blog의 static파일을 생성하는 기본 템플릿
        - `git init` & `git remote` 명령어로 git repository에 추가하자.
    - theme
        - hugo 정적 홈페이지 theme
        - `git submodule`로 blog main repo에 추가.
    - public
        - 실제 호스팅되는 hugo 정적 홈페이지를 저장하는 공간
        - `git remote`로 `github.io`와 연결되어야됨.
        - `git submodule`로 blog main repo에 추가.
- 자세한 내용은 [요기](https://github.com/Integerous/Integerous.github.io) 참고.

### step 3
config.toml을 설정하기. 사용하는 hugo thema에 따라서 config 파일을 세팅하는 것이 중요함.

### step 4 - 다양한 블로그 확장 기능들 사용하기.
여기는 천천히 살펴보자.
- SEO
- 검색
- GA
- 댓글

---

## blog 글쓰기
### post.md 생성
```bash
hugo new posts/{글의 제목}.md
```

### post.md의 yaml 설정
- post.md의 상단에 해당 post의 프론트 디자인과 관련된 부분을 담당함.

```bash
title: "이것은 주제목"
subtitle: "이것은 부제목"
date: 2020-08-02T08:47:46Z
draft: true
description: "나는 디스크립션"

tags: ["nlp", "deeplearning"]
categories: ["nlp"]
featuredImage: "url 또는 static하위 경로."
```

### 기타 여기 참고하자.
- https://hugoloveit.com/
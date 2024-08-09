# FinalProject_MedicalChatEMR [매디컬 챗 EMR]

## 1. 프로젝트 개요
의료 정보 관리 및 진단을 위한 Chat EMR(Electronic Medical Record) 시스템 개발

## 2. 데이터 수집
- API
- 그림 데이터
- 텍스트 데이터

## 3. 기술 스택
- REST API를 통한 HTTP 요청으로 CRUD 수행 및 Ai진단
- Spring MVC 구조
- JPA를 사용한 데이터베이스 연동
- Spring Boot (STS4, IDEA)
- Cornerstone API (의료 영상 뷰어 구현)

## 4. 팀 구성 및 역할

| 이름 | 역할 |
|------|------|
| 박홍석 | 조장, 발표, DB 관련, API 연동 |
| 임준혁 | DB 관련, API 연동 |
| 정민석 | 전체 디자인 수정, DB 관련 |
| 정현지 | 메인페이지 디자인, DB 관련, API 연동 |
| 현지수 | 채팅 알림 |

## 5. 개발 일정 계획 (총 5주 프로젝트, ~8/23)

### 1주차
- [x] 구체적인 방향성 설정
- [x] 역할 분담 및 필요 기술 학습, 협업 공간 마련(노션, 깃)
- [x] 데이터 수집 및 서비스의 구체적인 타겟과 메인 기능 선정
- [x] 기본 디자인 선택 (대표 색상)
- [x] 채팅, 웹소켓 계획 수립
- [x] 데이터베이스 설계
- [x] 페이지 초안 작성

### 2주차 (7/27 ~ 8/2)
- [x] 메인화면 UI 설정
- [x] UI 세부 역할 분담, Git 학습
- [x] 간호사/의사 업무 정보 수집 및 정리
- [x] 기술 스택 최종 선정
- [x] 개인 파트 학습 시작
- [x] Git 포크 및 PR 완료
- [x] 의사 UI 초안 완성
- [x] 뷰어 기능 DB 저장 진행
- [x] 메인화면 UI 디자인 완성

### 3주차 (8/3 ~ 8/9)
- [x] 스프링부트 학습 (전체 팀원)
- [x] 수간호사 UI ver1 완성 및 수정 (박홍석)
- [x] 수간호사 관련 DB 수정 및 Java 파일 생성 (박홍석)
- [x] UI/UX 개선 (임준혁)
  - 섹션 영역 마우스 오버 시 커서 변경
  - 툴바 버튼 클릭 시 시각적 피드백 추가
  - 이미지 삽입 부분과 텍스트 폰트 크기 동적 조정
- [x] 윈도우 레벨, 흑백 반전, 이동 기능 구현 (임준혁)
- [x] 우측 하단 WW/WC 표시 구현 (임준혁)
- [x] 로그인 페이지 폼 개발 (정민석)
- [x] 회원가입 기능 개발 (정민석)
  - 주소 API 연동
  - 주민등록번호 입력 필드 추가
- [x] 데이터베이스 v4 업데이트 (정현지)
- [x] 진료 차트, 간호사, 의사 데이터베이스 수정 (정현지)
- [x] 병원장 기능 수정 (정현지)
- [x] UUID 로직 공부 (정현지)
- [x] 약품 관련 Open API 키 발급 및 백엔드 구현 시작 (정현지)
- [x] 프로젝트 디렉토리 구조 개선 (정현지)
- [x] 의사 UI 코드화 및 메인 UI 레이아웃 반응형 조정 (현지수)
- [x] 관리자 메인 UI 완성 (현지수)
- [x] 의사, 관리자 기능 구축 (현지수)
- [x] 캘린더에서 "일" 표시 제거 (현지수)
- [x] 관리자 페이지 Ajax 도입 (현지수)
- [x] 직원 생성, 조회, 수정 및 진료 조회 JSP 구축 (현지수)
- [x] 네비게이션 바를 통한 페이지 전환 기능 구현 (현지수)
- [x] MySQL 공유 데이터베이스 생성 (현지수)

<!--
#### 진행 상황
- **박홍석**: Spring Boot 학습, 수간호사 UI v1 완성, DB 구성
- **임준혁**: Spring Boot 학습, secction영역에 마우스를 올렸들때 커서가 변경되게 수정, toolbar에 있는 버튼을 눌렀을때 시각적으로 눌렀다는 표시가 되게 수정, 이미지 삽입되는 부분과 위,아래 test 폰트가 동적으로 사이즈가 줄었다 커지게 수정
- **정민석**: Spring Boot 학습, 로그인/회원가입 페이지 구현 (주소 API 포함)
- **정현지**: Spring Boot 설정 및 학습, DB v4 업데이트, 병원장 기능 수정, UUID 로직 구현
- **현지수**: Spring Boot 학습, 의사 UI 구현, 의사/관리자 기능 구축
-->

#### 예정 작업
- **박홍석**: API 연동, REST 학습, Google Chat GPT API불러오기, 수간호사 UI 완성
- **임준혁**: Spring Boot로, 여러 이미지 불러오는게 됐으므로 나머지 기능들을 구현 하고 지금 약간의 오류들이 있는데 이것들을 고치고 임시로 쓰고 있던 테이블도 수정 할 계획
- **정민석**: 처방전(의약품 api) 따오기 => REST방식 사용, 공공데이터 포럼 사용
- **정현지**: 의사 처방 open api 연동 및 DB 저장, 병원장 직원 추가 기능 구현
- **현지수**: 관리자 페이지 컨트롤러, 서블릿 생성 후 데이터베이스 연동 , 쿼리문 생성해서 직원 추가, 메신저 기능 추가

<!--
### 4주차 ()예정 작업
- **박홍석**: API 연동, REST 학습, 수간호사 UI 완성
- **임준혁**: Spring Boot로 이미지 로딩 해결, 뷰어 기능 구현
- **정민석**: 처방전(의약품 API) 연동 (REST 방식, 공공데이터 포털 사용)
- **정현지**: 병원장 UUID 기능 및 SMTP API 기능 구축
- **현지수**: 웹소켓 학습(메신저 기능), 관리자 UI 구현
-->

<!--
## 6. 진행 중인 작업
- Cornerstone API를 이용한 의료 영상 Viewer 구현
-->
---

이 README는 프로젝트의 진행 상황에 따라 지속적으로 업데이트될 예정입니다.

# TIL (Today I Learned)
## 날짜: 2025-03-21
### 오늘 해야할것
실습 1 - 구구단을 출력하라

실습 2 - 정사각형의 길이를 입력하고 사각형을 출력하라
? 10 // DartPad에서는 n = 10일 때의 출력으로 처리할 것
※ 곽 찬 사각형, 테두리 사각형, / 표시, \ 표시, X 표시 사각형

실습 3 - 년/월/일을 입력하면 요일을 출력하라 예)
입력: 2025-03-11 // var input = ‘2025-03-11’;
출력: 화 // 또는 화요일
 
결과    
 
실습1

![image](https://github.com/user-attachments/assets/ea3cb9da-cd8b-4d4a-8732-3411dc161122)
![image](https://github.com/user-attachments/assets/ba7f4d6a-0c1d-4cc2-b15a-851c809cb687)


실습2

![image](https://github.com/user-attachments/assets/c62f4142-234c-41bb-a9fd-9db6ed28d164)
![image](https://github.com/user-attachments/assets/90d8fec3-973b-446a-9d32-afec1b43f8dd)


실습3

![image](https://github.com/user-attachments/assets/fa8499ad-94ef-4728-bbdc-f091f54f633f)

# TIL (Today I Learned)
## 날짜: 2025-03-29
### 오늘 해야할것
1 - github 관련 명령어 등 공부
### 느낀 점
기본적인 Git 명령어를 배우면서 버전 관리의 중요성을 실감했고, 반복적으로 작업하는 것이 단순하면서도 재미있다는 걸 깨달았다. 처음에는 조금 어렵게 느껴졌지만, 차근차근 익혀가면서 프로젝트 관리의 효율성을 높일 수 있다는 점에서 뿌듯함을 느꼈다.
# GitHub 명령어 사용법 정리

## 1. Git 초기화 및 원격 저장소 연결
- **Git 저장소 초기화**  
  `git init` 명령어를 사용하여 현재 디렉토리를 Git 저장소로 초기화합니다. 이 명령어를 실행하면 `.git`이라는 숨겨진 디렉토리가 생성되며, 이는 Git이 추적할 수 있는 정보들을 담고 있습니다.

- **원격 저장소 연결**  
  `git remote add origin https://github.com/SonYoungJun08/ooo.git` 명령어를 사용하여 원격 저장소를 로컬 저장소에 연결합니다. 여기서 `origin`은 원격 저장소의 이름이며, `https://github.com/SonYoungJun08/ooo.git`는 연결할 GitHub 저장소의 URL입니다.

- **브랜치 이름을 main으로 변경**  
  `git branch -M main` 명령어를 사용하여 현재 브랜치의 이름을 `main`으로 변경합니다. 이는 GitHub에서 기본 브랜치 이름을 `main`으로 설정하는 방법입니다.

## 2. 변경 사항 추가 및 첫 커밋
- **모든 변경 사항 추가**  
  `git add .` 명령어를 사용하여 모든 변경 사항을 스테이지에 추가합니다. 이는 Git에게 어떤 파일을 커밋할지 알려주는 역할을 합니다.

- **첫 커밋**  
  `git commit -m "첫 커밋"` 명령어를 사용하여 커밋을 생성합니다. `-m` 옵션 뒤에 커밋 메시지를 입력하여 변경 사항에 대한 설명을 추가합니다.

## 3. GitHub에 푸시 (Personal Access Token 사용)
- **Personal Access Token으로 인증 및 푸시**  
  `git remote set-url origin https://<your-token>@github.com/SonYoungJun08/ooo.git` 명령어를 사용하여 Personal Access Token을 이용해 원격 저장소에 인증을 수행합니다. 이 후, `git push -u origin main` 명령어로 로컬 저장소의 `main` 브랜치 내용을 원격 저장소에 푸시합니다.

---

## 4. 기타 Git 명령어 사용법

- **안전한 디렉토리 추가**  
  `git config --global --add safe.directory C:/test-file` 명령어로 특정 디렉토리를 안전한 디렉토리로 추가할 수 있습니다. 이 설정은 Git에서 특정 디렉토리를 안전하다고 인식하도록 합니다.

- **기존 원격 저장소 삭제**  
  `git remote remove origin` 명령어를 사용하면 기존에 연결된 원격 저장소를 삭제할 수 있습니다.

- **현재 원격 저장소 확인**  
  `git remote -v` 명령어를 사용하여 현재 연결된 원격 저장소 목록을 확인할 수 있습니다.

- **Git 설정 파일 열기**  
  `notepad .git/config` 명령어를 사용하면 Git 설정 파일을 열 수 있습니다. 이 파일에는 원격 저장소 URL, 사용자 정보 등 Git에 관련된 설정이 포함되어 있습니다.

- **현재 브랜치 상태 확인**  
  `git status` 명령어를 사용하면 현재 브랜치의 상태를 확인할 수 있습니다. 수정된 파일, 추가된 파일 등이 무엇인지 확인할 수 있습니다.

- **원격 저장소에 master 브랜치 존재 여부 확인**  
  `git branch -r` 명령어를 사용하면 원격 저장소에 존재하는 브랜치 목록을 확인할 수 있습니다.

- **동일한 코드가 들어가게 하려면, 하나의 원격 저장소에서 다른 원격 저장소로 코드를 미러링**  
  `git push --mirror https://github.com/user/repo2.git` 명령어를 사용하여 한 원격 저장소에서 다른 원격 저장소로 코드를 미러링할 수 있습니다.

---

## 5. 원격 저장소 관리

- **첫 번째 원격 저장소 추가 (origin)**  
  `git remote add origin https://github.com/user/my-project-repo1.git` 명령어를 사용하여 첫 번째 원격 저장소를 추가합니다.

- **두 번째 원격 저장소 추가 (origin2)**  
  `git remote add origin2 https://github.com/user/my-project-repo2.git` 명령어를 사용하여 두 번째 원격 저장소를 추가합니다.

- **원격 저장소 확인**  
  `git remote -v` 명령어를 사용하여 현재 연결된 원격 저장소를 확인할 수 있습니다.

- **푸시 (기본 원격 저장소)**  
  `git push origin main` 명령어를 사용하여 기본 원격 저장소에 `main` 브랜치의 변경 사항을 푸시합니다.

- **푸시 (두 번째 원격 저장소)**  
  `git push origin2 main` 명령어를 사용하여 두 번째 원격 저장소에 `main` 브랜치의 변경 사항을 푸시합니다.

# TIL (Today I Learned)
## 날짜: 2025-04-05

### 오늘 해야 할 것

- **상단 앱바 타이틀:** "현재 시각"
- **본문 내용:**
- 정 중앙에 현재 시각을 표시
> ※ 현재 시각은 1초마다 갱신되어야 합니다.
>
> ![image](https://github.com/user-attachments/assets/441161da-9e03-418f-aaf8-f62c72d8f834)
>
> # TIL (Today I Learned)
## 날짜: 2025-04-10
### 오늘 해야할것
과제1 - 화면 만들기
![스크린샷 2025-04-10 161545](https://github.com/user-attachments/assets/06dac2f2-09e6-4c3a-b35f-a9a8bbf35607)
과제2 - 계산기 만들기 (화면만)
![스크린샷 2025-04-10 161448](https://github.com/user-attachments/assets/1baf4bfb-f6b4-4173-b72d-a718ce345786)

# TIL (Today I Learned)
## 날짜: 2025-04-19

### 오늘 해야 할 것
위젯의 라이프사이클 확인
화면의 Stack구조 - push(), pop()시 호출되는 메소드 출력
initState()
dispose()
build()
![스크린샷 2025-04-19 225001](https://github.com/user-attachments/assets/14cb14e9-3a1b-4432-96cd-baf37eaed164)


  




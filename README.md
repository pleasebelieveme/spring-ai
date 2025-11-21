# Google Cloud 서비스 계정 키 설정 가이드

## 🔑 서비스 계정 키 파일 준비

이 프로젝트는 Google Cloud 서비스 계정 인증을 사용합니다.\
보안상의 이유로 서비스 계정 키 파일(`gemini-service-account.json`)은
저장소에 포함되어 있지 않습니다.

프로젝트 실행 전에 아래 경로에 키 파일을 생성해주세요:

    src/main/resources/gemini-service-account.json

------------------------------------------------------------------------

## 📄 예시 파일 구조 (샘플 키 -- 실제 키 아님)

아래는 **예시 형식**이며, 실제 키 값을 입력해야 합니다.\
실제 JSON을 그대로 복사해 붙여넣은 뒤 각 항목을 본인의 프로젝트 정보로
수정하면 됩니다.

``` json
{
  "type": "service_account",
  "project_id": "your-project-id",
  "private_key_id": "your-private-key-id",
  "private_key": "FAKE_PRIVATE_KEY_EXAMPLE_DO_NOT_USE",
  "client_email": "your-service-account-email@your-project-id.iam.gserviceaccount.com",
  "client_id": "your-client-id",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/your-service-account-email",
  "universe_domain": "googleapis.com"
}
```

------------------------------------------------------------------------

# 🛠️ Google Cloud 서비스 계정 키 생성 방법

아래 단계에 따라 실제 서비스 계정 키(JSON)를 생성할 수 있습니다.

------------------------------------------------------------------------

## 1️⃣ Google Cloud Console 접속

🔗 https://console.cloud.google.com/

------------------------------------------------------------------------

## 2️⃣ 프로젝트 선택

상단의 **프로젝트 선택 드롭다운**에서\
키를 생성할 프로젝트를 선택하거나 새 프로젝트를 생성합니다.

------------------------------------------------------------------------

## 3️⃣ IAM & Admin 메뉴 이동

왼쪽 메뉴에서:

**IAM 및 관리자 → 서비스 계정(Service Accounts)** 으로 이동합니다.

------------------------------------------------------------------------

## 4️⃣ 서비스 계정 생성

1.  **"서비스 계정 만들기(Create Service Account)" 클릭**
2.  서비스 계정 이름 입력
3.  역할(Role) 선택
    -   예: `Project → Editor` 또는 필요한 최소 권한
4.  생성 완료

------------------------------------------------------------------------

## 5️⃣ 서비스 계정 키 생성

1.  새로 만든 서비스 계정 클릭
2.  상단에서 **"키(Keys)" 탭 선택**
3.  **"키 추가(Add Key)" → "새 키 생성(Create new key)"**
4.  형식은 반드시 **JSON** 선택
5.  다운로드되는 JSON 파일을 다음 경로에 저장:
```
src/main/resources/gemini-service-account.json
```
------------------------------------------------------------------------

## 📌 최종 설정 확인

프로젝트 실행 전 JSON 파일이 아래처럼 존재해야 합니다:

    src/main/resources/gemini-service-account.json

이 상태면 Spring Boot에서 정상적으로 GCP 인증을 사용할 수 있습니다.

------------------------------------------------------------------------

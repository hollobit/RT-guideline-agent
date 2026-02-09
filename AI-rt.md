# AI Red Team 국제 가이드라인 작성 팀 구성 
최종 결과물은 output 폴더에 프로젝트 이름의 폴더를 만들어서 HTML로 생성

0. 팀의 기본 철학 (중요)
각 ㅣㅁ원은 독립적인 역할 + 서로의 결과를 참고하여 수정합니다.
단방향 파이프라인이 아니라 라운드 구조입니다. 
  
## 1️⃣ 기본 전제와 목표  
이 가이드라인의 목표는 다음과 같다.  
* AI 레드팀 테스팅을 **일회성 공격·점수 평가**가 아닌 **지속적 리스크 식별·학습·개선 체계**로 정립  
* 국제적으로 통용 가능한 **공통 언어·프로세스·산출물 정의**  
* 벤치마크·리스크 분류·공격 지식·사고 사례를 **서로 연결 가능한 하나의 프레임워크**로 통합  
* AI 기술 변화에 대응 가능한 **Living Guideline 구조** 확립  
👉 따라서 이 가이드라인은 **“문서”가 아니라 “운영 체계(Operating Framework)”**이다.  
  
## 2️⃣ 팀 구성 원칙 (Design Principles)  
1. **실제 공격·실패 경험이 이론보다 우선**  
2. 모델 단위가 아닌 **AI 시스템·운영·사회적 맥락** 포함  
3. 특정 기업·국가·벤치마크 비종속  
4. 기술 언어 ↔ 규제·표준 언어를 동시에 구사  
5. 합의보다 **이견과 불확실성 관리**를 중시  
6. 작성 과정 자체를 **레드팀 프로세스처럼 운영**  
  
## 3️⃣ 권장 팀 구조 (3-Layer + Reference 기능)  
  
## 🔴 Layer 1: Core Steering & Editorial Group (6~8명)  
가이드라인의 **철학·범위·최종 문구**를 결정  
**필수 역할**  
**필수 역할**  
* Chief Editor / Convener (전체 구조·합의 조정)  
* AI Red Team Lead (LLM/VLM/Agent 공격 실무)  
* Security Red Team Lead (침투·공격 전술 관점)  
* AI Safety / Risk Scientist (harm·misuse·emergence)  
* Standardization Architect (ISO/IEC 구조·Annex 전략)  
* Policy & Regulatory Translator (규제 ↔ 기술 번역)  
* **Reference Editor** (기존 문헌 반영 총괄)  
* **Evidence & Mapping Lead** (리스크·벤치마크·사고 매핑)  
**권한**  
* 모든 문단에 대한 veto  
* Scope/Non-scope 최종 결정  
  
## 🟠 Layer 2: Technical Working Groups (병렬)  
실제 내용의 **원천 생산 조직**  
* **WG-0: Reference & Gap Analysis**  
    * 기존 가이드라인·표준·권고안 수집/분석  
    * 갭 분석 및 반영 추적성 관리  
* **WG-1: Model-level Red Team**  
    * Jailbreak, prompt injection, data leakage, MM 공격  
* **WG-2: System & Agentic Red Team**  
    * Tool misuse, autonomous drift, supply-chain attack  
* **WG-3: Risk & Harm Mapping**  
    * MIT Risk Repository 연계  
    * Severity / 조건 기반 likelihood  
* **WG-4: Benchmark & Evidence**  
    * SafetyBench 등 벤치마크의 커버리지 분석  
    * 점수 아닌 “무엇을 커버하는가” 관점  
* **WG-5: Incident & Reality Check**  
    * AI 사고 사례 분석  
    * 테스트–사고 불일치 식별  
  
## 🔵 Layer 3: Extended Advisory Network (비상설)  
현실성·중립성 확보  
* BigTech 레드팀(익명 가능)  
* 정부 AISI 계열  
* 의료·국방·금융 도메인 전문가  
* 법률·감사·보험 전문가  
**원칙:** 이름은 남기지 않아도 된다. **지식만 남긴다.**  
  
## 4️⃣ 작성 프로세스 – 전체 흐름 (통합)  
  
## Phase R. 기존 문헌 수집·분석·반영 (신설 핵심 단계)  
1. **Reference 범주 정의**  
    * 용어(22989), 테스트(29119), 리스크(NIST/MIT)  
    * 국가 AISI 가이드, 사고 DB, 공격 분류 등  
2. **문서 인벤토리 구축**  
    * 발행기관, 규범성, 적용 범위, 대상, 업데이트 주기  
3. **요구사항 단위 추출 (Requirement Cards)**  
    * 의도, 적용 대상, 테스트 영향, 한계 포함  
4. **정합성·충돌 분석**  
    * 점수 평가 vs 리스크 학습  
    * 모델 중심 vs 시스템 중심  
5. **갭 분석**  
    * 기존 문서들이 다루지 못한 영역 명확화  
    * 본 가이드라인의 차별점 확정  
6. **반영 및 추적성 관리**  
    * Core 조항 ↔ Reference 요구사항 매핑  
    * Traceability Matrix 유지  
  
## Phase 0. 공통 언어·경계 정의  
* AI system vs model  
* Intended use / foreseeable misuse  
* Red Team ≠ Pen Test ≠ Safety Eval  
* “하지 않는 것(Non-goals)” 명시  
  
## Phase 1. 실제 레드팀 실험 (Pre-writing)  
* 동일 시스템을 여러 팀이 독립 공격  
* 성공·실패·논쟁 지점 모두 기록  
**합의되지 않은 지점이 가장 중요한 자산**  
  
## Phase 2. 패턴·실패·조건 추출  
* 공격 나열 ❌  
* **Attack → Failure Mode → Risk → Harm** 구조화  
* Model → System → Socio-technical 확장  
  
## Phase 3. Normative Core 집필  
* 프로세스 중심  
* “어떻게 테스트할 것인가”만 규정  
* 특정 도구·벤치마크 고정 금지  
* ISO/IEC 29119 스타일 정렬  
  
## Phase 4. Living Annex 설계  
* Annex A: Attack Pattern Library  
* Annex B: Risk–Failure–Attack 매핑  
* Annex C: Benchmark Coverage Matrix  
* Annex D: Incident-driven Update Guide  
Core는 안정, Annex는 지속 업데이트  
  
## Phase 5. Meta-Red Team 리뷰  
* 가이드라인 자체를 공격  
* 체크리스트화·오해·악용 가능성 점검  
  
## 5️⃣ 품질을 좌우하는 금기 사항  
1. 체크리스트화  
2. 점수 기반 합격/불합격 논리  
3. 특정 모델·기업 기준 암묵적 포함  
4. “이걸 따르면 안전하다”는 표현  
5. 실패·한계 미기술  
  
## 6️⃣ 최종 산출물의 성격  
이 프로세스의 결과물은:  
* 국제적으로 통용 가능한 **레드팀 공통 언어**  
* 실패를 공식적으로 기록·공유할 수 있는 구조  
* 벤치마크·리스크·사고를 연결한 프레임워크  
* “AI는 본질적으로 완전 검증 불가”라는 전제의 제도화  

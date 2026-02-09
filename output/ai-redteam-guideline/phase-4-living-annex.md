# Phase 4: Living Annexes
# 제4단계: 리빙 부속서

**AI Red Team International Guideline -- Living Annex System**

> Living Annexes are designed to be updated independently of the Normative Core. They evolve with the threat landscape, new incident data, and advancing benchmarks. Recommended update cadence: quarterly or upon significant incident.
>
> 리빙 부속서는 규범적 핵심(Normative Core)과 독립적으로 업데이트되도록 설계되었습니다. 위협 환경, 새로운 사고 데이터, 벤치마크 발전에 따라 진화합니다. 권장 업데이트 주기: 분기별 또는 중대 사고 발생 시.

**Document ID:** AIRTG-Phase-4-v1.0
**Date / 작성일:** 2026-02-08
**Status / 상태:** Draft for Review

---

## Table of Contents / 목차

- [Annex A: Attack Pattern Library / 공격 패턴 라이브러리](#annex-a-attack-pattern-library--공격-패턴-라이브러리)
- [Annex B: Risk-Failure-Attack Mapping / 위험-장애-공격 매핑](#annex-b-risk-failure-attack-mapping--위험-장애-공격-매핑)
- [Annex C: Benchmark Coverage Matrix / 벤치마크 커버리지 매트릭스](#annex-c-benchmark-coverage-matrix--벤치마크-커버리지-매트릭스)
- [Annex D: Incident-Driven Update Guide / 사고 기반 업데이트 가이드](#annex-d-incident-driven-update-guide--사고-기반-업데이트-가이드)

---

# Annex A: Attack Pattern Library / 공격 패턴 라이브러리

## A.1 Pattern Schema / 패턴 스키마

Each attack pattern follows a standardized schema to ensure consistency and machine-readability.
각 공격 패턴은 일관성과 기계 판독 가능성을 보장하기 위해 표준화된 스키마를 따릅니다.

| Field / 필드 | Description / 설명 | Format |
|---|---|---|
| **ID** | Unique identifier: `AP-{Layer}-{NNN}` | `AP-MOD-001`, `AP-SYS-001`, `AP-SOC-001` |
| **Name / 이름** | Descriptive name (EN/KR) | String |
| **Category / 카테고리** | Primary attack category | Enumerated (see A.2) |
| **Layer / 계층** | MOD (Model), SYS (System), SOC (Socio-technical) | Enum |
| **Description / 설명** | Detailed attack description (EN/KR) | Text |
| **Prerequisites / 전제조건** | Required access, knowledge, or capabilities | Bulleted list |
| **Procedure / 절차** | Step-by-step attack execution | Numbered steps |
| **Detection / 탐지방법** | How to detect this attack | Bulleted list |
| **Mitigation / 완화방법** | Defensive countermeasures | Bulleted list |
| **Severity Baseline / 기본 심각도** | Default severity (Critical/High/Medium/Low) | Enum |
| **MITRE ATLAS Mapping** | Related ATLAS technique IDs | Reference IDs |
| **OWASP Mapping** | Related OWASP LLM/Agentic risk IDs | Reference IDs |
| **References / 참조** | Academic papers, CVEs, incident reports | URL list |
| **Last Updated / 최종 갱신** | Date of last revision | ISO 8601 |

## A.2 Category Taxonomy / 카테고리 분류 체계

### Layer 1: Model-Level (MOD) / 모델 수준

| Category Code | Category Name (EN) | 카테고리 (KR) |
|---|---|---|
| MOD-JB | Jailbreak | 탈옥 |
| MOD-PI | Prompt Injection | 프롬프트 인젝션 |
| MOD-DE | Data Extraction | 데이터 추출 |
| MOD-MM | Multimodal Attack | 멀티모달 공격 |
| MOD-AE | Adversarial Examples | 적대적 사례 |
| MOD-HL | Hallucination Exploitation | 환각 악용 |

### Layer 2: System-Level (SYS) / 시스템 수준

| Category Code | Category Name (EN) | 카테고리 (KR) |
|---|---|---|
| SYS-TM | Tool/Plugin Misuse | 도구/플러그인 오용 |
| SYS-AD | Autonomous Drift | 자율 드리프트 |
| SYS-SC | Supply Chain Attack | 공급망 공격 |
| SYS-RP | RAG Poisoning | RAG 포이즈닝 |
| SYS-AA | API Abuse | API 악용 |
| SYS-MC | Memory/Context Manipulation | 메모리/컨텍스트 조작 |
| SYS-PE | Privilege Escalation | 권한 상승 |

### Layer 3: Socio-Technical (SOC) / 사회기술적 수준

| Category Code | Category Name (EN) | 카테고리 (KR) |
|---|---|---|
| SOC-SE | Social Engineering via AI | AI를 통한 사회공학 |
| SOC-DF | Deepfake / Synthetic Content | 딥페이크 / 합성 콘텐츠 |
| SOC-DI | Disinformation at Scale | 대규모 허위정보 |
| SOC-BA | Bias Amplification | 편향 증폭 |
| SOC-PV | Privacy Violation | 프라이버시 침해 |
| SOC-EH | Economic Harm | 경제적 피해 |

---

## A.3 Model-Level Attack Patterns / 모델 수준 공격 패턴

### AP-MOD-001: Role-Play / Persona Hijack Jailbreak

| Field | Content |
|---|---|
| **ID** | AP-MOD-001 |
| **Name** | Role-Play / Persona Hijack Jailbreak / 역할극/페르소나 탈취 탈옥 |
| **Category** | MOD-JB |
| **Layer** | MOD |
| **Description** | Embeds harmful requests inside fictional scenarios (screenwriting, game design, historical reenactment) to deflect model responsibility. The model is assigned a persona that operates outside its safety constraints, leveraging the instruction-following behavior of RLHF-aligned models. Observed success rate: 89.6% (highest among jailbreak categories). / 유해한 요청을 허구적 시나리오(각본 작성, 게임 디자인, 역사 재현) 안에 포함하여 모델의 책임을 전가합니다. 관찰된 성공률: 89.6%. |
| **Prerequisites** | - Text-based access to LLM (API or chat interface) / LLM에 대한 텍스트 기반 접근<br>- No specialized tools required / 특수 도구 불필요<br>- Low skill level sufficient / 낮은 기술 수준으로 충분 |
| **Procedure** | 1. Construct a fictional framing (movie script, novel, game scenario) / 허구적 프레이밍 구성<br>2. Assign the model a persona with explicit "no restrictions" clause / "제한 없음" 조항으로 모델에 페르소나 할당<br>3. Embed the actual harmful request within the fictional context / 허구적 맥락 내에 실제 유해한 요청 삽입<br>4. Use reinforcing language ("stay in character", "this is fiction") to maintain the bypass / 우회를 유지하기 위해 강화 언어 사용<br>5. Escalate specificity incrementally if initial attempt is partially refused / 초기 시도가 부분 거부되면 점진적으로 구체성 확대 |
| **Detection** | - Pattern matching for persona-assignment keywords ("you are now", "act as", "in character") / 페르소나 할당 키워드 패턴 매칭<br>- Classifier detecting fictional framing combined with harmful content requests / 허구적 프레이밍 + 유해 콘텐츠 요청 결합 탐지<br>- Output monitoring for safety-aligned content that follows a "no restrictions" preamble / "제한 없음" 서문 후 안전 정렬 콘텐츠 출력 모니터링 |
| **Mitigation** | - Constitutional AI / RLHF training with persona-aware refusal / 페르소나 인식 거부 학습<br>- Input classifier that detects role-play patterns preceding sensitive topics / 민감한 주제 앞의 역할극 패턴 탐지 입력 분류기<br>- Output filter that evaluates content regardless of fictional framing / 허구적 프레이밍과 무관하게 콘텐츠 평가하는 출력 필터<br>- System prompt reinforcement: "safety rules apply regardless of assigned persona" / 시스템 프롬프트 강화 |
| **Severity Baseline** | High |
| **MITRE ATLAS** | AML.T0051 (LLM Jailbreak) |
| **OWASP Mapping** | LLM01 (Prompt Injection) |
| **References** | - [Red Teaming the Mind of the Machine (2025)](https://arxiv.org/html/2505.04806v1) |
| **Last Updated** | 2026-02-08 |

---

### AP-MOD-002: Encoding / Obfuscation Jailbreak

| Field | Content |
|---|---|
| **ID** | AP-MOD-002 |
| **Name** | Encoding / Obfuscation Jailbreak / 인코딩/난독화 탈옥 |
| **Category** | MOD-JB |
| **Layer** | MOD |
| **Description** | Uses encoding schemes (Base64, ROT13, hex, Unicode homoglyphs, zero-width characters, leetspeak, Pig Latin) to bypass keyword-based safety filters. The model is instructed to decode and respond to the encoded harmful query. Observed success rate: 76.2%. / 인코딩 체계를 사용하여 키워드 기반 안전 필터를 우회합니다. 관찰된 성공률: 76.2%. |
| **Prerequisites** | - Text access to LLM / LLM 텍스트 접근<br>- Knowledge of encoding schemes / 인코딩 체계 지식<br>- Low-medium skill level / 낮은-중간 기술 수준 |
| **Procedure** | 1. Select target harmful query / 대상 유해 쿼리 선택<br>2. Encode query using Base64, ROT13, hex, or other encoding / Base64, ROT13, hex 등으로 쿼리 인코딩<br>3. Instruct model to decode the payload and respond to the decoded content / 모델에 페이로드 디코딩 및 응답 지시<br>4. Optionally chain multiple encoding layers for evasion depth / 회피 깊이를 위해 선택적으로 다중 인코딩 계층 체이닝 |
| **Detection** | - Input scanning for encoded payloads (Base64 regex, hex patterns) / 인코딩된 페이로드 입력 스캔<br>- Detection of decode-and-respond instruction patterns / 디코딩-응답 지시 패턴 탐지<br>- Unicode normalization before safety classification / 안전 분류 전 유니코드 정규화 |
| **Mitigation** | - Pre-processing input normalization and decoding before safety checks / 안전 점검 전 입력 정규화 및 디코딩 전처리<br>- Training on encoded attack variants / 인코딩된 공격 변형에 대한 학습<br>- Semantic-level safety filtering (not just keyword matching) / 의미 수준 안전 필터링 |
| **Severity Baseline** | High |
| **MITRE ATLAS** | AML.T0051 (LLM Jailbreak) |
| **OWASP Mapping** | LLM01 |
| **References** | - [20 Prompt Injection Techniques Every Red Teamer Should Test](https://fdzdev.medium.com/20-prompt-injection-techniques-every-red-teamer-should-test-b22359bfd57d) |
| **Last Updated** | 2026-02-08 |

---

### AP-MOD-003: Best-of-N Automated Jailbreak

| Field | Content |
|---|---|
| **ID** | AP-MOD-003 |
| **Name** | Best-of-N (BoN) Automated Jailbreak / Best-of-N 자동화 탈옥 |
| **Category** | MOD-JB |
| **Layer** | MOD |
| **Description** | Automated generation of 10-50 prompt variations through systematic mutation of wording, punctuation, structure, and formatting. Selects the variation that bypasses safety filters. Reduces time-to-attack from hours to seconds while achieving state-of-the-art success rates. / 10-50개 프롬프트 변형을 자동 생성하여 안전 필터를 우회하는 변형을 선택합니다. 공격 시간을 수 시간에서 수 초로 단축합니다. |
| **Prerequisites** | - API access to target model / 대상 모델 API 접근<br>- Automated testing framework (e.g., PyRIT, Garak, DeepTeam) / 자동화 테스트 프레임워크<br>- Medium skill level / 중간 기술 수준 |
| **Procedure** | 1. Define target harmful output / 대상 유해 출력 정의<br>2. Create seed prompt templates / 시드 프롬프트 템플릿 생성<br>3. Apply automated mutation strategies (word substitution, punctuation variation, structural reordering) / 자동 변형 전략 적용<br>4. Send N variations (typically 10-50) to target model / 대상 모델에 N개 변형 전송<br>5. Evaluate responses using automated harm classifier / 자동 피해 분류기로 응답 평가<br>6. Select successful bypass(es) for further analysis / 추가 분석을 위해 성공적인 우회 선택 |
| **Detection** | - Rate limiting per user/session with similarity-based deduplication / 유사성 기반 중복 제거 속도 제한<br>- Clustering of semantically similar requests within short timeframes / 짧은 시간 내 의미적으로 유사한 요청 클러스터링<br>- Behavioral anomaly detection for automated request patterns / 자동화 요청 패턴 행동 이상 탐지 |
| **Mitigation** | - Semantic-level safety evaluation (immune to surface mutations) / 의미 수준 안전 평가<br>- Adaptive rate limiting based on request similarity / 요청 유사성 기반 적응형 속도 제한<br>- Ensemble safety classifiers with diverse architectures / 다양한 아키텍처의 앙상블 안전 분류기 |
| **Severity Baseline** | High |
| **MITRE ATLAS** | AML.T0051, AML.T0043 (Automated attack tooling) |
| **OWASP Mapping** | LLM01 |
| **References** | - [Best-of-N Jailbreaking - Giskard](https://www.giskard.ai/knowledge/best-of-n-jailbreaking-the-automated-llm-attack-that-takes-only-seconds) |
| **Last Updated** | 2026-02-08 |

---

### AP-MOD-004: Indirect Prompt Injection via Data Channel

| Field | Content |
|---|---|
| **ID** | AP-MOD-004 |
| **Name** | Indirect Prompt Injection via Data Channel / 데이터 채널을 통한 간접 프롬프트 인젝션 |
| **Category** | MOD-PI |
| **Layer** | MOD (with SYS implications) |
| **Description** | Malicious instructions embedded in external data sources (emails, documents, web pages, database records, images) that the model processes during retrieval or tool use. Unlike direct injection, the attacker does not interact with the model directly -- the payload travels through a data channel. Critical real-world exploit: EchoLeak (CVE-2025-32711, CVSS 9.3-9.4) against Microsoft Copilot. / 모델이 검색 또는 도구 사용 중 처리하는 외부 데이터 소스에 악성 지시가 삽입됩니다. 실제 CVE: EchoLeak (CVE-2025-32711). |
| **Prerequisites** | - Ability to inject content into data sources the AI system consumes / AI 시스템이 소비하는 데이터 소스에 콘텐츠 주입 능력<br>- Knowledge of the target system's retrieval/tool architecture / 대상 시스템의 검색/도구 아키텍처 지식<br>- Medium-high skill level / 중간-높은 기술 수준 |
| **Procedure** | 1. Identify data channels consumed by the target AI system (email, web search, document retrieval, database) / 대상 AI 시스템이 소비하는 데이터 채널 식별<br>2. Craft payload: instructions disguised within legitimate-looking content / 페이로드 제작: 합법적으로 보이는 콘텐츠 내에 위장된 지시<br>3. Inject payload into the data channel (send email, publish web page, add document to shared folder) / 데이터 채널에 페이로드 주입<br>4. Wait for or trigger the AI system to process the poisoned data / AI 시스템이 오염된 데이터를 처리하도록 대기 또는 트리거<br>5. Observe exfiltrated data or manipulated behavior / 유출된 데이터 또는 조작된 행동 관찰 |
| **Detection** | - Content sanitization of all external data before model processing / 모델 처리 전 모든 외부 데이터 콘텐츠 살균<br>- Instruction-detection classifiers on retrieved content / 검색된 콘텐츠에 대한 지시 탐지 분류기<br>- Data provenance tracking and trust scoring / 데이터 출처 추적 및 신뢰 점수 부여<br>- Anomaly detection on output actions (unexpected exfiltration, tool calls) / 출력 행동 이상 탐지 |
| **Mitigation** | - Strict separation of instruction and data channels / 지시 채널과 데이터 채널의 엄격한 분리<br>- Input sanitization layer between retrieval and model / 검색과 모델 사이 입력 살균 계층<br>- Principle of least privilege for tool/API access / 도구/API 접근에 최소 권한 원칙<br>- Output action validation with human-in-the-loop for sensitive operations / 민감한 작업에 대한 출력 행동 검증 및 인간 개입 |
| **Severity Baseline** | Critical |
| **MITRE ATLAS** | AML.T0051.001 (Indirect Prompt Injection) |
| **OWASP Mapping** | LLM01, ASI01 |
| **References** | - [Lakera: Indirect Prompt Injection](https://www.lakera.ai/blog/indirect-prompt-injection)<br>- [OpenAI: Hardening Atlas Against Prompt Injection](https://openai.com/index/hardening-atlas-against-prompt-injection/)<br>- CVE-2025-32711 (EchoLeak) |
| **Last Updated** | 2026-02-08 |

---

### AP-MOD-005: Training Data Extraction

| Field | Content |
|---|---|
| **ID** | AP-MOD-005 |
| **Name** | Training Data Extraction / 학습 데이터 추출 |
| **Category** | MOD-DE |
| **Layer** | MOD |
| **Description** | Prompting techniques that cause models to regurgitate verbatim training data, including PII, copyrighted content, code, and proprietary information. Exploits memorization behavior in large language models, particularly for repeated or unique sequences in training data. / 모델이 PII, 저작권 콘텐츠, 코드, 독점 정보를 포함한 학습 데이터를 그대로 재생하게 하는 프롬프팅 기법입니다. |
| **Prerequisites** | - API or chat access to target model / 대상 모델 API 또는 채팅 접근<br>- Knowledge of potential training data sources / 잠재적 학습 데이터 소스 지식<br>- Medium skill level / 중간 기술 수준 |
| **Procedure** | 1. Identify target data type (PII, code, copyrighted text) / 대상 데이터 유형 식별<br>2. Craft prompts that induce completion of memorized sequences (prefix attacks, repetition prompting) / 기억된 시퀀스 완성을 유도하는 프롬프트 제작<br>3. Use temperature/sampling manipulation to increase memorization probability / 기억 확률 높이기 위해 온도/샘플링 조작<br>4. Apply membership inference to verify extraction / 추출 검증을 위해 멤버십 추론 적용 |
| **Detection** | - Output monitoring for known training data patterns / 알려진 학습 데이터 패턴에 대한 출력 모니터링<br>- PII detection classifiers on model outputs / 모델 출력에 PII 탐지 분류기<br>- Anomalous output length or verbatim repetition detection / 비정상적 출력 길이 또는 그대로 반복 탐지 |
| **Mitigation** | - Differential privacy during training / 학습 중 차등 프라이버시<br>- Output filtering for PII and known sensitive patterns / PII 및 알려진 민감 패턴에 대한 출력 필터링<br>- Deduplication of training data / 학습 데이터 중복 제거<br>- Memorization audits pre-deployment / 배포 전 기억화 감사 |
| **Severity Baseline** | Critical |
| **MITRE ATLAS** | AML.T0024 (Data Extraction), AML.T0044 (Membership Inference) |
| **OWASP Mapping** | LLM02 (Sensitive Information Disclosure), LLM07 (System Prompt Leakage) |
| **References** | - Carlini et al., "Extracting Training Data from Large Language Models" |
| **Last Updated** | 2026-02-08 |

---

### AP-MOD-006: Multimodal Typographic Injection

| Field | Content |
|---|---|
| **ID** | AP-MOD-006 |
| **Name** | Multimodal Typographic Injection / 멀티모달 타이포그래픽 인젝션 |
| **Category** | MOD-MM |
| **Layer** | MOD |
| **Description** | Embedding text-based prompt injection instructions within images that are processed by vision-language models. The text is visible to the model's vision component but may be disguised from human reviewers through small font sizes, color matching with backgrounds, or placement in image margins. / 비전-언어 모델이 처리하는 이미지 내에 텍스트 기반 프롬프트 인젝션 지시를 삽입합니다. |
| **Prerequisites** | - Ability to submit images to a vision-language model / 비전-언어 모델에 이미지 제출 능력<br>- Image editing tools / 이미지 편집 도구<br>- Low-medium skill level / 낮은-중간 기술 수준 |
| **Procedure** | 1. Craft injection text payload / 인젝션 텍스트 페이로드 제작<br>2. Embed text in image (small font, matching background color, image margins) / 이미지에 텍스트 삽입(작은 글꼴, 배경 색상 일치, 이미지 여백)<br>3. Submit image to vision-language model with benign text prompt / 양성 텍스트 프롬프트와 함께 비전-언어 모델에 이미지 제출<br>4. Model processes embedded text as instructions / 모델이 삽입된 텍스트를 지시로 처리 |
| **Detection** | - OCR-based pre-screening of images for instruction-like text / 지시 유사 텍스트에 대한 OCR 기반 이미지 사전 검사<br>- Discrepancy detection between image description and model actions / 이미지 설명과 모델 행동 간 불일치 탐지<br>- Image-text consistency validation / 이미지-텍스트 일관성 검증 |
| **Mitigation** | - Separate processing pipelines for image understanding and instruction following / 이미지 이해와 지시 따르기의 분리된 처리 파이프라인<br>- Image sanitization removing text overlays / 텍스트 오버레이 제거 이미지 살균<br>- Cross-modal safety evaluation / 교차 모달 안전 평가 |
| **Severity Baseline** | High |
| **MITRE ATLAS** | AML.T0051 (variant) |
| **OWASP Mapping** | LLM01 |
| **References** | - Schlarmann & Hein, "On the Adversarial Robustness of Multi-Modal Foundation Models" |
| **Last Updated** | 2026-02-08 |

---

## A.4 System-Level Attack Patterns / 시스템 수준 공격 패턴

### AP-SYS-001: Agentic Tool Misuse via Prompt Manipulation

| Field | Content |
|---|---|
| **ID** | AP-SYS-001 |
| **Name** | Agentic Tool Misuse via Prompt Manipulation / 프롬프트 조작을 통한 에이전틱 도구 오용 |
| **Category** | SYS-TM |
| **Layer** | SYS |
| **Description** | An agent uses legitimate tools in unsafe or unintended ways due to prompt manipulation, tool chaining, or forwarding unvalidated output into powerful commands. The risk is not unauthorized tool access, but misuse of already-authorized tools. Real-world example: Amazon Q coding assistant poisoned via malicious PR to attempt cloud resource deletion. / 프롬프트 조작, 도구 체이닝, 또는 검증되지 않은 출력의 강력한 명령 전달로 인해 에이전트가 합법적 도구를 안전하지 않거나 의도하지 않은 방식으로 사용합니다. |
| **Prerequisites** | - Ability to influence agent's input (direct prompt or indirect injection) / 에이전트 입력에 영향을 미칠 수 있는 능력<br>- Agent has access to tools with side effects (file system, API, cloud resources) / 에이전트가 부작용이 있는 도구에 접근<br>- Medium-high skill level / 중간-높은 기술 수준 |
| **Procedure** | 1. Identify tools available to the target agent / 대상 에이전트가 사용 가능한 도구 식별<br>2. Craft prompt that causes the agent to chain tools in an unintended sequence / 에이전트가 의도하지 않은 순서로 도구를 체이닝하게 하는 프롬프트 제작<br>3. Inject instructions via direct prompt or data channel (code PR, document, email) / 직접 프롬프트 또는 데이터 채널을 통해 지시 주입<br>4. Agent executes tool chain, performing destructive or exfiltrative actions / 에이전트가 도구 체인을 실행하여 파괴적 또는 유출 행동 수행 |
| **Detection** | - Tool call sequence monitoring for anomalous patterns / 비정상적 패턴에 대한 도구 호출 순서 모니터링<br>- Output validation before tool execution / 도구 실행 전 출력 검증<br>- Sandboxed execution with rollback capability / 롤백 기능을 갖춘 샌드박스 실행 |
| **Mitigation** | - Principle of least privilege for each tool / 각 도구에 최소 권한 원칙<br>- Human-in-the-loop for destructive actions (delete, overwrite, send) / 파괴적 행동에 인간 개입<br>- Tool call rate limiting and budget constraints / 도구 호출 속도 제한 및 예산 제약<br>- Input sanitization between tool outputs and subsequent tool inputs / 도구 출력과 후속 도구 입력 간 입력 살균 |
| **Severity Baseline** | Critical |
| **MITRE ATLAS** | AML.T0051, AML.T0053 (Tool Misuse) |
| **OWASP Mapping** | ASI02 (Tool Misuse & Exploitation) |
| **References** | - [OWASP Agentic AI Top 10](https://genai.owasp.org/2025/12/09/owasp-top-10-for-agentic-applications-the-benchmark-for-agentic-security-in-the-age-of-autonomous-ai/)<br>- [BleepingComputer: Real-World Attacks Behind OWASP Agentic AI Top 10](https://www.bleepingcomputer.com/news/security/the-real-world-attacks-behind-owasp-agentic-ai-top-10/) |
| **Last Updated** | 2026-02-08 |

---

### AP-SYS-002: RAG Corpus Poisoning

| Field | Content |
|---|---|
| **ID** | AP-SYS-002 |
| **Name** | RAG Corpus Poisoning / RAG 코퍼스 포이즈닝 |
| **Category** | SYS-RP |
| **Layer** | SYS |
| **Description** | Injecting malicious documents into a RAG system's retrieval corpus that contain false information or prompt injections. Research (PoisonedRAG) demonstrates that adding just 5 malicious documents into a corpus of millions achieves 90% attack success for targeted queries. / RAG 시스템의 검색 코퍼스에 허위 정보나 프롬프트 인젝션이 포함된 악성 문서를 주입합니다. 연구에 따르면 수백만 건의 코퍼스에 5개의 악성 문서만 추가해도 90% 공격 성공률을 달성합니다. |
| **Prerequisites** | - Write access to the RAG corpus (document upload, shared drive, web crawl target) / RAG 코퍼스에 쓰기 접근<br>- Knowledge of target queries or topics / 대상 쿼리 또는 주제 지식<br>- Understanding of embedding model behavior / 임베딩 모델 행동 이해<br>- Medium skill level / 중간 기술 수준 |
| **Procedure** | 1. Identify target queries the victim is likely to ask / 피해자가 물어볼 가능성이 있는 대상 쿼리 식별<br>2. Craft documents optimized to rank highly for those queries in embedding space / 임베딩 공간에서 해당 쿼리에 대해 높은 순위를 차지하도록 최적화된 문서 제작<br>3. Embed false information or prompt injection payloads in the documents / 문서에 허위 정보 또는 프롬프트 인젝션 페이로드 삽입<br>4. Inject documents into the corpus through available channel / 사용 가능한 채널을 통해 코퍼스에 문서 주입<br>5. Verify retrieval ranking and attack success / 검색 순위 및 공격 성공 확인 |
| **Detection** | - Document provenance tracking and integrity verification / 문서 출처 추적 및 무결성 검증<br>- Anomaly detection on newly added documents (embedding outlier detection) / 새로 추가된 문서의 이상 탐지<br>- Cross-reference verification of retrieved information / 검색된 정보의 교차 참조 검증<br>- Instruction-detection scanning on corpus documents / 코퍼스 문서의 지시 탐지 스캔 |
| **Mitigation** | - Access control on corpus ingestion (authentication, authorization) / 코퍼스 수집에 대한 접근 제어<br>- Document integrity verification (hashing, signing) / 문서 무결성 검증(해싱, 서명)<br>- Multi-source verification before presenting RAG results / RAG 결과 제시 전 다중 소스 검증<br>- Retrieval-time content filtering for injection patterns / 검색 시 인젝션 패턴에 대한 콘텐츠 필터링 |
| **Severity Baseline** | High |
| **MITRE ATLAS** | AML.T0020 (Data Poisoning) |
| **OWASP Mapping** | LLM04 (Data and Model Poisoning), LLM08 (Vector and Embedding Weaknesses), ASI10 |
| **References** | - [PoisonedRAG Research](https://www.darkreading.com/application-security/only-250-documents-poison-any-ai-model)<br>- [OWASP LLM04:2025](https://genai.owasp.org/llmrisk/llm042025-data-and-model-poisoning/) |
| **Last Updated** | 2026-02-08 |

---

### AP-SYS-003: Supply Chain Model Poisoning

| Field | Content |
|---|---|
| **ID** | AP-SYS-003 |
| **Name** | Supply Chain Model Poisoning / 공급망 모델 포이즈닝 |
| **Category** | SYS-SC |
| **Layer** | SYS |
| **Description** | Uploading backdoored pre-trained models to public repositories (Hugging Face, GitHub) or injecting malicious fine-tuning data. Over 100 compromised models were discovered on Hugging Face in 2024. A single backdoored model can propagate to countless downstream applications. Model serialization attacks (pickle deserialization) enable arbitrary code execution upon model loading. / 공개 저장소에 백도어가 설치된 사전 학습 모델을 업로드하거나 악성 파인튜닝 데이터를 주입합니다. 2024년 Hugging Face에서 100개 이상의 손상된 모델이 발견되었습니다. |
| **Prerequisites** | - Ability to upload models to public repositories / 공개 저장소에 모델 업로드 능력<br>- Knowledge of model training/fine-tuning processes / 모델 학습/파인튜닝 프로세스 지식<br>- High skill level / 높은 기술 수준 |
| **Procedure** | 1. Train or modify a model with embedded backdoor triggers / 백도어 트리거가 내장된 모델 학습 또는 수정<br>2. Ensure normal performance on standard benchmarks to avoid detection / 탐지를 피하기 위해 표준 벤치마크에서 정상 성능 보장<br>3. Upload to popular model repository with convincing documentation / 설득력 있는 문서와 함께 인기 모델 저장소에 업로드<br>4. Promote model through community engagement / 커뮤니티 참여를 통해 모델 홍보<br>5. Backdoor activates when triggered by specific input patterns in downstream use / 다운스트림 사용에서 특정 입력 패턴에 의해 백도어 활성화 |
| **Detection** | - Model provenance verification (hash comparison, signing) / 모델 출처 검증(해시 비교, 서명)<br>- Behavioral testing with known trigger patterns / 알려진 트리거 패턴으로 행동 테스팅<br>- Static analysis of model files for serialization exploits / 직렬화 익스플로잇에 대한 모델 파일 정적 분석<br>- Differential testing against known-good baselines / 알려진 양성 기준선과의 차등 테스팅 |
| **Mitigation** | - Model scanning before deployment (e.g., Hugging Face model scanning) / 배포 전 모델 스캔<br>- Only use models from verified/trusted sources / 검증된/신뢰할 수 있는 소스의 모델만 사용<br>- Sandboxed model loading (avoid pickle deserialization in production) / 샌드박스 모델 로딩<br>- SBOM (Software Bill of Materials) for ML pipelines / ML 파이프라인용 SBOM |
| **Severity Baseline** | Critical |
| **MITRE ATLAS** | AML.T0010 (ML Supply Chain Compromise), AML.T0020 (Data Poisoning) |
| **OWASP Mapping** | LLM03 (Supply Chain Vulnerabilities), LLM04 |
| **References** | - [Security Magazine: AI Data Poisoning as New Supply Chain Attack](https://www.securitymagazine.com/articles/100590)<br>- [Lakera: Training Data Poisoning 2025](https://www.lakera.ai/blog/training-data-poisoning) |
| **Last Updated** | 2026-02-08 |

---

### AP-SYS-004: Privilege Escalation via Agent Identity Abuse

| Field | Content |
|---|---|
| **ID** | AP-SYS-004 |
| **Name** | Privilege Escalation via Agent Identity Abuse / 에이전트 ID 악용을 통한 권한 상승 |
| **Category** | SYS-PE |
| **Layer** | SYS |
| **Description** | Exploiting cached credentials, confused deputy scenarios, or transitive privilege inheritance in agentic AI systems. Agents may cache SSH keys, API tokens, or session credentials in memory, enabling privilege escalation across sessions or cross-agent delegation without proper scoping. Critical CVEs with CVSS 9.3-9.4 identified in ServiceNow, Langflow, and Microsoft Copilot. / 에이전틱 AI 시스템에서 캐시된 자격 증명, 혼동된 대리인 시나리오, 또는 전이적 권한 상속을 악용합니다. |
| **Prerequisites** | - Access to agent system (direct or indirect via injection) / 에이전트 시스템 접근<br>- Agent operates with stored credentials or inherited privileges / 에이전트가 저장된 자격 증명 또는 상속된 권한으로 운영<br>- Medium-high skill level / 중간-높은 기술 수준 |
| **Procedure** | 1. Identify agent's credential storage and privilege model / 에이전트의 자격 증명 저장 및 권한 모델 식별<br>2. Craft injection targeting credential reuse or delegation chain / 자격 증명 재사용 또는 위임 체인을 대상으로 하는 인젝션 제작<br>3. Trigger cross-session credential reuse or cross-agent delegation / 크로스 세션 자격 증명 재사용 또는 크로스 에이전트 위임 트리거<br>4. Perform privileged operations beyond intended scope / 의도된 범위를 넘어 권한 있는 작업 수행 |
| **Detection** | - Credential access logging and anomaly detection / 자격 증명 접근 로깅 및 이상 탐지<br>- Cross-session/cross-agent privilege usage monitoring / 크로스 세션/에이전트 권한 사용 모니터링<br>- Transitive delegation chain auditing / 전이적 위임 체인 감사 |
| **Mitigation** | - Unique, bounded identity per agent with short-lived credentials / 에이전트별 고유하고 범위가 제한된 ID, 단기 자격 증명<br>- Isolate agent sessions; wipe cached context between tasks / 에이전트 세션 격리; 작업 간 캐시된 컨텍스트 삭제<br>- Require re-authorization for privilege escalation / 권한 상승 시 재인증 요구<br>- Detect and revoke transitive privilege inheritance / 전이적 권한 상속 탐지 및 취소 |
| **Severity Baseline** | Critical |
| **MITRE ATLAS** | AML.T0053 (Agent Manipulation) |
| **OWASP Mapping** | ASI03 (Identity & Privilege Abuse), ASI09 (Unsafe Delegation) |
| **References** | - [OWASP Agentic AI Top 10](https://genai.owasp.org/2025/12/09/owasp-top-10-for-agentic-applications-the-benchmark-for-agentic-security-in-the-age-of-autonomous-ai/)<br>- [eSecurity Planet: AI Agent Attacks Q4 2025](https://www.esecurityplanet.com/artificial-intelligence/ai-agent-attacks-in-q4-2025-signal-new-risks-for-2026/) |
| **Last Updated** | 2026-02-08 |

---

## A.5 Socio-Technical Attack Patterns / 사회기술적 공격 패턴

### AP-SOC-001: AI-Powered Deepfake Fraud

| Field | Content |
|---|---|
| **ID** | AP-SOC-001 |
| **Name** | AI-Powered Deepfake Fraud / AI 기반 딥페이크 사기 |
| **Category** | SOC-DF |
| **Layer** | SOC |
| **Description** | Using AI-generated synthetic media (video, audio, images) to impersonate individuals for financial fraud, identity theft, or manipulation. Projected 8 million deepfakes in 2025. Notable incident: $25M stolen via deepfake Zoom call (Hong Kong, Feb 2024). Voice deepfakes are the most convincing modality -- 53% of people share their voices online weekly. / AI 생성 합성 미디어를 사용하여 개인을 사칭하여 금융 사기, 신원 도용 또는 조작을 수행합니다. 주목할 사건: 딥페이크 Zoom 통화로 $25M 도난 (2024년 2월). |
| **Prerequisites** | - Access to deepfake generation tools (increasingly commoditized) / 딥페이크 생성 도구 접근<br>- Reference media of target individual (voice samples, photos, video) / 대상 개인의 참조 미디어<br>- Social engineering skills for fraud execution / 사기 실행을 위한 사회공학 기술<br>- Low-medium technical skill (tools are user-friendly) / 낮은-중간 기술 수준 |
| **Procedure** | 1. Collect reference media of impersonation target / 사칭 대상의 참조 미디어 수집<br>2. Generate synthetic media (voice clone, face swap, full video) / 합성 미디어 생성(음성 복제, 얼굴 교체, 전체 비디오)<br>3. Establish communication channel with victim / 피해자와 통신 채널 수립<br>4. Execute social engineering scenario using deepfake (urgency, authority, trust) / 딥페이크를 사용한 사회공학 시나리오 실행<br>5. Extract financial transfer, credentials, or sensitive information / 금융 이체, 자격 증명 또는 민감 정보 추출 |
| **Detection** | - Deepfake detection classifiers on real-time video/audio streams / 실시간 비디오/오디오 스트림에 딥페이크 탐지 분류기<br>- Out-of-band verification for high-value transactions / 고가치 거래에 대한 대역 외 검증<br>- Behavioral biometric analysis (micro-expressions, speech patterns) / 행동 생체 인식 분석<br>- Watermark and provenance verification / 워터마크 및 출처 검증 |
| **Mitigation** | - Multi-factor verification for financial transactions / 금융 거래에 다중 요소 검증<br>- Deepfake awareness training for employees / 직원 딥페이크 인식 교육<br>- Real-time deepfake detection tools in video conferencing / 화상 회의에 실시간 딥페이크 탐지 도구<br>- Content authentication standards (C2PA, IPTC) / 콘텐츠 인증 표준 |
| **Severity Baseline** | Critical |
| **MITRE ATLAS** | N/A (socio-technical, not model attack) |
| **OWASP Mapping** | N/A (beyond LLM/Agent scope) |
| **References** | - [Deepfake Statistics 2025 - DeepStrike](https://deepstrike.io/blog/deepfake-statistics-2025)<br>- [UNESCO: Deepfakes and the Crisis of Knowing](https://www.unesco.org/en/articles/deepfakes-and-crisis-knowing)<br>- [SEC: AI, Deepfakes, and Financial Deception](https://www.sec.gov/files/carpenter-sec-statements-march2025.pdf) |
| **Last Updated** | 2026-02-08 |

---

### AP-SOC-002: Algorithmic Bias Amplification in Decision Systems

| Field | Content |
|---|---|
| **ID** | AP-SOC-002 |
| **Name** | Algorithmic Bias Amplification in Decision Systems / 의사결정 시스템의 알고리즘 편향 증폭 |
| **Category** | SOC-BA |
| **Layer** | SOC |
| **Description** | AI systems that systematically discriminate against protected groups in consequential decisions (employment, housing, healthcare, credit). Not necessarily adversarial -- bias arises from training data reflecting historical discrimination, feature selection, or proxy variables. Incidents: Workday age discrimination (class action certified May 2025), SafeRent housing discrimination ($2M+ settlement 2024), Cedars-Sinai racial bias in treatment (June 2025). / AI 시스템이 중대한 결정에서 보호 그룹에 대해 체계적으로 차별합니다. |
| **Prerequisites** | - AI system deployed in consequential decision-making / 중대한 의사결정에 배포된 AI 시스템<br>- Training data reflecting historical biases / 역사적 편향을 반영하는 학습 데이터<br>- No adversarial skill required (systemic, not targeted) / 적대적 기술 불필요 |
| **Procedure** | (Systemic pattern, not attacker-driven procedure / 공격자 주도 절차가 아닌 체계적 패턴)<br>1. AI system trained on historically biased data / 역사적으로 편향된 데이터로 AI 시스템 학습<br>2. System deployed in consequential decisions without adequate bias testing / 적절한 편향 테스팅 없이 중대한 결정에 시스템 배포<br>3. Proxy variables (zip code, name patterns) correlate with protected attributes / 대리 변수가 보호 속성과 상관<br>4. Discriminatory outcomes amplified at population scale / 인구 규모에서 차별적 결과 증폭 |
| **Detection** | - Intersectional fairness auditing across protected attributes / 보호 속성 전반에 걸친 교차적 공정성 감사<br>- Disparity analysis: demographic parity, equalized odds, predictive parity / 차이 분석<br>- Domain-specific bias testing (healthcare treatment quality, hiring callback rates) / 도메인별 편향 테스팅<br>- Longitudinal monitoring for bias drift over time / 시간 경과에 따른 편향 드리프트 종단 모니터링 |
| **Mitigation** | - Pre-deployment bias auditing with domain-specific test cases / 도메인별 테스트 케이스로 배포 전 편향 감사<br>- Training data curation and debiasing / 학습 데이터 큐레이션 및 편향 제거<br>- Post-deployment monitoring and redress mechanisms / 배포 후 모니터링 및 구제 메커니즘<br>- Regulatory compliance (EU AI Act, Colorado AI Act) / 규제 준수 |
| **Severity Baseline** | High (Critical in healthcare/legal) |
| **MITRE ATLAS** | N/A |
| **OWASP Mapping** | N/A (beyond LLM/Agent scope) |
| **References** | - [Fortune: Workday, Amazon AI Employment Bias](https://fortune.com/2025/07/05/workday-amazon-alleged-ai-employment-bias-hiring-discrimination/)<br>- [Quinn Emanuel: When Machines Discriminate](https://www.quinnemanuel.com/the-firm/publications/when-machines-discriminate-the-rise-of-ai-bias-lawsuits/) |
| **Last Updated** | 2026-02-08 |

---

## A.6 Pattern Library Index / 패턴 라이브러리 인덱스

| ID | Name | Layer | Category | Severity |
|---|---|---|---|---|
| AP-MOD-001 | Role-Play / Persona Hijack Jailbreak | MOD | MOD-JB | High |
| AP-MOD-002 | Encoding / Obfuscation Jailbreak | MOD | MOD-JB | High |
| AP-MOD-003 | Best-of-N Automated Jailbreak | MOD | MOD-JB | High |
| AP-MOD-004 | Indirect Prompt Injection via Data Channel | MOD | MOD-PI | Critical |
| AP-MOD-005 | Training Data Extraction | MOD | MOD-DE | Critical |
| AP-MOD-006 | Multimodal Typographic Injection | MOD | MOD-MM | High |
| AP-SYS-001 | Agentic Tool Misuse via Prompt Manipulation | SYS | SYS-TM | Critical |
| AP-SYS-002 | RAG Corpus Poisoning | SYS | SYS-RP | High |
| AP-SYS-003 | Supply Chain Model Poisoning | SYS | SYS-SC | Critical |
| AP-SYS-004 | Privilege Escalation via Agent Identity Abuse | SYS | SYS-PE | Critical |
| AP-SOC-001 | AI-Powered Deepfake Fraud | SOC | SOC-DF | Critical |
| AP-SOC-002 | Algorithmic Bias Amplification | SOC | SOC-BA | High |

> **Extensibility Note / 확장성 참고**: This library is designed for continuous expansion. New patterns should follow the schema defined in A.1 and be assigned sequential IDs within their layer. The library should be reviewed quarterly and updated upon new significant incidents or research publications.
> 이 라이브러리는 지속적인 확장을 위해 설계되었습니다. 새 패턴은 A.1의 스키마를 따르고 계층 내에서 순차적 ID를 할당받아야 합니다.

---

# Annex B: Risk-Failure-Attack Mapping / 위험-장애-공격 매핑

## B.1 Mapping Framework / 매핑 프레임워크

This annex provides a structured, queryable mapping from Attack Techniques through Failure Modes to Risks and Harms. The structure aligns with:
이 부속서는 공격 기법에서 장애 모드, 위험, 피해로의 구조화되고 조회 가능한 매핑을 제공합니다. 다음과 정렬됩니다:

- **MITRE ATLAS**: Tactic and technique identifiers for attack classification / 공격 분류를 위한 전술 및 기법 식별자
- **MIT AI Risk Repository**: Domain taxonomy for risk categorization (7 domains, 24 subdomains as of v4, December 2025) / 위험 분류를 위한 도메인 분류 체계
- **OWASP LLM/Agentic Top 10**: Vulnerability classifications / 취약점 분류
- **NIST AI RMF**: Govern-Map-Measure-Manage lifecycle functions / 생명주기 기능

### Mapping Chain Structure / 매핑 체인 구조

```
Attack Technique → Failure Mode → Risk → Harm
   (AP-XXX-NNN)     (FM-NNN)     (R-NNN)   (H-NNN)
        │                │            │          │
   MITRE ATLAS      Technical     MIT AI    Individual /
   OWASP mapping    breakdown    Risk Repo  Organizational /
                                 domain     Societal
```

## B.2 Failure Mode Registry / 장애 모드 레지스트리

| FM-ID | Failure Mode (EN) | 장애 모드 (KR) | Applicable Layers |
|---|---|---|---|
| FM-001 | Safety alignment bypass | 안전 정렬 우회 | MOD |
| FM-002 | Instruction boundary violation | 지시 경계 위반 | MOD, SYS |
| FM-003 | Input trust boundary failure | 입력 신뢰 경계 실패 | MOD, SYS |
| FM-004 | Privacy boundary violation | 프라이버시 경계 위반 | MOD |
| FM-005 | Factual grounding failure | 사실 기반 실패 | MOD |
| FM-006 | Input validation failure | 입력 검증 실패 | MOD |
| FM-007 | Cross-modal consistency failure | 교차 모달 일관성 실패 | MOD |
| FM-008 | Capability boundary violation | 역량 경계 위반 | SYS |
| FM-009 | Access control failure | 접근 제어 실패 | SYS |
| FM-010 | Knowledge integrity failure | 지식 무결성 실패 | SYS |
| FM-011 | Model integrity failure | 모델 무결성 실패 | SYS |
| FM-012 | Goal alignment failure | 목표 정렬 실패 | SYS |
| FM-013 | State integrity failure | 상태 무결성 실패 | SYS |
| FM-014 | Synthetic media trust failure | 합성 미디어 신뢰 실패 | SOC |
| FM-015 | Information integrity failure | 정보 무결성 실패 | SOC |
| FM-016 | Fairness constraint failure | 공정성 제약 실패 | SOC |
| FM-017 | Human trust exploitation | 인간 신뢰 악용 | SOC |
| FM-018 | Data protection failure | 데이터 보호 실패 | SOC |
| FM-019 | Economic safety failure | 경제적 안전 실패 | SOC |

## B.3 Risk Registry (MIT AI Risk Repository Aligned) / 위험 레지스트리

The following risk categories are aligned with the MIT AI Risk Repository v4 domain taxonomy (7 domains, 24 subdomains).
다음 위험 카테고리는 MIT AI Risk Repository v4 도메인 분류 체계(7개 도메인, 24개 하위도메인)에 정렬됩니다.

| R-ID | Risk (EN) | 위험 (KR) | MIT Domain | MIT Subdomain |
|---|---|---|---|---|
| R-001 | Content safety violation | 콘텐츠 안전 위반 | AI System Safety | Unsafe actions & content |
| R-002 | Unauthorized action execution | 무단 행동 실행 | AI System Safety | Unsafe actions & content |
| R-003 | Supply chain compromise of AI decisions | AI 결정의 공급망 손상 | AI System Safety | System vulnerabilities |
| R-004 | Data breach / IP theft | 데이터 침해 / IP 도용 | Privacy & Security | Data privacy |
| R-005 | Misinformation propagation | 허위정보 전파 | Socioeconomic & Environmental | Mis/disinformation |
| R-006 | Model integrity compromise | 모델 무결성 손상 | AI System Safety | System vulnerabilities |
| R-007 | Safety filter bypass | 안전 필터 우회 | AI System Safety | Unsafe actions & content |
| R-008 | Unauthorized system operations | 무단 시스템 운영 | AI System Safety | System vulnerabilities |
| R-009 | Unauthorized access elevation | 무단 접근 상승 | Privacy & Security | Cybersecurity |
| R-010 | Decision quality compromise | 의사결정 품질 손상 | AI System Safety | Performance & reliability |
| R-011 | Systemic compromise via supply chain | 공급망을 통한 체계적 손상 | AI System Safety | System vulnerabilities |
| R-012 | Uncontrolled AI behavior | 통제되지 않는 AI 행동 | AI System Safety | Lack of control |
| R-013 | Persistent state compromise | 지속적 상태 손상 | AI System Safety | System vulnerabilities |
| R-014 | Identity fraud / manipulation | 신원 사기 / 조작 | Socioeconomic & Environmental | Criminal activities |
| R-015 | Democratic process corruption | 민주적 프로세스 훼손 | Socioeconomic & Environmental | Political instability |
| R-016 | Discrimination at scale | 대규모 차별 | Discrimination & Toxicity | Unfair discrimination |
| R-017 | Fraud / personal manipulation | 사기 / 개인 조작 | Socioeconomic & Environmental | Criminal activities |
| R-018 | Regulatory non-compliance | 규제 비준수 | Privacy & Security | Data privacy |
| R-019 | Market integrity compromise | 시장 무결성 손상 | Socioeconomic & Environmental | Economic instability |

## B.4 Complete Attack-Failure-Risk-Harm Mapping Table / 완전한 공격-장애-위험-피해 매핑 테이블

### Model-Level Mappings / 모델 수준 매핑

| Attack Pattern | Failure Mode | Risk | Harm Level | Example Harm |
|---|---|---|---|---|
| AP-MOD-001 (Role-Play Jailbreak) | FM-001 (Safety alignment bypass) | R-001 (Content safety violation) | Individual + Societal | Harmful content generation; individual radicalization / 유해 콘텐츠 생성; 개인 급진화 |
| AP-MOD-002 (Encoding Jailbreak) | FM-001 (Safety alignment bypass) | R-001 (Content safety violation) | Individual + Societal | Filter evasion for restricted content / 제한된 콘텐츠에 대한 필터 회피 |
| AP-MOD-003 (BoN Automated Jailbreak) | FM-001 (Safety alignment bypass) | R-001, R-007 (Content safety, filter bypass) | Individual + Societal | Scalable automated safety bypass / 확장 가능한 자동화 안전 우회 |
| AP-MOD-004 (Indirect Prompt Injection) | FM-003 (Input trust boundary failure) | R-002, R-003, R-004 (Unauthorized action, supply chain, data breach) | Individual + Organizational | Data exfiltration ($4.80M avg breach cost); manipulated decisions / 데이터 유출; 조작된 결정 |
| AP-MOD-005 (Training Data Extraction) | FM-004 (Privacy boundary violation) | R-004 (Data breach/IP theft) | Individual + Organizational | PII exposure; GDPR/CCPA violations / PII 노출; 규제 위반 |
| AP-MOD-006 (Multimodal Typographic) | FM-007 (Cross-modal consistency failure) | R-007 (Safety filter bypass) | Individual + Societal | Cross-modal safety bypass / 교차 모달 안전 우회 |

### System-Level Mappings / 시스템 수준 매핑

| Attack Pattern | Failure Mode | Risk | Harm Level | Example Harm |
|---|---|---|---|---|
| AP-SYS-001 (Agentic Tool Misuse) | FM-008 (Capability boundary violation) | R-008 (Unauthorized system operations) | Organizational | Cloud resource deletion; data destruction / 클라우드 리소스 삭제; 데이터 파괴 |
| AP-SYS-002 (RAG Poisoning) | FM-010 (Knowledge integrity failure) | R-010 (Decision quality compromise) | Individual + Organizational | Corrupted AI-assisted decisions in healthcare, legal, finance / 의료, 법률, 금융에서 손상된 AI 보조 결정 |
| AP-SYS-003 (Supply Chain Poisoning) | FM-011 (Model integrity failure) | R-011 (Systemic compromise) | Organizational + Societal | Backdoored models across organizations / 조직 전반에 걸친 백도어 모델 |
| AP-SYS-004 (Privilege Escalation) | FM-009 (Access control failure) | R-009 (Unauthorized access elevation) | Organizational | Full system compromise; cross-tenant breach / 전체 시스템 손상; 교차 테넌트 침해 |

### Socio-Technical Mappings / 사회기술적 매핑

| Attack Pattern | Failure Mode | Risk | Harm Level | Example Harm |
|---|---|---|---|---|
| AP-SOC-001 (Deepfake Fraud) | FM-014 (Synthetic media trust failure) | R-014 (Identity fraud), R-017 (Personal manipulation) | Individual + Organizational | Financial fraud ($25M+ per incident); election interference / 금융 사기; 선거 간섭 |
| AP-SOC-002 (Bias Amplification) | FM-016 (Fairness constraint failure) | R-016 (Discrimination at scale) | Individual + Societal | Systematic exclusion from employment, housing, healthcare / 고용, 주거, 의료에서의 체계적 배제 |

## B.5 Severity and Likelihood Conditional Assessment Guide / 심각도 및 가능성 조건부 평가 가이드

### Severity Assessment Matrix / 심각도 평가 매트릭스

Severity is determined by the **most severe applicable condition** in the following dimensions:
심각도는 다음 차원에서 **가장 심각한 해당 조건**에 의해 결정됩니다:

| Dimension / 차원 | Critical / 치명적 | High / 높음 | Medium / 중간 | Low / 낮음 |
|---|---|---|---|---|
| **Life Safety / 생명 안전** | Direct risk to human life (medical AI, autonomous vehicles) | Indirect risk to physical safety | No physical safety risk | N/A |
| **Data Sensitivity / 데이터 민감도** | PII/PHI exposure; credentials; financial data | Proprietary/confidential data | Internal operational data | Public information |
| **Action Reversibility / 행동 가역성** | Irreversible actions (data deletion, financial transfer) | Difficult to reverse (published content, sent messages) | Reversible with effort | Easily reversible |
| **Blast Radius / 영향 범위** | Population-scale or systemic (supply chain, infrastructure) | Organizational or multi-tenant | Team or single-tenant | Individual user |
| **Autonomy Level / 자율성 수준** | Fully autonomous with real-world actions | Semi-autonomous with limited oversight | Autonomous with human approval gates | Human-in-the-loop at every step |
| **Regulatory Impact / 규제 영향** | Violation of active regulations with enforcement (EU AI Act, GDPR) | Violation of guidelines/best practices | Minor compliance gaps | Compliant |

### Likelihood Assessment Factors / 가능성 평가 요소

| Factor / 요소 | Higher Likelihood / 높은 가능성 | Lower Likelihood / 낮은 가능성 |
|---|---|---|
| **Required Skill / 필요 기술** | Low skill, commodity tools available | High skill, custom tooling needed |
| **Access Requirements / 접근 요건** | Public API, unauthenticated access | Internal access, authentication required |
| **Attack Automation / 공격 자동화** | Fully automatable (BoN, fuzzing) | Requires manual, creative effort |
| **Defense Maturity / 방어 성숙도** | No defenses or known bypasses exist | Multiple defense layers with no known bypasses |
| **Motivation / 동기** | Clear financial, political, or ideological incentive | No obvious motivation |
| **Precedent / 선례** | Demonstrated in real-world incidents | Theoretical only, no known exploitation |

### Conditional Severity Adjustment / 조건부 심각도 조정

The base severity of an attack pattern (defined in Annex A) should be adjusted based on deployment context:
공격 패턴의 기본 심각도(Annex A에서 정의)는 배포 맥락에 따라 조정되어야 합니다:

```
Adjusted Severity = max(Base Severity, Context Severity)
조정된 심각도 = max(기본 심각도, 맥락 심각도)

Where Context Severity is determined by:
맥락 심각도 결정 요소:
  - Domain criticality (healthcare > entertainment)
    도메인 중요도 (의료 > 엔터테인먼트)
  - Affected population vulnerability (children, elderly, disabled)
    영향받는 인구 취약성 (아동, 노인, 장애인)
  - Deployment scale (millions of users > internal tool)
    배포 규모 (수백만 사용자 > 내부 도구)
  - Autonomy level (agentic > conversational)
    자율성 수준 (에이전틱 > 대화형)
```

**Example**: A `Medium` base severity jailbreak (AP-MOD-002) deployed in a **healthcare advice chatbot** serving **elderly patients** would be escalated to `Critical` because the domain criticality and affected population vulnerability both warrant maximum severity.
**예시**: **노인 환자**를 대상으로 하는 **의료 상담 챗봇**에 배포된 `중간` 기본 심각도 탈옥(AP-MOD-002)은 도메인 중요도와 영향받는 인구 취약성 모두가 최대 심각도를 보장하기 때문에 `치명적`으로 상향됩니다.

---

# Annex C: Benchmark Coverage Matrix / 벤치마크 커버리지 매트릭스

## C.1 Benchmark Inventory / 벤치마크 목록

This annex analyzes what existing safety benchmarks cover from a **capability perspective** (what they test for), not a score/leaderboard perspective (how models rank).
이 부속서는 기존 안전 벤치마크가 **점수/리더보드** 관점이 아닌 **역량 관점**(무엇을 테스트하는가)에서 커버하는 바를 분석합니다.

| Benchmark | Publisher | Year | Scope | Format |
|---|---|---|---|---|
| **HarmBench** | Stanford HELM | 2024 | Jailbreak resistance | Automated adversarial prompts; attack success rate |
| **SafetyBench** | Tsinghua/PKU | 2024 | General safety knowledge | Multiple-choice questions across 7 safety categories |
| **BBQ (Bias Benchmark for QA)** | Google | 2022 | Social bias in QA | Question-answering with ambiguous/disambiguated contexts |
| **TruthfulQA** | Evans & Steinhardt | 2022 | Truthfulness | QA on adversarial questions humans answer incorrectly |
| **ToxiGen** | Microsoft | 2022 | Implicit toxicity | Machine-generated toxic/benign statement classification |
| **RealToxicityPrompts** | Allen AI | 2020 | Toxicity in open generation | Sentence completion with toxicity scoring |
| **XSTest** | Rottger et al. | 2023 | Over-refusal calibration | Safe prompts that resemble unsafe ones; tests helpfulness-safety balance |
| **SimpleSafetyTest** | Vidgen et al. | 2024 | Basic safety refusal | Direct harmful requests testing fundamental refusal |
| **AnthropicRedTeam** | Anthropic | 2023 | Adversarial resilience | Human red team probing dataset |
| **TrustLLM** | Multiple | 2024 | Comprehensive trust | 6 dimensions: truthfulness, safety, fairness, robustness, privacy, ethics |
| **MCP-SafetyBench** | SJTU | 2025 | Agentic tool safety | Safety evaluation with real MCP server interactions |
| **DeepTeam** | Confident AI | 2025 | Automated red teaming | Automated jailbreaking, prompt injection, bias testing |
| **SaferBench** | Multiple | 2025 | Comprehensive safety | Multi-dimensional safety across risk levels |
| **MLCommons AI Safety v0.5** | MLCommons | 2024 | Standardized safety | Standardized safety testing with defined test specifications |

## C.2 Coverage Analysis by Attack Category / 공격 카테고리별 커버리지 분석

### What Each Benchmark Covers / 각 벤치마크가 커버하는 것

| Benchmark | What It Covers / 커버하는 것 | What It Misses / 놓치는 것 | Key Limitation / 핵심 한계 |
|---|---|---|---|
| **HarmBench** | Known jailbreak techniques (GCG, AutoDAN, PAIR); attack success rates against safety-trained models | Adaptive/iterative attacks; indirect prompt injection; system-level defenses; multimodal attacks | Static attack set; model-only evaluation without system defenses / 정적 공격 세트; 시스템 방어 없는 모델만 평가 |
| **SafetyBench** | Broad safety knowledge across 7 categories (offensiveness, fairness, physical health, mental health, privacy, illegal activities, ethics) | Adversarial robustness; real-world interaction patterns; agentic scenarios | Multiple-choice format does not reflect how users actually interact with LLMs / 객관식 형식은 사용자가 실제로 LLM과 상호작용하는 방식을 반영하지 않음 |
| **BBQ** | Social bias across 9 protected attributes (age, disability, gender, nationality, physical appearance, race, religion, SES, sexual orientation) | Domain-specific bias (healthcare treatment, hiring); intersectional bias; subtle/implicit discrimination | QA format; limited to US-centric social categories / QA 형식; 미국 중심 사회 범주에 제한 |
| **TruthfulQA** | Model tendency to produce false but plausible answers on 817 adversarial questions across 38 categories | Domain-specific hallucination (legal citations, medical dosages); grounding verification with external sources | Static question set; does not cover retrieval-augmented or tool-augmented scenarios / 정적 질문 세트; RAG 또는 도구 보강 시나리오 미커버 |
| **ToxiGen** | Implicit toxicity targeting 13 minority groups; distinguishes between toxic and benign mentions | Context-dependent toxicity; cross-cultural toxicity norms; toxic output in non-English languages | English-only; binary toxic/benign classification / 영어만; 이진 독성/양성 분류 |
| **RealToxicityPrompts** | Open-ended generation toxicity; toxicity rates under different prompting conditions | Intentional toxicity elicitation (jailbreaks); conversational toxicity; context-dependent harm | Sentence-level; does not cover multi-turn conversations or system-level interactions / 문장 수준; 다회 대화 또는 시스템 수준 상호작용 미커버 |
| **XSTest** | Over-refusal on safe prompts that resemble unsafe ones (250 safe + 200 unsafe prompts) | Under-refusal on sophisticated attacks; domain-specific refusal calibration | Small test set; limited attack surface coverage / 소규모 테스트 세트; 제한된 공격 표면 커버리지 |
| **TrustLLM** | Six trust dimensions (truthfulness, safety, fairness, robustness, privacy, ethics) with 30+ datasets | Agentic scenarios; system-level attacks; multimodal; supply chain | Aggregation of existing benchmarks rather than new evaluation paradigms / 새 평가 패러다임이 아닌 기존 벤치마크 집합 |
| **MCP-SafetyBench** | Agentic tool safety with real MCP server interactions; covers tool misuse, over-privilege, data leakage | Multi-agent scenarios; long-duration drift; supply chain; socio-technical attacks | New (2025); limited adoption; MCP-specific / 신규; 제한된 채택; MCP 특화 |
| **DeepTeam** | Automated jailbreaking and prompt injection testing at scale; mutation-based attack generation | Indirect injection; agentic scenarios; socio-technical; domain-specific | Automation may miss creative/novel attack strategies / 자동화가 창의적/새로운 공격 전략을 놓칠 수 있음 |

## C.3 Coverage Matrix: Benchmark x Attack Category / 커버리지 매트릭스

Legend / 범례: ● Full coverage / 전체 커버 | ◐ Partial / 부분 | ○ None / 없음

| Attack Category | HarmBench | SafetyBench | BBQ | TruthfulQA | ToxiGen | XSTest | TrustLLM | MCP-SafetyBench | DeepTeam | SaferBench |
|---|---|---|---|---|---|---|---|---|---|---|
| **Jailbreak (basic)** | ● | ○ | ○ | ○ | ○ | ◐ | ◐ | ○ | ● | ◐ |
| **Jailbreak (adaptive)** | ◐ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ◐ | ○ |
| **Prompt Injection (direct)** | ◐ | ○ | ○ | ○ | ○ | ○ | ○ | ◐ | ● | ◐ |
| **Prompt Injection (indirect)** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ◐ | ○ | ○ |
| **Training Data Extraction** | ○ | ○ | ○ | ○ | ○ | ○ | ◐ | ○ | ○ | ○ |
| **Multimodal Attacks** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **Hallucination** | ○ | ◐ | ○ | ● | ○ | ○ | ◐ | ○ | ○ | ◐ |
| **Toxicity** | ◐ | ◐ | ○ | ○ | ● | ○ | ◐ | ○ | ◐ | ◐ |
| **Bias / Fairness** | ○ | ◐ | ● | ○ | ◐ | ○ | ◐ | ○ | ◐ | ◐ |
| **Over-Refusal** | ○ | ○ | ○ | ○ | ○ | ● | ○ | ○ | ○ | ○ |
| **Agentic Tool Safety** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ● | ○ | ○ |
| **Privilege Escalation** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ◐ | ○ | ○ |
| **RAG Poisoning** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **Supply Chain** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **Memory Manipulation** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **Deepfake / Synthetic Media** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **Disinformation** | ○ | ○ | ○ | ◐ | ○ | ○ | ◐ | ○ | ○ | ○ |
| **Social Engineering** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **Privacy** | ○ | ◐ | ○ | ○ | ○ | ○ | ◐ | ◐ | ○ | ○ |
| **Economic Harm** | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |

## C.4 Gap Analysis Summary / 갭 분석 요약

### Critical Gaps (No Coverage) / 치명적 갭 (커버리지 없음)

| Gap | Impact | Recommended Action / 권장 조치 |
|---|---|---|
| **Indirect Prompt Injection** | Highest-impact deployed attack vector; no benchmark adequately tests data channel injection | Develop IPI-specific benchmark with email, document, web, and database injection scenarios / 이메일, 문서, 웹, 데이터베이스 인젝션 시나리오로 IPI 특화 벤치마크 개발 |
| **RAG Poisoning** | Growing attack surface as RAG becomes standard architecture; zero benchmark coverage | Create RAG-specific poisoning benchmark with corpus injection and retrieval manipulation tests / 코퍼스 인젝션 및 검색 조작 테스트로 RAG 특화 포이즈닝 벤치마크 생성 |
| **Supply Chain Integrity** | Single backdoor can cascade to thousands of deployments; no standardized testing | Establish model provenance and backdoor detection benchmark with poisoned model samples / 포이즈닝된 모델 샘플로 모델 출처 및 백도어 탐지 벤치마크 수립 |
| **Memory / Context Manipulation** | Persistent compromise of conversational AI; no benchmark tests multi-session attacks | Develop temporal benchmark testing behavior across extended multi-session interactions / 확장된 다중 세션 상호작용에 걸친 행동 테스트 시간적 벤치마크 개발 |
| **Multimodal Safety** | Rapidly growing attack surface; virtually no coverage | Create cross-modal attack benchmark for vision-language, audio-language, and video-language models / 비전-언어, 오디오-언어, 비디오-언어 모델용 교차 모달 공격 벤치마크 생성 |
| **Socio-Technical Impacts** | Downstream societal harm unmeasured; no methodology exists | Develop impact assessment framework measuring downstream effects beyond model outputs / 모델 출력을 넘어 다운스트림 효과를 측정하는 영향 평가 프레임워크 개발 |

### Structural Limitations Across All Benchmarks / 모든 벤치마크의 구조적 한계

| Limitation | Statistic | Impact |
|---|---|---|
| Focus on predefined risks only / 사전 정의된 위험만 집중 | 81% of benchmarks | Cannot detect novel or emergent attack vectors / 새로운 또는 창발적 공격 벡터 탐지 불가 |
| Binary pass/fail scoring / 이진 합격/불합격 점수 | 79% of benchmarks | No severity differentiation; minor and catastrophic failures weighted equally / 심각도 차별화 없음 |
| Static attack sets / 정적 공격 세트 | Nearly all | Cannot simulate adaptive adversaries who iterate on defenses / 방어에 대해 반복하는 적응형 적대자 시뮬레이션 불가 |
| English-only / 영어만 | Majority | Misses cross-cultural, multilingual bias and safety issues / 교차 문화, 다국어 편향 및 안전 문제 놓침 |
| Point-in-time evaluation / 시점 평가 | All | Cannot detect behavioral drift over time / 시간 경과에 따른 행동 드리프트 탐지 불가 |
| Model-only testing / 모델만 테스팅 | Most | Ignores system-level defenses and deployment context / 시스템 수준 방어 및 배포 맥락 무시 |

## C.5 Benchmark Selection Guide for Red Teams / 레드팀을 위한 벤치마크 선택 가이드

| Testing Objective / 테스팅 목적 | Primary Benchmark | Supplementary | Gaps to Cover Manually / 수동 보충 필요 |
|---|---|---|---|
| Pre-deployment jailbreak assessment | HarmBench + DeepTeam | AnthropicRedTeam | Adaptive attacks, multi-turn escalation |
| Bias and fairness audit | BBQ + TrustLLM | Domain-specific test cases | Intersectional bias, domain-specific (healthcare, hiring) |
| Truthfulness evaluation | TruthfulQA | SafetyBench | Domain-specific hallucination, grounding verification |
| Agentic system safety | MCP-SafetyBench | CSA Guide scenarios | Multi-agent, privilege escalation, long-duration drift |
| Comprehensive safety baseline | TrustLLM + SaferBench | HarmBench + BBQ + TruthfulQA | Indirect injection, RAG, supply chain, multimodal |
| Regulatory compliance (EU AI Act) | MLCommons AI Safety + TrustLLM | Bias/fairness suite | Domain-specific, agentic, continuous monitoring |

---

# Annex D: Incident-Driven Update Guide / 사고 기반 업데이트 가이드

## D.1 Purpose and Principles / 목적 및 원칙

This annex defines the process for updating the Living Annexes (A, B, C) in response to real-world AI safety incidents. The goal is to ensure the guideline remains current and captures lessons from production failures.
이 부속서는 실제 AI 안전 사고에 대응하여 리빙 부속서(A, B, C)를 업데이트하는 프로세스를 정의합니다.

### Principles / 원칙

1. **Incident-driven, not calendar-driven / 사고 기반, 일정 기반이 아님**: While quarterly reviews are recommended, significant incidents should trigger immediate updates regardless of schedule. / 분기별 검토를 권장하지만, 중대 사고는 일정과 관계없이 즉각적인 업데이트를 트리거해야 합니다.

2. **Pattern extraction over incident cataloging / 사고 목록화가 아닌 패턴 추출**: The goal is not to maintain a complete incident database, but to extract generalizable attack patterns and failure modes. / 목표는 완전한 사고 데이터베이스 유지가 아니라 일반화 가능한 공격 패턴과 장애 모드를 추출하는 것입니다.

3. **Test-incident gap focus / 테스트-사고 불일치 초점**: Every incident should be analyzed against existing test coverage to identify what testing should have caught but did not. / 모든 사고는 기존 테스트 커버리지에 대해 분석하여 테스트가 잡아야 했지만 잡지 못한 것을 식별해야 합니다.

4. **Traceable updates / 추적 가능한 업데이트**: All annex updates must reference the triggering incident(s) and include date stamps. / 모든 부속서 업데이트는 트리거 사고를 참조하고 날짜 스탬프를 포함해야 합니다.

## D.2 Update Trigger Criteria / 업데이트 트리거 기준

An annex update is triggered when any of the following occur:
다음 중 하나가 발생하면 부속서 업데이트가 트리거됩니다:

| Trigger Category / 트리거 카테고리 | Description / 설명 | Update Urgency / 긴급도 |
|---|---|---|
| **Novel Attack Technique** | An incident reveals an attack technique not covered in Annex A | Immediate (within 2 weeks) / 즉시 (2주 이내) |
| **New Failure Mode** | An incident demonstrates a failure mode not listed in Annex B | Immediate (within 2 weeks) / 즉시 (2주 이내) |
| **Test-Incident Gap** | An incident occurs in a category where existing benchmarks (Annex C) showed adequate coverage | High (within 4 weeks) / 높음 (4주 이내) |
| **Severity Recalibration** | An incident demonstrates that a currently `Medium` severity pattern should be `Critical` based on real-world impact | High (within 4 weeks) / 높음 (4주 이내) |
| **New Benchmark Published** | A significant new benchmark is released that changes the coverage matrix | Normal (next quarterly review) / 일반 (다음 분기 검토) |
| **Regulatory Change** | New regulation or enforcement action changes the risk landscape | Normal (next quarterly review) / 일반 (다음 분기 검토) |
| **Quarterly Review** | Scheduled periodic review regardless of incidents | Scheduled / 예정 |

## D.3 Incident-to-Update Workflow / 사고-업데이트 워크플로우

### Phase 1: Incident Identification / 1단계: 사고 식별

```
Sources for Incident Detection / 사고 탐지 소스:
├── Public incident reports (AIAAIC Repository, AI Incident Database)
│   공개 사고 보고서
├── CVE databases (NVD, MITRE)
│   CVE 데이터베이스
├── Academic publications (arXiv, conferences)
│   학술 출판물
├── Industry reports (vendor security advisories)
│   산업 보고서 (벤더 보안 자문)
├── Regulatory enforcement actions
│   규제 집행 조치
├── Media coverage of AI failures
│   AI 실패에 대한 미디어 보도
└── Internal red team findings
    내부 레드팀 발견사항
```

**Intake Template / 접수 템플릿:**

| Field / 필드 | Content / 내용 |
|---|---|
| Incident ID | `INC-YYYY-NNN` |
| Date Discovered / 발견일 | ISO 8601 date |
| Source / 출처 | Where the incident was reported |
| Affected System(s) / 영향 시스템 | Product, model, or service affected |
| Attack Category / 공격 카테고리 | From Annex A category taxonomy |
| Brief Description / 간략 설명 | One-paragraph summary |
| Impact / 영향 | Individual / Organizational / Societal |
| Estimated Severity / 예상 심각도 | Critical / High / Medium / Low |

### Phase 2: Incident Analysis / 2단계: 사고 분석

For each incident, conduct the following analysis:
각 사고에 대해 다음 분석을 수행합니다:

#### 2a. Root Cause Analysis / 근본 원인 분석

| Analysis Question / 분석 질문 | Purpose / 목적 |
|---|---|
| What was the attack technique? / 공격 기법은 무엇이었는가? | Map to Annex A pattern or identify novel technique / Annex A 패턴에 매핑 또는 새로운 기법 식별 |
| What was the failure mode? / 장애 모드는 무엇이었는가? | Map to Annex B failure mode or identify new one / Annex B 장애 모드에 매핑 또는 새 것 식별 |
| What were the prerequisites? / 전제조건은 무엇이었는가? | Understand attacker access and capability requirements / 공격자 접근 및 역량 요건 이해 |
| Was this foreseeable or unforeseeable? / 예측 가능했는가, 예측 불가능했는가? | Assess whether existing frameworks should have anticipated this / 기존 프레임워크가 이를 예상했어야 하는지 평가 |
| What was the actual harm? / 실제 피해는 무엇이었는가? | Document realized harm at all levels / 모든 수준에서 실현된 피해 문서화 |

#### 2b. Test-Incident Gap Analysis / 테스트-사고 불일치 분석

This is the most critical step. For each incident, determine:
이것이 가장 중요한 단계입니다. 각 사고에 대해 다음을 결정합니다:

| Gap Analysis Question / 갭 분석 질문 | Output / 산출물 |
|---|---|
| Is this attack technique in Annex A? / 이 공격 기법이 Annex A에 있는가? | If No → Create new pattern / 없으면 → 새 패턴 생성 |
| Is this failure mode in Annex B? / 이 장애 모드가 Annex B에 있는가? | If No → Add to failure mode registry / 없으면 → 장애 모드 레지스트리에 추가 |
| Do existing benchmarks (Annex C) cover this category? / 기존 벤치마크(Annex C)가 이 카테고리를 커버하는가? | If Yes but incident still occurred → Benchmark effectiveness gap / 예이지만 사고가 여전히 발생 → 벤치마크 효과성 갭 |
| Is the current severity assessment accurate? / 현재 심각도 평가가 정확한가? | If No → Recalibrate severity in Annex A and B / 아니면 → Annex A, B에서 심각도 재보정 |
| Were the recommended mitigations adequate? / 권장 완화 조치가 적절했는가? | If No → Update mitigation recommendations / 아니면 → 완화 권고사항 업데이트 |

#### 2c. Pattern Extraction / 패턴 추출

If the incident reveals a novel attack pattern, extract it into the Annex A schema:
사고가 새로운 공격 패턴을 밝히면 Annex A 스키마로 추출합니다:

1. Assign new pattern ID following naming convention / 명명 규칙에 따라 새 패턴 ID 할당
2. Classify into appropriate layer and category / 적절한 계층 및 카테고리로 분류
3. Document prerequisites, procedure, detection, and mitigation / 전제조건, 절차, 탐지, 완화 문서화
4. Map to MITRE ATLAS and OWASP references / MITRE ATLAS 및 OWASP 참조에 매핑
5. Set initial severity baseline based on incident impact / 사고 영향에 따라 초기 심각도 기준선 설정
6. Reference the triggering incident / 트리거 사고 참조

### Phase 3: Annex Update Execution / 3단계: 부속서 업데이트 실행

| Target Annex | Update Type | Actions / 조치 |
|---|---|---|
| **Annex A** | New Pattern | Add new attack pattern entry following A.1 schema; update A.6 index / A.1 스키마에 따라 새 공격 패턴 항목 추가; A.6 인덱스 업데이트 |
| **Annex A** | Pattern Update | Update existing pattern's detection/mitigation/severity; add incident reference / 기존 패턴의 탐지/완화/심각도 업데이트; 사고 참조 추가 |
| **Annex B** | New Mapping | Add new attack-failure-risk-harm chain to mapping table / 매핑 테이블에 새 공격-장애-위험-피해 체인 추가 |
| **Annex B** | Severity Recalibration | Update severity assessment based on real-world impact evidence / 실제 영향 증거에 따라 심각도 평가 업데이트 |
| **Annex C** | Coverage Gap Identified | Mark newly identified gap in coverage matrix; add to gap analysis / 커버리지 매트릭스에 새로 식별된 갭 표시; 갭 분석에 추가 |
| **Annex C** | New Benchmark | Add benchmark to inventory; update coverage matrix / 벤치마크를 목록에 추가; 커버리지 매트릭스 업데이트 |

### Phase 4: Review and Publication / 4단계: 검토 및 공개

| Step / 단계 | Action / 조치 | Responsible / 담당 |
|---|---|---|
| 4.1 | Draft update reviewed by at least 2 domain experts / 최소 2명의 도메인 전문가가 초안 업데이트 검토 | Review Committee / 검토 위원회 |
| 4.2 | Verify no confidential/sensitive information in public-facing content / 공개 콘텐츠에 기밀/민감 정보 없음 확인 | Legal/Ethics Advisor / 법률/윤리 자문 |
| 4.3 | Assign version number increment / 버전 번호 증분 할당 | Document Controller / 문서 관리자 |
| 4.4 | Publish updated annex with changelog / 변경 로그와 함께 업데이트된 부속서 공개 | Publication Team / 출판 팀 |
| 4.5 | Notify stakeholders of material changes / 이해관계자에게 중요 변경 사항 통지 | Communications / 커뮤니케이션 |

## D.4 Test-Incident Gap Identification Process / 테스트-사고 불일치 식별 프로세스

This process specifically addresses the systematic identification of gaps between what testing covers and what real-world incidents reveal.
이 프로세스는 테스팅이 커버하는 것과 실제 사고가 밝히는 것 사이의 갭을 체계적으로 식별합니다.

### Gap Taxonomy / 갭 분류 체계

| Gap Type / 갭 유형 | Description / 설명 | Example / 예시 |
|---|---|---|
| **Coverage Gap** / 커버리지 갭 | Attack category not tested at all | No benchmark tests RAG poisoning / RAG 포이즈닝을 테스트하는 벤치마크 없음 |
| **Depth Gap** / 깊이 갭 | Category tested but at insufficient depth or sophistication | Basic jailbreaks tested, but adaptive/iterative attacks missed / 기본 탈옥은 테스트되지만 적응형/반복 공격 놓침 |
| **Context Gap** / 맥락 갭 | Testing exists but not in the relevant deployment context | Safety tested for chat, but not for agentic tool use / 채팅에 대해 안전 테스트되지만 에이전틱 도구 사용은 아님 |
| **Domain Gap** / 도메인 갭 | Generic testing done, but domain-specific risks missed | General bias testing done, but healthcare treatment bias missed / 일반 편향 테스팅 수행되지만 의료 치료 편향 놓침 |
| **Temporal Gap** / 시간 갭 | Point-in-time testing passed, but behavior drifted after deployment | Model safe at evaluation, unsafe after context window accumulated adversarial content / 평가 시 모델 안전, 컨텍스트 윈도우에 적대적 콘텐츠 축적 후 불안전 |
| **Composition Gap** / 구성 갭 | Individual components tested, but composition/integration not tested | Model safe + tools safe, but model-tool interaction unsafe / 모델 안전 + 도구 안전, 그러나 모델-도구 상호작용 불안전 |

### Known Test-Incident Gaps (as of Q4 2025) / 알려진 테스트-사고 불일치 (2025년 4분기 기준)

| Incident / 사고 | Gap Type | What Testing Should Have Caught / 테스트가 잡아야 했던 것 | Recommended New Test / 권장 새 테스트 |
|---|---|---|---|
| Air Canada chatbot (2024 Q1) | Domain Gap | Hallucination in domain-specific policy questions | Domain-specific factual grounding test with verified knowledge base / 검증된 지식 베이스로 도메인별 사실 기반 테스트 |
| Mata v. Avianca legal citations (2023 Q2) | Coverage Gap | Generated references not verified against real databases | Citation verification test against authoritative sources / 권위 있는 출처에 대한 인용 검증 테스트 |
| Whisper medical hallucinations (2024 Q4) | Context Gap | Fabricated content in low-confidence audio segments | Multimodal edge-case testing (low-quality input → high-confidence false output) / 멀티모달 에지 케이스 테스팅 |
| EchoLeak / Microsoft Copilot (2025 Q3) | Composition Gap | Indirect injection via email data channel in agentic system | End-to-end agentic data flow testing with poisoned data sources / 포이즈닝된 데이터 소스로 엔드투엔드 에이전틱 데이터 흐름 테스팅 |
| Workday hiring bias (2025 Q2) | Domain Gap | Intersectional age discrimination in hiring pipeline | Intersectional fairness testing with domain-specific protected attributes / 도메인별 보호 속성으로 교차적 공정성 테스팅 |
| Cedars-Sinai racial treatment bias (2025 Q2) | Domain Gap | Race-dependent treatment quality in medical LLM | Healthcare-specific bias testing comparing treatment recommendations across demographics / 인구통계 전반에 걸친 치료 권고 비교 의료 특화 편향 테스팅 |
| 100+ poisoned models on Hugging Face (2024 Q4) | Coverage Gap | No behavioral backdoor detection in model supply chain | Supply chain integrity benchmark with behavioral trigger testing / 행동 트리거 테스팅을 포함한 공급망 무결성 벤치마크 |
| $25M deepfake Zoom fraud (2024 Q1) | Coverage Gap | No integration of deepfake detection with business communication tools | Cross-system integration testing for AI-mediated fraud scenarios / AI 매개 사기 시나리오에 대한 교차 시스템 통합 테스팅 |

## D.5 Quarterly Review Checklist / 분기별 검토 체크리스트

The following checklist should be completed at each quarterly review:
다음 체크리스트는 각 분기별 검토 시 완료되어야 합니다:

- [ ] **Incident Review / 사고 검토**: Review all notable AI safety incidents since last update. Source from AIAAIC Repository, AI Incident Database, CVE databases, and media. / 마지막 업데이트 이후 모든 주목할 만한 AI 안전 사고 검토.
- [ ] **Pattern Currency / 패턴 현행성**: Verify all Annex A patterns remain current. Remove or archive obsolete patterns. Update detection/mitigation for evolving defenses. / 모든 Annex A 패턴이 현행성을 유지하는지 확인.
- [ ] **Severity Recalibration / 심각도 재보정**: Review severity ratings in light of new incident data. Adjust where real-world impact differs from assessed severity. / 새 사고 데이터를 고려한 심각도 등급 검토.
- [ ] **Benchmark Updates / 벤치마크 업데이트**: Check for newly published benchmarks. Update Annex C coverage matrix. Reassess gap analysis. / 새로 출판된 벤치마크 확인.
- [ ] **Mapping Completeness / 매핑 완전성**: Verify all Annex A patterns have corresponding Annex B mappings. Ensure no orphaned entries. / 모든 Annex A 패턴에 해당하는 Annex B 매핑이 있는지 확인.
- [ ] **Regulatory Updates / 규제 업데이트**: Check for new regulations or enforcement actions that affect risk assessment. / 위험 평가에 영향을 미치는 새 규제 또는 집행 조치 확인.
- [ ] **Changelog / 변경 로그**: Document all changes made during this review cycle with rationale. / 이 검토 주기 동안 이루어진 모든 변경사항을 근거와 함께 문서화.

## D.6 Version Control and Changelog Template / 버전 관리 및 변경 로그 템플릿

### Version Numbering / 버전 번호 체계

```
Living Annex Version: {Major}.{Minor}.{Patch}
리빙 부속서 버전: {메이저}.{마이너}.{패치}

Major: Structural changes to schema or taxonomy / 스키마 또는 분류 체계의 구조적 변경
Minor: New patterns, mappings, or benchmark entries / 새 패턴, 매핑 또는 벤치마크 항목
Patch: Updates to existing entries (severity, mitigation, references) / 기존 항목 업데이트
```

### Changelog Entry Template / 변경 로그 항목 템플릿

```markdown
## [Version] - YYYY-MM-DD

### Added / 추가
- AP-MOD-007: [Pattern Name] - triggered by INC-YYYY-NNN
  AP-MOD-007: [패턴 이름] - INC-YYYY-NNN에 의해 트리거

### Changed / 변경
- AP-SYS-001: Updated severity from High to Critical based on INC-YYYY-NNN
  AP-SYS-001: INC-YYYY-NNN에 기반하여 심각도를 높음에서 치명적으로 변경

### Deprecated / 폐기 예정
- AP-MOD-003: Superseded by AP-MOD-007 (more comprehensive pattern)
  AP-MOD-003: AP-MOD-007로 대체됨 (더 포괄적인 패턴)

### Benchmark / 벤치마크
- Added SaferBench v2.0 to Annex C with updated coverage matrix
  Annex C에 SaferBench v2.0 추가, 업데이트된 커버리지 매트릭스
```

---

## Cross-Reference Index / 교차 참조 인덱스

### Annex A → Annex B Mapping / Annex A → Annex B 매핑

| Attack Pattern (Annex A) | Failure Mode (Annex B) | Risk (Annex B) |
|---|---|---|
| AP-MOD-001 | FM-001 | R-001 |
| AP-MOD-002 | FM-001 | R-001 |
| AP-MOD-003 | FM-001 | R-001, R-007 |
| AP-MOD-004 | FM-003 | R-002, R-003, R-004 |
| AP-MOD-005 | FM-004 | R-004 |
| AP-MOD-006 | FM-007 | R-007 |
| AP-SYS-001 | FM-008 | R-008 |
| AP-SYS-002 | FM-010 | R-010 |
| AP-SYS-003 | FM-011 | R-011 |
| AP-SYS-004 | FM-009 | R-009 |
| AP-SOC-001 | FM-014 | R-014, R-017 |
| AP-SOC-002 | FM-016 | R-016 |

### Annex A → Annex C Coverage / Annex A → Annex C 커버리지

| Attack Pattern (Annex A) | Benchmark Coverage (Annex C) | Coverage Level |
|---|---|---|
| AP-MOD-001 (Role-Play Jailbreak) | HarmBench, DeepTeam | Good |
| AP-MOD-002 (Encoding Jailbreak) | HarmBench, DeepTeam | Good |
| AP-MOD-003 (BoN Jailbreak) | DeepTeam (partial) | Moderate |
| AP-MOD-004 (Indirect Prompt Injection) | MCP-SafetyBench (partial) | Poor |
| AP-MOD-005 (Training Data Extraction) | TrustLLM (partial) | Poor |
| AP-MOD-006 (Multimodal Typographic) | None | None |
| AP-SYS-001 (Agentic Tool Misuse) | MCP-SafetyBench | Emerging |
| AP-SYS-002 (RAG Poisoning) | None | None |
| AP-SYS-003 (Supply Chain Poisoning) | None | None |
| AP-SYS-004 (Privilege Escalation) | MCP-SafetyBench (partial) | Poor |
| AP-SOC-001 (Deepfake Fraud) | None (LLM benchmarks) | None |
| AP-SOC-002 (Bias Amplification) | BBQ, TrustLLM | Moderate |

---

## References / 참조

### Standards and Frameworks / 표준 및 프레임워크
- NIST AI RMF 1.0 (AI 100-1), 2023
- NIST AI 600-1 Generative AI Profile, 2024
- EU AI Act (Regulation 2024/1689)
- MITRE ATLAS, October 2025 update
- OWASP Top 10 for LLM Applications, 2025
- OWASP Top 10 for Agentic Applications, December 2025
- MIT AI Risk Repository v4, December 2025
- CSA Agentic AI Red Teaming Guide, May 2025
- ISO/IEC 22989:2022 AI Concepts and Terminology

### Research and Incident Sources / 연구 및 사고 출처
- [Red Teaming the Mind of the Machine (2025)](https://arxiv.org/html/2505.04806v1)
- [Best-of-N Jailbreaking - Giskard](https://www.giskard.ai/knowledge/best-of-n-jailbreaking-the-automated-llm-attack-that-takes-only-seconds)
- [Lakera: Indirect Prompt Injection](https://www.lakera.ai/blog/indirect-prompt-injection)
- [OWASP Agentic AI Top 10](https://genai.owasp.org/2025/12/09/owasp-top-10-for-agentic-applications-the-benchmark-for-agentic-security-in-the-age-of-autonomous-ai/)
- [AI Safety Benchmarks: 210 Benchmarks Reveal Critical Flaws](https://quantumzeitgeist.com/210-ai-safety-tests-are-failing-benchmarks/)
- [How Should AI Safety Benchmarks Benchmark Safety? (2026)](https://arxiv.org/html/2601.23112v1)
- [MCP-SafetyBench (2025)](https://arxiv.org/html/2512.15163v1)
- [Deepfake Statistics 2025 - DeepStrike](https://deepstrike.io/blog/deepfake-statistics-2025)
- [Fortune: Workday, Amazon AI Bias](https://fortune.com/2025/07/05/workday-amazon-alleged-ai-employment-bias-hiring-discrimination/)
- [Dark Reading: 250 Documents to Poison Any AI Model](https://www.darkreading.com/application-security/only-250-documents-poison-any-ai-model)
- [AI Safety Incidents of 2024 - Responsible AI Labs](https://responsibleailabs.ai/knowledge-hub/articles/ai-safety-incidents-2024)

---

*Document Version: 1.0*
*Last Updated: 2026-02-08*
*Status: Draft for Review*
*Phase: 4 -- Living Annex System*

*This document is part of the AI Red Team International Guideline. Living Annexes are updated independently of the Normative Core on a quarterly cadence or upon significant incident trigger.*
*이 문서는 AI Red Team International Guideline의 일부입니다. 리빙 부속서는 분기별 주기 또는 중대 사고 트리거 시 규범적 핵심과 독립적으로 업데이트됩니다.*

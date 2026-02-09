# Phase 3: Normative Core -- AI Red Teaming Process Framework
# 제3단계: 규범적 핵심 -- AI 레드티밍 프로세스 프레임워크

**AI Red Team International Guideline -- Process-Centric Normative Specification**
**AI 레드팀 국제 가이드라인 -- 프로세스 중심 규범 명세**

> **Document alignment**: This Normative Core follows the process architecture of ISO/IEC/IEEE 29119 (Software Testing) while extending it for the unique characteristics of AI systems as identified in Phase 0 (Terminology), Phase R (Reference Inventory), and Phase 1-2 (Attack Patterns & Risk Mapping).

> **Governing premise / 지배 전제:**
> *"AI 시스템은 본질적으로 완전한 검증이 불가능하다. 따라서 이 프로세스를 따른다 해도 AI 시스템이 안전하다고 주장할 수 없으며, 이 프로세스의 목적은 발견된 위험을 체계적으로 줄이고, 미발견 위험의 존재를 투명하게 인정하는 데 있다."*
> *"AI systems are inherently incapable of complete verification. Consequently, following this process does not warrant that an AI system is safe. The purpose of this process is to systematically reduce discovered risks and to transparently acknowledge the existence of undiscovered risks."*

---

## Table of Contents / 목차

1. [Process Overview / 프로세스 개요](#1-process-overview--프로세스-개요)
2. [Stage 1: Planning / 계획](#2-stage-1-planning--계획)
3. [Stage 2: Design / 설계](#3-stage-2-design--설계)
4. [Stage 3: Execution / 실행](#4-stage-3-execution--실행)
5. [Stage 4: Analysis / 분석](#5-stage-4-analysis--분석)
6. [Stage 5: Reporting / 보고](#6-stage-5-reporting--보고)
7. [Stage 6: Follow-up / 후속조치](#7-stage-6-follow-up--후속조치)
8. [Risk-Based Test Scope Determination / 리스크 기반 테스트 범위 결정](#8-risk-based-test-scope-determination--리스크-기반-테스트-범위-결정)
9. [Test Design Principles / 테스트 설계 원칙](#9-test-design-principles--테스트-설계-원칙)
10. [Report Structure Template / 보고서 구조 템플릿](#10-report-structure-template--보고서-구조-템플릿)
11. [Organizational Test Policy and Practices / 조직적 테스트 정책 및 실무](#11-organizational-test-policy-and-practices--조직적-테스트-정책-및-실무)
12. [Continuous Red Team Operating Model / 지속적 레드팀 운영 모델](#12-continuous-red-team-operating-model--지속적-레드팀-운영-모델)

---

## 1. Process Overview / 프로세스 개요

### 1.1 Six-Stage Lifecycle / 6단계 라이프사이클

The AI Red Teaming process follows six stages. Each stage produces defined outputs that serve as inputs to the next stage, forming a traceable chain from engagement initiation to risk reduction verification.

AI 레드티밍 프로세스는 6단계를 따른다. 각 단계는 정의된 산출물을 생성하며, 이는 다음 단계의 입력물이 되어 참여 개시부터 위험 감소 검증까지 추적 가능한 연쇄를 형성한다.

```
┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐
│          │    │          │    │          │    │          │    │          │    │          │
│ Planning │───>│  Design  │───>│Execution │───>│ Analysis │───>│Reporting │───>│Follow-up │
│  계획    │    │  설계    │    │  실행    │    │  분석    │    │  보고    │    │ 후속조치 │
│          │    │          │    │          │    │          │    │          │    │          │
└──────────┘    └──────────┘    └──────────┘    └──────────┘    └──────────┘    └──────────┘
      │                                                                              │
      └──────────────────────── Feedback Loop / 피드백 루프 ──────────────────────────┘
```

**Key process properties / 핵심 프로세스 특성:**

- **Iterative, not linear / 반복적, 비선형적**: Stages may revisit earlier phases when new information emerges during execution. Design may be revised mid-engagement; analysis may trigger additional execution cycles.
- **Scalable / 확장 가능**: Each stage's depth and formality scales with the risk tier of the target system (see Section 8).
- **Auditable / 감사 가능**: Every stage produces documented artifacts that enable independent review of the engagement's thoroughness and methodology.

### 1.2 Roles Referenced in This Process / 이 프로세스에서 참조하는 역할

The following roles are referenced throughout this document. Their definitions align with Phase 0, Section 3.4.

| Role / 역할 | Abbreviation | Primary Responsibility / 주요 책임 |
|---|---|---|
| Project Sponsor / 프로젝트 후원자 | PS | Authorizes and funds the engagement; accepts residual risk / 참여를 승인하고 자금을 지원; 잔여 위험을 수용 |
| System Owner / 시스템 소유자 | SO | Provides access, defines constraints, owns remediation / 접근 권한 제공, 제약 조건 정의, 교정 소유 |
| Red Team Lead / 레드팀 리더 | RTL | Scopes engagement, selects methodology, coordinates team, owns quality of deliverables / 참여 범위 설정, 방법론 선택, 팀 조정, 산출물 품질 책임 |
| Red Team Operator / 레드팀 운영자 | RTO | Executes test cases, discovers and documents findings / 테스트 케이스 실행, 발견사항 발견 및 문서화 |
| Ethics Advisor / 윤리 자문위원 | EA | Reviews plans and findings for ethical implications / 계획 및 발견사항의 윤리적 함의 검토 |
| Legal Counsel / 법률 자문 | LC | Ensures legal compliance of engagement scope and methods / 참여 범위와 방법의 법적 준수 보장 |
| Domain Expert / 도메인 전문가 | DE | Provides domain-specific knowledge for test design and finding evaluation / 테스트 설계 및 발견사항 평가를 위한 도메인별 지식 제공 |

---

## 2. Stage 1: Planning / 계획

### 2.1 Purpose / 목적

Establish the engagement's objectives, boundaries, access model, team composition, ethical and legal constraints, and success criteria before any testing begins.

테스트 시작 전에 참여의 목표, 경계, 접근 모델, 팀 구성, 윤리적 및 법적 제약, 성공 기준을 수립한다.

### 2.2 Inputs / 입력물

| Input | Source | Description / 설명 |
|-------|--------|---------------------|
| Engagement Request | PS / SO | Formal request describing the AI system to be tested, business context, and motivation / 테스트할 AI 시스템, 비즈니스 맥락 및 동기를 설명하는 공식 요청 |
| System Documentation | SO | Model cards, architecture diagrams, API documentation, deployment context, user population description, prior assessments / 모델 카드, 아키텍처 다이어그램, API 문서, 배포 맥락, 사용자 인구 설명, 이전 평가 |
| Regulatory Requirements | LC | Applicable regulatory obligations (EU AI Act, sector-specific regulations, data protection laws) / 적용 가능한 규제 의무 |
| Prior Incident Data | SO | Historical incidents, known vulnerabilities, previous red team reports / 과거 사고, 알려진 취약점, 이전 레드팀 보고서 |

### 2.3 Activities / 활동

**P-1. Engagement Scoping / 참여 범위 설정**

Define the boundaries of the red team engagement by specifying:

참여 범위를 다음을 명시하여 정의한다:

- **Target system identification / 대상 시스템 식별**: Which specific AI system(s), model(s), application(s), and infrastructure components are in scope. Reference the three-layer model (model-level, system-level, socio-technical level) from Phase 0, Section 1.10.
- **Access model / 접근 모델**: The level of information and access granted to the red team.

  | Access Model | Description / 설명 | When Appropriate / 적용 시점 |
  |---|---|---|
  | Black-box / 블랙박스 | No internal knowledge; only user-level access / 내부 지식 없음; 사용자 수준 접근만 허용 | Simulating external attacker; testing deployed system resilience / 외부 공격자 시뮬레이션 |
  | Grey-box / 그레이박스 | Partial knowledge (API docs, model card, architecture overview) / 부분적 지식 | Most common for comprehensive assessment; balances realism with efficiency / 가장 일반적인 포괄적 평가 |
  | White-box / 화이트박스 | Full access (model weights, training data, source code, internal documentation) / 전체 접근 | Deepest assessment; pre-deployment model evaluation / 가장 깊은 평가; 배포 전 모델 평가 |

- **Temporal scope / 시간적 범위**: Duration, schedule, and any time restrictions (e.g., no testing during peak production hours).
- **Exclusions / 제외사항**: Systems, attack vectors, or techniques explicitly excluded (with rationale).

**P-2. Threat Model Construction / 위협 모델 수립**

Construct a threat model specific to the target AI system by identifying:

대상 AI 시스템에 특화된 위협 모델을 다음을 식별하여 수립한다:

- **Assets to protect / 보호 자산**: What must not be compromised (user data, model integrity, system availability, brand reputation, public safety).
- **Threat actors / 위협 행위자**: Which categories of adversary are relevant (see Phase 0, Section 1.9). For each actor, document assumed motivation, capability level, and access.
- **Attack surfaces / 공격 표면**: Map the relevant attack surfaces across all three levels (model, system, socio-technical) using Phase 1-2 as the reference attack taxonomy.
- **Existing mitigations / 기존 완화 조치**: Document current defenses (content filters, rate limiting, access controls, human oversight mechanisms).

**P-3. Team Composition / 팀 구성**

Determine the red team composition based on the threat model and scope:

위협 모델과 범위에 따라 레드팀 구성을 결정한다:

- Required technical competencies (AI/ML expertise, security expertise, prompt engineering)
- Domain expertise requirements (medical, legal, financial, etc.)
- Diversity requirements (demographic, linguistic, cultural perspectives relevant to the target system's user population)
- Team size and structure (dedicated roles vs. multi-role operators)

**P-4. Legal and Ethical Review / 법적 및 윤리적 검토**

Before testing begins, the following must be established:

테스트 시작 전에 다음이 수립되어야 한다:

- **Authorization agreement / 승인 계약**: Written authorization from the system owner covering scope, permitted activities, data handling, liability, and disclosure terms.
- **Ethical boundaries / 윤리적 경계**: Activities that are not permitted even within scope (e.g., generating real CSAM content, testing on actual vulnerable populations without consent, attempting attacks on production systems serving critical functions without isolation).
- **Data handling plan / 데이터 처리 계획**: How sensitive data encountered during testing (PII, harmful content, model outputs) will be handled, stored, and disposed of.
- **Responsible disclosure terms / 책임 있는 공개 조건**: How findings involving third-party systems or novel vulnerabilities will be disclosed.

**P-5. Risk Tier Determination / 리스크 등급 결정**

Determine the risk tier of the target system to calibrate testing depth (see Section 8 for the full methodology). This determination drives the minimum required activities at each subsequent stage.

테스트 깊이를 조정하기 위해 대상 시스템의 리스크 등급을 결정한다 (전체 방법론은 섹션 8 참조). 이 결정은 후속 각 단계에서의 최소 필수 활동을 결정한다.

**P-6. Schedule and Timeline Planning / 일정 및 타임라인 계획**

Define the engagement schedule with clear milestones and deliverable dates:

명확한 마일스톤 및 산출물 날짜를 포함한 참여 일정을 정의한다:

- **Engagement duration / 참여 기간**: Total calendar time allocated for the engagement, from kickoff to final report delivery.
- **Stage milestones / 단계 마일스톤**: Target completion dates for each of the 6 stages (Planning, Design, Execution, Analysis, Reporting, Follow-up).
- **Interim deliverables / 중간 산출물**: Scheduled intermediate deliverables such as design review, mid-engagement status report, draft report review.
- **Availability constraints / 가용성 제약**: Documented restrictions on testing windows (e.g., no testing during production peak hours, holidays, maintenance windows).
- **Contingency buffer / 비상 버퍼**: Reserved time for addressing unexpected findings, scope adjustments, or schedule delays (recommended: 15-20% of total engagement time for high-risk systems).

**P-7. Test Environment Specification / 테스트 환경 명세**

Specify the test environment requirements to ensure safe and effective testing:

안전하고 효과적인 테스트를 보장하기 위해 테스트 환경 요구사항을 명시한다:

- **Infrastructure requirements / 인프라 요구사항**:
  - Computing resources (CPU, GPU, memory for running attacks)
  - Network requirements (bandwidth, isolation, external access)
  - Storage requirements (evidence artifacts, logs, conversation histories)

- **Access requirements / 접근 요구사항**:
  - API keys, credentials, access levels
  - Sandboxed vs. production environment access
  - Rate limits and quotas
  - Permission scopes (read-only, user-level, admin-level)

- **Safety controls / 안전 통제**:
  - Sandboxing mechanisms to prevent unintended harm
  - Kill switches or emergency stop procedures
  - Rate limiting to prevent resource exhaustion
  - Data isolation to protect PII and sensitive information
  - Rollback capabilities for reversible testing

- **Tooling environment / 도구 환경**:
  - Required software tools and versions
  - Automation frameworks and testing platforms
  - Evidence collection and documentation tools

**P-8. Deviation Handling Procedure / 편차 처리 절차**

Define how deviations from the original plan will be managed during the engagement:

참여 중 원래 계획과의 편차가 어떻게 관리될지를 정의한다:

- **Deviation classification / 편차 분류**:

  | Deviation Type / 편차 유형 | Definition / 정의 | Approval Required / 승인 필요 |
  |---|---|---|
  | **Minor deviation / 경미한 편차** | Changes to individual test cases, tool selection, or minor schedule adjustments (≤3 days delay) | RTL approval |
  | **Moderate deviation / 중간 편차** | Scope expansion/reduction, testing approach changes, stage re-ordering, schedule delays (3-7 days) | RTL + SO approval |
  | **Major deviation / 주요 편차** | Fundamental scope changes, risk tier re-assessment, budget/resource changes, schedule delays (>7 days) | RTL + SO + PS approval |

- **Deviation documentation / 편차 문서화**: All deviations shall be documented in the engagement log with: deviation description, rationale, approval authority, date, and impact assessment.

- **Deviation triggers / 편차 트리거**: Common scenarios requiring deviation handling:
  - Discovery of out-of-scope vulnerabilities requiring investigation
  - Unexpected critical findings requiring immediate escalation and scope adjustment
  - Testing blocked by technical issues, access problems, or safety concerns
  - Resource constraints (time, budget, team availability)
  - Regulatory or legal concerns emerging during testing

**P-9. Approval Workflow / 승인 워크플로우**

Establish the approval process for plan acceptance before proceeding to Design stage:

설계 단계로 진행하기 전 계획 수용을 위한 승인 프로세스를 수립한다:

1. **Internal Review / 내부 검토**: RTL conducts internal review of all Planning stage deliverables for completeness and quality.
2. **Stakeholder Review / 이해관계자 검토**: Red Team Engagement Plan, Threat Model, and Risk Tier Classification are circulated to PS, SO, EA, and LC for review (minimum 3 business days review period for high-risk systems).
3. **Review Meeting / 검토 회의**: RTL presents the plan in a review meeting with all stakeholders to address questions and concerns.
4. **Approval Documentation / 승인 문서화**: Formal sign-off is obtained from PS and SO, documented in the Authorization Agreement or separate approval record.
5. **Contingency for non-approval / 미승인 시 대응**: If approval is not obtained, RTL documents objections, revises plan, and re-submits for approval. Engagement does not proceed to Design stage without formal approval.

### 2.4 Outputs / 산출물

| Output | Owner | Description / 설명 |
|--------|-------|---------------------|
| **Red Team Engagement Plan** | RTL | Comprehensive plan covering scope, access model, schedule, team composition, success criteria, constraints, test environment specification, deviation handling procedure, and approval workflow / 범위, 접근 모델, 일정, 팀 구성, 성공 기준, 제약, 테스트 환경 명세, 편차 처리 절차 및 승인 워크플로우를 포함하는 종합 계획 |
| **Threat Model Document** | RTL | Documented threat model with identified assets, actors, surfaces, and existing mitigations / 식별된 자산, 행위자, 표면 및 기존 완화 조치가 포함된 위협 모델 문서 |
| **Authorization Agreement** | PS / SO / LC | Signed legal authorization covering scope, permitted activities, and data handling / 범위, 허용 활동 및 데이터 처리를 포함하는 서명된 법적 승인 |
| **Risk Tier Classification** | RTL / SO | Documented risk tier with rationale and corresponding testing depth requirements / 근거 및 해당 테스트 깊이 요구사항이 포함된 위험 등급 분류 |
| **Engagement Schedule** | RTL | Detailed timeline with stage milestones, interim deliverables, and contingency buffers / 단계 마일스톤, 중간 산출물 및 비상 버퍼가 포함된 상세 타임라인 |

### 2.5 Entry and Exit Criteria / 진입 및 종료 기준

**Entry Criteria / 진입 기준:**

The Planning stage may begin when the following conditions are satisfied:

계획 단계는 다음 조건이 충족될 때 시작할 수 있다:

1. **Engagement request received** / 참여 요청 접수: Formal request from Project Sponsor or System Owner has been documented.
2. **Stakeholder availability confirmed** / 이해관계자 가용성 확인: Key stakeholders (PS, SO, RTL, LC, EA) are identified and available for consultation.
3. **Initial system documentation provided** / 초기 시스템 문서 제공: Minimum system documentation (model card, deployment context, or API documentation) is available.

**Exit Criteria / 종료 기준:**

The Planning stage is complete when all of the following deliverables are approved:

계획 단계는 다음 모든 산출물이 승인될 때 완료된다:

1. **Red Team Engagement Plan approved** / 레드팀 참여 계획 승인: Scope, access model, schedule, team composition, and success criteria are documented and approved by PS and SO.
2. **Threat Model documented** / 위협 모델 문서화: Assets, threat actors, attack surfaces, and existing mitigations are identified and reviewed by RTL and SO.
3. **Authorization Agreement signed** / 승인 계약 서명: Legal and ethical boundaries are defined, and written authorization is signed by authorized representatives.
4. **Risk Tier Classification confirmed** / 위험 등급 분류 확인: Risk tier is determined and accepted by all stakeholders.
5. **No unresolved blockers** / 미해결 차단 요소 없음: All planning-stage issues (access provisioning timelines, resource constraints, ethical concerns) have been addressed or deferred with documented acceptance.

---

## 3. Stage 2: Design / 설계

### 3.1 Purpose / 목적

Translate the engagement plan and threat model into a structured test design that specifies what will be tested, through what techniques, and how findings will be evaluated -- without prescribing specific tools or benchmarks.

참여 계획과 위협 모델을 구조화된 테스트 설계로 변환한다. 이 설계는 무엇을, 어떤 기법으로 테스트하고, 발견사항을 어떻게 평가할지를 명시하되, 특정 도구나 벤치마크를 규정하지 않는다.

### 3.2 Inputs / 입력물

| Input | Source |
|-------|--------|
| Red Team Engagement Plan | Stage 1 output |
| Threat Model Document | Stage 1 output |
| Risk Tier Classification | Stage 1 output |
| Attack Pattern Library (Phase 1-2) | Reference document |

### 3.3 Activities / 활동

**D-1. Attack Surface Mapping / 공격 표면 매핑**

Map the target system's specific attack surfaces against the three-level taxonomy:

대상 시스템의 특정 공격 표면을 3수준 분류 체계에 매핑한다:

- **Model-level surfaces / 모델 수준 표면**: Input modalities, output types, model accessibility (API, embedded, edge), known model family characteristics.
- **System-level surfaces / 시스템 수준 표면**: APIs, plugins, tool integrations, data sources (RAG corpora, databases), orchestration layers, authentication mechanisms, deployment infrastructure.
- **Socio-technical surfaces / 사회기술적 표면**: User interaction patterns, affected populations, downstream decision-making processes, integration with human workflows.

For agentic AI systems, additionally map:
에이전틱 AI 시스템의 경우 추가로 매핑:

- Available tools and their permission scopes
- Inter-agent communication channels
- Persistence mechanisms (memory, state stores)
- Autonomy level and human oversight mechanisms
- Action reversibility profiles

**D-2. Test Strategy Selection / 테스트 전략 선정**

Select test strategies based on the threat model. The strategy must address:

위협 모델에 기반하여 테스트 전략을 선정한다. 전략은 다음을 다루어야 한다:

- **Which threat actors to emulate / 모방할 위협 행위자**: At minimum, the engagement must emulate the threat actors identified as relevant in the threat model. Each emulated actor drives a distinct testing approach (e.g., casual user probing vs. sophisticated multi-turn escalation).
- **Which attack surfaces to prioritize / 우선순위를 두 공격 표면**: Based on threat model and risk tier. Not all surfaces need equal coverage; prioritize based on assessed risk.
- **Balance of manual vs. automated testing / 수동 vs. 자동화 테스트의 균형**: Manual creative probing discovers novel vulnerabilities; automated testing provides coverage at scale. Both are necessary; neither is sufficient alone.
- **Balance of breadth vs. depth / 폭 vs. 깊이의 균형**: Breadth scanning identifies the range of vulnerabilities; depth probing validates severity and exploitability of specific findings.

**D-2.5. Test Design Technique Selection (ISO/IEC 29119-4 Alignment) / 테스트 설계 기법 선정 (ISO/IEC 29119-4 정렬)**

Select appropriate test design techniques from ISO/IEC/IEEE 29119-4 (Test Techniques) to complement AI red team-specific attack patterns. While attack patterns provide domain-specific adversarial scenarios, systematic test design techniques ensure comprehensive coverage and rigor.

ISO/IEC/IEEE 29119-4(테스트 기법)에서 AI 레드팀 특화 공격 패턴을 보완하는 적절한 테스트 설계 기법을 선정한다. 공격 패턴이 도메인별 적대적 시나리오를 제공하는 동안, 체계적 테스트 설계 기법은 포괄적 커버리지와 엄격성을 보장한다.

**Recommended 29119-4 techniques by attack category:**

**공격 카테고리별 권장 29119-4 기법:**

| Attack Category / 공격 카테고리 | Applicable 29119-4 Techniques / 적용 가능 29119-4 기법 | Rationale / 근거 |
|---|---|---|
| **Model-level attacks (Jailbreak, Prompt Injection)** | • Equivalence Partitioning (5.2.1)<br>• Boundary Value Analysis (5.2.3)<br>• Syntax Testing (5.2.4)<br>• Random/Fuzz Testing (5.2.10)<br>• Metamorphic Testing (5.2.11) | Partition prompt space into safety classes (benign, boundary, harmful); test safety filter thresholds; exploit encoding variations; automated jailbreak search; test semantic invariance under paraphrase |
| **System-level attacks (RAG Poisoning, Indirect Injection)** | • Data Flow Testing (5.3.7)<br>• State Transition Testing (5.2.8)<br>• Combinatorial Testing (5.2.4)<br>• Decision Table Testing (5.2.6) | Track data flow from untrusted sources to safety-critical decisions; model multi-turn conversation state transitions; test combinations of attack parameters; model tool access decision logic |
| **Agentic attacks (Autonomous Drift, Tool Misuse)** | • State Transition Testing (5.2.8)<br>• Decision Table Testing (5.2.6)<br>• Scenario Testing (5.2.9)<br>• Cause-Effect Graphing (5.2.7) | Model agent state evolution over time; test permission check decision tables; test realistic multi-step attack chains; model causal dependencies in complex agent workflows |
| **Bias, Fairness, Toxicity** | • Equivalence Partitioning (5.2.1)<br>• Combinatorial Testing (5.2.4)<br>• Metamorphic Testing (5.2.11)<br>• Requirements-Based Testing (5.2.12) | Partition demographic groups and test for differential behavior; test combinations of sensitive attributes; verify semantic-preserving transformations yield consistent outputs; test against fairness requirements |
| **All attack categories** | • Error Guessing (5.4.1)<br>• Scenario Testing (5.2.9) | Leverage expert intuition for creative attack discovery; test realistic end-to-end attack scenarios |

**AI red team-specific techniques beyond 29119-4 scope:**

**29119-4 범위를 넘는 AI 레드팀 특화 기법:**

The following techniques are unique to AI adversarial testing and extend ISO/IEC 29119-4:

다음 기법은 AI 적대적 테스팅에 고유하며 ISO/IEC 29119-4를 확장한다:

- **Adaptive/Iterative Red Teaming**: Dynamically adjusting attacks based on model responses in real-time
- **Multi-Turn Escalation Testing**: Gradually escalating from benign to harmful across conversation turns
- **Cross-Modal Attack Testing**: Exploiting inconsistencies between different input modalities (text, image, audio)
- **Chain-of-Thought Faithfulness Testing**: Testing whether reasoning model CoT accurately reflects decision process (for o1/o3-class models)
- **Evaluation Gaming Detection**: Testing whether models behave differently when they detect evaluation context
- **Multilingual Safety Testing**: Testing safety effectiveness across languages, especially low-resource languages
- **Benchmark Validity Testing**: Meta-evaluation of whether benchmarks measure what they claim

**Technique application guidance:**

**기법 적용 가이드:**

For each selected attack category from the threat model:

위협 모델에서 선정된 각 공격 카테고리에 대해:

1. Select applicable 29119-4 techniques from the table above / 위 표에서 적용 가능한 29119-4 기법을 선정
2. Document how each technique will be applied to the specific target system / 각 기법이 특정 대상 시스템에 어떻게 적용될지를 문서화
3. Define coverage criteria for each technique (e.g., equivalence partitions to test, boundary values to probe) / 각 기법에 대한 커버리지 기준 정의
4. Combine systematic techniques with creative AI red team-specific techniques for comprehensive coverage / 포괄적 커버리지를 위해 체계적 기법과 창의적 AI 레드팀 특화 기법을 결합

**D-3. Test Case Design / 테스트 케이스 설계**

Design test cases that are:

다음과 같은 테스트 케이스를 설계한다:

- **Threat-model-derived / 위협 모델 유래**: Each test case traces to a specific threat actor-attack surface combination in the threat model.
- **Scenario-based / 시나리오 기반**: Expressed as realistic usage scenarios (not isolated prompts), reflecting how actual threat actors would interact with the system.
- **Evaluation-criteria-explicit / 평가 기준 명시적**: Each test case specifies what constitutes a failure and what constitutes expected behavior, using qualitative judgment criteria rather than binary pass/fail thresholds.
- **Modality-aware / 모달리티 인식**: For multimodal systems, test cases must cover cross-modal attack vectors.

Test cases shall be organized by attack surface level and threat actor category, not by specific tool or benchmark.

테스트 케이스는 특정 도구나 벤치마크가 아닌, 공격 표면 수준 및 위협 행위자 범주별로 구성한다.

**D-4. Evaluation Framework Design / 평가 프레임워크 설계**

Define how findings will be characterized. The evaluation framework shall include:

발견사항이 어떻게 특성화될지를 정의한다. 평가 프레임워크는 다음을 포함한다:

- **Finding characterization dimensions / 발견사항 특성화 차원**:

  | Dimension / 차원 | Description / 설명 |
  |---|---|
  | **Reproducibility / 재현성** | Can the finding be reliably reproduced? Under what conditions? / 발견사항을 안정적으로 재현할 수 있는가? 어떤 조건에서? |
  | **Exploitability / 악용 가능성** | What level of sophistication is required to exploit this finding? What access is needed? / 이 발견사항을 악용하는 데 어떤 수준의 정교함이 필요한가? |
  | **Impact scope / 영향 범위** | Who is affected and how? Individual, organizational, or societal harm? / 누가 어떻게 영향을 받는가? 개인, 조직, 사회적 피해? |
  | **Existing mitigation / 기존 완화 조치** | Do current defenses partially address this finding? / 현재 방어 체계가 이 발견사항을 부분적으로 해결하는가? |
  | **Deployment context sensitivity / 배포 맥락 민감성** | How does the finding's significance change across deployment contexts? / 배포 맥락에 따라 발견사항의 중요성이 어떻게 변하는가? |

- **Severity characterization approach / 심각도 특성화 접근법**: Rather than assigning a single numeric score, findings shall be characterized along multiple dimensions. The following framework provides structure while preserving qualitative judgment:

  단일 숫자 점수를 부여하는 대신, 발견사항은 여러 차원에 따라 특성화한다. 다음 프레임워크는 정성적 판단을 보존하면서 구조를 제공한다:

  | Factor / 요소 | Guiding Questions / 안내 질문 |
  |---|---|
  | **Harm potential / 피해 잠재력** | What is the worst realistic outcome? Physical harm? Financial loss? Privacy violation? Discrimination? / 최악의 현실적 결과는? 물리적 피해? 재정 손실? 프라이버시 침해? 차별? |
  | **Affected population / 영향 인구** | How many people could be affected? Are vulnerable populations disproportionately impacted? / 얼마나 많은 사람이 영향받을 수 있는가? 취약 집단이 불균형하게 영향받는가? |
  | **Exploitability / 악용 용이성** | What capability level is required? Is the attack automated? Can it scale? / 어떤 능력 수준이 필요한가? 공격이 자동화 가능한가? 확장 가능한가? |
  | **Mitigation difficulty / 완화 난이도** | How difficult is remediation? Is it a model-level, system-level, or architectural issue? / 교정이 얼마나 어려운가? 모델, 시스템, 아키텍처 수준 문제인가? |
  | **Novelty / 신규성** | Is this a known vulnerability class or a novel discovery? / 알려진 취약점 클래스인가 새로운 발견인가? |

> **Prohibition / 금지**: The evaluation framework shall not define a numeric threshold above which a system "passes" or below which it "fails." Such binary determinations are inconsistent with the governing premise that AI systems cannot be fully verified. Instead, findings inform a risk narrative that supports decision-making by stakeholders.
>
> 평가 프레임워크는 시스템이 "합격"하는 수치 임계값이나 "불합격"하는 수치 임계값을 정의하지 않는다. 이러한 이진적 판단은 AI 시스템이 완전히 검증될 수 없다는 지배 전제와 일치하지 않는다. 대신, 발견사항은 이해관계자의 의사결정을 지원하는 위험 서사를 형성한다.

### 3.4 Outputs / 산출물

| Output | Owner | Description / 설명 |
|--------|-------|---------------------|
| **Test Design Specification** | RTL | Attack surface map, selected test strategies, test case inventory organized by threat actor and attack surface, evaluation framework / 공격 표면 맵, 선정된 테스트 전략, 위협 행위자 및 공격 표면별 테스트 케이스 목록, 평가 프레임워크 |
| **Test Environment Requirements** | RTL / RTO | Required access, infrastructure, tooling environment, and safety controls for test execution / 테스트 실행에 필요한 접근, 인프라, 도구 환경 및 안전 통제 |

### 3.5 Entry and Exit Criteria / 진입 및 종료 기준

**Entry Criteria / 진입 기준:**

The Design stage may begin when the Planning stage exit criteria are satisfied, specifically:

설계 단계는 계획 단계의 종료 기준이 충족될 때 시작할 수 있다. 구체적으로:

1. **Red Team Engagement Plan approved** / 레드팀 참여 계획 승인: Scope, threat model, and risk tier are documented and approved.
2. **Attack Pattern Library accessible** / 공격 패턴 라이브러리 접근 가능: Phase 1-2 attack patterns and risk mappings are available to the design team.
3. **Red Team Lead assigned** / 레드팀 리더 배정: RTL has confirmed availability and accepted responsibility for design quality.

**Exit Criteria / 종료 기준:**

The Design stage is complete when all of the following are achieved:

설계 단계는 다음 모든 조건이 달성될 때 완료된다:

1. **Test Design Specification approved** / 테스트 설계 명세 승인: Attack surface map, test strategies, test case inventory, and evaluation framework are documented and reviewed by RTL and SO.
2. **Test coverage rationale documented** / 테스트 커버리지 근거 문서화: Explicit rationale for coverage decisions (which surfaces prioritized, which deprioritized, and why) is documented with reference to threat model and risk tier.
3. **Test Environment Requirements defined** / 테스트 환경 요구사항 정의: Required access, infrastructure, tooling, and safety controls are specified and feasibility is confirmed by SO.
4. **Evaluation framework validated** / 평가 프레임워크 검증: Finding characterization dimensions and severity framework are reviewed and accepted by PS and SO.
5. **Design review conducted** / 설계 검토 수행: Design has been reviewed for completeness (all threat actors covered), feasibility (test cases are executable), and ethics (no prohibited techniques).

---

## 4. Stage 3: Execution / 실행

### 4.1 Purpose / 목적

Execute the designed test cases against the target AI system, documenting all interactions, observations, and discoveries in real time.

설계된 테스트 케이스를 대상 AI 시스템에 대해 실행하고, 모든 상호작용, 관찰 및 발견을 실시간으로 문서화한다.

### 4.2 Inputs / 입력물

| Input | Source |
|-------|--------|
| Test Design Specification | Stage 2 output |
| Test Environment (provisioned) | SO / RTL |
| Authorization Agreement | Stage 1 output |

### 4.3 Activities / 활동

**E-1. Environment Preparation / 환경 준비**

Before executing any test cases:

테스트 케이스 실행 전에:

- Verify that the test environment matches the documented system configuration.
- Establish logging and evidence capture mechanisms.
- Confirm that safety controls are in place (e.g., isolated environments for high-risk tests, content safety monitoring for harmful output capture).
- Establish communication channels between RTO, RTL, and SO for escalation of unexpected findings.

**E-2. Structured Test Execution / 구조적 테스트 실행**

Execute test cases following the test design specification:

테스트 설계 명세에 따라 테스트 케이스를 실행한다:

- Execute test cases in the planned sequence, beginning with lower-risk scenarios and escalating.
- For each test case, document: the exact inputs provided, the system's responses, the environmental conditions, and the operator's observations.
- When a test case reveals an unexpected behavior, document it immediately and assess whether it warrants adjusting the test plan (e.g., deeper probing in the discovered direction).

**E-3. Creative / Exploratory Probing / 창의적/탐색적 탐색**

Beyond structured test cases, allocate time for unstructured, creative exploration:

구조화된 테스트 케이스 외에, 비구조화된 창의적 탐색을 위한 시간을 할당한다:

- Allow operators to pursue unexpected behaviors observed during structured testing.
- Encourage cross-pollination of techniques: applying attack patterns from one domain to another.
- Document exploratory paths even when they do not yield findings -- this records what was attempted and helps avoid duplication.

> **Rationale / 근거**: Structured testing discovers known vulnerability classes; creative probing discovers novel failure modes and unknown-unknowns. Both are essential. Phase 1-2's analysis of real-world incidents demonstrates that many significant failures (e.g., EchoLeak, Whisper hallucinations) were discovered through non-standard testing approaches.

**E-4. Multi-Turn and Temporal Testing / 다회전 및 시간적 테스트**

For systems that maintain state across interactions:

상호작용 간 상태를 유지하는 시스템의 경우:

- Execute multi-turn test scenarios that build context over extended conversations.
- Test for temporal stability: does the system's behavior change over prolonged interaction?
- For agentic systems: execute multi-step tool-use chains, testing for cascading failures, privilege escalation across tool calls, and autonomous drift over extended operation periods.

**E-5. Escalation Protocol / 에스컬레이션 프로토콜**

Define and follow escalation procedures:

에스컬레이션 절차를 정의하고 준수한다:

| Situation / 상황 | Action / 조치 | Who / 담당 |
|---|---|---|
| Finding with potential for immediate real-world harm / 즉각적인 현실 세계 피해 가능성이 있는 발견 | Halt testing on that vector; notify RTL and SO immediately / 해당 벡터 테스트 중단; RTL 및 SO에 즉시 알림 | RTO -> RTL -> SO |
| Discovery outside authorized scope / 승인 범위 밖의 발견 | Document but do not pursue; notify RTL / 문서화하되 추적하지 않음; RTL에 알림 | RTO -> RTL |
| Ethical concern about test activity / 테스트 활동에 대한 윤리적 우려 | Pause and consult EA / 중지하고 EA 상담 | RTO -> EA |
| System instability or production impact / 시스템 불안정 또는 프로덕션 영향 | Halt testing; notify SO / 테스트 중단; SO에 알림 | RTO -> SO |

**E-6. Progress Monitoring and Control / 진행 모니터링 및 통제**

Establish and maintain structured monitoring of engagement progress throughout the Execution stage to enable proactive risk management and stakeholder communication.

실행 단계 전반에 걸쳐 참여 진행의 구조화된 모니터링을 수립하고 유지하여 사전적 위험 관리 및 이해관계자 커뮤니케이션을 가능하게 한다.

**Monitoring metrics / 모니터링 메트릭:**

Track the following metrics at regular intervals (daily for high-risk systems, weekly for standard-risk systems):

정기적으로 다음 메트릭을 추적한다 (고위험 시스템은 일일, 표준 위험 시스템은 주간):

| Metric / 메트릭 | Formula / 공식 | Purpose / 목적 |
|---|---|---|
| **Test Execution Progress** / 테스트 실행 진행률 | (Test cases executed / Total test cases planned) × 100% | Track progress against plan; identify schedule risks early |
| **Attack Surface Coverage** / 공격 표면 커버리지 | Qualitative assessment (Full/Partial/None) per attack surface category | Verify balanced coverage across model, system, and socio-technical levels |
| **Findings by Severity** / 심각도별 발견사항 | Count of findings: Critical, High, Medium, Low | Monitor finding trends; identify emerging risk patterns |
| **Finding Discovery Rate** / 발견사항 발견율 | Findings discovered / Time elapsed (or test cases executed) | Assess testing effectiveness; flat rate may indicate saturation |
| **Blockers and Risks** / 차단 요소 및 위험 | Count of active blockers (access issues, environment problems, safety concerns) | Identify impediments requiring escalation or mitigation |
| **Schedule Variance** / 일정 편차 | (Actual elapsed time - Planned elapsed time) / Planned total time | Track schedule adherence; forecast completion date |
| **Scope Changes** / 범위 변경 | Count of approved scope expansions/reductions since plan baseline | Monitor scope creep or contraction |

**Progress comparison checkpoints / 진행 비교 체크포인트:**

At defined milestones (e.g., 25%, 50%, 75% planned duration), conduct formal progress reviews comparing actual progress against plan:

정의된 마일스톤(예: 계획된 기간의 25%, 50%, 75%)에서 계획 대비 실제 진행을 비교하는 공식 진행 검토를 수행한다:

1. **Compare test execution progress** / 테스트 실행 진행 비교: Are we on track to complete all planned test cases?
2. **Review coverage balance** / 커버리지 균형 검토: Are all attack surfaces receiving appropriate attention, or is effort skewed?
3. **Assess finding trends** / 발견사항 추세 평가: Is finding discovery rate declining (indicating coverage saturation) or accelerating (indicating rich vulnerability area)?
4. **Identify deviations** / 편차 식별: What deviations from plan have occurred, and do they require corrective action?
5. **Forecast completion** / 완료 예측: Based on current progress, when will execution complete? Is schedule adjustment needed?
6. **Decide on corrective actions** / 시정 조치 결정: Reallocate resources, adjust scope, extend timeline, or escalate risks.

**Interim status reporting / 중간 상태 보고:**

For engagements longer than 2 weeks, provide interim status reports to PS and SO at regular intervals (weekly for high-risk systems):

2주 이상 소요되는 참여의 경우, PS와 SO에게 정기적으로 중간 상태 보고서를 제공한다 (고위험 시스템은 주간):

**Engagement Status Report Template / 참여 상태 보고서 템플릿:**

```
Engagement Status Report / 참여 상태 보고서
Report Date / 보고일: [Date]
Engagement / 참여: [System Name]
Reporting Period / 보고 기간: [Start Date] - [End Date]

1. Executive Summary / 임원 요약
   - Overall progress: [X%] complete
   - Findings to date: [Critical: X, High: X, Medium: X, Low: X]
   - Schedule status: [On track / At risk / Delayed]
   - Key risks: [Brief description of top 1-3 risks]

2. Progress vs. Plan / 계획 대비 진행
   - Test cases executed: [X / Y] ([Z%])
   - Attack surfaces covered: [List with coverage status]
   - Threat actors emulated: [List]
   - Schedule variance: [+/- X days]

3. Findings Summary / 발견사항 요약
   - Total findings: [X]
   - By severity: [Critical: X, High: X, Medium: X, Low: X]
   - By attack category: [Brief breakdown]
   - Notable findings requiring immediate attention: [List if any]

4. Blockers and Risks / 차단 요소 및 위험
   - Active blockers: [Description, impact, mitigation plan]
   - Emerging risks: [Description, likelihood, mitigation plan]

5. Scope and Schedule Changes / 범위 및 일정 변경
   - Approved scope changes since last report: [List]
   - Schedule adjustments: [Description and rationale]

6. Projected Completion / 예상 완료
   - Estimated completion date: [Date]
   - Confidence level: [High / Medium / Low]
   - Assumptions: [Key assumptions affecting forecast]

7. Actions Required / 필요 조치
   - From SO: [List any needed support or decisions]
   - From PS: [List any needed approvals or resources]
```

**Deviation handling during execution / 실행 중 편차 처리:**

When deviations from plan occur during execution, follow the deviation classification and approval process defined in Stage 1 (P-8):

실행 중 계획 편차가 발생하면, Stage 1 (P-8)에서 정의된 편차 분류 및 승인 프로세스를 따른다:

- **Minor deviations** (individual test case changes, ≤3 days delay): RTL approval, document in engagement log
- **Moderate deviations** (approach changes, 3-7 days delay): RTL + SO approval, update stakeholders via status report
- **Major deviations** (fundamental scope/budget changes, >7 days delay): RTL + SO + PS approval, formal plan revision, stakeholder meeting

### 4.4 Outputs / 산출물

| Output | Owner | Description / 설명 |
|--------|-------|---------------------|
| **Raw Finding Log** | RTO | Chronological record of all test cases executed, inputs provided, outputs received, and observations made / 실행된 모든 테스트 케이스, 제공된 입력, 수신된 출력 및 관찰의 시간순 기록 |
| **Evidence Artifacts** | RTO | Screenshots, logs, conversation transcripts, API responses, and any other evidence supporting findings / 스크린샷, 로그, 대화 기록, API 응답 및 발견사항을 뒷받침하는 기타 증거 |
| **Exploratory Testing Notes** | RTO | Documentation of creative/exploratory probing paths and results / 창의적/탐색적 탐색 경로 및 결과의 문서화 |
| **Engagement Status Reports** | RTL | Interim progress reports for engagements >2 weeks, documenting progress vs. plan, findings summary, blockers, and projected completion / 2주 이상 참여에 대한 중간 진행 보고서, 계획 대비 진행, 발견사항 요약, 차단 요소 및 예상 완료 문서화 |
| **Progress Monitoring Log** | RTL | Record of monitoring metrics tracked throughout execution (test execution progress, coverage status, finding trends, schedule variance) / 실행 전반에 걸쳐 추적된 모니터링 메트릭 기록 (테스트 실행 진행, 커버리지 상태, 발견사항 추세, 일정 편차) |

### 4.5 Entry and Exit Criteria / 진입 및 종료 기준

**Entry Criteria / 진입 기준:**

The Execution stage may begin when the Design stage exit criteria are satisfied, specifically:

실행 단계는 설계 단계의 종료 기준이 충족될 때 시작할 수 있다. 구체적으로:

1. **Test Design Specification approved** / 테스트 설계 명세 승인: Test cases, attack surfaces, and evaluation framework are documented and approved.
2. **Test environment provisioned** / 테스트 환경 제공: Required access, infrastructure, and tooling are available and verified functional.
3. **Safety controls confirmed** / 안전 통제 확인: Safeguards to prevent unintended harm during testing (sandboxing, rate limiting, kill switches) are in place and tested.
4. **Red Team Operators trained** / 레드팀 운영자 교육: RTOs are briefed on scope, constraints, ethical boundaries, evidence collection procedures, and incident escalation paths.
5. **Test Readiness Review passed** / 테스트 준비 검토 통과: Pre-execution readiness checklist confirms all preconditions are met (see Section 8.7 Test Readiness Report requirements).

**Exit Criteria / 종료 기준:**

The Execution stage is complete when all of the following are achieved:

실행 단계는 다음 모든 조건이 달성될 때 완료된다:

1. **Planned test cases executed** / 계획된 테스트 케이스 실행: All test cases in the Test Design Specification have been executed, or conscious decisions to skip specific cases have been documented with rationale.
2. **Coverage goals met or justified** / 커버리지 목표 달성 또는 정당화: Test coverage aligns with the risk tier and threat model, or deviations are documented and approved by RTL.
3. **All findings documented** / 모든 발견사항 문서화: Every observation, successful attack, and unexpected system behavior is recorded in the Raw Finding Log with supporting evidence.
4. **No critical unresolved incidents** / 중대한 미해결 인시던트 없음: Any critical findings discovered during execution have been escalated and initial response actions are underway (containment, stakeholder notification).
5. **Evidence artifacts secured** / 증거 산출물 보안: All screenshots, logs, transcripts, and evidence are securely stored and backed up per data handling plan.

---

## 5. Stage 4: Analysis / 분석

### 5.1 Purpose / 목적

Transform raw findings into structured, characterized, and contextualized insights that inform actionable risk communication.

원시 발견사항을 구조화되고, 특성화되고, 맥락화된 인사이트로 변환하여 실행 가능한 위험 커뮤니케이션을 제공한다.

### 5.2 Inputs / 입력물

| Input | Source |
|-------|--------|
| Raw Finding Log | Stage 3 output |
| Evidence Artifacts | Stage 3 output |
| Threat Model Document | Stage 1 output |
| Evaluation Framework | Stage 2 output |

### 5.3 Activities / 활동

**A-1. Finding Deduplication and Consolidation / 발견사항 중복 제거 및 통합**

- Group related observations that represent the same underlying vulnerability or failure mode.
- Distinguish between independent findings and variations of the same finding.
- Identify root causes where possible -- multiple symptoms may trace to a single underlying issue.

**A-2. Finding Characterization / 발견사항 특성화**

For each consolidated finding, apply the evaluation framework from Stage 2 (D-4):

각 통합된 발견사항에 대해 2단계(D-4)의 평가 프레임워크를 적용한다:

- Characterize along all defined dimensions (reproducibility, exploitability, impact scope, existing mitigation, deployment context sensitivity).
- Apply the severity characterization approach, answering the guiding questions for each factor.
- Map each finding to the attack taxonomy from Phase 1-2 (model-level, system-level, socio-technical level).
- Map each finding to the harm taxonomy from Phase 1-2, Section 4.4 (individual, organizational, societal).

**A-3. Attack Chain Analysis / 공격 체인 분석**

Analyze whether individual findings can be combined into attack chains that amplify impact:

개별 발견사항이 영향을 증폭시키는 공격 체인으로 결합될 수 있는지 분석한다:

- Can a lower-severity finding enable escalation to a higher-impact outcome?
- For agentic systems: can a sequence of individually acceptable tool calls combine to produce an unacceptable outcome?
- Do findings in one attack surface layer expose or amplify vulnerabilities in another layer?

**A-4. Coverage Analysis / 커버리지 분석**

Assess what the engagement did and did not cover:

참여가 무엇을 다루었고 무엇을 다루지 않았는지 평가한다:

- Which threat actors from the threat model were adequately emulated?
- Which attack surfaces received sufficient testing?
- Which test cases were not executed and why?
- What areas remain untested or under-tested?

> **Requirement / 요구사항**: The coverage analysis must be included in the final report. Stakeholders need to understand not only what was found, but what was not examined. This is a direct application of the transparency-of-limitations principle from Phase 0.
>
> 커버리지 분석은 최종 보고서에 반드시 포함되어야 한다. 이해관계자는 발견된 것뿐만 아니라 검사되지 않은 것도 이해해야 한다. 이것은 제0단계의 한계 투명성 원칙의 직접적 적용이다.

**A-5. Contextualized Risk Narrative / 맥락화된 위험 서사**

Synthesize findings, attack chains, and coverage analysis into a coherent risk narrative:

발견사항, 공격 체인 및 커버리지 분석을 일관된 위험 서사로 종합한다:

- What does the overall pattern of findings reveal about the system's risk posture?
- What are the most significant risks, considering the deployment context?
- Where are the system's strengths and where are its weaknesses?
- What risks remain uncertain or unquantifiable?

### 5.4 Outputs / 산출물

| Output | Owner | Description / 설명 |
|--------|-------|---------------------|
| **Characterized Finding Set** | RTL | All findings with full characterization across defined dimensions / 정의된 차원에 걸쳐 완전히 특성화된 모든 발견사항 |
| **Attack Chain Analysis** | RTL | Documented attack chains and compound risk scenarios / 문서화된 공격 체인 및 복합 위험 시나리오 |
| **Coverage Analysis** | RTL | Assessment of testing coverage, gaps, and limitations / 테스트 커버리지, 갭 및 한계 평가 |
| **Risk Narrative Draft** | RTL | Synthesized risk narrative for review before final reporting / 최종 보고 전 검토를 위한 종합 위험 서사 초안 |

### 5.5 Entry and Exit Criteria / 진입 및 종료 기준

**Entry Criteria / 진입 기준:**

The Analysis stage may begin when the Execution stage exit criteria are satisfied, specifically:

분석 단계는 실행 단계의 종료 기준이 충족될 때 시작할 수 있다. 구체적으로:

1. **Execution complete** / 실행 완료: All planned test cases have been executed or justified exclusions are documented.
2. **Raw Finding Log complete** / 원시 발견사항 로그 완료: All observations and findings from execution are documented with timestamps and evidence references.
3. **Evidence artifacts secured** / 증거 산출물 보안: All supporting evidence (screenshots, logs, transcripts) is collected and accessible to analysis team.

**Exit Criteria / 종료 기준:**

The Analysis stage is complete when all of the following are achieved:

분석 단계는 다음 모든 조건이 달성될 때 완료된다:

1. **All findings characterized** / 모든 발견사항 특성화: Every finding has been evaluated across all defined characterization dimensions (reproducibility, exploitability, impact, context sensitivity).
2. **Severity assessments justified** / 심각도 평가 정당화: Severity characterizations are documented with explicit rationale referencing impact, exploitability, and deployment context.
3. **Attack chains documented** / 공격 체인 문서화: Multi-step attack scenarios and compound risks are identified and documented.
4. **Coverage analysis complete** / 커버리지 분석 완료: Test coverage is assessed against the threat model, and gaps or limitations are explicitly acknowledged.
5. **False positives filtered** / 거짓 긍정 필터링: Edge cases and false positives are distinguished from actionable findings, with documented rationale.
6. **Risk narrative reviewed** / 위험 서사 검토: Draft risk narrative has been reviewed internally by RTL and DE for accuracy and completeness before proceeding to formal reporting.

---

## 6. Stage 5: Reporting / 보고

### 6.1 Purpose / 목적

Communicate findings, analysis, and recommendations to stakeholders in formats appropriate to each audience, supporting informed decision-making while maintaining transparency about limitations.

발견사항, 분석 및 권고사항을 각 대상에 적합한 형식으로 이해관계자에게 전달하여, 한계에 대한 투명성을 유지하면서 정보에 입각한 의사결정을 지원한다.

### 6.2 Inputs / 입력물

| Input | Source |
|-------|--------|
| Characterized Finding Set | Stage 4 output |
| Attack Chain Analysis | Stage 4 output |
| Coverage Analysis | Stage 4 output |
| Risk Narrative Draft | Stage 4 output |

### 6.3 Activities / 활동

**R-1. Report Composition / 보고서 작성**

Compose the formal red team report following the standard structure defined in Section 10. The report shall be written for multiple audiences:

섹션 10에 정의된 표준 구조에 따라 공식 레드팀 보고서를 작성한다. 보고서는 다수의 대상을 위해 작성된다:

- **Executive layer / 경영진 레이어**: Risk posture summary, strategic implications, resource requirements for remediation.
- **Technical layer / 기술 레이어**: Detailed findings with reproduction steps, evidence, and technical remediation guidance.
- **Compliance layer / 컴플라이언스 레이어**: Mapping of findings to applicable regulatory requirements (EU AI Act, NIST AI RMF, sector-specific).

**R-2. Limitations Statement / 한계 성명**

Every report shall include a prominent limitations statement covering:

모든 보고서는 다음을 다루는 눈에 띄는 한계 성명을 포함한다:

- **Temporal validity / 시간적 유효성**: The date range of testing and conditions under which findings were observed. System behavior may differ under different conditions or after modifications.
- **Scope boundaries / 범위 경계**: What was and was not tested. Areas excluded from scope.
- **Methodology limitations / 방법론적 한계**: Inherent limitations of the testing approaches used. What types of vulnerabilities might these methods miss?
- **Adversary simulation fidelity / 적대자 시뮬레이션 충실도**: How closely did the red team's testing emulate the capabilities of the identified threat actors? Where were simplifications made?
- **No-warranty statement / 비보증 성명**: An explicit statement that the red team engagement does not and cannot certify the AI system as safe, secure, or fit for purpose. Absence of findings in any category does not indicate absence of vulnerabilities.

> **Mandatory language / 필수 문구** (to be adapted to local language and legal context):
>
> *"This report presents the results of a bounded adversarial assessment conducted within the scope, timeframe, and methodology described herein. The findings represent vulnerabilities and failure modes discovered during this engagement and do not represent an exhaustive enumeration of all possible risks. The absence of findings in any category does not warrant the absence of vulnerabilities in that category. AI systems are inherently incapable of complete verification, and this report should be interpreted as one input to ongoing risk management, not as a certification of safety."*
>
> *"이 보고서는 본문에 기술된 범위, 기간 및 방법론 내에서 수행된 제한된 적대적 평가의 결과를 제시한다. 발견사항은 이 참여 중 발견된 취약점 및 장애 모드를 나타내며, 가능한 모든 위험의 완전한 열거를 나타내지 않는다. 어떤 범주에서든 발견사항의 부재가 해당 범주에서의 취약점 부재를 보증하지 않는다. AI 시스템은 본질적으로 완전한 검증이 불가능하며, 이 보고서는 안전 인증이 아닌 지속적 위험 관리를 위한 하나의 입력으로 해석되어야 한다."*

**R-3. Recommendations / 권고사항**

For each significant finding or finding cluster, provide:

각 중요한 발견사항 또는 발견사항 그룹에 대해 다음을 제공한다:

- **Remediation guidance / 교정 안내**: What can be done to address the finding. Where possible, describe remediation at multiple levels (model-level, system-level, process-level).
- **Mitigation alternatives / 완화 대안**: If full remediation is not feasible, what mitigation measures can reduce risk?
- **Monitoring recommendations / 모니터링 권고**: What should be monitored to detect exploitation of this finding in production?
- **Re-test criteria / 재테스트 기준**: What conditions should trigger re-testing of this finding?

**R-4. Stakeholder Briefing / 이해관계자 브리핑**

Deliver findings through appropriate channels to each stakeholder group (see Phase 0, Section 3.3 for stakeholder definitions):

각 이해관계자 그룹에 적절한 채널을 통해 발견사항을 전달한다:

- Engineering teams receive technical briefings with reproduction steps.
- Product/safety teams receive risk assessments with prioritized remediation recommendations.
- Executive leadership receives a risk posture summary with strategic implications.
- Regulators receive compliance-relevant findings (subject to disclosure terms in the authorization agreement).

**R-5. Plan Deviations and Coverage Metrics Documentation / 계획 편차 및 커버리지 메트릭 문서화**

Document all deviations from the original Test Design Specification and provide quantitative coverage metrics:

원래 테스트 설계 명세와의 모든 편차를 문서화하고 정량적 커버리지 메트릭을 제공한다:

- **Deviations from plan / 계획 편차**:

  | Deviation / 편차 | Original Plan / 원래 계획 | Actual Execution / 실제 실행 | Rationale / 근거 | Impact / 영향 |
  |---|---|---|---|---|
  | Scope changes | Attack surfaces or threat actors originally planned | Attack surfaces or threat actors actually tested | Why the change occurred | Effect on coverage completeness |
  | Excluded test cases | Test cases designed but not executed | Rationale for exclusion | Impact on threat model coverage |
  | Schedule deviations | Planned vs. actual timeline | Reasons for delay or acceleration | Effect on testing depth |
  | Resource deviations | Planned vs. actual team, budget, tooling | Reasons for changes | Impact on engagement quality |

- **Coverage metrics / 커버리지 메트릭**:

  Provide quantitative or qualitative metrics demonstrating testing completeness:

  테스트 완전성을 보여주는 정량적 또는 정성적 메트릭을 제공한다:

  | Metric / 메트릭 | Formula / 공식 | Interpretation / 해석 |
  |---|---|---|
  | **Attack Category Coverage** | (Attack categories tested / Total attack categories in scope) × 100% | Percentage of planned attack categories executed |
  | **Threat Actor Coverage** | (Threat actors emulated / Threat actors identified in threat model) × 100% | Percentage of identified threat actors addressed |
  | **Attack Surface Coverage** | Qualitative assessment (Full/Partial/None) per surface | Depth of testing across model, system, and socio-technical levels |
  | **Test Case Execution Rate** | (Test cases executed / Test cases designed) × 100% | Percentage of designed test cases actually executed |
  | **Finding Density** | Findings discovered / Test cases executed | Average discovery rate (higher density may indicate higher vulnerability or more effective testing) |
  | **Residual Coverage Gaps** | Documented list of untested or under-tested areas | Explicit acknowledgment of coverage limitations |

- **Coverage rationale / 커버리지 근거**: Explain why coverage metrics are at their achieved levels, especially if below 100%. Reference risk tier, resource constraints, and conscious prioritization decisions.

**R-6. Report Approval and Sign-off / 보고서 승인 및 서명**

Establish formal approval process for report acceptance:

보고서 수용을 위한 공식 승인 프로세스를 수립한다:

- **Internal quality review / 내부 품질 검토**: RTL conducts internal review of report for accuracy, completeness, clarity, and alignment with evidence.
- **Technical accuracy review / 기술적 정확성 검토**: Domain Experts and Ethics Advisors review findings for technical accuracy and ethical implications.
- **Stakeholder review period / 이해관계자 검토 기간**: PS and SO are given review period (minimum 5 business days for high-risk systems) to review draft report and provide feedback.
- **Factual accuracy correction / 사실적 정확성 수정**: SO may request corrections to factual inaccuracies (system descriptions, deployment context) but may not request removal of valid findings.
- **Final sign-off / 최종 서명**: Report includes formal sign-off section:

```
Report Acceptance / 보고서 수용

Red Team Lead: ________________  Date: ________
(Report accuracy and completeness confirmed)

System Owner: ________________  Date: ________
(Report received and findings acknowledged)

Project Sponsor: ________________  Date: ________
(Report accepted for remediation planning)
```

### 6.4 Outputs / 산출물

| Output | Owner | Description / 설명 |
|--------|-------|---------------------|
| **Formal Red Team Report** | RTL | Complete report following the structure in Section 10, including deviations from plan, coverage metrics, and approval sign-off fields / 계획 편차, 커버리지 메트릭 및 승인 서명 필드를 포함하여 섹션 10의 구조를 따르는 완전한 보고서 |
| **Executive Summary** | RTL | Standalone summary for leadership audience / 경영진 대상 독립 요약 |
| **Technical Finding Details** | RTL / RTO | Detailed reproduction steps and evidence for each finding / 각 발견사항의 상세 재현 단계 및 증거 |
| **Remediation Roadmap** | RTL | Prioritized list of recommended actions with estimated effort and impact / 예상 노력 및 영향이 포함된 우선순위 권고 조치 목록 |
| **Coverage Analysis Report** | RTL | Quantitative coverage metrics, deviations from plan, and residual coverage gaps / 정량적 커버리지 메트릭, 계획 편차 및 잔여 커버리지 갭 |
| **Residual Risk Summary** | RTL | Summary of risks that remain after identified findings, including untested areas, coverage limitations, and acknowledged unknowns / 식별된 발견사항 이후 남은 위험의 요약, 미테스트 영역, 커버리지 한계 및 인정된 미지 사항 포함 |

### 6.5 Entry and Exit Criteria / 진입 및 종료 기준

**Entry Criteria / 진입 기준:**

The Reporting stage may begin when the Analysis stage exit criteria are satisfied, specifically:

보고 단계는 분석 단계의 종료 기준이 충족될 때 시작할 수 있다. 구체적으로:

1. **Characterized Finding Set complete** / 특성화된 발견사항 세트 완료: All findings are fully characterized and severity-assessed.
2. **Attack chain analysis complete** / 공격 체인 분석 완료: Multi-step scenarios and compound risks are documented.
3. **Coverage analysis complete** / 커버리지 분석 완료: Test coverage and limitations are assessed.
4. **Risk narrative reviewed** / 위험 서사 검토: Draft narrative has passed internal review.

**Exit Criteria / 종료 기준:**

The Reporting stage is complete when all of the following deliverables are accepted:

보고 단계는 다음 모든 산출물이 수용될 때 완료된다:

1. **Formal Red Team Report delivered** / 공식 레드팀 보고서 전달: Complete report conforming to Section 10 template is delivered to PS and SO.
2. **Executive Summary delivered** / 임원 요약 전달: Standalone summary suitable for leadership audience is provided.
3. **Technical findings documented** / 기술적 발견사항 문서화: Each finding includes reproduction steps, evidence artifacts, severity characterization, and recommended remediation.
4. **Remediation Roadmap delivered** / 교정 로드맵 전달: Prioritized, actionable recommendations with effort estimates and impact projections are provided.
5. **Deviations from plan documented** / 계획 편차 문서화: Any deviations from the original Test Design Specification (scope changes, excluded test cases, coverage gaps) are explicitly documented with rationale.
6. **Coverage metrics reported** / 커버리지 메트릭 보고: Quantitative or qualitative coverage metrics demonstrating testing completeness are included (e.g., percentage of attack categories tested, threat actor coverage).
7. **Stakeholder acceptance obtained** / 이해관계자 수용 확보: PS and SO have formally accepted the report deliverables, or any objections are documented for resolution in follow-up stage.

---

## 7. Stage 6: Follow-up / 후속조치

### 7.1 Purpose / 목적

Ensure that red team findings lead to actual risk reduction through remediation tracking, re-testing, and integration into the organization's continuous improvement processes.

레드팀 발견사항이 교정 추적, 재테스트 및 조직의 지속적 개선 프로세스에 통합됨으로써 실제 위험 감소로 이어지도록 보장한다.

### 7.2 Inputs / 입력물

| Input | Source |
|-------|--------|
| Formal Red Team Report | Stage 5 output |
| Remediation Roadmap | Stage 5 output |

### 7.3 Activities / 활동

**F-1. Remediation Tracking / 교정 추적**

Establish a tracking mechanism for each finding's remediation status:

각 발견사항의 교정 상태에 대한 추적 메커니즘을 수립한다:

| Status / 상태 | Definition / 정의 |
|---|---|
| **Open / 미해결** | Finding acknowledged but remediation not yet initiated / 발견사항 인정되었으나 교정 미착수 |
| **In Progress / 진행 중** | Remediation work underway / 교정 작업 진행 중 |
| **Mitigated / 완화됨** | Interim mitigation applied; full remediation pending / 임시 완화 조치 적용; 완전한 교정 보류 중 |
| **Remediated / 교정됨** | Remediation implemented; awaiting verification / 교정 구현됨; 검증 대기 중 |
| **Verified / 검증됨** | Re-testing confirms remediation effectiveness / 재테스트가 교정 효과를 확인 |
| **Accepted / 수용됨** | Risk accepted by system owner with documented rationale / 시스템 소유자가 문서화된 근거와 함께 위험 수용 |

**F-2. Remediation Verification / 교정 검증**

Re-test remediated findings to verify effectiveness:

교정된 발견사항을 재테스트하여 효과를 검증한다:

- Reproduce the original attack to confirm it is no longer effective.
- Test for bypass variations -- did the remediation address the root cause or only the specific attack vector?
- For model-level remediations (e.g., alignment tuning, content filter updates): verify that fixes do not introduce new failure modes (regression testing).

**F-3. Lessons Learned Integration / 교훈 통합**

Ensure findings feed back into the organization's AI development and governance processes:

발견사항이 조직의 AI 개발 및 거버넌스 프로세스에 반영되도록 보장한다:

- Update the organizational threat model based on new findings.
- Incorporate findings into training data curation, alignment processes, and system design guidelines.
- Share anonymized insights with the broader community where responsible disclosure permits.
- Update internal red teaming methodologies based on what worked and what did not.

**F-4. Engagement Closure / 참여 종료**

Formally close the engagement:

참여를 공식적으로 종료한다:

- Confirm all data handling obligations are met (destruction of sensitive test data, artifacts).
- Archive engagement documentation according to retention policies.
- Conduct a post-engagement retrospective with the red team to capture methodological improvements.
- Issue a closure notice to the project sponsor documenting the engagement's outcome and residual risk posture.

### 7.4 Outputs / 산출물

| Output | Owner | Description / 설명 |
|--------|-------|---------------------|
| **Remediation Status Tracker** | SO (with RTL input) | Status of each finding's remediation / 각 발견사항의 교정 상태 |
| **Verification Report** | RTL | Results of re-testing remediated findings / 교정된 발견사항 재테스트 결과 |
| **Lessons Learned Document** | RTL | Methodological improvements and organizational recommendations / 방법론적 개선사항 및 조직적 권고사항 |
| **Engagement Closure Notice** | RTL | Formal closure documentation / 공식 종료 문서 |

### 7.5 Entry and Exit Criteria / 진입 및 종료 기준

**Entry Criteria / 진입 기준:**

The Follow-up stage may begin when the Reporting stage exit criteria are satisfied, specifically:

후속조치 단계는 보고 단계의 종료 기준이 충족될 때 시작할 수 있다. 구체적으로:

1. **Formal Red Team Report delivered** / 공식 레드팀 보고서 전달: Report and all deliverables are accepted by PS and SO.
2. **Remediation responsibilities assigned** / 교정 책임 배정: SO has assigned ownership of each finding to responsible teams or individuals.
3. **Follow-up scope agreed** / 후속조치 범위 합의: RTL and SO have agreed on follow-up activities (verification testing timeline, lessons learned review, closure criteria).

**Exit Criteria / 종료 기준:**

The Follow-up stage (and the entire engagement) is complete when all of the following are achieved:

후속조치 단계(및 전체 참여)는 다음 모든 조건이 달성될 때 완료된다:

1. **Remediation status tracked** / 교정 상태 추적: All findings have documented remediation status (remediated, mitigated, accepted as residual risk, or deferred with justification).
2. **High/Critical findings verified** / 높음/중대 발견사항 검증: All high and critical severity findings that were remediated have been re-tested and verified resolved, or explicit acceptance of unverified remediation is documented.
3. **Lessons learned documented** / 교훈 문서화: Methodological improvements, organizational recommendations, and process feedback are documented.
4. **Engagement closure confirmed** / 참여 종료 확인: PS, SO, and RTL have formally agreed that engagement objectives are met and no further follow-up is required, or next engagement cycle is scheduled.
5. **Knowledge transfer complete** / 지식 전이 완료: Findings, methodologies, and lessons learned have been incorporated into organizational knowledge base (attack pattern library updates, organizational test practices, continuous operating model improvements).

---

## 8. Risk-Based Test Scope Determination / 리스크 기반 테스트 범위 결정

### 8.1 Rationale / 근거

Not all AI systems require the same depth of red teaming. Testing depth should be proportional to the system's risk profile -- determined by its deployment context, affected populations, autonomy level, and potential for harm. This section provides a structured approach for determining appropriate testing depth.

모든 AI 시스템이 동일한 깊이의 레드티밍을 요구하지 않는다. 테스트 깊이는 시스템의 리스크 프로파일에 비례해야 하며, 이는 배포 맥락, 영향 인구, 자율성 수준 및 피해 잠재력에 의해 결정된다.

### 8.2 Risk Tier Determination Factors / 리스크 등급 결정 요소

Evaluate the target system across the following factors. Each factor is considered qualitatively; the overall tier reflects professional judgment, not a mechanical formula.

다음 요소들에 대해 대상 시스템을 평가한다. 각 요소는 정성적으로 고려되며, 전체 등급은 기계적 공식이 아닌 전문적 판단을 반영한다.

| Factor / 요소 | Guiding Considerations / 안내 고려사항 |
|---|---|
| **Deployment domain / 배포 도메인** | Is the system deployed in a safety-critical domain (healthcare, legal, financial, critical infrastructure, autonomous vehicles)? Or in a lower-stakes context (content recommendation, entertainment)? / 안전 중요 도메인에 배포되는가, 낮은 위험 맥락에 배포되는가? |
| **Affected population scale / 영향 인구 규모** | How many users or affected individuals? Are vulnerable populations (children, patients, job applicants) disproportionately impacted? / 사용자 또는 영향받는 개인 수는? 취약 집단이 불균형하게 영향받는가? |
| **Autonomy level / 자율성 수준** | Does the system generate text only, or does it take actions in the real world (tool calls, API invocations, financial transactions, code execution)? / 텍스트만 생성하는가, 현실 세계에서 행동을 취하는가? |
| **Decision consequence / 결정 결과** | What happens if the system makes an error or is exploited? Reversible inconvenience, or irreversible harm? / 시스템이 오류를 범하거나 악용되면 어떻게 되는가? |
| **Data sensitivity / 데이터 민감도** | Does the system process or have access to personal data, health records, financial information, classified material, or proprietary secrets? / 개인 데이터, 건강 기록, 금융 정보 등을 처리하거나 접근하는가? |
| **Regulatory classification / 규제 분류** | Is the system classified as high-risk under applicable regulation (e.g., EU AI Act Annex III)? / 적용 규제에서 고위험으로 분류되는가? |
| **Public exposure / 공적 노출** | Is the system publicly accessible, or restricted to internal users? / 공개적으로 접근 가능한가, 내부 사용자로 제한되는가? |

### 8.3 Testing Depth by Risk Tier / 리스크 등급별 테스트 깊이

| Dimension / 차원 | Tier 1: Foundational / 기초 | Tier 2: Standard / 표준 | Tier 3: Comprehensive / 포괄 |
|---|---|---|---|
| **Typical application / 일반적 적용** | Low-stakes, internal-only, limited-scope AI features / 낮은 위험, 내부 전용, 제한적 범위의 AI 기능 | Customer-facing AI applications, moderate-stakes decisions / 고객 대면 AI 응용, 중간 수준 결정 | Safety-critical, high-autonomy, large-scale, regulated, or frontier systems / 안전 중요, 고자율성, 대규모, 규제 또는 프론티어 시스템 |
| **Access model / 접근 모델** | Black-box minimum | Grey-box minimum | Grey-box minimum; white-box recommended |
| **Attack surface coverage / 공격 표면 커버리지** | Model-level (primary) | Model-level + system-level | All three levels (model + system + socio-technical) |
| **Threat actors emulated / 모방 위협 행위자** | Casual user, malicious end-user | + Sophisticated external attacker | + Insider, nation-state, automated agent |
| **Test approach / 테스트 접근** | Automated scanning + limited manual probing | Automated + structured manual testing | Automated + structured + creative/exploratory + domain expert + multi-turn temporal |
| **Minimum test categories / 최소 테스트 범주** | Jailbreak, direct prompt injection, basic content safety | + Indirect prompt injection, data extraction, hallucination, bias, tool misuse (if agentic) | + Supply chain, multimodal, attack chains, autonomous drift, socio-technical impact, emergent behavior |
| **Engagement duration / 참여 기간** | Days | Weeks | Weeks to months |
| **Team composition / 팀 구성** | Security + AI/ML expertise | + Domain expertise | + Diverse perspectives, crowdsourced, external independent |
| **Reporting depth / 보고 깊이** | Finding summary + remediation guidance | Full report with attack chains + remediation roadmap | Full report + risk narrative + regulatory mapping + lessons learned |
| **Follow-up / 후속조치** | Remediation tracking | + Verification re-testing | + Continuous monitoring integration + lessons learned cycle |

> **Note / 참고**: These tiers represent minimum baselines, not ceilings. Organizations may elect to apply higher-tier practices to lower-tier systems. The tier determination should be documented and justified in the Engagement Plan (Stage 1).
>
> 이 등급은 최소 기준선을 나타내며, 상한이 아니다. 조직은 더 낮은 등급의 시스템에 더 높은 등급의 관행을 적용할 수 있다.

---

## 9. Test Design Principles / 테스트 설계 원칙

### 9.1 Principle: Threat-Model-Driven, Not Tool-Driven / 원칙: 도구 기반이 아닌 위협 모델 기반

Test design shall derive from the threat model, not from available tools or benchmarks.

테스트 설계는 가용 도구나 벤치마크가 아닌, 위협 모델에서 도출되어야 한다.

**What this means in practice / 실천적 의미:**

- Begin with the question *"What could go wrong for this system, given its threat model?"* -- not with *"What can this tool test?"*
- Select tools and techniques that address the identified threats, not the reverse.
- If no existing tool adequately addresses an identified threat, design custom test cases rather than omitting the threat from testing.
- Document the mapping from threat model to test cases to maintain traceability.

> **Prohibition / 금지**: This guideline does not mandate or endorse any specific tool, benchmark, or testing platform. Tool selection is a professional judgment made by the RTL based on the engagement's specific needs, available resources, and the current state of available tooling. Mandating specific tools would create a false sense of comprehensiveness and would quickly become outdated as the tooling landscape evolves.
>
> 이 가이드라인은 어떤 특정 도구, 벤치마크 또는 테스팅 플랫폼을 의무화하거나 보증하지 않는다. 도구 선정은 참여의 특정 요구, 가용 자원 및 도구 환경의 현재 상태에 기반한 RTL의 전문적 판단이다.

### 9.2 Principle: Scenario-Based over Prompt-List / 원칙: 프롬프트 목록이 아닌 시나리오 기반

Test cases shall be expressed as realistic adversarial scenarios, not as isolated prompt lists.

테스트 케이스는 고립된 프롬프트 목록이 아닌, 현실적인 적대적 시나리오로 표현되어야 한다.

**What this means in practice / 실천적 의미:**

- Each test case describes a threat actor, their goal, their access level, and the attack path -- not just a single input.
- Multi-turn scenarios reflect real-world adversarial behavior (e.g., the crescendo pattern, context establishment before exploitation).
- Test cases account for the system's deployment context (e.g., a medical AI chatbot requires different scenarios than a code generation tool).

### 9.3 Principle: Dual Mandate -- Safety and Security / 원칙: 안전성과 보안의 이중 의무

Every engagement shall address both safety dimensions (can the system cause harm through its normal operation?) and security dimensions (can the system be exploited by adversaries?).

모든 참여는 안전성 차원(시스템이 정상 작동을 통해 피해를 유발할 수 있는가?)과 보안 차원(시스템이 적대자에 의해 악용될 수 있는가?) 모두를 다루어야 한다.

- Safety testing: probing for harmful outputs, bias, hallucination, misuse potential under normal and foreseeable misuse conditions.
- Security testing: probing for exploitable vulnerabilities, injection attacks, data extraction, privilege escalation, supply chain weaknesses.
- The distinction matters because remediation strategies differ: safety issues often require model-level interventions (alignment, training data curation), while security issues often require system-level defenses (input validation, access controls, monitoring).

### 9.4 Principle: Adaptive Methodology / 원칙: 적응적 방법론

The test design must accommodate adaptation during execution.

테스트 설계는 실행 중 적응을 수용해야 한다.

- Initial findings may reveal unexpected attack surfaces that were not in the original threat model.
- The test design must include provisions for RTL to authorize scope adjustments during execution (with documentation).
- Rigid adherence to a pre-defined test plan at the expense of pursuing significant discoveries undermines the engagement's value.

### 9.5 Principle: Defense-Aware Testing / 원칙: 방어 인식 테스트

Testing must account for existing defenses and attempt to circumvent them, not merely test against an undefended model.

테스트는 기존 방어 체계를 고려하고 이를 우회하려 시도해야 하며, 방어되지 않은 모델에 대해서만 테스트하는 것이 아니다.

- Test the complete defense stack as deployed, not just the underlying model.
- When a defense successfully blocks an attack, document the defense mechanism and attempt bypass techniques.
- Evaluate defense robustness: can defenses be evaded through encoding, multi-turn escalation, cross-modal injection, or other evasion techniques?
- As demonstrated in Phase 1-2 research: adaptive attacks have bypassed all 12 published defense mechanisms with >90% success rates. Testing must emulate adaptive adversaries, not static attack sets.

### 9.6 Principle: Harm-Proportional Effort / 원칙: 피해 비례적 노력

Invest more testing effort in areas where the potential for harm is greatest.

피해 잠재력이 가장 큰 영역에 더 많은 테스트 노력을 투자한다.

- This does not mean ignoring lower-severity findings, but it does mean that a medical AI's hallucination behavior in dosage recommendations warrants deeper investigation than its tendency to generate mildly off-topic responses.
- The harm taxonomy from Phase 1-2 (individual/organizational/societal) and the deployment domain inform effort allocation.

---

## 10. Report Structure Template / 보고서 구조 템플릿

The following structure shall be used for formal red team reports. Sections may be expanded or condensed based on engagement scope and risk tier, but no section may be entirely omitted.

다음 구조는 공식 레드팀 보고서에 사용한다. 섹션은 참여 범위와 리스크 등급에 따라 확장 또는 축소될 수 있으나, 어떤 섹션도 완전히 생략할 수 없다.

### Report Structure / 보고서 구조

```
1. Executive Summary / 경영진 요약
   1.1 Engagement Overview / 참여 개요
       - Target system description / 대상 시스템 설명
       - Engagement dates and duration / 참여 일자 및 기간
       - Risk tier and rationale / 리스크 등급 및 근거
   1.2 Key Findings Summary / 주요 발견사항 요약
       - Most significant findings (narrative form, not score) / 가장 중요한 발견사항 (점수가 아닌 서사 형태)
       - Overall risk posture characterization / 전반적 위험 자세 특성화
   1.3 Strategic Recommendations / 전략적 권고사항
   1.4 Limitations Statement / 한계 성명 (mandatory / 필수)

2. Engagement Context / 참여 맥락
   2.1 Scope and Boundaries / 범위 및 경계
   2.2 Access Model / 접근 모델
   2.3 Threat Model Summary / 위협 모델 요약
   2.4 Team Composition / 팀 구성
   2.5 Methodology Overview / 방법론 개요

3. Findings / 발견사항
   (For each finding / 각 발견사항에 대해:)
   3.x Finding [Identifier]
       3.x.1 Description / 설명
             - What was observed / 관찰된 내용
             - Attack surface level (model / system / socio-technical) /
               공격 표면 수준 (모델 / 시스템 / 사회기술적)
             - Related threat actor profile / 관련 위협 행위자 프로파일
       3.x.2 Reproduction / 재현
             - Steps to reproduce / 재현 단계
             - Environmental conditions / 환경 조건
             - Reproducibility assessment / 재현성 평가
       3.x.3 Evidence / 증거
             - Transcripts, screenshots, logs / 대화록, 스크린샷, 로그
       3.x.4 Characterization / 특성화
             - Harm potential / 피해 잠재력
             - Affected population / 영향 인구
             - Exploitability / 악용 용이성
             - Mitigation difficulty / 완화 난이도
             - Deployment context sensitivity / 배포 맥락 민감성
       3.x.5 Recommendations / 권고사항
             - Remediation guidance / 교정 안내
             - Mitigation alternatives / 완화 대안
             - Monitoring recommendations / 모니터링 권고
             - Re-test criteria / 재테스트 기준

4. Attack Chain Analysis / 공격 체인 분석
   4.1 Identified Attack Chains / 식별된 공격 체인
   4.2 Compound Risk Scenarios / 복합 위험 시나리오

5. Coverage Analysis / 커버리지 분석
   5.1 Attack Surfaces Tested / 테스트된 공격 표면
   5.2 Threat Actors Emulated / 모방된 위협 행위자
   5.3 Test Categories Covered / 다루어진 테스트 범주
   5.4 Known Gaps and Untested Areas / 알려진 갭 및 미테스트 영역

6. Risk Narrative / 위험 서사
   6.1 Overall Risk Posture / 전반적 위험 자세
   6.2 Systemic Patterns / 체계적 패턴
   6.3 Strengths Observed / 관찰된 강점
   6.4 Areas of Concern / 우려 영역
   6.5 Comparison with Prior Engagements (if applicable) /
       이전 참여와의 비교 (해당 시)

7. Remediation Roadmap / 교정 로드맵
   7.1 Prioritized Recommendations / 우선순위 권고사항
   7.2 Quick Wins vs. Structural Changes / 빠른 개선 vs. 구조적 변경
   7.3 Recommended Re-test Timeline / 권고 재테스트 일정

8. Regulatory Mapping / 규제 매핑 (when applicable / 해당 시)
   8.1 EU AI Act Alignment / EU AI 법 정렬
   8.2 NIST AI RMF Alignment / NIST AI RMF 정렬
   8.3 Sector-Specific Requirements / 부문별 요구사항

Appendix A: Methodology Detail / 방법론 세부사항
Appendix B: Tool and Environment Description / 도구 및 환경 설명
Appendix C: Full Evidence Archive Reference / 전체 증거 아카이브 참조
Appendix D: Glossary (referencing Phase 0) / 용어집 (제0단계 참조)
```

> **Key constraints on report writing / 보고서 작성의 핵심 제약:**
>
> - Findings shall be described in narrative form with qualitative characterization. Numeric scores may be used as supporting indicators but shall not be the primary or sole means of communicating severity.
> - The report shall not contain language implying that the system is "safe," "secure," "compliant," or "approved" as a result of the engagement.
> - The limitations statement (Section 1.4) is mandatory and shall appear in the executive summary where it cannot be overlooked.
> - Recommendations shall be actionable and specific, not generic. "Improve security" is not an acceptable recommendation; "Implement input validation for [specific data channel] to prevent [specific attack pattern]" is.

---

## 11. Organizational Test Policy and Practices / 조직적 테스트 정책 및 실무

### 11.1 Purpose / 목적

This section defines the organizational-level governance framework for AI red teaming, providing templates and guidance for establishing consistent, auditable, and ethically grounded red team programs aligned with ISO/IEC/IEEE 29119-3 Section 6.2 (Test Policy) and 6.3 (Organizational Test Practices).

이 섹션은 AI 레드팀을 위한 조직 수준 거버넌스 프레임워크를 정의하며, ISO/IEC/IEEE 29119-3 Section 6.2 (테스트 정책) 및 6.3 (조직적 테스트 실무)과 정렬된 일관되고 감사 가능하며 윤리적으로 근거한 레드팀 프로그램 수립을 위한 템플릿과 가이드를 제공한다.

### 11.2 AI Red Team Policy Template / AI 레드팀 정책 템플릿

**[Organization Name] AI Red Team Policy**
**[조직명] AI 레드팀 정책**

**Document Version / 문서 버전:** 1.0
**Effective Date / 시행일:** [Date]
**Review Cycle / 검토 주기:** Annual / 연간
**Approval Authority / 승인 권한:** [Chief Information Security Officer / Chief AI Officer / equivalent]

---

#### 11.2.1 Policy Statement and Objectives / 정책 성명 및 목표

**Policy Statement / 정책 성명:**

[Organization Name] is committed to responsible AI development and deployment. This AI Red Team Policy establishes the framework for systematic adversarial testing of AI systems to identify, assess, and mitigate risks before they cause harm to individuals, organizations, or society.

[조직명]은 책임 있는 AI 개발 및 배포에 전념한다. 이 AI 레드팀 정책은 개인, 조직 또는 사회에 피해를 야기하기 전에 위험을 식별, 평가 및 완화하기 위한 AI 시스템의 체계적 적대적 테스트를 위한 프레임워크를 수립한다.

**Objectives / 목표:**

1. **Risk Discovery / 위험 발견**: Proactively discover vulnerabilities, failure modes, and unintended behaviors in AI systems before deployment or after significant changes.
2. **Risk Transparency / 위험 투명성**: Provide stakeholders with evidence-based understanding of AI system risks and limitations.
3. **Continuous Improvement / 지속적 개선**: Feed findings back into model development, system design, and organizational practices to reduce risks over time.
4. **Regulatory Readiness / 규제 준비**: Ensure AI systems meet applicable regulatory requirements (EU AI Act, NIST AI RMF, sector-specific regulations).
5. **Ethical Alignment / 윤리적 정렬**: Conduct red teaming in a manner consistent with organizational values and societal expectations.

#### 11.2.2 Scope and Applicability / 범위 및 적용 가능성

**In Scope / 범위 내:**

This policy applies to:

이 정책은 다음에 적용된다:

- All AI systems classified as **High-Risk** per the organization's AI risk classification framework
- All AI systems intended for deployment in production environments serving external users
- All AI systems with access to sensitive data (PII, PHI, financial, proprietary)
- All AI systems with autonomous decision-making or action-taking capabilities (agentic systems)
- Significant updates to existing AI systems (major model version changes, deployment context changes)

**Exclusions / 제외사항:**

The following are excluded from mandatory red teaming unless specifically requested:

다음은 특별히 요청되지 않는 한 필수 레드팀에서 제외된다:

- Internal research prototypes not intended for deployment
- Low-risk AI systems with limited potential for harm (as defined in risk classification framework)
- Third-party AI systems where contractual terms prohibit testing (subject to legal review)

#### 11.2.3 Roles and Responsibilities / 역할 및 책임

| Role / 역할 | Responsibilities / 책임 |
|---|---|
| **AI System Owner** / AI 시스템 소유자 | Requests red team engagement; provides access and documentation; owns remediation; accepts residual risk |
| **Red Team Lead** / 레드팀 리더 | Plans and executes engagements per this policy and Phase 3 process; owns deliverable quality; escalates critical findings |
| **Red Team Operator** / 레드팀 운영자 | Executes test cases; documents findings; adheres to ethical boundaries and scope constraints |
| **Ethics Advisory Board** / 윤리 자문 위원회 | Reviews engagement plans for ethical implications; approves high-sensitivity engagements; investigates ethical concerns |
| **Legal Counsel** / 법률 자문 | Reviews authorization agreements; ensures legal compliance; advises on disclosure obligations |
| **Chief AI Officer / CISO** / 최고 AI 책임자 / 최고 정보보안 책임자 | Approves this policy; allocates resources for red team program; receives critical findings; drives remediation |
| **Regulatory Compliance Officer** / 규제 준수 책임자 | Maps red team findings to regulatory requirements; ensures documentation meets compliance needs |

#### 11.2.4 Red Team Engagement Criteria / 레드팀 참여 기준

Red team engagements **shall** be conducted:

레드팀 참여는 다음 경우에 **수행되어야 한다**:

1. **Pre-deployment / 배포 전**: Before initial deployment of any high-risk AI system to production
2. **Post-major-update / 주요 업데이트 후**: After major model updates, significant architecture changes, or new integrations
3. **Post-incident / 사고 후**: After any incident involving the AI system that resulted in harm or potential harm
4. **Regulatory trigger / 규제 트리거**: When required by regulatory obligations (e.g., EU AI Act conformity assessment)
5. **Periodic review / 정기 검토**: Annually for critical-tier systems, biannually for high-tier systems (per continuous operating model in Section 12)

Red team engagements **may** be conducted:

레드팀 참여는 다음 경우에 **수행될 수 있다**:

- At the request of system owners for medium or low-risk systems
- When new threat intelligence indicates emerging attack vectors relevant to deployed systems
- As part of security research or capability development activities

#### 11.2.5 Ethical Principles and Constraints / 윤리적 원칙 및 제약

All red team activities shall adhere to the following ethical principles:

모든 레드팀 활동은 다음 윤리적 원칙을 준수한다:

1. **Do No Harm / 해를 끼치지 않음**: Red teaming shall not intentionally cause harm to individuals, organizations, or the public. Testing shall be conducted in isolated environments when testing potentially harmful behaviors.
2. **Respect for Persons / 개인 존중**: Testing shall not involve deception, manipulation, or exploitation of vulnerable populations without explicit informed consent and ethics board approval.
3. **Confidentiality / 기밀성**: Sensitive data encountered during testing (PII, harmful content, model outputs) shall be handled per data protection policies and disposed of securely.
4. **Transparency / 투명성**: Findings shall be reported honestly and completely, without concealment of risks or exaggeration of capabilities.
5. **Proportionality / 비례성**: Testing intensity and invasiveness shall be proportionate to system risk tier and potential harm.

**Prohibited activities / 금지된 활동:**

The following activities are **prohibited** under all circumstances:

다음 활동은 모든 상황에서 **금지된다**:

- Generating, distributing, or possessing child sexual abuse material (CSAM), even for testing purposes (use synthetic datasets or documented attack patterns only)
- Testing on actual vulnerable populations (children, elderly, disabled, marginalized communities) without ethics board approval and informed consent
- Attempting attacks on production systems serving critical functions (healthcare, emergency services, safety-critical infrastructure) without isolation and SO approval
- Disclosing vulnerabilities publicly or to unauthorized parties before responsible disclosure process completes
- Using findings for personal gain, competitive advantage, or purposes outside the scope of the engagement

#### 11.2.6 Deviation and Exception Process / 편차 및 예외 프로세스

Deviations from this policy require formal approval:

이 정책과의 편차는 공식 승인을 요구한다:

| Deviation Type / 편차 유형 | Examples / 예시 | Approval Authority / 승인 권한 |
|---|---|---|
| **Minor / 경미** | Adjusting engagement timeline by <1 week; changing individual test techniques | Red Team Lead |
| **Moderate / 중간** | Reducing scope for resource constraints; abbreviated process for low-risk systems | AI System Owner + Red Team Lead |
| **Major / 주요** | Skipping mandatory engagement; testing prohibited content; disclosure timeline changes | Chief AI Officer / CISO + Ethics Board + Legal |

All approved deviations shall be documented in the engagement record with rationale and compensating controls.

모든 승인된 편차는 근거 및 보완 통제와 함께 참여 기록에 문서화되어야 한다.

#### 11.2.7 Finding Escalation and Remediation / 발견사항 에스컬레이션 및 교정

**Critical findings / 중대한 발견사항:**

Findings meeting any of the following criteria shall be escalated to Chief AI Officer / CISO within **24 hours**:

다음 기준 중 하나라도 충족하는 발견사항은 **24시간 내**에 최고 AI 책임자 / 최고 정보보안 책임자에게 에스컬레이션되어야 한다:

- Potential for immediate harm to individuals or public safety
- Unauthorized data access or exfiltration
- Complete bypass of safety mechanisms
- Regulatory non-compliance with potential for enforcement action
- Widespread exploitability by unsophisticated actors

**Remediation timelines / 교정 타임라인:**

| Severity / 심각도 | Target Remediation Timeline / 목표 교정 타임라인 | Approval for Deferral / 연기 승인 |
|---|---|---|
| **Critical / 중대** | 30 days | Chief AI Officer + Risk Committee |
| **High / 높음** | 90 days | AI System Owner + Red Team Lead |
| **Medium / 중간** | 180 days | AI System Owner |
| **Low / 낮음** | Next major release or 365 days | AI System Owner |

If remediation cannot be completed within target timeline, a formal risk acceptance or mitigation plan must be approved by the designated authority.

목표 타임라인 내에 교정이 완료될 수 없는 경우, 공식 위험 수용 또는 완화 계획이 지정된 권한에 의해 승인되어야 한다.

#### 11.2.8 Documentation and Reporting / 문서화 및 보고

All red team engagements shall produce:

모든 레드팀 참여는 다음을 생성한다:

1. **Red Team Engagement Plan** (per Phase 3, Stage 1)
2. **Formal Red Team Report** (per Phase 3, Stage 5)
3. **Remediation Status Tracker** (per Phase 3, Stage 6)
4. **Engagement Record** for compliance audit trail, including:
   - Engagement request and authorization
   - Scope and constraints
   - Red team composition
   - All findings with severity classifications
   - Remediation actions and timelines
   - Approvals and sign-offs

Records shall be retained for **7 years** or per regulatory requirements, whichever is longer.

기록은 **7년** 또는 규제 요구사항에 따라, 더 긴 기간 동안 보존되어야 한다.

#### 11.2.9 Program Improvement / 프로그램 개선

This policy and the red team program shall be reviewed **annually** and updated based on:

이 정책과 레드팀 프로그램은 **연간** 검토되고 다음에 기반하여 업데이트되어야 한다:

- Lessons learned from completed engagements (per Phase 3, Stage 6)
- Emerging AI risks and attack techniques
- Regulatory changes and compliance requirements
- Industry best practices and standards evolution (ISO/IEC 29119, NIST AI RMF updates)

### 11.3 Organizational Test Practices Document / 조직적 테스트 실무 문서

**Purpose / 목적:** Complement the policy with operational procedures for consistent engagement execution.

**목적:** 일관된 참여 실행을 위한 운영 절차로 정책을 보완한다.

**Contents / 내용:**

1. **Engagement Initiation Workflow / 참여 시작 워크플로우**: Step-by-step process for requesting, scoping, and approving red team engagements
2. **Team Composition Standards / 팀 구성 표준**: Required competencies, diversity requirements, training and certification requirements for Red Team Leads and Operators
3. **Tool Qualification Criteria / 도구 자격 기준**: Standards for selecting and validating testing tools (security, reliability, licensing)
4. **Evidence Handling Procedures / 증거 처리 절차**: Secure collection, storage, transmission, and disposal of test artifacts and sensitive data
5. **Confidentiality Requirements / 기밀 요구사항**: NDA templates, data classification, need-to-know access controls
6. **Communication Protocols / 커뮤니케이션 프로토콜**: Escalation paths, status reporting cadence, stakeholder notification procedures
7. **Quality Assurance / 품질 보증**: Peer review requirements for reports, independent validation of critical findings
8. **Continuous Learning / 지속적 학습**: Procedures for updating attack pattern library (Phase 4 Annex A), incorporating lessons learned, and sharing knowledge across engagements

---

## 12. Continuous Red Team Operating Model / 지속적 레드팀 운영 모델

### 11.1 Rationale / 근거

Point-in-time red team engagements are necessary but insufficient. AI systems change through model updates, fine-tuning, data refreshes, integration changes, and evolving threat landscapes. A continuous operating model ensures that red teaming keeps pace with these changes.

일회성 레드팀 참여는 필요하지만 충분하지 않다. AI 시스템은 모델 업데이트, 파인튜닝, 데이터 갱신, 통합 변경 및 진화하는 위협 환경을 통해 변화한다. 지속적 운영 모델은 레드티밍이 이러한 변화에 보조를 맞추도록 보장한다.

### 11.2 Three-Layer Continuous Model / 3계층 지속적 모델

```
Layer 3: Event-Triggered Deep Engagement / 이벤트 트리거 심층 참여
         ┌─────────────────────────────────────────────────┐
         │ Full 6-stage process. Triggered by major events │
         │ (new model version, significant incident,       │
         │ regulatory change, new deployment context).     │
         │ 전체 6단계 프로세스. 주요 이벤트에 의해 트리거. │
         └─────────────────────────────────────────────────┘

Layer 2: Periodic Structured Assessment / 주기적 구조적 평가
         ┌─────────────────────────────────────────────────┐
         │ Scheduled assessments (e.g., quarterly).        │
         │ Targeted at specific attack surfaces or newly   │
         │ identified threat vectors. Uses abbreviated     │
         │ 6-stage process (lighter planning & design).    │
         │ 정기 평가 (예: 분기별). 특정 공격 표면 또는     │
         │ 새로 식별된 위협 벡터 대상. 축약된 6단계 프로세스.│
         └─────────────────────────────────────────────────┘

Layer 1: Continuous Automated Monitoring / 지속적 자동화 모니터링
         ┌─────────────────────────────────────────────────┐
         │ Always-on automated testing integrated into     │
         │ CI/CD and production monitoring. Runs known     │
         │ attack patterns, regression tests, and drift    │
         │ detection continuously. Alerts trigger Layer 2  │
         │ or Layer 3 activities.                          │
         │ CI/CD 및 프로덕션 모니터링에 통합된 상시 자동화  │
         │ 테스트. 알려진 공격 패턴, 회귀 테스트, 드리프트  │
         │ 감지를 지속적으로 실행. 경보가 2/3계층 활동 트리거│
         └─────────────────────────────────────────────────┘
```

### 11.3 Layer 1: Continuous Automated Monitoring / 지속적 자동화 모니터링

**Purpose / 목적**: Maintain baseline vigilance against known attack patterns and detect behavioral drift in production systems.

**Activities / 활동:**

- **Regression testing / 회귀 테스트**: Automatically re-run test cases from previous engagements against updated system versions to detect regressions.
- **Known-attack-pattern scanning / 알려진 공격 패턴 스캐닝**: Run automated jailbreak, prompt injection, and data extraction attempts using maintained attack libraries.
- **Behavioral drift detection / 행동 드리프트 감지**: Monitor production outputs for statistical changes in refusal rates, content safety classifications, response patterns, and tool-use behaviors.
- **Threat intelligence integration / 위협 인텔리전스 통합**: Ingest newly published attack techniques (e.g., from MITRE ATLAS updates, security research publications, OWASP updates) and translate them into automated test cases.

**Integration points / 통합 지점:**

- Pre-deployment gate: automated red team tests run before model updates or configuration changes are promoted to production.
- Post-deployment monitoring: continuous behavioral monitoring of production systems.
- Alert-driven escalation: anomalies trigger investigation by human red team (Layer 2 or Layer 3).

### 11.4 Layer 2: Periodic Structured Assessment / 주기적 구조적 평가

**Purpose / 목적**: Conduct focused human-led assessments on a regular cadence to address areas that automated testing cannot adequately cover.

**Cadence / 주기**: Organization-defined; recommended minimum quarterly for Tier 3 systems, semi-annually for Tier 2, annually for Tier 1.

**Activities / 활동:**

- Targeted assessment of specific attack surfaces or vulnerability classes identified through Layer 1 monitoring or external threat intelligence.
- Creative/exploratory probing by human operators to discover novel failure modes.
- Review and update of the system's threat model based on evolving deployment context.
- Assessment of newly introduced features, integrations, or capabilities.

### 11.5 Layer 3: Event-Triggered Deep Engagement / 이벤트 트리거 심층 참여

**Purpose / 목적**: Conduct comprehensive red team engagements when significant changes or events alter the system's risk profile.

**Triggers / 트리거:**

| Trigger / 트리거 | Description / 설명 |
|---|---|
| **Major model update / 주요 모델 업데이트** | New base model version, significant fine-tuning, or architecture change / 새로운 기본 모델 버전, 대규모 파인튜닝 또는 아키텍처 변경 |
| **New deployment context / 신규 배포 맥락** | System deployed to a new domain, market, or user population / 새로운 도메인, 시장 또는 사용자 인구에 시스템 배포 |
| **Significant incident / 중대 사고** | Security breach, safety incident, or public disclosure of related vulnerability / 보안 침해, 안전 사고 또는 관련 취약점의 공개 |
| **Regulatory change / 규제 변경** | New regulatory requirements affecting the system (e.g., EU AI Act enforcement milestones) / 시스템에 영향을 미치는 새로운 규제 요구사항 |
| **Capability expansion / 역량 확장** | Addition of new tools, plugins, modalities, or autonomy features / 새로운 도구, 플러그인, 모달리티 또는 자율성 기능 추가 |
| **Automated alert escalation / 자동화 경보 에스컬레이션** | Layer 1 monitoring detects anomalies requiring human investigation / 1계층 모니터링이 인간 조사가 필요한 이상 징후 감지 |

### 11.6 Organizational Integration / 조직적 통합

The continuous red team operating model integrates with the organization's broader AI governance processes:

지속적 레드팀 운영 모델은 조직의 더 넓은 AI 거버넌스 프로세스와 통합된다:

- **AI Risk Management**: Red team findings feed into the organizational risk register (aligned with NIST AI RMF Govern and Manage functions).
- **Model Lifecycle Management**: Red team gates are embedded in model promotion workflows (development -> staging -> production).
- **Incident Response**: Red team findings inform incident response playbooks; red team expertise is available for incident investigation.
- **Training and Awareness**: Red team findings (anonymized) are used for organizational learning and developer training.

### 11.7 Maturity Progression / 성숙도 진행

Organizations may adopt the continuous model incrementally:

조직은 지속적 모델을 점진적으로 채택할 수 있다:

| Maturity Level / 성숙도 수준 | Description / 설명 |
|---|---|
| **Level 1: Ad hoc / 임시** | Red teaming performed sporadically, without standardized process. No automated component. / 표준화된 프로세스 없이 산발적으로 수행. 자동화 구성요소 없음. |
| **Level 2: Defined / 정의됨** | Standardized 6-stage process adopted. Engagements performed at defined intervals. / 표준화된 6단계 프로세스 채택. 정해진 간격으로 참여 수행. |
| **Level 3: Integrated / 통합됨** | Layer 1 automated monitoring implemented. Red teaming integrated into development lifecycle. / 1계층 자동화 모니터링 구현. 레드티밍이 개발 수명주기에 통합됨. |
| **Level 4: Adaptive / 적응적** | All three layers operational. Threat intelligence actively informs testing. Lessons learned systematically integrated. / 3개 계층 모두 운영. 위협 인텔리전스가 테스트에 적극 반영. 교훈이 체계적으로 통합됨. |

---

## Normative References / 규범적 참고 문헌

This Normative Core draws from and aligns with the following standards and frameworks, as detailed in Phase R (Reference Inventory):

이 규범적 핵심은 Phase R(참고 문헌 목록)에서 상세히 설명된 다음 표준 및 프레임워크에서 도출되고 정렬된다:

- ISO/IEC/IEEE 29119 Series (Software Testing Process Architecture) -- process structure alignment
- ISO/IEC TR 29119-11:2020 (Testing of AI-Based Systems) -- AI-specific test oracle considerations
- ISO/IEC TS 42119-2:2025 (Testing of AI Systems Overview) -- risk-based test approach
- NIST AI RMF 1.0 (AI 100-1) -- Govern/Map/Measure/Manage lifecycle alignment
- NIST AI 600-1 (Generative AI Profile) -- GenAI-specific risk categories
- EU AI Act (Regulation 2024/1689) -- regulatory compliance mapping (Art. 9, 55, 72)
- MITRE ATLAS -- attack taxonomy reference
- OWASP Top 10 for LLM Applications 2025 -- vulnerability classification reference
- OWASP Top 10 for Agentic Applications 2025 -- agentic system risk reference
- CSA Agentic AI Red Teaming Guide 2025 -- agentic system testing scenarios

---

*Document Version: 0.1*
*Last Updated: 2026-02-08*
*Status: Draft for Review*
*Phase: 3 -- Normative Core*

# Software Testing Standards Analysis Report
# 소프트웨어 테스팅 표준 분석 보고서

**AI Red Team International Guideline -- ISO/IEC/IEEE 29119 Series Mapping and Integration Analysis**

**Document ID:** AIRTG-SW-Testing-Standards-v1.0
**Date / 작성일:** 2026-02-09
**Author / 작성자:** Software Testing Standards Expert Agent
**Status / 상태:** Final Analysis Report

---

## Table of Contents / 목차

1. [ISO/IEC/IEEE 29119 Series Summary / 29119 시리즈 요약](#1-isoiecieee-29119-series-summary)
2. [Process Mapping: 29119-2 to Phase 3 Normative Core / 프로세스 매핑](#2-process-mapping-29119-2-to-phase-3-normative-core)
3. [Documentation Mapping: 29119-3 to Guideline Reports / 문서 매핑](#3-documentation-mapping-29119-3-to-guideline-reports)
4. [Test Technique Mapping: 29119-4 to Annex A Attacks / 테스트 기법 매핑](#4-test-technique-mapping-29119-4-to-annex-a-attacks)
5. [Terminology Mapping: 29119-1 to Phase 0 / 용어 매핑](#5-terminology-mapping-29119-1-to-phase-0)
6. [Integration Framework Proposal / 통합 프레임워크 제안](#6-integration-framework-proposal)
7. [Guideline Modification Recommendations / 가이드라인 수정 권고사항](#7-guideline-modification-recommendations)

---

## 1. ISO/IEC/IEEE 29119 Series Summary
## 29119 시리즈 요약

### 1.1 Overview / 개요

The ISO/IEC/IEEE 29119 series is the comprehensive international standard for software testing. It provides a unified framework covering concepts, processes, documentation, and techniques. The 2021-2022 editions incorporate references to AI-based systems, making them directly relevant to AI Red Team testing.

ISO/IEC/IEEE 29119 시리즈는 소프트웨어 테스팅을 위한 포괄적 국제 표준입니다. 개념, 프로세스, 문서, 기법을 아우르는 통합 프레임워크를 제공합니다. 2021-2022 판은 AI 기반 시스템에 대한 참조를 포함하여 AI 레드팀 테스팅에 직접적으로 관련됩니다.

### 1.2 Part 1: General Concepts (29119-1:2022, 60 pages)

**Purpose**: Provides vocabulary, concepts, and foundational principles for software testing.

**목적**: 소프트웨어 테스팅을 위한 어휘, 개념, 기본 원칙을 제공합니다.

**Key Content:**

| Component / 구성요소 | Description / 설명 |
|---|---|
| **Terms and Definitions** | 133+ standardized terms including AI-specific terms: AI-based system (3.7), artificial intelligence (3.8), neural network (3.75), neuron coverage (3.76), metamorphic testing (3.69), fuzz testing (3.41) |
| **Testing Concepts** | Verification & Validation, static/dynamic testing, exhaustive testing impossibility, risk-based testing, heuristic testing |
| **Process Framework** | 3-level hierarchy: Organizational Test Process, Test Management Process, Dynamic Test Process |
| **System Characteristics (Annex A)** | Special testing considerations for: AI systems, autonomous systems, embedded systems, IoT, safety-critical systems, mobile applications |
| **Testing Roles (Annex B)** | Test architect, test manager, test designer, test analyst, tester, test automation engineer |

**AI-Specific Recognition**: 29119-1 explicitly recognizes that AI-based systems present unique testing challenges including non-deterministic behavior, difficulty in defining expected outputs, and the need for specialized techniques such as metamorphic testing and neuron coverage analysis.

**AI 특화 인식**: 29119-1은 AI 기반 시스템이 비결정적 행동, 예상 출력 정의의 어려움, 변환 테스팅 및 뉴런 커버리지 분석 등 특수 기법의 필요성을 포함하는 고유한 테스팅 과제를 제시함을 명시적으로 인식합니다.

### 1.3 Part 2: Test Processes (29119-2:2021, 64 pages)

**Purpose**: Defines a multi-layer test process model adaptable to any organization or project.

**목적**: 어떤 조직이나 프로젝트에도 적응 가능한 다계층 테스트 프로세스 모델을 정의합니다.

**3-Layer Process Model:**

```
Layer 1: Organizational Test Process (OT)
  ├── OT1: Organizational Test Specification
  ├── OT2: Organizational Test Monitoring & Control
  └── OT3: Organizational Test Process Improvement

Layer 2: Test Management Processes (TM)
  ├── Strategy & Planning: TP1-TP9
  │   (Develop strategy, plan, design test approach,
  │    identify/analyze risks, design/implement tests,
  │    maintain traceability, acquire resources, schedule)
  ├── Monitoring & Control: TMC1-TMC4
  │   (Monitor progress, compare against plan, act on deviations, report)
  └── Completion: TC1-TC4
      (Complete execution, archive, analyze lessons, report completion)

Layer 3: Dynamic Test Processes (DT)
  ├── Design & Implementation: TD1-TD4
  │   (Derive conditions, design cases, build procedures, build data/environment)
  ├── Environment & Data Management: ED1-ED4
  ├── Execution: TE1-TE3
  │   (Execute procedures, compare results, record outcomes)
  └── Incident Reporting: IR1-IR2
```

**Annex Mappings**: Provides explicit mappings to ISO/IEC/IEEE 12207 (software lifecycle), ISO/IEC 17025 (laboratory testing), and BS 7925-2 (component testing).

### 1.4 Part 3: Test Documentation (29119-3:2021, 98 pages)

**Purpose**: Defines templates for all test documentation across the three process layers.

**목적**: 세 가지 프로세스 계층에 걸친 모든 테스트 문서의 템플릿을 정의합니다.

**Documentation Hierarchy:**

| Level / 수준 | Documents / 문서 |
|---|---|
| **Organizational** | Test Policy, Organizational Test Practices |
| **Test Management** | Test Plan (15+ subsections), Test Status Report, Test Completion Report |
| **Dynamic Test** | Test Model Specification, Test Case Specification, Test Procedure Specification, Test Data Requirements, Test Environment Requirements, Test Readiness Report, Actual Results, Test Execution Log, Incident Report |

**Test Plan Structure (Key Sections):**
- Context, risk assessment, risk mitigation approach
- Test sub-processes, test deliverables, test techniques
- Entry/exit criteria, suspension/resumption criteria
- Test environment requirements, resource requirements
- Organizational structure, schedule, deviations from standards

### 1.5 Part 4: Test Techniques (29119-4:2021, 148 pages)

**Purpose**: Defines specification-based, structure-based, and experience-based test techniques with coverage measurement.

**목적**: 명세 기반, 구조 기반, 경험 기반 테스트 기법과 커버리지 측정을 정의합니다.

**Technique Categories:**

| Category / 카테고리 | Techniques / 기법 | Count |
|---|---|---|
| **Specification-Based** | Equivalence Partitioning, Classification Tree Method, Boundary Value Analysis, Syntax Testing, Combinatorial (All Combinations, Pair-Wise, Each Choice, Base Choice), Decision Table, Cause-Effect Graphing, State Transition, Scenario Testing, Random Testing, Metamorphic Testing, Requirements-Based Testing | 12 |
| **Structure-Based** | Statement Testing, Branch Testing, Decision Testing, Branch Condition Testing, Branch Condition Combination Testing, MC/DC Testing, Data Flow Testing | 7 |
| **Experience-Based** | Error Guessing | 1 |

**AI-Relevant Techniques**: Metamorphic testing (5.2.11) and random/fuzz testing (5.2.10) are explicitly recognized as applicable to AI systems where traditional oracle-based testing is insufficient.

**AI 관련 기법**: 변환 테스팅(5.2.11)과 랜덤/퍼즈 테스팅(5.2.10)은 전통적 오라클 기반 테스팅이 불충분한 AI 시스템에 적용 가능한 것으로 명시적으로 인식됩니다.

**Coverage Measurement**: Part 4 provides formal coverage measurement formulas for each technique, enabling quantitative assessment of test completeness:
- Statement Coverage = (Executed Statements / Total Statements) x 100%
- Branch Coverage = (Exercised Branches / Total Branches) x 100%
- MC/DC Coverage requires each condition to independently affect the decision outcome

---

## 2. Process Mapping: 29119-2 to Phase 3 Normative Core
## 프로세스 매핑: 29119-2와 제3단계 규범적 핵심

### 2.1 Structural Alignment Overview / 구조적 정렬 개요

The Phase 3 Normative Core defines a 6-stage lifecycle that aligns closely with the 29119-2 multi-layer test process model. The following table maps each Phase 3 stage to corresponding 29119-2 process activities.

제3단계 규범적 핵심은 29119-2 다계층 테스트 프로세스 모델과 밀접하게 정렬되는 6단계 생명주기를 정의합니다.

### 2.2 Detailed Process Mapping Table / 상세 프로세스 매핑 테이블

| Phase 3 Stage / 단계 | Phase 3 Activities | 29119-2 Process | 29119-2 Activity Codes | Alignment Level / 정렬 수준 |
|---|---|---|---|---|
| **Stage 1: Planning / 계획** | P-1: Define scope & objective | Test Management: Strategy & Planning | TP1 (Develop strategy), TP2 (Plan) | **Strong** / 강함 |
| | P-2: Identify threat model & risk tiers | | TP4, TP5 (Identify & analyze risks) | **Strong** |
| | P-3: Determine resource & tooling | | TP8 (Acquire resources) | **Strong** |
| | P-4: Establish success criteria | | TP2 (Entry/exit criteria in test plan) | **Strong** |
| | P-5: Define rules of engagement | | TP1 (Strategy scope/constraints) | **Moderate** -- 29119 does not have explicit "rules of engagement" |
| **Stage 2: Design / 설계** | D-1: Select attack categories per risk tier | Dynamic Test: Design & Implementation | TD1 (Derive test conditions) | **Strong** |
| | D-2: Develop test cases per attack pattern | | TD2 (Design test cases) | **Strong** |
| | D-3: Build prompt/payload libraries | | TD3 (Build test procedures) | **Strong** |
| | D-4: Configure automation & tooling | | TD4 (Build test data/environment), ED1-ED4 | **Strong** |
| **Stage 3: Execution / 실행** | E-1: Execute manual red team tests | Dynamic Test: Execution | TE1 (Execute procedures) | **Strong** |
| | E-2: Run automated attack campaigns | | TE1 (Execute procedures) | **Strong** |
| | E-3: Record all outputs & observations | | TE3 (Record outcomes), IR1-IR2 | **Strong** |
| | E-4: Perform real-time triage | | TMC1-TMC2 (Monitor, compare) | **Moderate** |
| | E-5: Conduct re-testing for confirmed findings | | TE1 (Re-execute) | **Strong** |
| **Stage 4: Analysis / 분석** | A-1: Classify findings by severity | Test Management: Monitoring & Control | TMC1 (Monitor/evaluate) | **Moderate** -- 29119 focuses on defect management not risk-severity classification |
| | A-2: Map to failure modes & risks | | TMC1 | **Weak** -- Unique to AI red teaming |
| | A-3: Assess real-world impact | | TMC1 | **Weak** -- Beyond traditional scope |
| | A-4: Determine root causes | | IR1-IR2 (Incident analysis) | **Moderate** |
| | A-5: Prioritize by remediation feasibility | | TMC3 (Act on deviations) | **Moderate** |
| **Stage 5: Reporting / 보고** | R-1: Produce executive summary | Test Management: Completion | TC4 (Report completion) | **Strong** |
| | R-2: Document technical findings | | TC4, TC1 (Complete execution records) | **Strong** |
| | R-3: Provide remediation recommendations | | TC4 | **Strong** |
| | R-4: Include evidence artifacts | | TC2 (Archive test artifacts) | **Strong** |
| **Stage 6: Follow-up / 후속조치** | F-1: Track remediation progress | Organizational / Management | OT2 (Monitoring), TMC1-TMC4 | **Moderate** |
| | F-2: Conduct verification re-testing | | TE1 (Re-execute) | **Strong** |
| | F-3: Update attack pattern library | | OT3 (Process improvement) | **Moderate** |
| | F-4: Feed back to continuous operations | | OT3 | **Strong** |

### 2.3 Structural Comparison / 구조적 비교

| Dimension / 차원 | 29119-2 | Phase 3 Normative Core | Assessment / 평가 |
|---|---|---|---|
| **Process Layers** | 3 layers (Organizational, Management, Dynamic) | 6 sequential stages + Continuous Operating Model (3-layer) | Phase 3's 6-stage lifecycle maps well to Management + Dynamic layers; the Continuous Operating Model parallels the Organizational layer |
| **Risk-Based Testing** | TP4-TP5: Risk identification and analysis | P-2: 3-tier risk classification (Critical, High, Standard) | Both are risk-driven, but Phase 3 uses AI-specific risk tiers |
| **Iteration** | Supports iterative/incremental test processes | Explicitly iterative through Follow-up (F-3, F-4) and Continuous Operating Model | Strong alignment |
| **Entry/Exit Criteria** | Formally defined in Test Plan per TP2 | Success criteria in P-4, implicit exit criteria | Phase 3 could benefit from more explicit entry/exit criteria per stage |
| **Traceability** | TP7: Maintain traceability throughout | Implicit through risk-tier to test mapping | 29119 provides stronger traceability framework |

### 2.4 Gap Analysis / 갭 분석

| Gap / 갭 | Detail / 상세 | Impact / 영향 |
|---|---|---|
| **Rules of Engagement** | 29119 has no equivalent to P-5 (rules of engagement). This is unique to adversarial testing. | Low -- Appropriately unique to red teaming context |
| **Failure Mode Mapping (A-2)** | 29119 incident reporting (IR1-IR2) focuses on defect logging, not attack-to-failure-to-risk chain analysis. | Medium -- Phase 3's approach is more comprehensive for AI risk |
| **Real-World Impact Assessment (A-3)** | 29119 measures test coverage and defect metrics, not societal/organizational harm. | Medium -- Unique to AI safety context |
| **Continuous Operations** | 29119 OT3 provides process improvement but not a persistent red team operating model. | Low -- Phase 3's Continuous Operating Model appropriately extends 29119 |
| **Entry/Exit Criteria Formalism** | Phase 3 defines success criteria (P-4) but lacks the structured entry/exit criteria per stage that 29119 provides in test plans. | Medium -- Recommend adopting 29119's entry/exit criteria structure |

---

## 3. Documentation Mapping: 29119-3 to Guideline Reports
## 문서 매핑: 29119-3과 가이드라인 보고서

### 3.1 Documentation Mapping Table / 문서 매핑 테이블

| 29119-3 Document | 29119-3 Clause | Guideline Equivalent | Phase | Alignment / 정렬 |
|---|---|---|---|---|
| **Test Policy** | 6.2 | Organizational Red Team Charter (implicit in Continuous Operating Model) | Phase 3 (Layer 1: Strategic Governance) | **Moderate** -- Guideline references organizational policy but does not provide a template |
| **Organizational Test Practices** | 6.3 | Red Team Standard Operating Procedures | Phase 3 (Layer 1) | **Weak** -- Not explicitly documented |
| **Test Plan** | 7.2 | Red Team Engagement Plan (P-1 through P-5 outputs) | Phase 3: Stage 1 | **Strong** -- All key elements covered |
| **Test Status Report** | 7.3 | Real-time triage outputs (E-4) | Phase 3: Stage 3 | **Moderate** -- Less formalized than 29119 |
| **Test Completion Report** | 7.4 | Red Team Report (R-1 through R-4) | Phase 3: Stage 5 | **Strong** -- Well-mapped, see Section 3.2 |
| **Test Model Specification** | 8.2 | Attack Pattern Schema (Annex A.1) | Phase 4: Annex A | **Strong** -- Annex A provides structured test model |
| **Test Case Specification** | 8.3 | Individual Attack Patterns (AP-MOD-001 etc.) | Phase 4: Annex A | **Strong** -- Each pattern = test case equivalent |
| **Test Procedure Specification** | 8.4 | Attack Pattern Procedure field | Phase 4: Annex A | **Strong** -- Step-by-step procedures defined |
| **Test Data Requirements** | 8.5 | Attack Pattern Prerequisites field | Phase 4: Annex A | **Moderate** -- Prerequisites partially cover data requirements |
| **Test Environment Requirements** | 8.6 | Tooling configuration (D-4), Resource requirements (P-3) | Phase 3: Stage 1-2 | **Moderate** -- Less formalized than 29119 |
| **Test Readiness Report** | 8.7 | (No explicit equivalent) | -- | **Gap** -- Not addressed in guideline |
| **Actual Results** | 8.8 | Execution outputs (E-3) | Phase 3: Stage 3 | **Strong** |
| **Test Execution Log** | 8.9 | Evidence artifacts (R-4) | Phase 3: Stage 5 | **Strong** |
| **Incident Report** | 8.10 | Finding classification (A-1), Technical findings (R-2) | Phase 3: Stage 4-5 | **Strong** |

### 3.2 Detailed Report Structure Comparison / 상세 보고서 구조 비교

#### 29119-3 Test Completion Report vs. Phase 3 Red Team Report

| 29119-3 Test Completion Report Section | Phase 3 Report Template Section | Status / 상태 |
|---|---|---|
| Unique identifier | Document ID (AIRTG convention) | Covered |
| Summary of testing | Executive Summary (R-1) | Covered |
| Deviations from plan | (Not explicitly required) | **Gap** |
| Evaluation of testing completeness | Coverage metrics (implicit in A-1) | **Partial** -- Recommend explicit coverage metrics |
| Factors limiting testing | Constraints & limitations | Covered |
| Test metrics and measures | (Not standardized) | **Gap** -- Recommend adopting 29119 metrics |
| Residual risks | Risk-based findings (A-2, A-3) | Covered |
| Approval information | (Not specified) | **Gap** |
| Test deliverables | Evidence artifacts (R-4) | Covered |
| Incidents not resolved | Open findings with remediation tracking (F-1) | Covered |

### 3.3 Key Gaps in Documentation / 문서의 주요 갭

| Gap / 갭 | 29119-3 Provision | Impact / 영향 | Recommendation / 권고 |
|---|---|---|---|
| **Test Readiness Report** | Formal assessment that all preconditions for test execution are met (8.7) | Medium -- Could prevent premature test execution | Add pre-engagement readiness checklist aligned with 29119-3 8.7 |
| **Test Status Report Template** | Standardized progress reporting during execution (7.3) | Medium -- Improves stakeholder visibility during long engagements | Adopt interim reporting template from 29119-3 |
| **Test Policy Template** | Organizational-level test policy defining testing objectives, scope, and principles (6.2) | High -- Foundation for organizational red team program | Create Red Team Policy template aligned with 29119-3 6.2 |
| **Approval Workflow** | Formal approval information in all reports | Low -- Administrative but important for governance | Add approval fields to report template |
| **Deviations from Plan** | Explicit documentation of any deviations from the test plan | Medium -- Important for audit trail | Add deviations section to report template |

---

## 4. Test Technique Mapping: 29119-4 to Annex A Attacks
## 테스트 기법 매핑: 29119-4와 Annex A 공격

### 4.1 Technique Applicability Matrix / 기법 적용성 매트릭스

This section maps 29119-4 test techniques to AI Red Team attack patterns from Phase 4 (Annex A) and Phase 1-2 (Attack Patterns). The mapping identifies which traditional test techniques support the design and execution of each attack category.

이 섹션은 29119-4 테스트 기법을 제4단계(Annex A) 및 제1-2단계(공격 패턴)의 AI 레드팀 공격 패턴에 매핑합니다.

### 4.2 Specification-Based Techniques to Attack Categories / 명세 기반 기법과 공격 카테고리

| 29119-4 Technique | Attack Category | Application to AI Red Teaming / AI 레드팀에 적용 | Relevance / 관련성 |
|---|---|---|---|
| **Equivalence Partitioning** (5.2.1) | MOD-JB (Jailbreak), MOD-PI (Prompt Injection) | Partition input space into classes: safe prompts, unsafe prompts, boundary prompts, encoded prompts. Each partition represents an equivalence class requiring testing. / 입력 공간을 안전 프롬프트, 위험 프롬프트, 경계 프롬프트, 인코딩된 프롬프트 등의 클래스로 분할 | **High** |
| **Boundary Value Analysis** (5.2.3) | MOD-JB, MOD-AE (Adversarial Examples) | Test at the boundaries of safety filters: prompts just below and above refusal thresholds, token length limits, temperature extremes. / 안전 필터 경계에서 테스트: 거부 임계값의 바로 아래와 위 프롬프트 | **High** |
| **Classification Tree Method** (5.2.2) | All MOD categories | Systematically classify attack dimensions (technique type, encoding, language, persona, context length) into a tree structure for systematic test derivation. / 공격 차원을 트리 구조로 체계적 분류 | **High** |
| **Combinatorial Testing** (5.2.4) | MOD-JB, MOD-PI, MOD-MM | Apply pair-wise or all-combinations testing to attack parameter combinations: (jailbreak technique x encoding x language x model) -- reduces combinatorial explosion while ensuring coverage. / 공격 매개변수 조합에 페어와이즈 또는 전체 조합 테스팅 적용 | **High** |
| **Decision Table Testing** (5.2.6) | SYS-TM (Tool Misuse), SYS-PE (Privilege Escalation) | Model agent decision logic as decision tables: given (tool access + permission level + instruction type), determine expected vs. actual behavior. / 에이전트 결정 로직을 결정 테이블로 모델링 | **High** |
| **State Transition Testing** (5.2.8) | SYS-AD (Autonomous Drift), SYS-MC (Memory Manipulation) | Model agent state transitions across conversation turns: safe state -> compromised state -> escalated state. Test all transition paths. / 대화 턴에 걸친 에이전트 상태 전이 모델링 | **High** |
| **Scenario Testing** (5.2.9) | All categories | End-to-end attack scenarios covering the full kill chain from reconnaissance to impact. Aligns with Attack Pattern Procedure fields. / 정찰부터 영향까지 전체 킬 체인을 커버하는 엔드투엔드 공격 시나리오 | **Critical** |
| **Random Testing / Fuzz Testing** (5.2.10) | MOD-JB (BoN), MOD-AE, MOD-PI | Direct alignment with Best-of-N automated jailbreaking (AP-MOD-003): random mutation of prompts to discover safety filter bypasses. / Best-of-N 자동화 탈옥과 직접 정렬: 안전 필터 우회를 발견하기 위한 프롬프트의 랜덤 변형 | **Critical** |
| **Metamorphic Testing** (5.2.11) | MOD-JB, MOD-HL (Hallucination), SOC-BA (Bias) | Transform inputs maintaining semantic equivalence; verify consistency of safety behavior. Key for testing non-deterministic AI outputs where traditional oracles are unavailable. / 의미적 동등성을 유지하면서 입력 변환; 안전 행동의 일관성 검증 | **Critical** |
| **Syntax Testing** (5.2.4) | MOD-PI, MOD-JB (Encoding) | Test prompt injection using formal syntax variations: SQL-like injection, XML injection, markdown injection, escape character exploitation. / 형식 구문 변형을 사용한 프롬프트 인젝션 테스트 | **Medium** |
| **Cause-Effect Graphing** (5.2.7) | SYS-TM, SYS-RP (RAG Poisoning) | Model causal relationships between attack inputs and system effects: (poisoned document) -> (retrieval) -> (corrupted output) -> (harmful decision). / 공격 입력과 시스템 효과 간 인과 관계 모델링 | **Medium** |
| **Requirements-Based Testing** (5.2.12) | All categories | Derive test cases from safety requirements and guardrail specifications. Each safety policy clause becomes a testable requirement. / 안전 요구사항 및 가드레일 명세에서 테스트 케이스 도출 | **High** |

### 4.3 Structure-Based Techniques to Attack Categories / 구조 기반 기법과 공격 카테고리

| 29119-4 Technique | Attack Category | Application to AI Red Teaming | Relevance |
|---|---|---|---|
| **Statement / Branch Coverage** (5.3.1-5.3.3) | SYS-TM, SYS-PE | Measure coverage of agent decision paths: ensure all tool-access branches, permission checks, and safety filter branches are exercised. / 에이전트 결정 경로의 커버리지 측정 | **Medium** |
| **MC/DC Testing** (5.3.6) | Safety-critical agent decisions | For safety-critical AI decisions, ensure each safety condition independently affects the output decision (Modified Condition/Decision Coverage). / 각 안전 조건이 독립적으로 출력 결정에 영향을 미치는지 확인 | **High** for safety-critical |
| **Data Flow Testing** (5.3.7) | SYS-RP, SYS-MC, MOD-PI (Indirect) | Track data flow from untrusted sources through the system: (external data) -> (retrieval) -> (context injection) -> (model processing) -> (output/action). Identify def-use chains where tainted data flows to safety-critical decisions. / 비신뢰 소스에서 시스템을 통한 데이터 흐름 추적 | **Critical** |

### 4.4 Experience-Based Techniques / 경험 기반 기법

| 29119-4 Technique | Attack Category | Application to AI Red Teaming | Relevance |
|---|---|---|---|
| **Error Guessing** (5.4.1) | All categories | Expert-driven manual red teaming where experienced testers leverage intuition about likely failure points. Aligns with manual creative red teaming (E-1). / 숙련된 테스터가 가능한 실패 지점에 대한 직관을 활용하는 전문가 주도 수동 레드팀 | **Critical** |

### 4.5 Technique-to-Attack Pattern Mapping Matrix / 기법-공격 패턴 매핑 매트릭스

| Attack Pattern | Primary 29119-4 Techniques | Secondary Techniques |
|---|---|---|
| AP-MOD-001 (Role-Play Jailbreak) | Equivalence Partitioning, Scenario Testing, Error Guessing | Metamorphic Testing, Combinatorial |
| AP-MOD-002 (Encoding Jailbreak) | Syntax Testing, Equivalence Partitioning | Combinatorial, Random Testing |
| AP-MOD-003 (BoN Automated) | **Random/Fuzz Testing**, Combinatorial | Metamorphic Testing |
| AP-MOD-004 (Indirect Prompt Injection) | **Data Flow Testing**, Scenario Testing | Cause-Effect Graphing, State Transition |
| AP-MOD-005 (Training Data Extraction) | Boundary Value Analysis, Random Testing | Metamorphic Testing |
| AP-MOD-006 (Multimodal Typographic) | Equivalence Partitioning, Syntax Testing | Combinatorial, Error Guessing |
| AP-SYS-001 (Agentic Tool Misuse) | **Decision Table**, State Transition, **Data Flow** | Scenario Testing, MC/DC |
| AP-SYS-002 (RAG Poisoning) | **Data Flow Testing**, Cause-Effect Graphing | Scenario Testing, Boundary Value |
| AP-SYS-003 (Supply Chain Poisoning) | Scenario Testing, Error Guessing | Requirements-Based |
| AP-SYS-004 (Privilege Escalation) | **Decision Table**, State Transition | MC/DC, Branch Coverage |
| AP-SOC-001 (Deepfake Fraud) | Scenario Testing, Error Guessing | -- |
| AP-SOC-002 (Bias Amplification) | **Metamorphic Testing**, Equivalence Partitioning | Combinatorial, Requirements-Based |

### 4.6 Coverage Measurement Adaptation / 커버리지 측정 적응

29119-4 provides formal coverage metrics that can be adapted for AI Red Team testing:

29119-4는 AI 레드팀 테스팅에 적응할 수 있는 공식 커버리지 메트릭을 제공합니다:

| 29119-4 Coverage Metric | AI Red Team Adaptation / AI 레드팀 적응 |
|---|---|
| Statement Coverage | **Attack Category Coverage** = (Tested categories / Total defined categories) x 100% |
| Branch Coverage | **Safety Filter Branch Coverage** = (Exercised filter paths / Total filter paths) x 100% |
| Equivalence Partition Coverage | **Attack Partition Coverage** = (Tested attack partitions / Total partitions) x 100% |
| State Transition Coverage | **Agent State Coverage** = (Exercised state transitions / Total transitions) x 100% |
| Decision Table Coverage | **Tool Decision Coverage** = (Tested decision combinations / Total combinations) x 100% |
| Scenario Coverage | **Kill Chain Coverage** = (Completed attack scenarios / Total defined scenarios) x 100% |

---

## 5. Terminology Mapping: 29119-1 to Phase 0
## 용어 매핑: 29119-1과 제0단계

### 5.1 Direct Term Mappings / 직접 용어 매핑

| 29119-1 Term (Clause) | Phase 0 Term | Alignment / 정렬 | Note / 참고 |
|---|---|---|---|
| AI-based system (3.7) | AI System | **Direct** | 29119-1 defines as "system incorporating AI technology"; Phase 0 defines as "AI model + integration layer + deployment context" -- Phase 0 is more specific |
| Artificial intelligence (3.8) | (Referenced implicitly) | **Partial** | 29119-1 references ISO/IEC 22989 definition; Phase 0 does not independently define AI itself |
| Neural network (3.75) | AI Model (as subtype) | **Indirect** | 29119-1 defines specific architecture; Phase 0 uses broader "AI Model" |
| Test (3.117) | Red Team Test / Red Team Exercise | **Partial** | 29119-1: "activity to identify differences between actual and expected results"; Red teaming is adversarial by nature, testing for presence of vulnerabilities not just defects |
| Test case (3.118) | Attack Pattern | **Conceptual** | 29119-1: "set of preconditions, inputs, and expected results"; Annex A pattern: set of prerequisites, procedure, and expected outcome |
| Test procedure (3.128) | Attack Pattern Procedure field | **Strong** | Both define step-by-step execution instructions |
| Test technique (3.131) | Attack Technique | **Conceptual** | 29119-1: "method for designing or executing tests"; Phase 1-2 defines specific attack techniques |
| Risk (3.98) | Risk | **Direct** | Both use risk in terms of potential for harm; Phase 0 adds AI-specific risk taxonomy |
| Risk-based testing (3.99) | Risk-Tiered Approach (P-2) | **Strong** | Both prioritize testing by risk level |
| Incident (3.47) | Finding / Vulnerability | **Partial** | 29119-1: "event that deviates from specification"; Phase 0: outcome of successful attack identifying a vulnerability or failure mode |
| Defect (3.25) | Vulnerability / Failure Mode | **Partial** | 29119-1: "flaw in a component"; Phase 0 uses domain-specific terms (vulnerability, failure mode) |
| Test coverage (3.120) | (Not standardized in Phase 0) | **Gap** | 29119-1 formalizes coverage metrics; Phase 0 does not define coverage measurement |
| Fuzz testing (3.41) | Automated Attack / BoN Jailbreaking | **Conceptual** | 29119-1: "random data generation to find security issues"; Phase 1-2: automated prompt mutation for safety bypass |
| Metamorphic testing (3.69) | Metamorphic Testing (referenced in Phase 3 D-2) | **Direct** | Both standards recognize this as critical for AI systems |
| Verification (3.136) | (Used implicitly) | **Partial** | 29119-1: "confirmation of compliance with requirements" |
| Validation (3.135) | (Used implicitly) | **Partial** | 29119-1: "confirmation of stakeholder needs being met" |

### 5.2 Conceptual Alignment but Different Terminology / 개념적 정렬이지만 다른 용어

| Concept / 개념 | 29119-1 Term | Phase 0 Term | Resolution Recommendation / 해결 권고 |
|---|---|---|---|
| Target of testing | Test item, System Under Test (SUT) | Target AI System, AI Application | Adopt "Target AI System" as primary, note equivalence to SUT |
| Person executing tests | Tester, Test designer | Red Team Operator, Red Team Lead | Use Phase 0 role terms, cross-reference 29119-1 Annex B roles |
| Organizational oversight | Test manager, Test architect | Red Team Program Manager | Align Phase 3 roles to 29119 management roles where applicable |
| Test basis | Test basis (requirements, specifications) | Threat model, Risk assessment, Safety requirements | Both serve as input for test design; Phase 0 uses security-specific inputs |
| Test oracle | Test oracle, Expected result | Safety policy, Guardrail specification | AI red teaming uses safety policies as oracles; note oracle problem for non-deterministic AI |
| Test environment | Test environment | Red Team Environment, Sandbox | Equivalent concept; Phase 0 adds ethical/legal constraints |

### 5.3 Terms Unique to Each Standard / 각 표준에 고유한 용어

#### Terms in Phase 0 Not Found in 29119-1 / 29119-1에 없는 Phase 0 용어

| Phase 0 Term | Definition | Justification for Inclusion / 포함 근거 |
|---|---|---|
| Jailbreak | Circumventing safety alignment of LLMs | AI-specific attack type; no 29119 equivalent |
| Prompt Injection | Exploiting model's inability to distinguish instructions from data | AI-specific vulnerability class |
| Hallucination | Model generating plausible but false outputs | AI-specific failure mode |
| Adversarial Example | Input designed to cause model misclassification | AI-specific test input type |
| Attack Surface (3-level) | MOD/SYS/SOC layered attack surface model | AI-specific threat modeling |
| Threat Actor | Entity conducting attacks against AI systems | Security domain term not in 29119 |
| Guardrail | Safety constraints on AI behavior | AI-specific safety mechanism |
| Red Teaming | Adversarial testing simulating real-world attacks | Security domain methodology |
| Rules of Engagement | Ethical/legal boundaries for testing | Security testing governance term |

#### Terms in 29119-1 Not Yet Adopted by Phase 0 / Phase 0에서 아직 채택하지 않은 29119-1 용어

| 29119-1 Term | Definition | Recommendation / 권고 |
|---|---|---|
| Test coverage (3.120) | Degree to which test basis is covered | **Adopt** -- Critical for measuring test completeness |
| Entry criteria (3.33) | Conditions for starting an activity | **Adopt** -- Improves stage transition governance |
| Exit criteria (3.35) | Conditions for completing an activity | **Adopt** -- Enables objective completion decisions |
| Test oracle (3.125) | Source of expected results | **Adopt** -- Formalizes the oracle problem in AI testing |
| Test basis (3.116) | Body of knowledge used for test design | **Adopt** -- Clarifies inputs to test design |
| Traceability (per TP7) | Linking test items through process | **Adopt** -- Ensures finding-to-risk-to-harm traceability |
| Neuron coverage (3.76) | Percentage of neurons activated during testing | **Consider** -- Specialized AI metric from 29119-1 |

---

## 6. Integration Framework Proposal
## 통합 프레임워크 제안

### 6.1 Framework Overview / 프레임워크 개요

This section proposes a unified framework that integrates the AI Red Team International Guideline with ISO/IEC/IEEE 29119 principles, creating a standards-compliant yet AI-specific testing methodology.

이 섹션은 AI 레드팀 국제 가이드라인을 ISO/IEC/IEEE 29119 원칙과 통합하여 표준 준수적이면서도 AI 특화된 테스팅 방법론을 만드는 통합 프레임워크를 제안합니다.

### 6.2 Integrated Process Model / 통합 프로세스 모델

```
┌─────────────────────────────────────────────────────────┐
│  Layer 1: Organizational Red Team Governance             │
│  (29119-2 OT + Phase 3 Continuous Operating Model)       │
│  ┌─────────────┬──────────────┬────────────────────┐    │
│  │ Red Team    │ Organizational│ Process            │    │
│  │ Policy      │ Practices     │ Improvement        │    │
│  │ (OT1+29119-3│ (OT2)        │ (OT3+F-3,F-4)     │    │
│  │  6.2)       │              │                    │    │
│  └─────────────┴──────────────┴────────────────────┘    │
├─────────────────────────────────────────────────────────┤
│  Layer 2: Red Team Engagement Management                 │
│  (29119-2 TM + Phase 3 Stages 1,4,5,6)                 │
│  ┌──────────┬──────────┬───────────┬──────────────┐    │
│  │Planning  │Monitoring│Completion │Follow-up     │    │
│  │(TP+P-1~5)│(TMC+E-4) │(TC+R-1~4) │(F-1~F-4)    │    │
│  └──────────┴──────────┴───────────┴──────────────┘    │
├─────────────────────────────────────────────────────────┤
│  Layer 3: Dynamic Red Team Testing                       │
│  (29119-2 DT + Phase 3 Stages 2,3)                     │
│  ┌──────────┬──────────┬──────────┬───────────────┐    │
│  │Design    │Env/Data  │Execution │Incident       │    │
│  │(TD+D-1~4)│(ED+D-4)  │(TE+E-1~5)│(IR+A-1~5)    │    │
│  └──────────┴──────────┴──────────┴───────────────┘    │
└─────────────────────────────────────────────────────────┘
```

### 6.3 Integrated Documentation Framework / 통합 문서 프레임워크

| Document | Source | Content Mapping |
|---|---|---|
| **Red Team Policy** | 29119-3 6.2 (Test Policy) | Organizational objectives, scope, principles for red team program |
| **Red Team Engagement Plan** | 29119-3 7.2 (Test Plan) + Phase 3 Stage 1 | Scope, threat model, risk tiers, resources, schedule, entry/exit criteria, rules of engagement |
| **Test Readiness Checklist** | 29119-3 8.7 (Test Readiness Report) | Pre-engagement verification of all preconditions |
| **Attack Design Specification** | 29119-3 8.2-8.4 (Test Model/Case/Procedure) + Phase 4 Annex A | Attack patterns with prerequisites, procedures, expected behaviors |
| **Engagement Status Report** | 29119-3 7.3 (Test Status Report) | Progress metrics during execution |
| **Red Team Report** | 29119-3 7.4 (Test Completion Report) + Phase 3 Stage 5 | Executive summary, technical findings, coverage metrics, remediation recommendations, evidence artifacts |
| **Incident Records** | 29119-3 8.10 (Incident Report) + Phase 3 Stage 4 | Individual findings with severity, failure mode mapping, root cause |

### 6.4 Integrated Technique Selection Framework / 통합 기법 선택 프레임워크

| Attack Layer | Primary 29119-4 Techniques | Coverage Metric | Rationale / 근거 |
|---|---|---|---|
| **MOD (Model-Level)** | Equivalence Partitioning, Boundary Value Analysis, Random/Fuzz Testing, Metamorphic Testing, Combinatorial Testing | Attack Partition Coverage, Metamorphic Relation Coverage | Model-level attacks benefit from systematic input space exploration and non-oracle testing |
| **SYS (System-Level)** | Decision Table Testing, State Transition Testing, Data Flow Testing, Scenario Testing, MC/DC | Tool Decision Coverage, State Coverage, Data Flow Coverage | System-level attacks require modeling agent decisions, state transitions, and data flows |
| **SOC (Socio-Technical)** | Scenario Testing, Error Guessing, Requirements-Based Testing | Scenario Coverage, Requirements Coverage | Socio-technical attacks require end-to-end scenario modeling and expert judgment |

### 6.5 Traceability Model / 추적성 모델

Adopting 29119-2 TP7 (Maintain Traceability), the integrated framework establishes the following traceability chain:

29119-2 TP7(추적성 유지)을 채택하여, 통합 프레임워크는 다음 추적성 체인을 수립합니다:

```
Risk Tier (P-2) → Attack Category (D-1) → Attack Pattern (D-2)
    → Test Procedure (D-3) → Execution Record (E-3)
    → Finding (A-1) → Failure Mode (A-2) → Risk (A-2)
    → Harm Assessment (A-3) → Remediation (R-3) → Re-test (F-2)
```

This full-chain traceability ensures that:
이 전체 체인 추적성은 다음을 보장합니다:

1. Every risk tier has corresponding test coverage / 모든 위험 등급에 대응하는 테스트 커버리지가 있음
2. Every finding traces back to a specific attack execution / 모든 발견사항이 특정 공격 실행으로 추적됨
3. Every remediation links to the original risk / 모든 교정조치가 원래 위험에 연결됨
4. Re-testing covers the full chain from risk to verification / 재테스팅이 위험에서 검증까지 전체 체인을 커버함

---

## 7. Guideline Modification Recommendations
## 가이드라인 수정 권고사항

### 7.1 Classification Legend / 분류 범례

| Classification / 분류 | Meaning / 의미 | Criteria / 기준 |
|---|---|---|
| **Mandatory / 필수** | Must be adopted for ISO/IEC 29119 compliance and testing rigor | Critical gap that impacts standards compliance, test completeness, or governance |
| **Recommended / 권장** | Should be adopted to significantly improve quality and professionalism | Important improvement that enhances clarity, measurability, or repeatability |
| **Optional / 선택** | May be adopted based on organizational needs | Enhancement that adds value in specific contexts but is not universally required |

### 7.2 Phase 0 (Terminology) Modifications / 제0단계 (용어) 수정

| ID | Modification | Classification | Rationale / 근거 | 29119 Reference |
|---|---|---|---|---|
| T-01 | Add "Test Coverage" definition: "Degree to which the test basis has been exercised by test cases" | **Mandatory / 필수** | Foundational metric missing from terminology. Without it, completeness of red team testing cannot be objectively measured. / 용어에서 누락된 기본 메트릭. 이 없이는 레드팀 테스팅의 완전성을 객관적으로 측정할 수 없음. | 29119-1: 3.120 |
| T-02 | Add "Entry Criteria" and "Exit Criteria" definitions | **Mandatory / 필수** | Required for objective stage transition decisions. Currently, stage transitions in Phase 3 lack formal criteria. / 객관적 단계 전환 결정에 필요. 현재 Phase 3의 단계 전환에 공식 기준이 없음. | 29119-1: 3.33, 3.35 |
| T-03 | Add "Test Oracle / 테스트 오라클" definition with note on the oracle problem for AI systems | **Recommended / 권장** | Formalizes the fundamental challenge of defining expected behavior for non-deterministic AI. Connects to metamorphic testing rationale. / 비결정적 AI의 예상 행동 정의의 근본적 과제를 공식화. | 29119-1: 3.125 |
| T-04 | Add "Test Basis / 테스트 베이시스" definition: "Body of knowledge from which test cases are derived" | **Recommended / 권장** | Clarifies the relationship between threat models, risk assessments, and test design inputs. / 위협 모델, 위험 평가, 테스트 설계 입력 간의 관계를 명확히 함. | 29119-1: 3.116 |
| T-05 | Add "Traceability / 추적성" definition | **Recommended / 권장** | Enables formal linking from risks through tests to findings and remediation. / 위험에서 테스트를 거쳐 발견사항과 교정조치로의 공식적 연결을 가능하게 함. | 29119-2: TP7 |
| T-06 | Add cross-reference table mapping Phase 0 terms to 29119-1 clause numbers | **Optional / 선택** | Aids practitioners working with both standards simultaneously. / 두 표준을 동시에 사용하는 실무자를 지원. | -- |

### 7.3 Phase 3 (Normative Core) Modifications / 제3단계 (규범적 핵심) 수정

| ID | Modification | Classification | Rationale / 근거 | 29119 Reference |
|---|---|---|---|---|
| P-01 | Add formal entry/exit criteria for each of the 6 stages | **Mandatory / 필수** | 29119-2 requires entry/exit criteria as part of test management. Currently, Phase 3 defines success criteria (P-4) but lacks structured stage-gate criteria. Without these, premature stage transitions or incomplete stages may go undetected. / 29119-2는 테스트 관리의 일부로 진입/종료 기준을 요구. 이 없이는 조기 단계 전환이나 불완전한 단계가 감지되지 않을 수 있음. | 29119-2: TP2 |
| P-02 | Add test coverage metrics to the Reporting stage (R-1 through R-4) | **Mandatory / 필수** | Test completeness must be objectively measurable. Adapt 29119-4 coverage formulas: Attack Category Coverage, Attack Partition Coverage, Scenario Coverage, Risk-Tier Coverage. / 테스트 완전성은 객관적으로 측정 가능해야 함. | 29119-4: Clause 6 |
| P-03 | Add "Deviations from Plan" section to the report template | **Mandatory / 필수** | 29119-3 Test Completion Report requires explicit documentation of deviations. Essential for audit trail and standards compliance. / 29119-3 테스트 완료 보고서는 편차의 명시적 문서화를 요구. | 29119-3: 7.4 |
| P-04 | Add a pre-engagement Test Readiness Checklist between Planning and Design stages | **Recommended / 권장** | Ensures all preconditions are verified before execution begins. Prevents wasted effort from premature testing. / 실행 시작 전 모든 전제조건이 검증되었는지 확인. | 29119-3: 8.7 |
| P-05 | Define an Engagement Status Report template for interim progress reporting | **Recommended / 권장** | Long-duration red team engagements need structured progress reporting. Currently, only final reports are formalized. / 장기간 레드팀 참여에는 구조화된 진행 보고가 필요. | 29119-3: 7.3 |
| P-06 | Add formal traceability requirements linking risk tiers to attack patterns to findings to remediation | **Recommended / 권장** | 29119-2 TP7 requires traceability. Currently, the relationship between risk tiers, test design, and findings is implicit. Explicit traceability enables completeness verification and gap detection. / 현재 위험 등급, 테스트 설계, 발견사항 간의 관계가 암시적임. | 29119-2: TP7 |
| P-07 | Add approval workflow to the report template (reviewers, approvers, date) | **Recommended / 권장** | Standard practice in 29119-3 document templates. Improves governance. / 29119-3 문서 템플릿의 표준 관행. | 29119-3: Common elements |
| P-08 | Reference 29119-4 technique selection in Stage 2 (Design) guidance | **Recommended / 권장** | D-2 (Develop test cases) would benefit from explicit reference to systematic test design techniques rather than relying solely on attack pattern libraries. / D-2(테스트 케이스 개발)는 공격 패턴 라이브러리에만 의존하기보다 체계적 테스트 설계 기법에 대한 명시적 참조의 혜택을 받을 수 있음. | 29119-4: Clause 5 |
| P-09 | Align the Continuous Operating Model (3-layer) terminology with 29119-2 organizational test process (OT) | **Optional / 선택** | Would simplify cross-referencing for organizations already using 29119. / 이미 29119를 사용하는 조직의 교차 참조를 단순화. | 29119-2: Clause 6 |
| P-10 | Add a normative reference to ISO/IEC/IEEE 29119 series | **Mandatory / 필수** | Phase 3 already references 29119 as a normative reference. This modification formalizes the specific integration points. / Phase 3은 이미 29119를 규범적 참조로 언급. 이 수정은 특정 통합 지점을 공식화. | -- |

### 7.4 Phase 4 (Living Annex) Modifications / 제4단계 (리빙 부속서) 수정

| ID | Modification | Classification | Rationale / 근거 | 29119 Reference |
|---|---|---|---|---|
| A-01 | Add 29119-4 test technique tags to each Attack Pattern (Annex A) | **Recommended / 권장** | Each attack pattern should specify which 29119-4 techniques are applicable for systematic test derivation. E.g., AP-MOD-003 tagged with "Random/Fuzz Testing (5.2.10), Combinatorial (5.2.4)". / 각 공격 패턴에 체계적 테스트 도출에 적용 가능한 29119-4 기법을 명시. | 29119-4: Clause 5 |
| A-02 | Add formal coverage metrics to Annex C (Benchmark Coverage Matrix) | **Recommended / 권장** | Annex C currently uses qualitative coverage levels (Full/Partial/None). Adding 29119-4 quantitative coverage measurement formulas would enable objective measurement: "X% of attack categories have benchmark coverage at Y% depth". / Annex C는 현재 정성적 커버리지 수준을 사용. 정량적 측정 공식 추가가 필요. | 29119-4: Clause 6 |
| A-03 | Add "Test Technique" field to Annex A Pattern Schema (A.1) | **Recommended / 권장** | Extends the pattern schema to include recommended systematic test techniques alongside the current Procedure field. / 현재 절차 필드와 함께 권장 체계적 테스트 기법을 포함하도록 패턴 스키마 확장. | 29119-4 |
| A-04 | Add traceability index from Annex B risk mappings to Phase 3 coverage metrics | **Optional / 선택** | Would enable verification that all risks in Annex B have corresponding test coverage. / Annex B의 모든 위험에 대응하는 테스트 커버리지가 있는지 확인 가능하게 함. | 29119-2: TP7 |
| A-05 | Reference 29119-3 incident report format in Annex D (Incident-Driven Update Guide) | **Optional / 선택** | Annex D D.2 defines an intake template. Aligning it with 29119-3 8.10 incident report format would improve standardization. / Annex D D.2의 접수 템플릿을 29119-3 8.10 인시던트 보고서 형식과 정렬하면 표준화가 개선됨. | 29119-3: 8.10 |

### 7.5 Phase 1-2 (Attack Patterns) Modifications / 제1-2단계 (공격 패턴) 수정

| ID | Modification | Classification | Rationale / 근거 | 29119 Reference |
|---|---|---|---|---|
| AT-01 | Add systematic test derivation guidance for each attack category | **Recommended / 권장** | Phase 1-2 provides excellent attack taxonomy but does not guide how to systematically derive test cases. Adding 29119-4 technique recommendations per category would bridge this gap. / 체계적 테스트 케이스 도출 방법 안내를 추가하면 이 갭을 해소할 수 있음. | 29119-4: Clause 5 |
| AT-02 | Define coverage completeness criteria for each attack category | **Recommended / 권장** | Enable objective assessment of "how thoroughly has this attack category been tested?" using 29119-4 coverage measurement. / 29119-4 커버리지 측정을 사용하여 "이 공격 카테고리가 얼마나 철저하게 테스트되었는가?"의 객관적 평가를 가능하게 함. | 29119-4: Clause 6 |
| AT-03 | Add failure mode traceability to attack-risk mapping tables (Section 4) | **Optional / 선택** | Phase 1-2 Section 4 already provides excellent attack-failure-risk-harm mapping. Adding 29119-style traceability IDs would formalize this further. / Phase 1-2 Section 4는 이미 훌륭한 공격-장애-위험-피해 매핑을 제공. 29119 스타일 추적성 ID 추가로 이를 더 공식화. | 29119-2: TP7 |

### 7.6 Summary of Recommendations / 권고사항 요약

| Classification | Count | Key Themes / 핵심 주제 |
|---|---|---|
| **Mandatory / 필수** | 5 | Entry/exit criteria (P-01), Coverage metrics (P-02, T-01), Deviations documentation (P-03), Normative reference (P-10), Entry/exit terminology (T-02) |
| **Recommended / 권장** | 12 | Test readiness (P-04), Status reporting (P-05), Traceability (P-06, A-04), Approval workflow (P-07), Technique integration (P-08, A-01, A-03, AT-01, AT-02), Oracle/basis terminology (T-03, T-04, T-05), Coverage quantification (A-02) |
| **Optional / 선택** | 4 | Terminology cross-reference (T-06), Process alignment (P-09), Incident format (A-05), Traceability IDs (AT-03) |
| **Total** | **21** | |

### 7.7 Implementation Priority / 구현 우선순위

**Phase 1 -- Immediate (before normative core finalization):**
1. P-01: Add entry/exit criteria to Phase 3 stages
2. P-02: Add coverage metrics to reporting
3. T-01, T-02: Add test coverage and entry/exit criteria to Phase 0 terminology
4. P-03: Add deviations section to report template
5. P-10: Formalize 29119 normative reference

**Phase 2 -- Short-term (next revision cycle):**
6. A-01, A-03: Add technique tags to attack patterns
7. P-06: Add traceability requirements
8. P-08, AT-01: Integrate 29119-4 techniques into design guidance
9. P-04: Add test readiness checklist
10. A-02, AT-02: Add quantitative coverage metrics

**Phase 3 -- Medium-term (subsequent revision):**
11. P-05, P-07: Interim reporting and approval workflow
12. T-03, T-04, T-05, T-06: Additional terminology refinement
13. P-09, A-04, A-05, AT-03: Alignment and traceability enhancements

---

## Appendix A: Normative Reference Compliance Matrix
## 부록 A: 규범적 참조 준수 매트릭스

This matrix summarizes the current guideline's compliance with each part of ISO/IEC/IEEE 29119.

이 매트릭스는 현재 가이드라인의 ISO/IEC/IEEE 29119 각 파트에 대한 준수 현황을 요약합니다.

| 29119 Part | Component | Current Compliance | After Recommended Modifications |
|---|---|---|---|
| **Part 1** | Terminology alignment | **Partial** (70%) -- Key terms adopted but coverage/criteria terms missing | **Strong** (90%) |
| **Part 1** | AI system recognition | **Strong** -- Phase 0 and Phase 1-2 fully recognize AI-specific testing challenges | **Strong** |
| **Part 2** | Process model alignment | **Strong** (80%) -- 6-stage lifecycle well-mapped to 3-layer model | **Full** (95%) |
| **Part 2** | Entry/exit criteria | **Weak** (30%) -- Success criteria defined but not formal entry/exit per stage | **Strong** (85%) |
| **Part 2** | Traceability | **Moderate** (50%) -- Implicit traceability through risk-tier mapping | **Strong** (85%) |
| **Part 3** | Test plan coverage | **Strong** (85%) -- Phase 3 Stage 1 covers most test plan elements | **Full** (95%) |
| **Part 3** | Report template | **Strong** (80%) -- Phase 3 Stage 5 well-structured | **Full** (95%) |
| **Part 3** | Organizational documents | **Weak** (30%) -- No formal test policy or practices template | **Moderate** (60%) |
| **Part 3** | Dynamic test documents | **Strong** (85%) -- Annex A patterns serve as test case/procedure specifications | **Full** (95%) |
| **Part 4** | Technique coverage | **Moderate** (50%) -- Metamorphic and random testing referenced; others absent | **Strong** (80%) |
| **Part 4** | Coverage measurement | **Weak** (20%) -- Qualitative coverage only (Annex C) | **Strong** (75%) |

---

## Appendix B: Cross-Reference Quick Guide
## 부록 B: 교차 참조 빠른 가이드

| I need to... / 필요한 작업 | See 29119 / 29119 참조 | See Guideline / 가이드라인 참조 |
|---|---|---|
| Understand testing vocabulary | 29119-1 Clause 3 | Phase 0 |
| Plan a red team engagement | 29119-2 TP1-TP9, 29119-3 7.2 | Phase 3 Stage 1 (P-1 to P-5) |
| Design attack test cases | 29119-4 Clause 5, 29119-3 8.2-8.4 | Phase 3 Stage 2, Phase 4 Annex A |
| Execute tests | 29119-2 TE1-TE3, 29119-3 8.8-8.9 | Phase 3 Stage 3 (E-1 to E-5) |
| Analyze findings | 29119-2 TMC1-TMC4, 29119-3 8.10 | Phase 3 Stage 4 (A-1 to A-5), Phase 4 Annex B |
| Write the final report | 29119-3 7.4 | Phase 3 Stage 5 (R-1 to R-4) |
| Track remediation | 29119-2 TC1-TC4 | Phase 3 Stage 6 (F-1 to F-4) |
| Measure test coverage | 29119-4 Clause 6 | Phase 4 Annex C + recommended additions |
| Choose test techniques | 29119-4 Clause 5 | Section 4 of this report |
| Map attacks to risks | -- | Phase 1-2 Section 4, Phase 4 Annex B |
| Update attack library | -- | Phase 4 Annex D |

---

*Document Version: 1.0*
*Completed: 2026-02-09*
*Author: Software Testing Standards Expert Agent*
*Sources: ISO/IEC/IEEE 29119-1:2022, 29119-2:2021, 29119-3:2021, 29119-4:2021, AIRTG Phase 0 v1.0, AIRTG Phase 3 v1.0, AIRTG Phase 4 v1.0, AIRTG Phase 1-2 v1.1*

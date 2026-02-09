# SW Testing Standards Checklist
# 소프트웨어 테스팅 표준 점검 사항

**AI Red Team International Guideline -- ISO/IEC/IEEE 29119 Conformance Checklist**

**Document ID:** AIRTG-SW-Testing-Checklist-v1.0
**Date / 작성일:** 2026-02-09
**Author / 작성자:** Software Testing Standards Expert Agent
**Related Document / 관련 문서:** sw-testing-standards-report.md
**Status / 상태:** Final

---

## Legend / 범례

**Importance / 중요도:**
- **Critical**: Must be addressed before guideline finalization / 가이드라인 확정 전 반드시 해결
- **High**: Should be addressed in the next revision cycle / 다음 개정 주기에서 해결 필요
- **Medium**: Address when convenient or in subsequent revisions / 후속 개정에서 해결

**Current Status / 현재 상태:**
- **Conformant / 적합**: Fully aligned with 29119 requirements / 29119 요구사항과 완전히 정렬
- **Partial / 부분적합**: Partially addressed but gaps remain / 부분적으로 해결되었으나 갭 존재
- **Non-conformant / 미적합**: Not addressed or significantly misaligned / 미해결 또는 중대한 불일치

---

## 1. Process Conformance Checklist / 프로세스 정합성 점검 사항

### 1.1 Organizational Test Process Layer (29119-2 Clause 6) / 조직 테스트 프로세스 계층

| ID | Checklist Item / 점검 항목 | 29119-2 Ref | Guideline Ref | Importance / 중요도 | Status / 상태 | Finding / 발견사항 |
|---|---|---|---|---|---|---|
| PC-01 | Organizational red team policy is defined and documented / 조직적 레드팀 정책이 정의되고 문서화됨 | OT1 | Phase 3 Continuous Operating Model (Layer 1: Strategic Governance) | **High** | **Partial / 부분적합** | The Continuous Operating Model references strategic governance but does not provide a formal Red Team Policy template. The concept exists but lacks the structured documentation 29119 requires. / 연속 운영 모델이 전략적 거버넌스를 참조하지만 공식적인 레드팀 정책 템플릿을 제공하지 않음. |
| PC-02 | Organizational red team practices (standard operating procedures) are documented / 조직적 레드팀 실무(표준 운영 절차)가 문서화됨 | OT1 | Not explicitly documented | **High** | **Non-conformant / 미적합** | No equivalent to 29119's "Organizational Test Practices" document. The guideline defines stage-level activities but not organization-wide standard procedures for how red team engagements are conducted consistently. / 29119의 "조직적 테스트 실무" 문서에 해당하는 것이 없음. |
| PC-03 | Organizational-level monitoring and control of red team program is defined / 조직 수준의 레드팀 프로그램 모니터링 및 통제가 정의됨 | OT2 | Phase 3 Continuous Operating Model (Layer 2: Tactical Management) | **Medium** | **Partial / 부분적합** | Tactical Management layer covers program-level oversight conceptually, but specific monitoring activities, metrics, and reporting cycles are not formalized. / 전술적 관리 계층이 프로그램 수준 감독을 개념적으로 다루지만 구체적 모니터링 활동, 메트릭, 보고 주기가 공식화되지 않음. |
| PC-04 | Process improvement mechanism is established / 프로세스 개선 메커니즘이 수립됨 | OT3 | Phase 3: F-3 (Update attack library), F-4 (Feed back to continuous operations); Phase 4 Annex D | **Critical** | **Conformant / 적합** | Strong alignment. Phase 3 Follow-up stage (F-3, F-4) and Annex D (Incident-Driven Update Guide) provide a comprehensive process improvement mechanism including quarterly reviews and incident-triggered updates. / 강한 정렬. Phase 3 후속조치 단계와 Annex D가 분기별 검토 및 사고 트리거 업데이트를 포함하는 포괄적 프로세스 개선 메커니즘 제공. |

### 1.2 Test Management Process Layer (29119-2 Clause 7) / 테스트 관리 프로세스 계층

| ID | Checklist Item / 점검 항목 | 29119-2 Ref | Guideline Ref | Importance / 중요도 | Status / 상태 | Finding / 발견사항 |
|---|---|---|---|---|---|---|
| PC-05 | Test strategy is developed with risk-based approach / 위험 기반 접근법으로 테스트 전략이 수립됨 | TP1 | Phase 3: P-1 (Define scope), P-2 (Identify threat model & risk tiers) | **Critical** | **Conformant / 적합** | Strong alignment. Phase 3 defines 3-tier risk classification (Critical, High, Standard) and threat model-driven scope determination. / 강한 정렬. Phase 3이 3단계 위험 분류 및 위협 모델 기반 범위 결정을 정의. |
| PC-06 | Test plan covers all required elements / 테스트 계획이 모든 필수 요소를 포함함 | TP2 | Phase 3: Stage 1 (P-1 to P-5) | **Critical** | **Partial / 부분적합** | Phase 3 Stage 1 covers scope, threat model, resources, success criteria, and rules of engagement. However, it lacks formal entry/exit criteria per stage (29119 requires these in the test plan), explicit schedule structure, and deviation handling procedures. / Phase 3 Stage 1이 범위, 위협 모델, 자원, 성공 기준, 교전 규칙을 포함하지만 단계별 공식 진입/종료 기준, 명시적 일정 구조, 편차 처리 절차가 부족함. |
| PC-07 | Entry criteria are defined for each stage / 각 단계의 진입 기준이 정의됨 | TP2 | Not explicitly defined | **Critical** | **Non-conformant / 미적합** | Phase 3 defines success criteria (P-4) as overall engagement criteria, but does not define per-stage entry criteria (e.g., "Design stage may begin only when Planning deliverables X, Y, Z are approved"). This is a critical gap for stage-gate governance. / Phase 3이 전체 참여 기준으로 성공 기준(P-4)을 정의하지만 단계별 진입 기준을 정의하지 않음. 이는 단계-게이트 거버넌스의 중대한 갭. |
| PC-08 | Exit criteria are defined for each stage / 각 단계의 종료 기준이 정의됨 | TP2 | Not explicitly defined | **Critical** | **Non-conformant / 미적합** | Same gap as PC-07. No formal exit criteria per stage. Without these, there is no objective basis for determining when a stage is complete. / PC-07과 동일한 갭. 단계별 공식 종료 기준 없음. 이 없이는 단계 완료를 결정하는 객관적 근거가 없음. |
| PC-09 | Risk identification and analysis drives test design / 위험 식별 및 분석이 테스트 설계를 주도함 | TP4, TP5 | Phase 3: P-2 (3-tier risk), D-1 (Select attack categories per risk tier) | **Critical** | **Conformant / 적합** | Strong alignment. Risk tiers directly drive attack category selection in Design stage. / 강한 정렬. 위험 등급이 설계 단계에서 공격 카테고리 선택을 직접 주도. |
| PC-10 | Traceability is maintained from risks through tests to findings / 위험에서 테스트를 거쳐 발견사항까지 추적성이 유지됨 | TP7 | Implicit in Phase 3 flow (P-2 → D-1 → E-3 → A-1) | **High** | **Partial / 부분적합** | The logical flow from risk tiers to attack categories to execution to findings is implied by the stage sequence, but no formal traceability mechanism (IDs, matrices, linking) is defined. 29119 requires explicit traceability maintenance. / 위험 등급에서 공격 카테고리, 실행, 발견사항으로의 논리적 흐름이 단계 순서에 의해 암시되지만 공식적 추적성 메커니즘이 정의되지 않음. |
| PC-11 | Resources are identified and acquired / 자원이 식별되고 획득됨 | TP8 | Phase 3: P-3 (Determine resource & tooling) | **High** | **Conformant / 적합** | P-3 covers resource and tooling determination. / P-3이 자원 및 도구 결정을 포함. |
| PC-12 | Progress monitoring and control are defined / 진행 모니터링 및 통제가 정의됨 | TMC1-TMC4 | Phase 3: E-4 (Real-time triage) | **High** | **Partial / 부분적합** | E-4 provides real-time triage during execution but lacks a structured monitoring framework covering progress metrics, comparison against plan, deviation handling, and interim reporting. / E-4가 실행 중 실시간 분류를 제공하지만 진행 메트릭, 계획 대비 비교, 편차 처리, 중간 보고를 포함하는 구조화된 모니터링 프레임워크가 부족. |
| PC-13 | Test completion activities are defined / 테스트 완료 활동이 정의됨 | TC1-TC4 | Phase 3: Stage 5 (R-1 to R-4), Stage 6 (F-1 to F-4) | **High** | **Conformant / 적합** | Reporting and Follow-up stages together cover all 29119 completion activities: finalize execution (R-4 evidence), archive artifacts (R-4), analyze lessons (F-3, F-4), report completion (R-1 to R-3). / 보고 및 후속조치 단계가 함께 모든 29119 완료 활동을 포함. |

### 1.3 Dynamic Test Process Layer (29119-2 Clause 8) / 동적 테스트 프로세스 계층

| ID | Checklist Item / 점검 항목 | 29119-2 Ref | Guideline Ref | Importance / 중요도 | Status / 상태 | Finding / 발견사항 |
|---|---|---|---|---|---|---|
| PC-14 | Test conditions are derived from test basis / 테스트 조건이 테스트 베이시스에서 도출됨 | TD1 | Phase 3: D-1 (Select attack categories per risk tier) | **Critical** | **Conformant / 적합** | Attack categories are derived from risk tiers (test basis). / 공격 카테고리가 위험 등급(테스트 베이시스)에서 도출됨. |
| PC-15 | Test cases are designed using recognized techniques / 인정된 기법을 사용하여 테스트 케이스가 설계됨 | TD2 | Phase 3: D-2 (Develop test cases), Phase 4 Annex A | **High** | **Partial / 부분적합** | Test cases are designed based on attack pattern library (Annex A), but 29119-4 test design techniques are not explicitly referenced or required. The guideline relies on attack pattern expertise rather than systematic technique application. / 공격 패턴 라이브러리에 기반하여 테스트 케이스가 설계되지만 29119-4 테스트 설계 기법이 명시적으로 참조되거나 요구되지 않음. |
| PC-16 | Test procedures are documented with step-by-step instructions / 테스트 절차가 단계별 지시로 문서화됨 | TD3 | Phase 4 Annex A: Procedure field in each attack pattern | **Critical** | **Conformant / 적합** | Each attack pattern in Annex A includes a numbered procedure with step-by-step instructions. / Annex A의 각 공격 패턴에 번호가 매겨진 단계별 절차가 포함됨. |
| PC-17 | Test environment and data requirements are specified / 테스트 환경 및 데이터 요구사항이 명시됨 | TD4, ED1-ED4 | Phase 3: D-4 (Configure automation & tooling), Phase 4 Annex A Prerequisites | **High** | **Partial / 부분적합** | D-4 addresses tooling configuration and Annex A patterns list prerequisites, but a formalized test environment specification (hardware, software, network, access levels, data requirements) per 29119-3 8.5-8.6 is not provided. / D-4가 도구 구성을 다루고 Annex A 패턴이 전제조건을 나열하지만 29119-3 8.5-8.6에 따른 공식화된 테스트 환경 명세가 제공되지 않음. |
| PC-18 | Test execution records actual results / 테스트 실행이 실제 결과를 기록함 | TE1-TE3 | Phase 3: E-3 (Record all outputs & observations) | **Critical** | **Conformant / 적합** | E-3 explicitly requires recording all outputs and observations. / E-3이 모든 출력 및 관찰 기록을 명시적으로 요구. |
| PC-19 | Incidents are reported with sufficient detail / 인시던트가 충분한 세부 사항으로 보고됨 | IR1-IR2 | Phase 3: A-1 (Classify findings), R-2 (Document technical findings) | **Critical** | **Conformant / 적합** | Findings classification (A-1) and technical documentation (R-2) together provide comprehensive incident reporting. Phase 4 Annex B adds failure mode and risk mapping depth. / 발견사항 분류(A-1)와 기술 문서화(R-2)가 함께 포괄적 인시던트 보고를 제공. |

### 1.4 Process Gaps and Misalignments Summary / 프로세스 갭 및 불일치 요약

| Gap ID | Description / 설명 | Affected Items | Importance | Recommended Action / 권고 조치 |
|---|---|---|---|---|
| PG-01 | No formal entry/exit criteria per stage / 단계별 공식 진입/종료 기준 없음 | PC-07, PC-08 | **Critical** | Define entry criteria (what must be true to start) and exit criteria (what must be true to finish) for each of the 6 stages. Template: "Stage X Entry: [conditions]. Stage X Exit: [conditions + deliverables]." / 6개 단계 각각에 대해 진입 기준과 종료 기준 정의. |
| PG-02 | No formal organizational test policy template / 공식 조직적 테스트 정책 템플릿 없음 | PC-01, PC-02 | **High** | Create a Red Team Policy template aligned with 29119-3 Section 6.2 covering: objectives, scope, principles, roles, escalation, and ethical standards. / 29119-3 Section 6.2에 맞춘 레드팀 정책 템플릿 생성. |
| PG-03 | No formal traceability mechanism / 공식 추적성 메커니즘 없음 | PC-10 | **High** | Introduce traceability matrix or ID-linking system: Risk-ID → Attack-Category-ID → Test-Case-ID → Finding-ID → Remediation-ID. / 추적성 매트릭스 또는 ID 연결 시스템 도입. |
| PG-04 | Monitoring framework lacks structure / 모니터링 프레임워크가 구조화되지 않음 | PC-12 | **High** | Define monitoring metrics (tests executed/planned, findings by severity, coverage %), comparison-against-plan checkpoints, and interim status report template. / 모니터링 메트릭, 계획 대비 비교 체크포인트, 중간 상태 보고서 템플릿 정의. |
| PG-05 | 29119-4 techniques not explicitly referenced in test design / 29119-4 기법이 테스트 설계에 명시적으로 참조되지 않음 | PC-15 | **High** | Add technique selection guidance to Stage 2 (Design), referencing 29119-4 techniques applicable to each attack category. / Stage 2(설계)에 각 공격 카테고리에 적용 가능한 29119-4 기법을 참조하는 기법 선택 가이드 추가. |

---

## 2. Documentation Checklist / 문서화 점검 사항

### 2.1 Required Documents Completeness / 필수 문서 완전성

| ID | 29119-3 Document Type | 29119-3 Clause | Guideline Equivalent | Importance / 중요도 | Status / 상태 | Finding / 발견사항 |
|---|---|---|---|---|---|---|
| DC-01 | **Test Policy** | 6.2 | No explicit template | **High** | **Non-conformant / 미적합** | The guideline's Continuous Operating Model (Layer 1) implies strategic governance but does not provide a structured Red Team Policy document template with the elements 29119-3 requires (scope, objectives, test process definition, criteria for deviation, improvement process). / 가이드라인의 연속 운영 모델이 전략적 거버넌스를 암시하지만 29119-3이 요구하는 요소를 갖춘 구조화된 레드팀 정책 문서 템플릿을 제공하지 않음. |
| DC-02 | **Organizational Test Practices** | 6.3 | No explicit document | **High** | **Non-conformant / 미적합** | No organization-wide standard practices document for red teaming. Individual engagement procedures are covered, but cross-engagement standardization is missing. / 레드팀을 위한 조직 전반 표준 실무 문서 없음. 개별 참여 절차는 다루어지지만 교차 참여 표준화가 누락됨. |
| DC-03 | **Test Plan** | 7.2 | Phase 3 Stage 1 outputs (P-1 to P-5) | **Critical** | **Partial / 부분적합** | Strong coverage of scope (P-1), risk (P-2), resources (P-3), success criteria (P-4), and rules of engagement (P-5). Missing elements: formal entry/exit criteria per stage, explicit schedule template, deviation handling procedures, test environment specification, approval workflow. / 범위, 위험, 자원, 성공 기준, 교전 규칙의 강한 커버리지. 누락: 단계별 진입/종료 기준, 명시적 일정 템플릿, 편차 처리 절차, 테스트 환경 명세, 승인 워크플로우. |
| DC-04 | **Test Status Report** | 7.3 | E-4 (Real-time triage) -- informal | **High** | **Non-conformant / 미적합** | No formalized interim status report template. E-4 (real-time triage) provides in-execution assessment but not a structured report for stakeholder communication during long engagements. / 공식적 중간 상태 보고서 템플릿 없음. E-4가 실행 중 평가를 제공하지만 장기 참여 중 이해관계자 커뮤니케이션을 위한 구조화된 보고서가 아님. |
| DC-05 | **Test Completion Report** | 7.4 | Phase 3 Stage 5 (R-1 to R-4) | **Critical** | **Partial / 부분적합** | Strong alignment: executive summary (R-1), technical findings (R-2), remediation recommendations (R-3), evidence artifacts (R-4). Missing elements: deviations from plan section, formal test metrics/coverage statistics, approval sign-off fields. / 강한 정렬. 누락: 계획 편차 섹션, 공식 테스트 메트릭/커버리지 통계, 승인 서명 필드. |
| DC-06 | **Test Model Specification** | 8.2 | Phase 4 Annex A (Attack Pattern Schema A.1) | **Critical** | **Conformant / 적합** | Annex A.1 defines a comprehensive pattern schema serving as the test model: ID, Name, Category, Layer, Description, Prerequisites, Procedure, Detection, Mitigation, Severity, MITRE/OWASP mappings, References. This exceeds 29119-3 8.2 requirements. / Annex A.1이 포괄적 패턴 스키마를 정의하여 29119-3 8.2 요구사항을 초과. |
| DC-07 | **Test Case Specification** | 8.3 | Phase 4 Annex A individual patterns (AP-MOD-001 etc.) | **Critical** | **Conformant / 적합** | Each attack pattern serves as a test case specification with preconditions (Prerequisites), inputs (Procedure steps), and expected behavior (Detection criteria serve as implicit expected results). / 각 공격 패턴이 전제조건, 입력, 예상 행동을 갖춘 테스트 케이스 명세로 기능. |
| DC-08 | **Test Procedure Specification** | 8.4 | Phase 4 Annex A Procedure field | **Critical** | **Conformant / 적합** | Numbered step-by-step procedures are provided for each attack pattern. / 각 공격 패턴에 번호가 매겨진 단계별 절차가 제공됨. |
| DC-09 | **Test Data Requirements** | 8.5 | Phase 4 Annex A Prerequisites field (partial) | **Medium** | **Partial / 부분적합** | Prerequisites list required access, knowledge, and capabilities but do not separately formalize test data requirements (specific payload libraries, prompt datasets, benchmark inputs). / 전제조건이 필요한 접근, 지식, 역량을 나열하지만 테스트 데이터 요구사항을 별도로 공식화하지 않음. |
| DC-10 | **Test Environment Requirements** | 8.6 | Phase 3: P-3 (resources), D-4 (tooling) | **Medium** | **Partial / 부분적합** | P-3 and D-4 address resource and tooling, but a formalized environment specification (hardware, network, sandboxing, access control, data isolation) per 29119-3 8.6 is not provided as a standalone document. / P-3과 D-4가 자원과 도구를 다루지만 29119-3 8.6에 따른 공식화된 환경 명세가 독립 문서로 제공되지 않음. |
| DC-11 | **Test Readiness Report** | 8.7 | No equivalent | **High** | **Non-conformant / 미적합** | No pre-engagement readiness assessment is defined. This is a significant gap: without formal readiness verification, testing may begin before all preconditions (access, approvals, environment, data, team) are confirmed. / 사전 참여 준비 평가가 정의되지 않음. 이는 중대한 갭: 공식 준비 검증 없이 테스팅이 모든 전제조건 확인 전 시작될 수 있음. |
| DC-12 | **Actual Results** | 8.8 | Phase 3: E-3 (Record outputs) | **Critical** | **Conformant / 적합** | E-3 requires recording all outputs and observations. / E-3이 모든 출력 및 관찰 기록을 요구. |
| DC-13 | **Test Execution Log** | 8.9 | Phase 3: R-4 (Evidence artifacts) | **High** | **Conformant / 적합** | Evidence artifacts (R-4) serve as the execution log. / 증거 산출물(R-4)이 실행 로그로 기능. |
| DC-14 | **Incident Report** | 8.10 | Phase 3: A-1 (Classify), R-2 (Document technical findings) | **Critical** | **Conformant / 적합** | Findings classification with severity (A-1), failure mode mapping (A-2), root cause analysis (A-4), and technical documentation (R-2) together provide comprehensive incident reporting exceeding 29119-3 8.10. / 심각도별 발견사항 분류, 장애 모드 매핑, 근본 원인 분석, 기술 문서화가 함께 29119-3 8.10을 초과하는 포괄적 인시던트 보고 제공. |

### 2.2 Documentation Gaps Summary / 문서 갭 요약

| Gap ID | Missing Document / 누락 문서 | Importance | Recommended Action / 권고 조치 |
|---|---|---|---|
| DG-01 | **Red Team Policy template** | **High** | Create organizational-level policy template covering: program objectives, scope boundaries, ethical principles, roles & responsibilities, escalation procedures, improvement process, compliance requirements. / 프로그램 목표, 범위 경계, 윤리 원칙, 역할 및 책임, 에스컬레이션 절차, 개선 프로세스, 준수 요구사항을 포함하는 조직 수준 정책 템플릿 생성. |
| DG-02 | **Standard Operating Procedures** | **High** | Document organization-wide red team practices: engagement initiation workflow, team composition standards, tool qualification criteria, evidence handling procedures, confidentiality requirements. / 참여 시작 워크플로우, 팀 구성 표준, 도구 자격 기준, 증거 처리 절차, 기밀 요구사항 등 조직 전반 레드팀 실무 문서화. |
| DG-03 | **Test Readiness Checklist** | **High** | Create pre-engagement checklist: legal/ethical approvals obtained, scope agreement signed, environment provisioned, tools validated, team briefed, communication channels established, escalation paths confirmed. / 사전 참여 체크리스트 생성. |
| DG-04 | **Engagement Status Report template** | **High** | Define interim report template: progress vs plan, tests completed/remaining, findings to date by severity, blockers/risks, projected completion, resource utilization. / 중간 보고서 템플릿 정의. |
| DG-05 | **Test Plan missing elements** | **Critical** | Add to Phase 3 Stage 1: entry/exit criteria per stage, schedule template, deviation handling procedure, test environment specification section, approval workflow. / Phase 3 Stage 1에 추가: 단계별 진입/종료 기준, 일정 템플릿, 편차 처리 절차, 테스트 환경 명세 섹션, 승인 워크플로우. |
| DG-06 | **Test Completion Report missing elements** | **Critical** | Add to Phase 3 Stage 5: deviations from plan section, quantitative coverage metrics, approval sign-off fields, residual risk summary. / Phase 3 Stage 5에 추가: 계획 편차 섹션, 정량적 커버리지 메트릭, 승인 서명 필드, 잔여 위험 요약. |

---

## 3. Test Technique Checklist / 테스트 기법 점검 사항

### 3.1 29119-4 Technique Coverage in Guideline / 가이드라인에서의 29119-4 기법 커버리지

| ID | 29119-4 Technique | 29119-4 Clause | Guideline Usage | Importance / 중요도 | Status / 상태 | Finding / 발견사항 |
|---|---|---|---|---|---|---|
| TC-01 | **Equivalence Partitioning** | 5.2.1 | Not explicitly referenced | **High** | **Non-conformant / 미적합** | Fundamental technique for partitioning input space into attack classes (safe, unsafe, boundary, encoded). Applicable to all model-level testing. Not referenced in guideline despite high relevance. / 입력 공간을 공격 클래스로 분할하는 기본 기법. 높은 관련성에도 불구하고 가이드라인에서 참조되지 않음. |
| TC-02 | **Boundary Value Analysis** | 5.2.3 | Not explicitly referenced | **High** | **Non-conformant / 미적합** | Critical for testing safety filter boundaries: prompts at the edge of refusal thresholds, token length limits, temperature extremes. / 안전 필터 경계 테스팅에 중요: 거부 임계값 경계의 프롬프트, 토큰 길이 제한, 온도 극값. |
| TC-03 | **Classification Tree Method** | 5.2.2 | Not explicitly referenced | **Medium** | **Non-conformant / 미적합** | Useful for systematic attack dimension classification but available through equivalence partitioning coverage. / 체계적 공격 차원 분류에 유용하지만 동등 분할 커버리지를 통해 이용 가능. |
| TC-04 | **Combinatorial Testing** | 5.2.4 | Not explicitly referenced | **High** | **Non-conformant / 미적합** | Essential for managing the combinatorial explosion of attack parameters (technique x encoding x language x model). Pair-wise testing can reduce test volume while maintaining coverage. / 공격 매개변수의 조합 폭발 관리에 필수적. 페어와이즈 테스팅이 커버리지를 유지하면서 테스트 양을 줄일 수 있음. |
| TC-05 | **Decision Table Testing** | 5.2.6 | Not explicitly referenced | **High** | **Non-conformant / 미적합** | Critical for modeling agent decision logic: tool access conditions, permission checks, safety filter decisions. / 에이전트 결정 로직 모델링에 중요: 도구 접근 조건, 권한 점검, 안전 필터 결정. |
| TC-06 | **State Transition Testing** | 5.2.8 | Not explicitly referenced | **High** | **Non-conformant / 미적합** | Essential for testing autonomous drift (SYS-AD), memory manipulation (SYS-MC), and multi-turn escalation attacks. Models state transitions across conversation turns. / 자율 드리프트, 메모리 조작, 다회 에스컬레이션 공격 테스팅에 필수적. |
| TC-07 | **Scenario Testing** | 5.2.9 | Implicitly used (attack patterns are scenarios) | **Critical** | **Partial / 부분적합** | Attack patterns in Annex A are effectively end-to-end scenarios, but the connection to 29119-4 scenario testing methodology is not made explicit. Kill chain coverage is not measured. / Annex A의 공격 패턴이 효과적으로 엔드투엔드 시나리오이지만 29119-4 시나리오 테스팅 방법론과의 연결이 명시적이지 않음. |
| TC-08 | **Random / Fuzz Testing** | 5.2.10 | Referenced in Phase 3 D-2; Aligns with BoN jailbreaking (AP-MOD-003) | **Critical** | **Conformant / 적합** | Strong alignment. Best-of-N automated jailbreaking directly implements random/fuzz testing principles. 29119-1 also defines fuzz testing (3.41). / 강한 정렬. Best-of-N 자동화 탈옥이 랜덤/퍼즈 테스팅 원칙을 직접 구현. |
| TC-09 | **Metamorphic Testing** | 5.2.11 | Referenced in Phase 3 D-2 (test design principles) | **Critical** | **Conformant / 적합** | Explicitly recognized as essential for AI testing where traditional oracles are unavailable. Applicable to bias detection (semantic-preserving transformations), hallucination detection (paraphrase consistency), and safety robustness. / AI 테스팅에 필수적으로 명시적 인식. 편향 탐지, 환각 탐지, 안전 강건성에 적용 가능. |
| TC-10 | **Syntax Testing** | 5.2.4 | Not explicitly referenced | **Medium** | **Non-conformant / 미적합** | Applicable to encoding-based jailbreaks (AP-MOD-002) and prompt injection through formal syntax exploitation. / 인코딩 기반 탈옥(AP-MOD-002) 및 형식 구문 악용을 통한 프롬프트 인젝션에 적용 가능. |
| TC-11 | **Cause-Effect Graphing** | 5.2.7 | Not explicitly referenced | **Medium** | **Non-conformant / 미적합** | Useful for modeling causal chains in RAG poisoning and supply chain attacks. / RAG 포이즈닝 및 공급망 공격의 인과 체인 모델링에 유용. |
| TC-12 | **Requirements-Based Testing** | 5.2.12 | Implicitly used (testing against safety policies) | **High** | **Partial / 부분적합** | Red team testing is implicitly requirements-based (testing against safety requirements and guardrails), but the connection to 29119-4 requirements-based testing is not formalized. / 레드팀 테스팅이 암시적으로 요구사항 기반이지만 29119-4 요구사항 기반 테스팅과의 연결이 공식화되지 않음. |
| TC-13 | **Data Flow Testing** | 5.3.7 | Not explicitly referenced | **Critical** | **Non-conformant / 미적합** | Critical gap. Data flow analysis is essential for testing indirect prompt injection (AP-MOD-004), RAG poisoning (AP-SYS-002), and agentic data flow attacks. Tracking tainted data from untrusted sources through processing to safety-critical decisions is fundamental to system-level red teaming. / 중대한 갭. 간접 프롬프트 인젝션, RAG 포이즈닝, 에이전틱 데이터 흐름 공격 테스팅에 필수적. |
| TC-14 | **MC/DC Testing** | 5.3.6 | Not explicitly referenced | **Medium** | **Non-conformant / 미적합** | Applicable to safety-critical agent decision points where each safety condition must independently affect the decision outcome. / 각 안전 조건이 독립적으로 결정 결과에 영향을 미쳐야 하는 안전 중요 에이전트 결정 지점에 적용 가능. |
| TC-15 | **Error Guessing** | 5.4.1 | Implicitly used (manual creative red teaming) | **Critical** | **Conformant / 적합** | Manual red teaming (E-1) is fundamentally expert-driven error guessing: experienced testers leverage intuition about likely AI failure points. / 수동 레드팀(E-1)이 근본적으로 전문가 주도 오류 추측: 숙련된 테스터가 가능한 AI 실패 지점에 대한 직관 활용. |
| TC-16 | **Coverage Measurement** | Clause 6 | Phase 4 Annex C (qualitative only) | **Critical** | **Partial / 부분적합** | Annex C provides a coverage matrix using qualitative levels (Full/Partial/None). 29119-4 Clause 6 provides quantitative formulas. The guideline lacks quantitative coverage metrics for measuring test completeness. / Annex C가 정성적 수준으로 커버리지 매트릭스를 제공. 29119-4 Clause 6이 정량적 공식을 제공. 가이드라인에 테스트 완전성 측정을 위한 정량적 커버리지 메트릭이 부족. |

### 3.2 AI Red Team-Specific Techniques Beyond 29119-4 / 29119-4로 설명 불가한 AI 레드팀 특화 기법

| ID | AI Red Team Technique | Description / 설명 | 29119-4 Coverage | Assessment / 평가 |
|---|---|---|---|---|
| AS-01 | **Adaptive/Iterative Red Teaming** | Iteratively adjusting attacks based on model responses in real-time, learning from partial bypasses to craft more effective attacks / 모델 응답에 따라 실시간으로 공격을 반복적으로 조정, 부분 우회에서 학습하여 더 효과적인 공격 제작 | **Not covered** | 29119-4 techniques are static by design (predefined test conditions). Adaptive red teaming is a dynamic, exploratory process unique to adversarial testing. The guideline should identify this as a distinct methodology that extends beyond 29119-4's scope. / 29119-4 기법은 설계상 정적. 적응형 레드팀은 적대적 테스팅에 고유한 동적, 탐색적 프로세스. |
| AS-02 | **Multi-Turn Escalation Testing** | Systematically testing attack effectiveness across multiple conversation turns, gradually escalating from benign to harmful / 여러 대화 턴에 걸쳐 체계적으로 공격 효과 테스팅, 양성에서 유해로 점진적 에스컬레이션 | **Partially covered** by State Transition Testing | State transition testing can model turn-by-turn state changes but does not capture the creative, human-driven aspect of escalation. / 상태 전이 테스팅이 턴별 상태 변화를 모델링할 수 있지만 에스컬레이션의 창의적, 인간 주도 측면을 포착하지 못함. |
| AS-03 | **Cross-Modal Attack Testing** | Testing attacks that exploit inconsistencies between different input modalities (text, image, audio, video) / 다른 입력 모달리티(텍스트, 이미지, 오디오, 비디오) 간 불일치를 악용하는 공격 테스팅 | **Not covered** | 29119-4 does not address multimodal testing. This is a fundamentally new testing dimension for AI systems. / 29119-4가 멀티모달 테스팅을 다루지 않음. 이는 AI 시스템에 대한 근본적으로 새로운 테스팅 차원. |
| AS-04 | **Chain-of-Thought Faithfulness Testing** | Testing whether reasoning model CoT accurately reflects actual decision process / 추론 모델 CoT가 실제 결정 프로세스를 정확하게 반영하는지 테스팅 | **Not covered** | Unique to reasoning models (o1/o3-class). No 29119-4 equivalent exists for testing the faithfulness of internal reasoning processes. / 추론 모델(o1/o3급)에 고유. 내부 추론 프로세스의 충실성 테스팅을 위한 29119-4 등가물이 없음. |
| AS-05 | **Evaluation Gaming Detection** | Testing whether models behave differently when they detect they are being evaluated / 모델이 평가 중임을 감지할 때 다르게 행동하는지 테스팅 | **Not covered** | Meta-testing technique unique to AI. 29119-4 assumes the test item behaves consistently regardless of testing context. / AI에 고유한 메타 테스팅 기법. 29119-4는 테스트 항목이 테스팅 맥락과 관계없이 일관되게 행동한다고 가정. |
| AS-06 | **Multilingual Safety Testing** | Testing safety filter effectiveness across languages, especially low-resource languages / 언어 전반, 특히 저자원 언어에서 안전 필터 효과 테스팅 | **Partially covered** by Equivalence Partitioning (languages as partitions) | Language partitioning is a form of equivalence partitioning, but the cultural context, tokenization differences, and safety training asymmetry require domain-specific methodology. / 언어 분할은 동등 분할의 한 형태이지만 문화적 맥락, 토큰화 차이, 안전 학습 비대칭은 도메인 특화 방법론을 요구. |
| AS-07 | **Benchmark Validity Testing** | Testing whether existing benchmarks accurately measure what they claim to measure / 기존 벤치마크가 측정한다고 주장하는 것을 정확하게 측정하는지 테스팅 | **Not covered** | Meta-evaluation unique to AI safety. 29119-4 covers test technique effectiveness but not benchmark validity assessment. / AI 안전에 고유한 메타 평가. 29119-4가 테스트 기법 효과를 다루지만 벤치마크 유효성 평가는 다루지 않음. |

### 3.3 Technique Gap Summary / 기법 갭 요약

| Gap Category / 갭 카테고리 | Items | Impact / 영향 | Action / 조치 |
|---|---|---|---|
| **29119-4 techniques not referenced in guideline** | TC-01 to TC-06, TC-10, TC-11, TC-13, TC-14 (10 techniques) | High -- Systematic test design capability is underutilized | Add technique selection guidance to Phase 3 Stage 2 (Design) referencing applicable 29119-4 techniques for each attack category |
| **Coverage measurement gap** | TC-16 | Critical -- Cannot objectively measure test completeness | Adopt 29119-4 Clause 6 coverage formulas adapted for AI red teaming (see sw-testing-standards-report.md Section 4.6) |
| **AI-specific techniques beyond 29119-4** | AS-01 to AS-07 (7 techniques) | Medium -- These are recognized in the guideline but should be explicitly identified as extending 29119-4's scope | Document these as "AI Red Team-Specific Extensions" that complement 29119-4 techniques |

---

## 4. Terminology Checklist / 용어 점검 사항

### 4.1 Terminology Conflicts and Misalignments / 용어 충돌 및 불일치

| ID | Term / 용어 | 29119-1 Definition | Phase 0 Definition | Conflict Type / 충돌 유형 | Importance / 중요도 | Status / 상태 | Resolution / 해결 방안 |
|---|---|---|---|---|---|---|---|
| TM-01 | **Test / Test Case** vs **Attack Pattern** | 29119-1 (3.117, 3.118): "Activity to identify differences between actual and expected results"; Test case: "set of preconditions, inputs, expected results" | Phase 0: Attack Pattern as structured schema with prerequisites, procedure, detection, mitigation | **Semantic overlap, different framing** | **High** | **Partial / 부분적합** | Add note in Phase 0 that attack patterns are functionally equivalent to 29119 test cases. Use "Attack Pattern (Test Case)" in cross-reference contexts. / Phase 0에 공격 패턴이 기능적으로 29119 테스트 케이스와 동등하다는 주석 추가. |
| TM-02 | **Incident** vs **Finding/Vulnerability** | 29119-1 (3.47): "Event requiring investigation that deviates from specification" | Phase 0: Finding as outcome of successful attack; Vulnerability as exploitable weakness | **Different scope** | **High** | **Partial / 부분적합** | 29119 "incident" is broader (any unexpected event). Phase 0 "finding" is specifically a confirmed vulnerability. Add mapping note: 29119 incident encompasses Phase 0 findings plus failed test attempts that reveal unexpected behavior. / 29119 "인시던트"가 더 넓음. 매핑 주석 추가. |
| TM-03 | **Defect** vs **Vulnerability / Failure Mode** | 29119-1 (3.25): "Flaw in a component or system that can cause failure" | Phase 0: Vulnerability (exploitable weakness), Failure Mode (mechanism by which system fails) | **Different granularity** | **Medium** | **Partial / 부분적합** | Phase 0's two-tier distinction (vulnerability + failure mode) is more granular than 29119's single "defect" term. Maintain Phase 0 terms and cross-reference to 29119 defect. / Phase 0의 2단계 구분이 29119의 단일 "결함" 용어보다 더 세분화됨. Phase 0 용어 유지 및 29119 결함과 교차 참조. |
| TM-04 | **Risk** | 29119-1 (3.98): "Factor that could result in future negative consequences" | Phase 0: Risk as potential for harm, connected to MIT AI Risk Repository taxonomy | **Compatible but different scope** | **Medium** | **Conformant / 적합** | Both definitions are compatible. Phase 0 extends 29119's general risk concept with AI-specific risk taxonomy (MIT AI Risk Repository domains). No conflict. / 두 정의가 호환. Phase 0이 29119의 일반적 위험 개념을 AI 특화 위험 분류 체계로 확장. 충돌 없음. |
| TM-05 | **Test Technique** vs **Attack Technique** | 29119-1 (3.131): "Method for designing or executing tests" | Phase 1-2: Specific adversarial methods (jailbreak, prompt injection, etc.) | **Same term, different meaning** | **High** | **Non-conformant / 미적합** | Naming collision. 29119 "test technique" = method for test design; Phase 1-2 "attack technique" = specific adversarial method. Resolution: consistently use "test design technique" for 29119-4 methods and "attack technique" for adversarial methods. / 이름 충돌. "테스트 설계 기법"은 29119-4 방법에, "공격 기법"은 적대적 방법에 일관되게 사용. |
| TM-06 | **Test Environment** vs **Red Team Environment** | 29119-1: Technical infrastructure for test execution | Phase 0: Includes ethical, legal, and operational constraints beyond technical setup | **Phase 0 broader** | **Low** | **Partial / 부분적합** | Phase 0 "Red Team Environment" encompasses 29119 test environment plus ethical/legal constraints. Note the extension in terminology section. / Phase 0 "레드팀 환경"이 29119 테스트 환경 + 윤리/법적 제약을 포함. |
| TM-07 | **Tester** vs **Red Team Operator** | 29119-1 Annex B: Person executing tests | Phase 0: Person executing adversarial tests with specific skill set | **Role scope difference** | **Low** | **Conformant / 적합** | Red Team Operator is a specialization of 29119's tester role. No conflict, just specialization. / 레드팀 운영자는 29119 테스터 역할의 전문화. 충돌 없이 전문화만 존재. |

### 4.2 Terms Missing from Phase 0 (Priority Adoption List) / Phase 0에 누락된 용어 (우선순위 채택 목록)

| ID | Term / 용어 | 29119-1 Ref | Priority / 우선순위 | Importance / 중요도 | Status / 상태 | Justification / 근거 |
|---|---|---|---|---|---|---|
| TA-01 | **Test Coverage / 테스트 커버리지** | 3.120 | **1 (Highest)** | **Critical** | **Non-conformant / 미적합** | Foundational metric for measuring test completeness. Without a formal definition, coverage measurement in the guideline remains ad hoc. Must be adopted for quantitative reporting. / 테스트 완전성 측정의 기본 메트릭. 공식 정의 없이 가이드라인의 커버리지 측정이 임시적으로 유지됨. |
| TA-02 | **Entry Criteria / 진입 기준** | 3.33 | **2** | **Critical** | **Non-conformant / 미적합** | Required for formal stage-gate governance. Currently, no objective basis for determining when to start each stage. / 공식 단계-게이트 거버넌스에 필요. 현재 각 단계를 시작할 시기를 결정하는 객관적 근거가 없음. |
| TA-03 | **Exit Criteria / 종료 기준** | 3.35 | **2** | **Critical** | **Non-conformant / 미적합** | Required for formal stage-gate governance. Currently, no objective basis for determining when a stage is complete. / 공식 단계-게이트 거버넌스에 필요. 현재 단계 완료를 결정하는 객관적 근거가 없음. |
| TA-04 | **Test Oracle / 테스트 오라클** | 3.125 | **3** | **High** | **Non-conformant / 미적합** | Formalizes the oracle problem, a fundamental challenge in AI testing. Safety policies and guardrails serve as oracles but this is not explicitly stated. / 오라클 문제를 공식화, AI 테스팅의 근본적 과제. 안전 정책과 가드레일이 오라클 역할을 하지만 명시적으로 언급되지 않음. |
| TA-05 | **Test Basis / 테스트 베이시스** | 3.116 | **4** | **High** | **Non-conformant / 미적합** | Clarifies that threat models, risk assessments, and safety requirements constitute the test basis from which test cases are derived. / 위협 모델, 위험 평가, 안전 요구사항이 테스트 케이스가 도출되는 테스트 베이시스를 구성함을 명확히. |
| TA-06 | **Traceability / 추적성** | TP7 concept | **5** | **High** | **Non-conformant / 미적합** | Enables formal linking from risks through tests to findings and remediation. / 위험에서 테스트를 거쳐 발견사항과 교정조치로의 공식적 연결을 가능하게 함. |
| TA-07 | **Neuron Coverage / 뉴런 커버리지** | 3.76 | **6** | **Medium** | **Non-conformant / 미적합** | Specialized AI testing metric already defined in 29119-1. Applicable to model-level coverage measurement. Adoption is optional depending on testing depth. / 29119-1에 이미 정의된 특수 AI 테스팅 메트릭. 모델 수준 커버리지 측정에 적용 가능. |

---

## 5. Ongoing Review Items / 지속적 확인 사항

### 5.1 Checklist for Guideline Updates / 가이드라인 업데이트 시 점검 사항

Whenever the AI Red Team International Guideline is updated, the following 29119 conformance points must be re-verified.

AI 레드팀 국제 가이드라인이 업데이트될 때마다 다음 29119 정합성 포인트를 재검증해야 합니다.

| ID | Review Point / 검토 포인트 | Trigger / 트리거 | Importance / 중요도 | Affected Guideline Sections / 영향받는 가이드라인 섹션 |
|---|---|---|---|---|
| OR-01 | **Process stage changes**: If any stage in the 6-stage lifecycle is added, removed, or restructured, verify continued alignment with 29119-2 process layers / **프로세스 단계 변경**: 6단계 생명주기에서 단계가 추가, 제거, 재구성되면 29119-2 프로세스 계층과의 지속적 정렬 확인 | Any Phase 3 revision | **Critical** | Phase 3 all stages; sw-testing-standards-report.md Section 2 |
| OR-02 | **Entry/exit criteria maintenance**: If entry/exit criteria are adopted (per recommendation P-01), verify they remain aligned with 29119-2 TP2 requirements upon each revision / **진입/종료 기준 유지**: 진입/종료 기준이 채택되면 각 개정 시 29119-2 TP2 요구사항과 정렬 유지 확인 | Any Phase 3 Stage 1 revision | **Critical** | Phase 3 Stage 1, all stages |
| OR-03 | **Report template changes**: If the report structure (R-1 to R-4) is modified, verify continued alignment with 29119-3 Test Completion Report (7.4) / **보고서 템플릿 변경**: 보고서 구조가 수정되면 29119-3 테스트 완료 보고서(7.4)와의 지속적 정렬 확인 | Any Phase 3 Stage 5 revision | **High** | Phase 3 Stage 5 |
| OR-04 | **Attack pattern schema changes**: If the Annex A pattern schema (A.1) is modified, verify continued alignment with 29119-3 Test Case Specification (8.3) and Test Procedure Specification (8.4) / **공격 패턴 스키마 변경**: Annex A 패턴 스키마가 수정되면 29119-3 테스트 케이스 명세(8.3) 및 테스트 절차 명세(8.4)와의 정렬 확인 | Any Phase 4 Annex A revision | **High** | Phase 4 Annex A |
| OR-05 | **New attack categories added**: When new attack categories or layers are introduced, verify that applicable 29119-4 techniques are identified and coverage metrics are updated / **새 공격 카테고리 추가**: 새 공격 카테고리 또는 계층이 도입되면 적용 가능한 29119-4 기법이 식별되고 커버리지 메트릭이 업데이트되었는지 확인 | Any Phase 4 Annex A update | **High** | Phase 4 Annex A; sw-testing-standards-report.md Section 4 |
| OR-06 | **Terminology additions or changes**: Any new terms added to Phase 0 should be checked against 29119-1 for conflicts, overlaps, or alignment opportunities / **용어 추가 또는 변경**: Phase 0에 추가되는 새 용어는 충돌, 중복, 정렬 기회에 대해 29119-1과 비교 점검 | Any Phase 0 revision | **High** | Phase 0 |
| OR-07 | **Coverage metrics changes**: If quantitative coverage metrics are adopted (per recommendation P-02), verify formulas remain consistent with 29119-4 Clause 6 adaptation / **커버리지 메트릭 변경**: 정량적 커버리지 메트릭이 채택되면 공식이 29119-4 Clause 6 적응과 일관성 유지 확인 | Any coverage metric revision | **High** | Phase 3 Stage 5; Phase 4 Annex C |
| OR-08 | **Benchmark coverage matrix updates**: When Annex C is updated with new benchmarks, verify coverage assessment aligns with 29119-4 coverage categories / **벤치마크 커버리지 매트릭스 업데이트**: Annex C가 새 벤치마크로 업데이트되면 커버리지 평가가 29119-4 커버리지 카테고리와 정렬 확인 | Any Phase 4 Annex C update | **Medium** | Phase 4 Annex C |
| OR-09 | **Risk taxonomy changes**: If the risk tier system (P-2) or risk mapping framework (Annex B) is modified, verify traceability chain remains intact / **위험 분류 체계 변경**: 위험 등급 시스템(P-2) 또는 위험 매핑 프레임워크(Annex B)가 수정되면 추적성 체인이 온전히 유지되는지 확인 | Any Phase 3 P-2 or Phase 4 Annex B revision | **High** | Phase 3 Stage 1; Phase 4 Annex B |
| OR-10 | **Continuous Operating Model changes**: If the 3-layer continuous operating model is restructured, verify alignment with 29119-2 organizational test process (OT) / **연속 운영 모델 변경**: 3계층 연속 운영 모델이 재구성되면 29119-2 조직 테스트 프로세스(OT)와의 정렬 확인 | Any Phase 3 operating model revision | **Medium** | Phase 3 Continuous Operating Model |

### 5.2 Impact Assessment for 29119 Series Revisions / 29119 시리즈 개정 시 영향 평가

When the ISO/IEC/IEEE 29119 series is revised, the following guideline sections will be affected and must be reviewed.

ISO/IEC/IEEE 29119 시리즈가 개정될 때 다음 가이드라인 섹션이 영향을 받으며 검토해야 합니다.

| ID | If 29119 Part Changes / 29119 파트 변경 시 | Affected Guideline Sections / 영향받는 가이드라인 섹션 | Review Actions / 검토 조치 | Importance / 중요도 |
|---|---|---|---|---|
| IR-01 | **29119-1 revised** (terminology, concepts) | Phase 0 (Terminology); All cross-reference tables in this report | 1. Check all term definitions in Phase 0 against updated 29119-1 terms. 2. Update conflict/alignment table (Section 4 of this checklist). 3. Check for new AI-relevant terms added to 29119-1. 4. Update sw-testing-standards-report.md Section 5. / 1. Phase 0의 모든 용어 정의를 업데이트된 29119-1 용어와 비교. 2. 충돌/정렬 테이블 업데이트. 3. 29119-1에 추가된 새 AI 관련 용어 확인. | **High** |
| IR-02 | **29119-2 revised** (test processes) | Phase 3 (Normative Core) all stages; sw-testing-standards-report.md Section 2 | 1. Re-map all 6 Phase 3 stages to updated 29119-2 process activities. 2. Verify entry/exit criteria alignment. 3. Check for new process activities relevant to AI/adversarial testing. 4. Update process mapping table. / 1. 모든 6단계를 업데이트된 29119-2 프로세스 활동에 재매핑. 2. 진입/종료 기준 정렬 확인. 3. AI/적대적 테스팅에 관련된 새 프로세스 활동 확인. | **Critical** |
| IR-03 | **29119-3 revised** (test documentation) | Phase 3 Stage 1 (plan), Stage 5 (report); Phase 4 Annex A (pattern schema); sw-testing-standards-report.md Section 3 | 1. Re-verify document completeness against updated 29119-3 templates. 2. Check for new document types or required elements. 3. Update documentation mapping table. 4. Review report template alignment. / 1. 업데이트된 29119-3 템플릿에 대해 문서 완전성 재검증. 2. 새 문서 유형 또는 필수 요소 확인. | **High** |
| IR-04 | **29119-4 revised** (test techniques) | Phase 3 Stage 2 (design); Phase 4 Annex A (attack patterns); Phase 4 Annex C (benchmark coverage); sw-testing-standards-report.md Section 4 | 1. Check for new techniques applicable to AI red teaming. 2. Re-evaluate technique-to-attack-pattern mapping. 3. Update coverage formulas if changed. 4. Check if AI-specific techniques (metamorphic, fuzz) are enhanced. / 1. AI 레드팀에 적용 가능한 새 기법 확인. 2. 기법-공격 패턴 매핑 재평가. 3. 변경된 경우 커버리지 공식 업데이트. | **High** |
| IR-05 | **New 29119 part published** (e.g., Part 5 for AI testing) | Potentially all guideline sections | 1. Conduct full impact assessment of new part. 2. Determine if new part introduces requirements not covered by current guideline. 3. Update normative references. 4. Create new mapping tables if needed. / 1. 새 파트의 전체 영향 평가 수행. 2. 현재 가이드라인이 다루지 않는 요구사항 도입 여부 결정. | **Critical** |

### 5.3 Periodic Conformance Review Schedule / 정기 정합성 검토 일정

| Review Cycle / 검토 주기 | Scope / 범위 | Responsible / 담당 |
|---|---|---|
| **Every guideline update** | Run checklist items PC-01 to PC-19, DC-01 to DC-14, TC-01 to TC-16 for affected sections only | Document author + Standards expert |
| **Quarterly** | Review OR-01 to OR-10 for any unverified changes; Check for 29119 revision announcements (ISO/IEC JTC 1/SC 7/WG 26) | Standards liaison |
| **Annually** | Full conformance review against all checklist items; Update this checklist document; Reassess priorities based on accumulated gaps | Standards expert + Guideline editor |
| **Upon 29119 revision** | Execute IR-01 to IR-05 as applicable; Full re-mapping of affected sections | Standards expert (dedicated effort) |

---

## Summary Dashboard / 요약 대시보드

### Overall Conformance Status / 전체 정합성 현황

| Category / 카테고리 | Total Items | Conformant / 적합 | Partial / 부분적합 | Non-conformant / 미적합 | Conformance Rate / 정합률 |
|---|---|---|---|---|---|
| **Process (Section 1)** | 19 | 9 (47%) | 6 (32%) | 4 (21%) | **47%** |
| **Documentation (Section 2)** | 14 | 7 (50%) | 4 (29%) | 3 (21%) | **50%** |
| **Test Techniques (Section 3)** | 16 | 3 (19%) | 3 (19%) | 10 (62%) | **19%** |
| **Terminology (Section 4)** | 14 | 2 (14%) | 5 (36%) | 7 (50%) | **14%** |
| **Overall / 전체** | **63** | **21 (33%)** | **18 (29%)** | **21 (33%)** | **33%** |

### Critical Items Requiring Immediate Action / 즉각 조치가 필요한 중대 항목

| Priority | Item IDs | Description / 설명 |
|---|---|---|
| **1** | PC-07, PC-08 | Define entry/exit criteria for all 6 stages / 모든 6단계의 진입/종료 기준 정의 |
| **2** | TA-01, TC-16 | Adopt test coverage definition and quantitative metrics / 테스트 커버리지 정의 및 정량적 메트릭 채택 |
| **3** | DG-05, DG-06 | Complete test plan and report templates with missing elements / 누락된 요소로 테스트 계획 및 보고서 템플릿 완성 |
| **4** | TC-13 | Adopt data flow testing for system-level attacks / 시스템 수준 공격에 데이터 흐름 테스팅 채택 |
| **5** | TM-05 | Resolve "test technique" vs "attack technique" naming collision / "테스트 기법" vs "공격 기법" 이름 충돌 해결 |

---

## Pipeline Monitoring Session (2026-02-09)
## 파이프라인 모니터링 세션 (2026-02-09)

**Monitor Agent / 모니터링 에이전트:** SW Testing Standards Monitoring Agent
**Session Type / 세션 유형:** Continuous conformance monitoring during pipeline execution / 파이프라인 실행 중 지속적 정합성 모니터링
**Baseline Conformance / 기준 정합률:** 33% (21/63 conformant)

---

### Current Conformance Snapshot / 현재 정합성 스냅샷

| Category / 카테고리 | Total | Conformant / 적합 | Partial / 부분적합 | Non-conformant / 미적합 | Rate / 정합률 |
|---|---|---|---|---|---|
| Process (Section 1) / 프로세스 | 19 | 9 (47%) | 6 (32%) | 4 (21%) | **47%** |
| Documentation (Section 2) / 문서화 | 14 | 7 (50%) | 4 (29%) | 3 (21%) | **50%** |
| Test Techniques (Section 3) / 테스트 기법 | 16 | 3 (19%) | 3 (19%) | 10 (62%) | **19%** |
| Terminology (Section 4) / 용어 | 14 | 2 (14%) | 5 (36%) | 7 (50%) | **14%** |
| **Overall / 전체** | **63** | **21 (33%)** | **18 (29%)** | **24 (38%)** | **33%** |

**Assessment / 평가:** The weakest areas are Terminology (14%) and Test Techniques (19%). Process and Documentation are relatively stronger but still have critical gaps. The top 5 priority fixes below target the highest-impact items that can improve overall conformance most efficiently.

평가: 가장 취약한 영역은 용어(14%)와 테스트 기법(19%)이다. 프로세스와 문서화는 상대적으로 강하지만 여전히 중대한 갭이 존재한다. 아래 상위 5개 우선순위 수정은 전체 정합성을 가장 효율적으로 개선할 수 있는 항목을 대상으로 한다.

---

### Top 5 Priority Fixes with Specific Proposals / 상위 5개 우선순위 수정 제안

#### Priority 1: Define Entry/Exit Criteria for All 6 Stages / 모든 6단계의 진입/종료 기준 정의

**Affected Items / 영향 항목:** PC-07, PC-08, DG-05, TA-02, TA-03
**Current Status / 현재 상태:** Non-conformant
**29119 Reference / 29119 참조:** 29119-2 TP2 (Test Planning), 29119-1 3.33 (Entry Criteria), 29119-1 3.35 (Exit Criteria)
**Expected Conformance Impact / 예상 정합률 변화:** +5 items (PC-07, PC-08 to Conformant; TA-02, TA-03 to Conformant; DG-05 partially resolved) = ~+8% overall (33% -> 41%)

**Specific Change / 구체적 변경:**

**File / 파일:** `phase-3-normative-core.md`
**Location / 위치:** Each stage section (Sections 2-7)
**Proposed Change / 제안 변경:** Add an "Entry Criteria / 진입 기준" and "Exit Criteria / 종료 기준" subsection to each of the 6 stages. Proposed structure:

```markdown
### X.Y Entry and Exit Criteria / 진입 및 종료 기준

**Entry Criteria / 진입 기준:**
(Conditions that must be satisfied before this stage may begin /
이 단계를 시작하기 전 충족해야 하는 조건)

| # | Criterion / 기준 | Verification / 검증 |
|---|---|---|

**Exit Criteria / 종료 기준:**
(Conditions that must be satisfied before this stage is considered complete /
이 단계가 완료로 간주되기 전 충족해야 하는 조건)

| # | Criterion / 기준 | Deliverable / 산출물 |
|---|---|---|
```

**Stage-specific criteria proposals / 단계별 기준 제안:**

- **Stage 1 (Planning) Entry:** Engagement request received; system documentation available; legal/ethics resources identified / 참여 요청 접수; 시스템 문서 가용; 법적/윤리 자원 식별
- **Stage 1 Exit:** Engagement Plan approved; Threat Model documented; Authorization signed; Risk Tier determined / 참여 계획 승인; 위협 모델 문서화; 승인 서명; 리스크 등급 결정
- **Stage 2 (Design) Entry:** All Stage 1 outputs approved; Attack Pattern Library accessible / 모든 Stage 1 산출물 승인; 공격 패턴 라이브러리 접근 가능
- **Stage 2 Exit:** Test Design Specification reviewed; Test Environment Requirements specified; minimum test case coverage per risk tier verified / 테스트 설계 명세 검토; 테스트 환경 요구사항 명시; 리스크 등급별 최소 테스트 케이스 커버리지 확인
- **Stage 3 (Execution) Entry:** Test environment provisioned and verified; safety controls confirmed; communication channels established / 테스트 환경 프로비저닝 및 검증; 안전 통제 확인; 통신 채널 수립
- **Stage 3 Exit:** All planned test cases executed or deviation documented; evidence artifacts captured; exploratory testing time completed / 계획된 테스트 케이스 실행 또는 편차 문서화; 증거 산출물 확보; 탐색적 테스팅 시간 완료
- **Stage 4 (Analysis) Entry:** Raw Finding Log complete; Evidence Artifacts available; Evaluation Framework from Stage 2 accessible / 원시 발견사항 로그 완료; 증거 산출물 가용; Stage 2 평가 프레임워크 접근 가능
- **Stage 4 Exit:** All findings characterized; Attack chains analyzed; Coverage analysis complete; Risk Narrative drafted / 모든 발견사항 특성화; 공격 체인 분석; 커버리지 분석 완료; 위험 서사 초안
- **Stage 5 (Reporting) Entry:** All Stage 4 outputs complete; report template prepared / Stage 4 산출물 완료; 보고서 템플릿 준비
- **Stage 5 Exit:** Formal report completed and reviewed; Limitations statement included; Executive summary finalized; Stakeholder briefings delivered / 공식 보고서 완료 및 검토; 한계 성명 포함; 경영진 요약 확정; 이해관계자 브리핑 전달
- **Stage 6 (Follow-up) Entry:** Formal report delivered; Remediation Roadmap accepted by SO / 공식 보고서 전달; 교정 로드맵 SO 수용
- **Stage 6 Exit:** All findings assigned remediation status; Verification re-test scheduled; Lessons learned documented; Closure notice issued / 모든 발견사항에 교정 상태 할당; 검증 재테스트 예약; 교훈 문서화; 종료 통지 발행

**File / 파일:** `phase-0-terminology.md`
**Proposed Change / 제안 변경:** Add "Entry Criteria" and "Exit Criteria" terms to terminology definitions with 29119-1 cross-reference.

---

#### Priority 2: Adopt Test Coverage Definition and Quantitative Metrics / 테스트 커버리지 정의 및 정량적 메트릭 채택

**Affected Items / 영향 항목:** TA-01, TC-16, PC-10
**Current Status / 현재 상태:** Non-conformant (TA-01, TC-16), Partial (PC-10)
**29119 Reference / 29119 참조:** 29119-1 3.120 (Test Coverage), 29119-4 Clause 6 (Coverage Measurement)
**Expected Conformance Impact / 예상 정합률 변화:** +3 items to Conformant = ~+5% overall (41% -> 46%)

**Specific Change / 구체적 변경:**

**File / 파일:** `phase-0-terminology.md`
**Location / 위치:** After Section 1.8 (Benchmark vs Evaluation vs Assessment)
**Proposed Change / 제안 변경:** Add new section "1.9bis Testing Process Terminology / 테스팅 프로세스 용어" with:

```markdown
| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Test Coverage / 테스트 커버리지** | The degree to which specified coverage items have been exercised by a test suite, expressed as a percentage. (Ref: 29119-1 3.120) | 지정된 커버리지 항목이 테스트 스위트에 의해 실행된 정도. 백분율로 표현. |
| **Test Oracle / 테스트 오라클** | A source to determine expected results to compare with actual results. In AI red teaming, safety policies, guardrails, and domain-specific requirements serve as test oracles. (Ref: 29119-1 3.125) | 실제 결과와 비교할 기대 결과를 결정하는 소스. AI 레드팀에서는 안전 정책, 가드레일, 도메인 요구사항이 오라클 역할. |
| **Test Basis / 테스트 베이시스** | The body of knowledge used as the basis for test design. In AI red teaming: threat models, risk assessments, safety requirements, and regulatory obligations. (Ref: 29119-1 3.116) | 테스트 설계의 기초로 사용되는 지식 본체. AI 레드팀에서: 위협 모델, 위험 평가, 안전 요구사항, 규제 의무. |
| **Traceability / 추적성** | The ability to trace test items through requirements, test conditions, test cases, and findings using unique identifiers. | 고유 식별자를 사용하여 요구사항, 테스트 조건, 테스트 케이스, 발견사항을 통해 테스트 항목을 추적하는 능력. |
```

**File / 파일:** `phase-3-normative-core.md`
**Location / 위치:** Section 5.3 Activity A-4 (Coverage Analysis)
**Proposed Change / 제안 변경:** Add quantitative coverage formulas adapted for AI red teaming:

```markdown
**Quantitative Coverage Metrics / 정량적 커버리지 메트릭:**

| Metric / 메트릭 | Formula / 공식 | Description / 설명 |
|---|---|---|
| Attack Category Coverage / 공격 카테고리 커버리지 | (Tested categories / Total categories in scope) x 100% | Percentage of in-scope attack categories exercised |
| Threat Actor Coverage / 위협 행위자 커버리지 | (Emulated actors / Identified actors in threat model) x 100% | Percentage of threat actors from threat model emulated |
| Attack Surface Coverage / 공격 표면 커버리지 | (Tested surfaces / Total surfaces in scope) x 100% | Percentage of in-scope attack surfaces exercised |
| Risk Tier Test Depth / 리스크 등급 테스트 깊이 | (Executed test cases / Minimum required per tier) x 100% | Whether minimum testing depth for risk tier was met |
| Traceability Completeness / 추적성 완전성 | (Findings with full trace / Total findings) x 100% | Percentage of findings traceable back to threat model |
```

**File / 파일:** `phase-3-normative-core.md`
**Proposed Change / 제안 변경:** Add traceability ID scheme: `Risk-ID -> TC-ID (Test Condition) -> TestCase-ID -> Finding-ID -> Remediation-ID`

---

#### Priority 3: Resolve "Test Technique" vs "Attack Technique" Naming Collision and Add 29119-4 Technique Mapping / "테스트 기법" vs "공격 기법" 이름 충돌 해결 및 29119-4 기법 매핑 추가

**Affected Items / 영향 항목:** TM-05, TC-01 to TC-07, TC-10 to TC-14, TC-12
**Current Status / 현재 상태:** Non-conformant (TM-05, TC-01-TC-06, TC-10-TC-14), Partial (TC-07, TC-12)
**29119 Reference / 29119 참조:** 29119-1 3.131 (Test Technique), 29119-4 Clause 5 (Test Design Techniques)
**Expected Conformance Impact / 예상 정합률 변화:** +12 items improved (TM-05 to Conformant; TC-01-TC-06 at least to Partial; TC-10-TC-14 to Partial; TC-07 to Conformant; TC-12 to Conformant) = ~+12% overall (46% -> 58%)

**Specific Change / 구체적 변경:**

**File / 파일:** `phase-0-terminology.md`
**Proposed Change / 제안 변경:** Add a disambiguation note:

```markdown
> **Terminology Disambiguation / 용어 구분:**
> - **Test Design Technique / 테스트 설계 기법**: A method used to derive or select test conditions, test cases,
>   or test procedures (per 29119-1 3.131). Examples: equivalence partitioning, boundary value analysis,
>   state transition testing, combinatorial testing.
>   테스트 조건, 테스트 케이스 또는 테스트 절차를 도출 또는 선택하는 데 사용되는 방법.
> - **Attack Technique / 공격 기법**: A specific adversarial method used to exploit an AI system vulnerability
>   (e.g., jailbreak, prompt injection, data extraction). These are the subject matter of test cases, not the
>   design method used to create those test cases.
>   AI 시스템 취약점을 악용하는 데 사용되는 특정 적대적 방법. 테스트 케이스의 대상이며, 테스트 케이스 생성 방법이 아님.
```

**File / 파일:** `phase-3-normative-core.md`
**Location / 위치:** Section 3.3 Activity D-3 (Test Case Design)
**Proposed Change / 제안 변경:** Add a "Test Design Technique Selection / 테스트 설계 기법 선정" subsection mapping 29119-4 techniques to AI red teaming contexts:

```markdown
**29119-4 Test Design Technique Applicability / 29119-4 테스트 설계 기법 적용성:**

| 29119-4 Technique / 기법 | AI Red Teaming Application / AI 레드팀 적용 | Applicable Categories / 적용 카테고리 |
|---|---|---|
| Equivalence Partitioning (5.2.1) | Partition input space into classes: safe, unsafe, boundary, encoded, multilingual | All MOD categories |
| Boundary Value Analysis (5.2.3) | Test safety filter thresholds: token limits, temperature extremes, refusal boundaries | MOD-JB, MOD-PI |
| Combinatorial Testing (5.2.4) | Manage combinatorial explosion of attack parameters (technique x encoding x language x model) | MOD-JB, MOD-PI, MOD-MM |
| Decision Table Testing (5.2.6) | Model agent permission logic: tool access conditions, safety filter decisions | SYS-TM, SYS-PE |
| State Transition Testing (5.2.8) | Test multi-turn escalation, memory manipulation, autonomous drift | SYS-AD, SYS-MC, MOD-JB |
| Scenario Testing (5.2.9) | End-to-end attack scenarios following kill chains | All categories |
| Data Flow Testing (5.3.7) | Trace tainted data from untrusted sources through processing to actions | MOD-PI (indirect), SYS-RP, SYS-TM |
| Requirements-Based Testing (5.2.12) | Test against safety policies, guardrails, and compliance requirements | All categories |
```

---

#### Priority 4: Create Red Team Policy Template and Organizational Practices Document / 레드팀 정책 템플릿 및 조직 실무 문서 생성

**Affected Items / 영향 항목:** PC-01, PC-02, DC-01, DC-02, DG-01, DG-02
**Current Status / 현재 상태:** PC-01 Partial, PC-02 Non-conformant, DC-01 Non-conformant, DC-02 Non-conformant
**29119 Reference / 29119 참조:** 29119-2 OT1, 29119-3 6.2 (Test Policy), 29119-3 6.3 (Organizational Test Practices)
**Expected Conformance Impact / 예상 정합률 변화:** +4 items to Conformant = ~+6% overall (58% -> 64%)

**Specific Change / 구체적 변경:**

**File / 파일:** `phase-3-normative-core.md`
**Location / 위치:** New Section 11.8 (after 11.7 Maturity Progression)
**Proposed Change / 제안 변경:** Add "Organizational Red Team Policy Template" and "Standard Operating Procedures Template" subsections:

```markdown
### 11.8 Organizational Red Team Policy Template / 조직적 레드팀 정책 템플릿

Organizations implementing continuous red teaming shall establish a documented Red Team Policy
(per 29119-3 6.2) covering:

| Element / 요소 | Description / 설명 | 29119-3 Ref |
|---|---|---|
| Program Objectives / 프로그램 목표 | Strategic goals of the red team program | 6.2.a |
| Scope Boundaries / 범위 경계 | Which systems require red teaming and at what frequency | 6.2.b |
| Ethical Principles / 윤리 원칙 | Ethical constraints on testing activities | 6.2.c |
| Roles & Responsibilities / 역할 및 책임 | Organizational roles (see Phase 0, Section 3.4) | 6.2.d |
| Process Definition / 프로세스 정의 | Reference to the 6-stage lifecycle process | 6.2.e |
| Escalation Procedures / 에스컬레이션 절차 | How critical findings are escalated | 6.2.f |
| Improvement Process / 개선 프로세스 | How the policy and practices are updated | 6.2.g |
| Compliance Requirements / 준수 요구사항 | Applicable regulations (EU AI Act, sector-specific) | 6.2.h |

### 11.9 Standard Operating Procedures Template / 표준 운영 절차 템플릿

Organizations shall document cross-engagement standard practices (per 29119-3 6.3):

| Element / 요소 | Description / 설명 |
|---|---|
| Engagement Initiation Workflow / 참여 시작 워크플로우 | How engagements are requested, approved, and initiated |
| Team Composition Standards / 팀 구성 표준 | Minimum expertise and diversity requirements per risk tier |
| Tool Qualification Criteria / 도구 자격 기준 | How testing tools are evaluated and approved |
| Evidence Handling Procedures / 증거 처리 절차 | How sensitive findings and artifacts are stored, transmitted, and destroyed |
| Confidentiality Requirements / 기밀 요구사항 | Data classification and handling for red team materials |
| Quality Assurance / 품질 보증 | Peer review requirements for findings and reports |
| Training Requirements / 교육 요구사항 | Minimum training and certification for red team members |
```

---

#### Priority 5: Add Test Readiness Checklist and Status Report Template / 테스트 준비 체크리스트 및 상태 보고서 템플릿 추가

**Affected Items / 영향 항목:** DC-04, DC-11, DG-03, DG-04
**Current Status / 현재 상태:** DC-04 Non-conformant, DC-11 Non-conformant
**29119 Reference / 29119 참조:** 29119-3 7.3 (Test Status Report), 29119-3 8.7 (Test Readiness Report)
**Expected Conformance Impact / 예상 정합률 변화:** +2 items to Conformant = ~+3% overall (64% -> 67%)

**Specific Change / 구체적 변경:**

**File / 파일:** `phase-3-normative-core.md`
**Location / 위치:** Section 4.3 before Activity E-1 (Environment Preparation)
**Proposed Change / 제안 변경:** Add "E-0. Test Readiness Assessment" activity:

```markdown
**E-0. Test Readiness Assessment / 테스트 준비 평가**

Before execution begins, verify readiness using the following checklist (per 29119-3 8.7):

| # | Readiness Item / 준비 항목 | Status / 상태 | Verified By / 검증자 |
|---|---|---|---|
| 1 | Legal/ethical authorization obtained / 법적/윤리적 승인 확보 | [ ] | LC / EA |
| 2 | Scope agreement signed by all parties / 모든 당사자의 범위 합의 서명 | [ ] | PS / SO / RTL |
| 3 | Test environment provisioned and matches specification / 테스트 환경 프로비저닝 및 명세 일치 | [ ] | RTO |
| 4 | Testing tools validated and configured / 테스팅 도구 검증 및 구성 | [ ] | RTO |
| 5 | Team briefed on scope, constraints, and escalation protocol / 범위, 제약, 에스컬레이션 프로토콜에 대해 팀 브리핑 | [ ] | RTL |
| 6 | Communication channels established / 통신 채널 수립 | [ ] | RTL |
| 7 | Evidence capture mechanisms operational / 증거 캡처 메커니즘 운영 | [ ] | RTO |
| 8 | Safety controls in place for high-risk tests / 고위험 테스트를 위한 안전 통제 시행 | [ ] | RTL / SO |
| 9 | Stage 2 entry criteria met / Stage 2 진입 기준 충족 | [ ] | RTL |
```

**File / 파일:** `phase-3-normative-core.md`
**Location / 위치:** Section 4.3 after Activity E-5 (Escalation Protocol)
**Proposed Change / 제안 변경:** Add "E-6. Engagement Status Reporting" activity for long engagements:

```markdown
**E-6. Engagement Status Reporting / 참여 상태 보고 (for engagements > 1 week / 1주 이상 참여)**

Produce interim status reports at defined intervals (per 29119-3 7.3):

| Element / 요소 | Content / 내용 |
|---|---|
| Reporting Period / 보고 기간 | Date range covered |
| Test Progress / 테스트 진행 | Test cases executed vs. planned; attack categories covered |
| Findings to Date / 현재까지 발견사항 | Count and severity distribution of findings |
| Blockers and Risks / 차단 요소 및 위험 | Issues impeding progress |
| Deviation from Plan / 계획 편차 | Any scope changes or methodology adjustments |
| Projected Completion / 예상 완료 | Estimated remaining effort |
| Resource Utilization / 자원 활용 | Team hours, tool usage |
```

---

### Terminology Alignment Recommendations / 용어 정렬 권고사항

Based on cross-referencing Phase 0 with 29119-1:2022 definitions:

Phase 0과 29119-1:2022 정의의 교차 참조를 기반으로:

| Priority / 우선순위 | Term / 용어 | Issue / 문제 | Recommended Action / 권고 조치 |
|---|---|---|---|
| **1 (Critical)** | Test Technique vs Attack Technique | Naming collision -- same term, different meaning / 이름 충돌 -- 같은 용어, 다른 의미 | Add disambiguation in Phase 0 (see Priority 3 above). Consistently use "test design technique" for 29119-4 methods and "attack technique" for adversarial methods throughout all documents / Phase 0에 구분 추가. 모든 문서에서 "테스트 설계 기법"과 "공격 기법" 일관 사용 |
| **2 (Critical)** | Test Coverage / 테스트 커버리지 | Missing from Phase 0; no formal definition / Phase 0에 누락; 공식 정의 없음 | Adopt 29119-1 3.120 definition (see Priority 2 above) / 29119-1 3.120 정의 채택 |
| **3 (Critical)** | Entry Criteria / Exit Criteria | Missing from Phase 0 / Phase 0에 누락 | Adopt 29119-1 3.33 and 3.35 definitions (see Priority 1 above) / 29119-1 3.33 및 3.35 정의 채택 |
| **4 (High)** | Test Oracle / 테스트 오라클 | Missing; fundamental to AI testing oracle problem / 누락; AI 테스팅 오라클 문제의 근본 | Add with note that safety policies serve as test oracles / 안전 정책이 테스트 오라클 역할을 한다는 주석과 함께 추가 |
| **5 (High)** | Test Basis / 테스트 베이시스 | Missing; clarifies derivation source / 누락; 도출 소스를 명확히 함 | Add with note that threat models and risk assessments constitute the test basis / 위협 모델과 위험 평가가 테스트 베이시스를 구성한다는 주석과 함께 추가 |
| **6 (High)** | Incident vs Finding | Different scope -- 29119 incident is broader / 다른 범위 -- 29119 인시던트가 더 넓음 | Add mapping note in Phase 0: "29119 incident encompasses findings plus failed test attempts revealing unexpected behavior" / Phase 0에 매핑 주석 추가 |
| **7 (Medium)** | Neuron Coverage / 뉴런 커버리지 | 29119-1 3.76 defines it; not in Phase 0 / 29119-1 3.76이 정의; Phase 0에 없음 | Optional adoption -- add when model-level coverage measurement is formalized / 선택적 채택 |

---

### Process Alignment Recommendations / 프로세스 정렬 권고사항

Based on mapping Phase 3 against 29119-2:2021 process model:

Phase 3과 29119-2:2021 프로세스 모델의 매핑을 기반으로:

| 29119-2 Layer | Gap / 갭 | Current State / 현재 상태 | Recommendation / 권고사항 |
|---|---|---|---|
| **Organizational (Clause 6) OT1** | No formal Red Team Policy document / 공식 레드팀 정책 문서 없음 | Phase 3 Section 11 implies governance but lacks structured policy template / 거버넌스를 암시하지만 구조화된 정책 템플릿 부재 | Add Policy Template per Priority 4 proposal / 우선순위 4 제안에 따라 정책 템플릿 추가 |
| **Organizational (Clause 6) OT1** | No Standard Operating Procedures / 표준 운영 절차 없음 | Individual engagement procedures exist but no cross-engagement standardization / 개별 참여 절차는 있으나 교차 참여 표준화 없음 | Add SOP Template per Priority 4 proposal / 우선순위 4 제안에 따라 SOP 템플릿 추가 |
| **Management (Clause 7) TP2** | No entry/exit criteria per stage / 단계별 진입/종료 기준 없음 | Phase 3 defines success criteria (P-4) but not per-stage gates / 성공 기준을 정의하나 단계별 게이트 아님 | Add per-stage criteria per Priority 1 proposal / 우선순위 1 제안에 따라 단계별 기준 추가 |
| **Management (Clause 7) TMC1-4** | Monitoring framework lacks structure / 모니터링 프레임워크 구조 부재 | E-4 provides real-time triage but no structured monitoring / 실시간 분류는 제공하나 구조화된 모니터링 없음 | Add Status Report template per Priority 5 proposal / 우선순위 5 제안에 따라 상태 보고서 템플릿 추가 |
| **Dynamic (Clause 8) TD4** | Test environment not formally specified / 테스트 환경 공식 명세 없음 | D-4 and Annex A prerequisites address tooling informally / D-4와 Annex A 전제조건이 비공식적으로 도구를 다룸 | Add formal Test Environment Specification section to Stage 2 outputs / Stage 2 산출물에 공식 테스트 환경 명세 섹션 추가 |

---

### Documentation Alignment Recommendations / 문서화 정렬 권고사항

Based on mapping guideline documents against 29119-3:2021 templates:

가이드라인 문서와 29119-3:2021 템플릿의 매핑을 기반으로:

| 29119-3 Document | Gap / 갭 | Recommendation / 권고사항 |
|---|---|---|
| **Test Policy (6.2)** | No structured template / 구조화된 템플릿 없음 | Create template per Priority 4 / 우선순위 4에 따라 템플릿 생성 |
| **Organizational Test Practices (6.3)** | No equivalent document / 동등 문서 없음 | Create SOP template per Priority 4 / 우선순위 4에 따라 SOP 템플릿 생성 |
| **Test Plan (7.2)** | Missing: entry/exit criteria, schedule template, deviation handling, approval workflow / 누락: 진입/종료 기준, 일정 템플릿, 편차 처리, 승인 워크플로우 | Add elements per Priorities 1 and 5 / 우선순위 1 및 5에 따라 요소 추가 |
| **Test Status Report (7.3)** | No formalized interim report / 공식 중간 보고서 없음 | Add Status Report template per Priority 5 / 우선순위 5에 따라 상태 보고서 템플릿 추가 |
| **Test Readiness Report (8.7)** | No equivalent / 동등 문서 없음 | Add Test Readiness Checklist per Priority 5 / 우선순위 5에 따라 테스트 준비 체크리스트 추가 |
| **Test Completion Report (7.4)** | Missing: deviations-from-plan section, quantitative coverage metrics, approval sign-off fields / 누락: 계획 편차 섹션, 정량적 커버리지 메트릭, 승인 서명 필드 | Add to Section 10 report template: (1) "Deviations from Plan" section after Section 5; (2) Quantitative metrics in Section 5 per Priority 2; (3) Approval sign-off page as final section / 섹션 10 보고서 템플릿에 추가 |

---

### Test Technique Alignment Recommendations / 테스트 기법 정렬 권고사항

Based on mapping guideline test design against 29119-4:2021 techniques:

가이드라인 테스트 설계와 29119-4:2021 기법의 매핑을 기반으로:

| 29119-4 Technique | Current Status / 현재 상태 | AI Red Team Applicability / AI 레드팀 적용성 | Recommendation / 권고사항 |
|---|---|---|---|
| **Equivalence Partitioning (5.2.1)** | Not referenced / 참조 안됨 | Partition inputs into safe/unsafe/boundary/encoded/multilingual classes / 입력을 안전/불안전/경계/인코딩/다국어 클래스로 분할 | Add to D-3 technique guidance (Priority 3) / D-3 기법 가이드에 추가 |
| **Boundary Value Analysis (5.2.3)** | Not referenced | Test safety filter boundaries: token limits, refusal thresholds, temperature extremes / 안전 필터 경계 테스트 | Add to D-3 technique guidance |
| **Combinatorial Testing (5.2.4)** | Not referenced | Pair-wise testing of attack parameter combinations to manage combinatorial explosion / 조합 폭발 관리를 위한 페어와이즈 테스팅 | Add to D-3 technique guidance |
| **Decision Table Testing (5.2.6)** | Not referenced | Model agent permission logic and safety filter decision rules / 에이전트 권한 로직 및 안전 필터 결정 규칙 모델링 | Add to D-3 technique guidance |
| **State Transition Testing (5.2.8)** | Not referenced | Model multi-turn escalation states, memory manipulation, autonomous drift / 다회전 에스컬레이션 상태 모델링 | Add to D-3 technique guidance |
| **Scenario Testing (5.2.9)** | Implicitly used | Explicitly link attack patterns to 29119-4 scenario testing methodology / 공격 패턴을 29119-4 시나리오 테스팅 방법론에 명시적 연결 | Add cross-reference in D-3 |
| **Data Flow Testing (5.3.7)** | Not referenced -- **critical gap** | Trace tainted data from untrusted sources through AI system processing to safety-critical actions / 신뢰할 수 없는 소스에서 안전 중요 행동까지 오염된 데이터 추적 | **Highest priority** -- essential for indirect prompt injection, RAG poisoning, agentic data flow testing / 최우선 -- 간접 프롬프트 인젝션, RAG 포이즈닝, 에이전틱 데이터 흐름 테스팅에 필수 |
| **Requirements-Based Testing (5.2.12)** | Implicitly used | Explicitly formalize: safety policies = requirements; red team tests = requirements-based tests / 안전 정책 = 요구사항; 레드팀 테스트 = 요구사항 기반 테스트 공식화 | Add cross-reference in D-3 |
| **Coverage Measurement (Clause 6)** | Qualitative only (Annex C) | Adopt quantitative formulas adapted for AI red teaming / AI 레드팀을 위해 적응된 정량적 공식 채택 | Per Priority 2 proposals |

---

### Projected Conformance After All 5 Fixes / 5개 수정 후 예상 정합률

| Category / 카테고리 | Current / 현재 | After Fixes / 수정 후 | Change / 변화 |
|---|---|---|---|
| Process (Section 1) | 47% (9/19) | ~74% (14/19) | +27% |
| Documentation (Section 2) | 50% (7/14) | ~79% (11/14) | +29% |
| Test Techniques (Section 3) | 19% (3/16) | ~56% (9/16) | +37% |
| Terminology (Section 4) | 14% (2/14) | ~57% (8/14) | +43% |
| **Overall / 전체** | **33% (21/63)** | **~67% (42/63)** | **+34%** |

**Note / 참고:** These projections assume full implementation of all 5 priority fixes. Partial implementation will yield proportionally smaller improvements. The remaining ~33% gap consists of items requiring more substantial structural changes (e.g., formal test data requirements specification, full MC/DC testing adoption, neuron coverage measurement) that should be addressed in subsequent revision cycles.

이 예상치는 5개 우선순위 수정의 완전한 구현을 가정한다. 부분 구현은 비례적으로 더 작은 개선을 산출할 것이다. 나머지 ~33% 갭은 후속 개정 주기에서 해결해야 하는 더 실질적인 구조적 변경이 필요한 항목으로 구성된다.

---

### Next Monitoring Actions / 다음 모니터링 조치

1. **Immediate / 즉시**: Implement Priority 1 (entry/exit criteria) as it is the single highest-impact change / 우선순위 1(진입/종료 기준) 구현 -- 가장 높은 영향의 단일 변경
2. **Short-term / 단기**: Implement Priorities 2 and 3 (coverage metrics, technique mapping) as they address the two weakest categories / 우선순위 2 및 3 구현 -- 가장 취약한 두 카테고리 해결
3. **Medium-term / 중기**: Implement Priorities 4 and 5 (policy template, readiness checklist) to achieve organizational-level conformance / 우선순위 4 및 5 구현 -- 조직 수준 정합성 달성
4. **Re-monitor / 재모니터링**: After implementation, re-run this conformance check to verify actual improvement and identify remaining gaps / 구현 후 정합성 검사를 재실행하여 실제 개선 확인 및 잔여 갭 식별

---

*Pipeline Monitoring Session completed: 2026-02-09*
*Monitor: SW Testing Standards Monitoring Agent*
*Next scheduled review: Upon implementation of Priority 1-3 fixes*

---

*Document Version: 1.1*
*Completed: 2026-02-09*
*Updated: 2026-02-09 (Pipeline Monitoring Session added)*
*Author: Software Testing Standards Expert Agent*
*Related: sw-testing-standards-report.md*
*Sources: ISO/IEC/IEEE 29119-1:2022, 29119-2:2021, 29119-3:2021, 29119-4:2021, AIRTG Phase 0 v1.0, AIRTG Phase 3 v1.0, AIRTG Phase 4 v1.0, AIRTG Phase 1-2 v1.1*

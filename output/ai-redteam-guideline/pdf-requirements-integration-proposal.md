# PDF Requirements Integration Proposal
# PDF 요구사항 통합 제안

**Prepared by:** SW Testing Standards Agent
**Date:** 2026-02-10
**Purpose:** Integrate PDF normative requirements into guideline with ISO/IEC 29119 conformance enhancement
**Status:** Proposed for Team Lead Review

---

## Executive Summary / 요약

This proposal integrates normative requirements and recommendations from three reference documents (AISI, OWASP, CSA) into the AI Red Team International Guideline, with specific focus on improving ISO/IEC 29119 conformance.

### Key Metrics / 핵심 메트릭

| Metric | Value |
|--------|-------|
| **Total PDF proposals analyzed** | 19 (from reference-doc-agent) |
| **Critical proposals** | 9 |
| **Recommended proposals** | 7 |
| **Reference proposals** | 3 |
| **29119 conformance impact proposals** | 14 proposals directly address 29119 gaps |
| **Expected conformance improvement** | +20-25% (from 33% to 53-58%) |

### ISO/IEC 29119 Conformance Context / ISO/IEC 29119 정합성 맥락

**Current Conformance Baseline (from sw-testing-checklist.md):**
- Overall: 33% (21/63 conformant)
- Process: 47% conformant
- Documentation: 50% conformant
- **Test Techniques: 19% conformant** (weakest area)
- **Terminology: 14% conformant** (weakest area)

**Critical 29119 Gaps Addressed by PDF Integration:**
1. **Entry/Exit Criteria** (PC-07, PC-08) -- addressed by AISI 15-step process
2. **Test Coverage Metrics** (TA-01, TC-16) -- addressed by OWASP Metrics Framework
3. **29119-4 Test Techniques** (TC-01 to TC-14) -- addressed by OWASP 4-Phase Blueprint
4. **Data Flow Testing** (TC-13) -- addressed by CSA Agentic AI patterns
5. **Organizational Policy Templates** (PC-01, PC-02) -- addressed by OWASP Mature AI Red Teaming

---

## Integration Proposals by Stage / 단계별 통합 제안

### Stage 1: Planning / 계획 단계

#### Conformance-Critical Integrations / 정합성 필수 통합

| Proposal ID | Source | 29119 Mapping | Integration Method | Checklist Impact |
|-------------|--------|---------------|-------------------|------------------|
| **PLAN-01** | AISI Proposal 3 | 29119-2 TP2 | Add Defense Mechanism Inventory to P-2 | Enhances PC-06 (Test Plan) |
| **PLAN-02** | AISI Proposal 2 | 29119-2 TP4/TP5 | Add Usage Pattern Analysis to P-2 | Enhances PC-09 (Risk drives design) |
| **PLAN-03** | OWASP Proposal 5 | 29119-3 8.2 | Add Model Reconnaissance Activity | Addresses TC-15 (Error Guessing) |
| **PLAN-04** | CSA Proposal 1 | 29119-2 TP2 | Add Checker-Out-of-Loop to Threat Model | New system-level test category |

#### PLAN-01: Defense Mechanism Inventory (AISI) / 방어 메커니즘 목록

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 2.3, Activity P-2 (Threat Model Construction)
**Priority:** CRITICAL
**29119 Impact:** Enhances PC-06 (Test Plan completeness), supports defense-aware testing principle

**Proposed Addition:**

```markdown
**P-2bis. Defense Mechanism Inventory / 방어 메커니즘 목록 작성**

Before finalizing the threat model, document all existing defense mechanisms deployed in the target AI system. This inventory drives test case design to verify defense effectiveness and identify bypass opportunities.

위협 모델 확정 전, 대상 AI 시스템에 배포된 모든 기존 방어 메커니즘을 문서화한다. 이 목록은 방어 효과성 검증 및 우회 기회 식별을 위한 테스트 케이스 설계를 주도한다.

Categorize defenses by deployment layer (per AISI Section 6.3.2.3):

| Defense Layer / 방어 계층 | Examples / 예시 | Verification Questions / 검증 질문 |
|---|---|---|
| **Pre-filtering / 사전 필터링** | Input sanitization, blocklist, pattern matching | Can the filter be bypassed through encoding, language switching, or semantic evasion? |
| **LLM Internal Measures / LLM 내부 조치** | Instruction hierarchy, system prompts, constitutional AI | Can system prompts be leaked or overridden? |
| **Post-filtering / 사후 필터링** | Output content filters, toxicity classifiers | Can harmful content be generated but filtered, or does filtering fail on edge cases? |
| **RLHF-based Protections / RLHF 기반 보호** | Safety fine-tuning, refusal training | Can refusal be circumvented through multi-turn, role-play, or contextual manipulation? |
| **Structural Defenses / 구조적 방어** | Rate limiting, access controls, sandboxing | Can defenses be exhausted or bypassed through privilege escalation? |
| **Human Oversight / 인간 감독** | Approval workflows, monitoring dashboards | Can oversight mechanisms be evaded or rendered ineffective (checker-out-of-loop)? |

**Deliverable:** Defense Mechanism Inventory document listing each defense with: layer, implementation details, coverage scope, known limitations, and test verification plan.
```

**29119 Alignment:** This addresses 29119-2 TP2 requirement for test planning to include analysis of existing controls and mitigations.

**Expected Impact:** +1 conformance point (PC-06 from Partial to Conformant)

---

#### PLAN-02: Usage Pattern Analysis (AISI) / 사용 패턴 분석

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 2.3, Activity P-2 (Threat Model Construction)
**Priority:** CRITICAL
**29119 Impact:** Enhances PC-09 (Risk identification drives test design), addresses TA-05 (Test Basis)

**Proposed Addition:**

```markdown
**P-2ter. LLM Usage Pattern Classification / LLM 사용 패턴 분류**

Classify the target system's LLM usage patterns to ensure threat modeling captures system-specific risks, not just generic threat categories. Use AISI's three-category framework (Section 6.3.2):

대상 시스템의 LLM 사용 패턴을 분류하여 위협 모델링이 일반적 위협 범주가 아닌 시스템별 위험을 포착하도록 한다.

**1. Usage Patterns Regarding LLM Output / LLM 출력 관련 사용 패턴:**

| Pattern | Risk Implications | Attack Categories to Prioritize |
|---------|------------------|--------------------------------|
| Text generation (creative writing, summarization) | Misinformation, harmful content, copyright | MOD-HC, MOD-MI |
| Code generation | Code injection, vulnerable code, malicious logic | MOD-CG, SYS-SC |
| Query/command generation | SQL injection, prompt injection, command injection | MOD-PI, SYS-TM |
| Decision/recommendation output | Bias, unfairness, manipulation | MOD-BF, SYS-SD |

**2. Usage Patterns Regarding Reference Sources / 참조 소스 관련 사용 패턴:**

| Pattern | Risk Implications | Attack Categories to Prioritize |
|---------|------------------|--------------------------------|
| Internal database (structured data) | Data extraction, poisoning, query manipulation | MOD-DE, SYS-RP |
| Internet retrieval (RAG from web) | Misinformation, indirect prompt injection, adversarial content | MOD-PI, SYS-RP |
| Document store (enterprise RAG) | Sensitive data leakage, document poisoning | MOD-DE, SYS-RP |
| No retrieval (pure LLM knowledge) | Hallucination, knowledge cutoff issues | MOD-HA |

**3. Usage Patterns Regarding LLM Itself / LLM 자체 관련 사용 패턴:**

| Pattern | Risk Implications | Attack Categories to Prioritize |
|---------|------------------|--------------------------------|
| Self-developed LLM | Full control, white-box testing possible | All categories, focus on training data attacks |
| Pre-trained + fine-tuning | Training data poisoning, fine-tuning attacks | MOD-TP, MOD-BF |
| OSS LLM integrated | Supply chain, model vulnerabilities, licensing | SYS-SC, MOD-ME |
| External API usage | Limited visibility, API abuse, rate limits, data leakage | MOD-DE, SYS-RE |

**Deliverable:** Usage Pattern Classification document integrated into Threat Model, with risk implications explicitly mapped to prioritized attack categories.
```

**29119 Alignment:** This formalizes the "test basis" (29119-1 3.116) by documenting the knowledge from which test cases are derived. Addresses TA-05.

**Expected Impact:** +2 conformance points (PC-09 remains Conformant but strengthened; TA-05 from Non-conformant to Conformant)

---

#### PLAN-03: Model Reconnaissance Activity (OWASP) / 모델 정찰 활동

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 2.3, new activity after P-2
**Priority:** RECOMMENDED
**29119 Impact:** Enhances TC-15 (Error Guessing) by formalizing expert-driven reconnaissance

**Proposed Addition:**

```markdown
**P-2quater. Model Reconnaissance / 모델 정찰**

Conduct systematic reconnaissance of the target model to understand its capabilities, behavior patterns, and potential vulnerabilities before designing attack scenarios. This activity is particularly critical for black-box and grey-box engagements.

공격 시나리오 설계 전 대상 모델의 역량, 행동 패턴 및 잠재적 취약점을 이해하기 위해 체계적 정찰을 수행한다.

Per OWASP Strategy Step 6, reconnaissance includes:

| Reconnaissance Activity | Method | Information Gained |
|------------------------|--------|---------------------|
| **API Investigation** | Review API documentation, test endpoints, analyze rate limits | Access patterns, quota limits, error handling behavior |
| **Model Card Review** | Analyze published model cards, datasheets, technical reports | Training data sources, known limitations, intended use cases |
| **Capability Probing** | Submit benign test prompts across domains | Reasoning ability, knowledge boundaries, output style, refusal patterns |
| **Architecture Inference** | Analyze response times, token patterns, output distributions | Model size estimates, possible architecture family, fine-tuning signatures |
| **Baseline Behavior Mapping** | Establish normal behavior across input types | Expected behavior for later anomaly detection |

**For Agentic Systems, additionally probe:**
- Available tools and their invocation patterns
- Memory and context retention across sessions
- Decision-making transparency (chain-of-thought availability)
- Autonomy boundaries and human oversight triggers

**Deliverable:** Model Reconnaissance Report integrated into Test Design Specification, documenting reconnaissance findings and their implications for test case design.
```

**29119 Alignment:** This formalizes expert-driven exploration (29119-4 5.4.1 Error Guessing) by providing structure to intuitive vulnerability identification.

**Expected Impact:** +1 conformance point (TC-15 from Conformant to stronger alignment)

---

#### PLAN-04: Checker-Out-of-the-Loop Threat Category (CSA) / 체커 아웃 오브 루프 위협 범주

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-12-attacks.md`
**Target Section:** Section 2 (System-Level Attack Patterns), new subsection
**Priority:** CRITICAL
**29119 Impact:** Addresses EU AI Act compliance requirement (human oversight for high-risk systems)

**Proposed Addition:**

```markdown
### 2.Xbis Human Oversight Failure / Checker-Out-of-the-Loop
### 인간 감독 실패 / 체커 아웃 오브 루프

**Description / 설명:**

Testing whether human oversight mechanisms remain informed and effective during AI system operations, particularly for high-risk autonomous actions. EU AI Act Article 14 requires human oversight for high-risk AI systems; this attack category validates that requirement.

AI 시스템 운영 중, 특히 고위험 자율 행동 시 인간 감독 메커니즘이 정보를 유지하고 효과적으로 유지되는지 테스팅. EU AI Act 제14조는 고위험 AI 시스템에 대한 인간 감독을 요구하며, 이 공격 범주는 해당 요구사항을 검증한다.

**Attack Sub-Categories (per CSA Section 4.2):**

| Sub-Category | Test Objective | Example Scenario |
|--------------|----------------|------------------|
| **Threshold Breach without Alert** | Verify that safety thresholds trigger alerts | Agent performs high-value financial transaction without notifying human approver |
| **Alert Suppression** | Test whether alerts can be suppressed or delayed | Agent modifies notification settings or exploits race conditions to delay alerts |
| **Failsafe Bypass** | Verify failsafe mechanisms activate during unsafe operations | Agent continues operation despite failsafe trigger (e.g., continues after human says "stop") |
| **Communication Channel Degradation** | Test robustness of checker-agent communication | Agent exploits network issues to proceed without oversight |
| **Context Withholding** | Test whether checker receives full context for informed decisions | Agent provides incomplete information to checker, biasing approval |

**Threat Model Implications:**

For agentic AI systems with autonomy levels ≥3 (conditional automation) or deployed in high-risk contexts (per EU AI Act Annex III), threat modeling SHALL include:
- Identification of all human oversight checkpoints
- Analysis of checker-out-of-loop failure modes
- Assessment of fail-safe and fail-secure mechanisms

**Detection Criteria:**
- Autonomous action taken without required human approval
- Alert mechanism failed to trigger despite threshold breach
- Checker received incomplete or misleading context
- Failsafe did not activate during unsafe operation

**Mitigation Recommendations:**
1. Implement redundant notification channels
2. Log all oversight interactions for audit trail
3. Default to fail-safe (stop operation) on communication failure
4. Require explicit approval for threshold-exceeding actions
5. Monitor for alert suppression attempts

**Severity Assessment:**
- **Critical** if bypassing oversight enables irreversible harm (physical safety, financial loss >$X)
- **High** if bypassing oversight enables data breaches or regulatory violations
- **Medium** if bypassing oversight causes reputational or operational impact
```

**29119 Alignment:** This adds a test category that addresses the "test basis" (EU AI Act requirements) and provides test cases for regulatory compliance validation.

**Expected Impact:** New test category addressing regulatory requirements; enhances guideline's compliance value.

---

### Stage 2: Design / 설계 단계

#### Conformance-Critical Integrations / 정합성 필수 통합

| Proposal ID | Source | 29119 Mapping | Integration Method | Checklist Impact |
|-------------|--------|---------------|-------------------|------------------|
| **DESIGN-01** | OWASP Proposal 2 | 29119-4 Clause 5 | Add 4-Phase Evaluation Blueprint | Addresses TC-01 to TC-12 |
| **DESIGN-02** | OWASP Proposal 6 | 29119-3 8.3 | Add Blueprint Phase Checklists | Enhances DC-07 (Test Case Spec) |
| **DESIGN-03** | AISI Proposal 4 | 29119-2 TD1/TD2 | Add Reproducibility Guidance | Addresses non-determinism testing |
| **DESIGN-04** | AISI Proposal 5 | 29119-2 TD2 | Add Confirmation Level Framework | Enhances resource-scaled testing |

#### DESIGN-01: 4-Phase Evaluation Blueprint (OWASP) / 4단계 평가 블루프린트

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 3.3, Activity D-1 (Attack Surface Mapping)
**Priority:** CRITICAL
**29119 Impact:** Addresses TC-01 (Equivalence Partitioning), TC-02 (Boundary Value), TC-05 (Decision Table), TC-06 (State Transition), TC-12 (Requirements-Based)

**Proposed Addition:**

```markdown
**D-1bis. 4-Phase Evaluation Blueprint Overlay / 4단계 평가 블루프린트 오버레이**

Organize attack surface mapping and test case design using OWASP's 4-Phase Evaluation Blueprint (GenAI Red Teaming Guide Figure 4). This blueprint complements our 6-stage lifecycle by answering "what to evaluate" while the 6 stages answer "how to conduct."

OWASP의 4단계 평가 블루프린트를 사용하여 공격 표면 매핑 및 테스트 케이스 설계를 조직화한다. 이 블루프린트는 6단계 라이프사이클이 "어떻게 수행"에 답하는 반면 "무엇을 평가"에 답하여 우리 프로세스를 보완한다.

**Phase 1: Model Evaluation / 모델 평가**

Focus: Testing the AI model itself, independent of deployment context

| Evaluation Area | 29119-4 Techniques | Attack Categories | Test Objectives |
|----------------|-------------------|-------------------|-----------------|
| **Alignment Testing** | Requirements-Based (5.2.12) | MOD-HC, MOD-BF | Verify model follows safety policies and values |
| **Robustness Testing** | Boundary Value (5.2.3), Fuzz (5.2.10) | MOD-JB, MOD-EJ | Test resistance to adversarial inputs, jailbreaks |
| **Bias/Fairness Testing** | Equivalence Partitioning (5.2.1) | MOD-BF | Test for demographic, linguistic, cultural biases |
| **Hallucination Testing** | Metamorphic (5.2.11) | MOD-HA | Test factual accuracy and groundedness |
| **Toxicity Testing** | Scenario (5.2.9) | MOD-HC | Test harmful content generation across contexts |

**Phase 2: Implementation Evaluation / 구현 평가**

Focus: Testing guardrails, controls, and implementation layers around the model

| Evaluation Area | 29119-4 Techniques | Attack Categories | Test Objectives |
|----------------|-------------------|-------------------|-----------------|
| **Guardrail Testing** | Decision Table (5.2.6) | MOD-JB, MOD-PI | Verify safety filters and content moderation |
| **RAG Testing** | Data Flow (5.3.7) | MOD-PI (indirect), SYS-RP | Test retrieval poisoning, injection, data leakage |
| **Prompt Testing** | Syntax (5.2.4) | MOD-PI, MOD-PL | Test system prompt leakage, override |
| **Control Testing** | State Transition (5.2.8) | SYS-TM, SYS-PE | Test access controls, permission enforcement |

**Phase 3: System Evaluation / 시스템 평가**

Focus: Testing the full system including infrastructure, integrations, and supply chain

| Evaluation Area | 29119-4 Techniques | Attack Categories | Test Objectives |
|----------------|-------------------|-------------------|-----------------|
| **Infrastructure Testing** | Requirements-Based (5.2.12) | SYS-RE, SYS-AS | Test deployment security, resource limits |
| **API Security Testing** | Boundary Value (5.2.3) | SYS-TM, SYS-RE | Test API abuse, rate limits, authentication |
| **Supply Chain Testing** | Scenario (5.2.9) | SYS-SC | Test dependency vulnerabilities, model provenance |
| **Integration Testing** | Data Flow (5.3.7) | SYS-TM, SYS-PE | Test plugin security, tool access, data flow |

**Phase 4: Runtime/Agentic Evaluation / 런타임/에이전틱 평가**

Focus: Testing autonomous behavior, human interaction, and business impact

| Evaluation Area | 29119-4 Techniques | Attack Categories | Test Objectives |
|----------------|-------------------|-------------------|-----------------|
| **Human Interaction Testing** | Scenario (5.2.9) | MOD-SD, SYS-SD | Test manipulation, persuasion, trust exploitation |
| **Agent Behavior Testing** | State Transition (5.2.8) | SYS-AD, SYS-MC | Test autonomous drift, goal manipulation |
| **Multi-Agent Testing** | Combinatorial (5.2.4) | SYS-MA, SYS-IC | Test inter-agent attacks, cascading failures |
| **Business Impact Testing** | Risk-Based | All categories | Test real-world harm potential, regulatory compliance |

**Integration with 6-Stage Lifecycle:**

The 4-Phase Blueprint is applied during Stage 2 (Design) to organize test case development, and verified during Stage 4 (Analysis) to measure coverage completeness:

- **Design Stage (Stage 2):** Use the blueprint to ensure test cases cover all 4 evaluation phases proportional to risk tier.
- **Analysis Stage (Stage 4):** Report coverage by phase: "Phase 1 (Model): 85% coverage, Phase 2 (Implementation): 70%, Phase 3 (System): 60%, Phase 4 (Runtime): 40%."

**Deliverable:** Test Design Specification organized by 4-Phase Blueprint, with explicit mapping of test cases to evaluation phases and 29119-4 techniques.
```

**29119 Alignment:** This proposal directly addresses the critical gap in 29119-4 technique adoption (currently 19% conformance). By mapping specific 29119-4 techniques to evaluation phases, it provides actionable guidance for test design.

**Expected Impact:** +10 conformance points (TC-01, TC-02, TC-05, TC-06, TC-10, TC-11, TC-12 from Non-conformant to Partial; TC-07 from Partial to Conformant)

---

#### DESIGN-02: Blueprint Phase Checklists (OWASP) / 블루프린트 단계 체크리스트

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-4-living-annex.md`
**Target Section:** New Annex section after Annex C
**Priority:** CRITICAL
**29119 Impact:** Enhances DC-07 (Test Case Specification), provides practical test design guidance

**Proposed Addition:**

```markdown
## Annex D: Evaluation Phase Checklists
## 부록 D: 평가 단계 체크리스트

This annex provides checklists for each of the 4 evaluation phases (OWASP GenAI Red Teaming Guide). Use these checklists during Stage 2 (Design) to ensure comprehensive test case coverage.

각 4개 평가 단계에 대한 체크리스트를 제공한다. Stage 2(설계) 중 이 체크리스트를 사용하여 포괄적 테스트 케이스 커버리지를 보장한다.

### D.1 Phase 1: Model Evaluation Checklist

| # | Evaluation Item | Attack Category | Minimum Tests (by Risk Tier) | Status |
|---|----------------|-----------------|------------------------------|--------|
| 1.1 | Alignment with safety policies tested across prohibited content categories | MOD-HC | Critical: 20+ cases, High: 10+, Standard: 5+ | [ ] |
| 1.2 | Robustness to encoding-based jailbreaks (Base64, ROT13, Unicode) | MOD-EJ | Critical: 15+, High: 8+, Standard: 3+ | [ ] |
| 1.3 | Robustness to role-play jailbreaks (DAN, AIM, character simulation) | MOD-JB | Critical: 10+, High: 5+, Standard: 2+ | [ ] |
| 1.4 | Demographic bias across protected attributes (gender, race, age, religion) | MOD-BF | Critical: 50+ combinations, High: 20+, Standard: 10+ | [ ] |
| 1.5 | Linguistic bias across supported languages (low-resource languages priority) | MOD-BF | Critical: All supported languages, High: Top 5, Standard: Top 2 | [ ] |
| 1.6 | Hallucination on factual queries (named entities, dates, statistics) | MOD-HA | Critical: 30+, High: 15+, Standard: 5+ | [ ] |
| 1.7 | Toxicity generation across contexts (direct requests, implicit context) | MOD-HC | Critical: 20+, High: 10+, Standard: 5+ | [ ] |
| 1.8 | Multi-modal consistency (if applicable) | MOD-MM | Critical: 20+, High: 10+, Standard: 5+ | [ ] |

### D.2 Phase 2: Implementation Evaluation Checklist

| # | Evaluation Item | Attack Category | Minimum Tests (by Risk Tier) | Status |
|---|----------------|-----------------|------------------------------|--------|
| 2.1 | Input filter bypass (boundary cases, encoding, semantic evasion) | MOD-JB | Critical: 15+, High: 8+, Standard: 3+ | [ ] |
| 2.2 | Output filter effectiveness (harmful content detection, false positives) | MOD-HC | Critical: 20+, High: 10+, Standard: 5+ | [ ] |
| 2.3 | RAG retrieval poisoning via adversarial documents | SYS-RP | Critical: 10+, High: 5+, Standard: 2+ | [ ] |
| 2.4 | Indirect prompt injection via RAG sources | MOD-PI | Critical: 15+, High: 8+, Standard: 3+ | [ ] |
| 2.5 | System prompt leakage via various extraction techniques | MOD-PL | Critical: 10+, High: 5+, Standard: 2+ | [ ] |
| 2.6 | System prompt override via instruction hierarchy attacks | MOD-PI | Critical: 10+, High: 5+, Standard: 2+ | [ ] |
| 2.7 | Access control enforcement (permission boundaries, role separation) | SYS-TM | Critical: 20+, High: 10+, Standard: 5+ | [ ] |

### D.3 Phase 3: System Evaluation Checklist

| # | Evaluation Item | Attack Category | Minimum Tests (by Risk Tier) | Status |
|---|----------------|-----------------|------------------------------|--------|
| 3.1 | API authentication and authorization testing | SYS-TM | Critical: 15+, High: 8+, Standard: 3+ | [ ] |
| 3.2 | Rate limiting and quota exhaustion | SYS-RE | Critical: 10+, High: 5+, Standard: 2+ | [ ] |
| 3.3 | Resource depletion (memory, compute, storage) | SYS-RE | Critical: 10+, High: 5+, Standard: 2+ | [ ] |
| 3.4 | Dependency vulnerability scanning (libraries, models, frameworks) | SYS-SC | Critical: Full scan, High: Critical deps, Standard: Direct deps | [ ] |
| 3.5 | Model provenance verification (SBOM/AIBOM if available) | SYS-SC | Critical: Required, High: Recommended, Standard: Optional | [ ] |
| 3.6 | Plugin/tool security (authorization, input validation, data isolation) | SYS-TM | Critical: All tools, High: High-risk tools, Standard: Sample | [ ] |
| 3.7 | Data flow traceability (untrusted input → safety-critical output) | SYS-RP | Critical: Full trace, High: High-risk paths, Standard: Sample | [ ] |

### D.4 Phase 4: Runtime/Agentic Evaluation Checklist

| # | Evaluation Item | Attack Category | Minimum Tests (by Risk Tier) | Status |
|---|----------------|-----------------|------------------------------|--------|
| 4.1 | Manipulation and persuasion attacks | MOD-SD | Critical: 20+, High: 10+, Standard: 5+ | [ ] |
| 4.2 | Autonomous goal drift over multi-turn conversations | SYS-AD | Critical: 10+ sessions, High: 5+ sessions, Standard: 2+ sessions | [ ] |
| 4.3 | Memory manipulation across sessions | SYS-MC | Critical: 15+, High: 8+, Standard: 3+ | [ ] |
| 4.4 | Tool misuse and privilege escalation | SYS-TM | Critical: All tools, High: High-risk tools, Standard: Sample | [ ] |
| 4.5 | Multi-agent cascading failures | SYS-MA | Critical: Full graph, High: Critical paths, Standard: Sample | [ ] |
| 4.6 | Inter-agent communication exploitation | SYS-IC | Critical: All channels, High: High-risk channels, Standard: Sample | [ ] |
| 4.7 | Human oversight failure (checker-out-of-loop) | SYS-COL (new) | Critical: All oversight points, High: Critical points, Standard: Sample | [ ] |
| 4.8 | MCP/A2A protocol security (if applicable) | SYS-TM | Critical: Full protocol test, High: Critical flows, Standard: Sample | [ ] |

**Usage Guidance:**

1. **During Design (Stage 2):** Use checklists to identify minimum test case requirements based on risk tier.
2. **During Execution (Stage 3):** Track checklist completion status.
3. **During Analysis (Stage 4):** Report checklist coverage as part of Coverage Analysis (A-4).
4. **Risk Tier Scaling:** Adjust minimum test counts based on system risk tier (see Phase 3 Section 8).
```

**29119 Alignment:** These checklists provide concrete test case specifications (29119-3 8.3) and test procedure templates (29119-3 8.4).

**Expected Impact:** +2 conformance points (DC-07 from Conformant to strengthened; DC-08 from Conformant to strengthened)

---

#### DESIGN-03: Reproducibility and Iteration Guidance (AISI) / 재현성 및 반복 가이드

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 9 (Test Design Principles), new subsection
**Priority:** RECOMMENDED
**29119 Impact:** Addresses unique AI testing challenge (non-determinism)

**Proposed Addition:**

```markdown
### 9.Xbis Managing Non-Determinism in AI Red Teaming
### AI 레드팀에서 비결정성 관리

AI systems exhibit non-deterministic behavior due to temperature sampling, model updates, and stochastic generation processes. This creates reproducibility challenges not addressed by traditional testing standards. Per AISI Section 2.5, the following guidance applies:

AI 시스템은 온도 샘플링, 모델 업데이트 및 확률적 생성 프로세스로 인해 비결정적 행동을 나타낸다. 이는 전통적 테스팅 표준이 다루지 않는 재현성 과제를 생성한다.

**Principle: Statistical Significance over Single-Shot Reproducibility**

For non-deterministic systems, reproducibility is defined statistically: "Attack X succeeds in Y% of trials" rather than "Attack X always succeeds."

비결정적 시스템의 경우 재현성은 통계적으로 정의된다: "공격 X가 시도의 Y%에서 성공"이지 "공격 X가 항상 성공"이 아님.

**Operational Guidance:**

| Testing Scenario | Iteration Count | Success Criterion | Rationale |
|-----------------|----------------|-------------------|-----------|
| **Jailbreak testing (manual)** | 5-10 attempts per attack | Success if ≥1 bypass | Single bypass proves vulnerability |
| **Hallucination testing** | 10-20 queries per topic | Success if ≥30% hallucination rate | Statistical significance for safety-critical systems |
| **Bias testing** | 50+ queries per demographic | Success if statistically significant difference (p<0.05) | Requires statistical power |
| **Automated fuzzing (BoN)** | 100-1000 attempts | Success if ASR ≥X% (defined in success criteria) | Exploration at scale |
| **Agent behavior testing** | 5-10 sessions per scenario | Success if ≥1 harmful trajectory | Single failure proves unsafe autonomy |

**Documentation Requirements:**

For each non-deterministic test:
1. **Record iteration count** / 반복 횟수 기록: How many times was the test executed?
2. **Record success rate** / 성공률 기록: What percentage succeeded?
3. **Record environmental conditions** / 환경 조건 기록: Model version, temperature, timestamp, API endpoint.
4. **Acknowledge variability** / 변동성 인정: "This attack succeeded in 3/10 trials. Future trials may differ."

**Temperature and Sampling Parameter Guidance:**

| Test Objective | Recommended Temperature | Rationale |
|----------------|------------------------|-----------|
| Worst-case jailbreak | temperature=1.0-1.5 | Maximize exploration, increase chance of bypass |
| Typical user behavior | temperature=0.7 (default) | Realistic user experience |
| Best-case safety | temperature=0.0 (deterministic) | Most conservative model behavior |

**Version Control:**

Document model version and timestamp for all tests. If model is updated during engagement, re-test critical findings to verify persistence.

**Deliverable:** For each test with non-deterministic results, include success rate, iteration count, and environmental conditions in the Test Execution Log (R-4).
```

**29119 Alignment:** Extends 29119 test execution requirements (29119-2 TE1-TE3) to account for AI-specific non-determinism.

**Expected Impact:** Improves execution rigor; addresses practical gap in 29119 for stochastic systems.

---

#### DESIGN-04: Confirmation Level Framework (AISI) / 확인 수준 프레임워크

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 3.3, Activity D-4 (Evaluation Framework Design)
**Priority:** RECOMMENDED
**29119 Impact:** Enables resource-scaled testing aligned with 29119-2 TP1 (Test Strategy)

**Proposed Addition:**

```markdown
**D-4bis. Confirmation Level Framework / 확인 수준 프레임워크**

Define graduated confirmation levels for test objectives based on available resources and risk tier. Per AISI Section 6.3.3, not all vulnerabilities require full confirmation; resource-constrained engagements can document possibility or evidence instead.

사용 가능한 자원 및 위험 등급에 따라 테스트 목표에 대한 단계별 확인 수준을 정의한다.

| Confirmation Level | Definition | Evidence Required | When Appropriate |
|--------------------|-----------|-------------------|------------------|
| **Level 1: Possibility Indicated** | Theoretical vulnerability identified but not demonstrated | Threat model analysis, attack pattern research, documented precedent | Time-constrained engagements; exploratory scoping |
| **Level 2: Evidence of Likelihood** | Partial exploitation demonstrated or strong evidence collected | Partial bypass, behavior anomaly, attack surface exposure | Resource-limited engagements; Medium/Low risk tiers |
| **Level 3: Confirmed Vulnerability** | Full exploitation demonstrated with reproducible attack | Successful attack execution, harm demonstrated, evidence captured | Critical/High risk tiers; compliance-driven engagements |

**Risk Tier Mapping:**

| Risk Tier | Minimum Confirmation Level | Rationale |
|-----------|---------------------------|-----------|
| **Critical** | Level 3 (Confirmed) for all Critical/High findings | Full verification required for safety-critical systems |
| **High** | Level 3 for Critical findings; Level 2 acceptable for High/Medium findings | Balance thoroughness with resource efficiency |
| **Standard** | Level 2 acceptable for most findings; Level 1 for exploratory categories | Focus resources on high-likelihood attacks |

**Transparency Requirement:**

All findings SHALL be labeled with their confirmation level in the final report. Example:

"Finding F-001: Jailbreak via role-play (Confirmation Level 3: Confirmed with 7/10 success rate)"
"Finding F-015: Potential supply chain vulnerability in dependency X (Confirmation Level 1: Possibility indicated based on CVE-2024-XXXX)"

This transparency enables stakeholders to prioritize remediation based on confirmed vs. suspected vulnerabilities.

**Deliverable:** Evaluation Framework Design (D-4) includes confirmation level targets for each attack category based on risk tier.
```

**29119 Alignment:** This aligns with 29119-2 TP1 (Test Strategy) which requires test planning to account for resource constraints and risk-based prioritization.

**Expected Impact:** Enhances flexibility; improves transparency; supports resource-constrained organizations.

---

### Stage 3: Execution / 실행 단계

No PDF proposals directly target execution activities. The proposals in Planning and Design stages provide the structure for execution.

---

### Stage 4: Analysis / 분석 단계

#### Conformance-Critical Integrations / 정합성 필수 통합

| Proposal ID | Source | 29119 Mapping | Integration Method | Checklist Impact |
|-------------|--------|---------------|-------------------|------------------|
| **ANALYSIS-01** | OWASP Proposal 4 | 29119-4 Clause 6 | Add Quantitative Metrics Framework | Addresses TA-01, TC-16 |
| **ANALYSIS-02** | CSA Proposal 5 | 29119-2 analysis | Add Blast Radius Analysis | Enhances attack chain analysis |

#### ANALYSIS-01: Quantitative Metrics Framework (OWASP) / 정량적 메트릭 프레임워크

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 5.3, Activity A-4 (Coverage Analysis)
**Priority:** CRITICAL
**29119 Impact:** Addresses TA-01 (Test Coverage definition), TC-16 (Coverage Measurement)

**Proposed Addition:**

```markdown
**A-4bis. Quantitative Coverage Metrics / 정량적 커버리지 메트릭**

In addition to qualitative coverage assessment (Annex C), calculate quantitative coverage metrics per OWASP Appendix A and 29119-4 Clause 6. These metrics enable objective measurement of test completeness and comparability across engagements.

정성적 커버리지 평가(Annex C) 외에도 OWASP Appendix A 및 29119-4 Clause 6에 따라 정량적 커버리지 메트릭을 계산한다.

**Core Coverage Metrics:**

| Metric / 메트릭 | Formula / 공식 | Interpretation / 해석 |
|---|---|---|
| **Attack Category Coverage** | (Tested categories / Total in-scope categories) × 100% | % of in-scope attack categories exercised |
| **4-Phase Blueprint Coverage** | (Tested evaluation areas / Total in-scope areas) × 100% | % of OWASP 4-phase blueprint covered |
| **Threat Actor Coverage** | (Emulated actors / Identified actors in threat model) × 100% | % of threat actors from threat model emulated |
| **Attack Surface Coverage** | (Tested surfaces / Total in-scope surfaces) × 100% | % of identified attack surfaces tested |
| **Risk Tier Test Depth** | (Executed tests / Minimum required per tier) × 100% | Whether minimum depth requirement met |
| **Traceability Completeness** | (Findings with full trace / Total findings) × 100% | % of findings traceable to threat model |

**Performance Metrics (per OWASP Appendix A):**

| Metric / 메트릭 | Formula / 공식 | Interpretation / 해석 |
|---|---|---|
| **Attack Success Rate (ASR)** | (Successful attacks / Total attack attempts) × 100% | Overall bypass rate across all tests |
| **Category-Specific ASR** | (Successful attacks in category X / Total attempts in category X) × 100% | Bypass rate per attack category |
| **Time-to-First-Bypass (TTFB)** | Duration from test start to first successful bypass | Attacker effort estimation |
| **Defense Efficacy Rate** | (Blocked attacks / Total attacks) × 100% | Overall defense effectiveness |
| **Layer-Specific Efficacy** | (Blocked by layer X / Total attacks) × 100% | Defense layer effectiveness (pre-filter, post-filter, etc.) |

**Reporting Requirements:**

Include the following metrics table in the final report (R-1):

```
| Metric | Value | Target (if applicable) | Status |
|--------|-------|----------------------|--------|
| Attack Category Coverage | 85% | ≥80% for High-risk | ✓ Met |
| 4-Phase Blueprint Coverage | 75% | ≥70% for High-risk | ✓ Met |
| Threat Actor Coverage | 60% | ≥50% for High-risk | ✓ Met |
| Attack Success Rate (ASR) | 12% | N/A (informational) | - |
| Model-Level ASR | 18% | N/A | - |
| System-Level ASR | 8% | N/A | - |
| Defense Efficacy (Overall) | 88% | N/A | - |
```

**Important Note:**

These metrics are **informational indicators**, not pass/fail criteria. Per the guideline's governing premise, no AI system can be certified as "safe" based on numerical thresholds. Metrics provide transparency about test scope and findings distribution, but do not imply safety guarantees.

이 메트릭은 통과/실패 기준이 아닌 **정보 지표**이다. 가이드라인의 지배 전제에 따라 수치 임계값을 기반으로 AI 시스템을 "안전"하다고 인증할 수 없다.

**Deliverable:** Quantitative Metrics Report integrated into Analysis stage outputs, included in final report appendix.
```

**29119 Alignment:** This directly implements 29119-4 Clause 6 (Coverage Measurement) and addresses the critical gap in test coverage formalization (TA-01, TC-16).

**Expected Impact:** +3 conformance points (TA-01 from Non-conformant to Conformant; TC-16 from Partial to Conformant; PC-10 from Partial to Conformant)

---

#### ANALYSIS-02: Blast Radius and Impact Chain Analysis (CSA) / 폭발 반경 및 영향 체인 분석

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 5.3, Activity A-3 (Attack Chain Analysis)
**Priority:** RECOMMENDED
**29119 Impact:** Enhances analysis depth for multi-agent systems

**Proposed Addition:**

```markdown
**A-3bis. Blast Radius and Cascading Failure Analysis / 폭발 반경 및 연쇄 실패 분석**

For agentic AI systems and multi-agent deployments, extend attack chain analysis to include blast radius estimation and cascading failure simulation per CSA Section 4.6.

에이전틱 AI 시스템 및 다중 에이전트 배포의 경우 CSA Section 4.6에 따라 공격 체인 분석을 폭발 반경 추정 및 연쇄 실패 시뮬레이션으로 확장한다.

**Blast Radius Definition:**

The extent of harm that can propagate from a single compromised agent or system component, measured across multiple dimensions:

단일 손상된 에이전트 또는 시스템 구성 요소에서 전파될 수 있는 피해 범위, 여러 차원에서 측정:

| Dimension / 차원 | Measurement / 측정 |
|---|---|
| **Agent Count** | How many agents can be affected by compromising one agent? |
| **User Impact** | How many users' data or interactions are affected? |
| **Data Scope** | How much sensitive data can be accessed or exfiltrated? |
| **System Downtime** | Can a single failure cascade to system-wide outage? |
| **Financial Impact** | What is the maximum financial harm from one compromised agent? |
| **Physical Safety** | Can a single failure lead to physical harm (for agents controlling IoT/robotics)? |

**Cascading Failure Simulation:**

For each Critical/High finding in multi-agent systems, simulate cascading failure scenarios:

다중 에이전트 시스템의 각 Critical/High 발견사항에 대해 연쇄 실패 시나리오를 시뮬레이션한다:

1. **Identify trust relationships** / 신뢰 관계 식별: Which agents trust the compromised agent's outputs?
2. **Map data flow paths** / 데이터 흐름 경로 매핑: Where does compromised data propagate?
3. **Identify single points of failure** / 단일 실패 지점 식별: Which agents have no redundancy or validation?
4. **Simulate cascade** / 연쇄 시뮬레이션: If Agent A is compromised, what sequence of failures can occur?
5. **Assess containment** / 격리 평가: Do containment mechanisms (circuit breakers, sandboxing) limit blast radius?

**Example Cascade Chain:**

```
Agent A (Customer Service) compromised via jailbreak
  → Passes poisoned context to Agent B (Knowledge Base)
    → Agent B updates shared memory with malicious content
      → Agent C (Recommendation) uses poisoned memory
        → Agent C makes harmful recommendations to 10,000 users
          → Financial loss: $X, Reputational damage: High
```

**Blast Radius Report Template:**

For each Critical/High finding, include:

```markdown
**Blast Radius Analysis for Finding F-XXX:**

- **Direct Impact:** Agent X compromised, immediate harm: [description]
- **Cascade Potential:** Can propagate to N agents via trust relationships
- **User Impact:** Affects up to Y users through [pathway]
- **Containment Assessment:** [Circuit breakers | Sandboxing | Validation] [Effective | Ineffective | Partial]
- **Estimated Blast Radius:** [Limited to single agent | Contained to agent group | System-wide]
- **Mitigation Priority:** [Immediate | High | Medium] based on cascade potential
```

**Deliverable:** Blast Radius Analysis for all Critical/High findings in multi-agent systems, included in Attack Chain Analysis (A-3) outputs.
```

**29119 Alignment:** Enhances analysis rigor for complex systems, extending 29119-2 analysis requirements to multi-component AI systems.

**Expected Impact:** Improves analysis depth; critical for agentic AI safety assessment.

---

### Stage 5: Reporting / 보고 단계

#### Conformance-Critical Integrations / 정합성 필수 통합

| Proposal ID | Source | 29119 Mapping | Integration Method | Checklist Impact |
|-------------|--------|---------------|-------------------|------------------|
| **REPORT-01** | OWASP Proposal 4 | 29119-3 7.4 | Add Metrics to Report Template | Enhances DC-05 |
| **REPORT-02** | Multiple | 29119-3 7.4 | Add Missing Report Elements | Addresses DG-06 |

#### REPORT-01: Metrics in Report Template / 보고서 템플릿에 메트릭 추가

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 10 (Report Structure Template)
**Priority:** CRITICAL
**29119 Impact:** Addresses DC-05 (Test Completion Report) missing elements

**Proposed Addition:**

Add new section to report template:

```markdown
### 10.Xbis Coverage and Performance Metrics / 커버리지 및 성능 메트릭

This section provides quantitative metrics for test scope and performance, per OWASP Appendix A and 29119-4 Clause 6.

**Coverage Metrics:**

| Metric | Value | Interpretation |
|--------|-------|----------------|
| Attack Category Coverage | X% | Y of Z in-scope categories tested |
| 4-Phase Blueprint Coverage | X% | Y of Z evaluation areas tested |
| Threat Actor Coverage | X% | Y of Z threat actors emulated |
| Risk Tier Test Depth | X% | Executed N tests vs. M minimum required |

**Performance Metrics:**

| Metric | Value | Interpretation |
|--------|-------|----------------|
| Overall Attack Success Rate (ASR) | X% | Y successful attacks of Z total attempts |
| Model-Level ASR | X% | - |
| System-Level ASR | X% | - |
| Socio-Technical ASR | X% | - |
| Defense Efficacy Rate | X% | Overall defense effectiveness |

**Traceability Metrics:**

| Metric | Value |
|--------|-------|
| Findings with full traceability to threat model | X% |
| Findings with remediation recommendations | X% |

**Important Note:**

These metrics are informational indicators that provide transparency about test scope and findings distribution. They do NOT represent pass/fail criteria or safety certification. Per the guideline's governing premise, no numerical threshold indicates that an AI system is "safe."

이 메트릭은 테스트 범위 및 발견사항 분포에 대한 투명성을 제공하는 정보 지표이다. 통과/실패 기준이나 안전 인증을 나타내지 않는다.
```

**29119 Alignment:** Addresses 29119-3 7.4 requirement for test completion reports to include coverage metrics and test statistics.

**Expected Impact:** +1 conformance point (DC-05 from Partial to Conformant)

---

#### REPORT-02: Missing Report Elements / 누락된 보고서 요소

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** Section 10 (Report Structure Template)
**Priority:** CRITICAL
**29119 Impact:** Addresses DG-06 (Test Completion Report missing elements)

**Proposed Addition:**

Add the following subsections to Section 10:

```markdown
### 10.Xter Deviations from Plan / 계획 편차

This section documents all deviations from the original Red Team Engagement Plan (per 29119-3 7.4 requirements).

원래 레드팀 참여 계획과의 모든 편차를 문서화한다.

**Deviations Table:**

| Deviation ID | Type | Description | Rationale | Approval | Impact |
|--------------|------|-------------|-----------|----------|--------|
| DEV-001 | Moderate | Extended execution by 4 days | Critical finding required deeper investigation | RTL + SO | Schedule delay, no scope change |
| DEV-002 | Minor | Replaced tool X with tool Y | Tool X license issue | RTL | No impact on results |

**Scope Changes:**

[Document any changes to scope, attack categories, or test objectives that occurred during the engagement]

**Schedule Changes:**

[Document delays, accelerations, or phase re-ordering]

### 10.Yquinquies Approval and Sign-Off / 승인 및 서명

This section formalizes stakeholder acceptance of the red team report (per 29119-3 7.4 approval requirements).

레드팀 보고서에 대한 이해관계자 수용을 공식화한다.

**Report Approval:**

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Red Team Lead | [Name] | ___________ | YYYY-MM-DD |
| System Owner | [Name] | ___________ | YYYY-MM-DD |
| Project Sponsor | [Name] | ___________ | YYYY-MM-DD |
| Ethics Advisor (if applicable) | [Name] | ___________ | YYYY-MM-DD |

**Acceptance Statement:**

By signing above, the System Owner acknowledges receipt of this Red Team Report, understands its findings and limitations, and commits to reviewing the remediation recommendations. This signature does NOT constitute certification that the AI system is safe, secure, or compliant with any standard.

**Residual Risk Acceptance:**

The Project Sponsor acknowledges that:
1. This assessment covered [X%] of identified attack categories, leaving [Y%] untested.
2. New vulnerabilities may exist beyond those discovered.
3. Remediated vulnerabilities may re-emerge with model updates or system changes.
4. Continuous monitoring and periodic re-assessment are recommended.

### 10.Zsexies Residual Risk Summary / 잔여 위험 요약

This section summarizes known residual risks after the engagement (per 29119-3 7.4 completion requirements).

참여 후 알려진 잔여 위험을 요약한다.

**Unmitigated Findings:**

List all findings that remain unmitigated at report delivery with rationale for non-remediation:

| Finding ID | Severity | Reason for Non-Mitigation | Residual Risk Assessment |
|------------|----------|---------------------------|-------------------------|
| F-015 | Medium | Resource constraints | Acceptable for Standard risk tier |
| F-027 | Low | Requires architecture change | Deferred to next major release |

**Untested Attack Categories:**

List attack categories that were in-scope but not tested due to resource, time, or access constraints:

| Category | Reason Not Tested | Recommended Future Action |
|----------|------------------|--------------------------|
| SYS-MM | Multimodal capability not yet deployed | Re-assess when multimodal feature launches |
| MOD-TP | Training data not accessible | Conduct white-box assessment if access granted |

**Known Limitations:**

[Reiterate key limitations from limitations section, emphasizing what this engagement did NOT verify]
```

**29119 Alignment:** These additions complete the test completion report requirements from 29119-3 7.4, including deviations, approval workflow, and residual risk documentation.

**Expected Impact:** +1 conformance point (DG-06 resolved, DC-05 from Partial to Conformant)

---

### Stage 6: Follow-up / 후속조치 단계

No PDF proposals directly target follow-up activities. The existing feedback loop (F-3, F-4) already addresses 29119-2 OT3 (Process Improvement).

---

## New Sections Needed / 필요한 새 섹션

### 1. Organizational Red Team Policy Template (OWASP Mature AI Red Teaming)

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
**Target Section:** New Section 11.8 (after 11.7 Maturity Progression)
**Priority:** HIGH
**29119 Impact:** Addresses PC-01, PC-02, DC-01, DC-02, DG-01, DG-02

**Rationale:** 29119-2 OT1 requires an organizational test policy and standard practices document. Our guideline currently lacks templates for these organization-level documents.

**Proposed Section (condensed):**

```markdown
### 11.8 Organizational Red Team Policy Template / 조직적 레드팀 정책 템플릿

Organizations implementing continuous red teaming SHALL establish a documented Red Team Policy (per 29119-3 6.2). This template provides the minimum elements required for 29119 conformance.

**Required Policy Elements:**

| Element | Description | Example Content |
|---------|-------------|----------------|
| **Program Objectives** | Strategic goals of the red team program | "Systematically identify AI safety vulnerabilities before deployment" |
| **Scope Boundaries** | Which systems require red teaming and at what frequency | "All customer-facing AI systems annually; high-risk systems quarterly" |
| **Ethical Principles** | Ethical constraints on testing activities | "No testing on vulnerable populations without consent" |
| **Roles & Responsibilities** | Organizational roles (reference Phase 0 Section 3.4) | RTL, RTO, SO, PS, EA, LC, DE |
| **Process Definition** | Reference to the 6-stage lifecycle process | "All engagements follow Phase 3 6-stage process" |
| **Escalation Procedures** | How critical findings are escalated | "Critical findings reported to CISO within 4 hours" |
| **Improvement Process** | How the policy and practices are updated | "Annual policy review; quarterly practice updates" |
| **Compliance Requirements** | Applicable regulations (EU AI Act, sector-specific) | "Compliance with EU AI Act Article 15 (testing requirements)" |

### 11.9 Standard Operating Procedures Template / 표준 운영 절차 템플릿

Organizations SHALL document cross-engagement standard practices (per 29119-3 6.3):

| SOP Element | Description |
|-------------|-------------|
| **Engagement Initiation Workflow** | How engagements are requested, approved, and initiated |
| **Team Composition Standards** | Minimum expertise and diversity requirements per risk tier |
| **Tool Qualification Criteria** | How testing tools are evaluated and approved |
| **Evidence Handling Procedures** | How sensitive findings and artifacts are stored, transmitted, and destroyed |
| **Confidentiality Requirements** | Data classification and handling for red team materials |
| **Quality Assurance** | Peer review requirements for findings and reports |
| **Training Requirements** | Minimum training and certification for red team members |
```

**Expected Impact:** +4 conformance points (PC-01 from Partial to Conformant, PC-02 from Non-conformant to Conformant, DC-01 from Non-conformant to Conformant, DC-02 from Non-conformant to Conformant)

---

### 2. RAG Triad Evaluation Framework (OWASP)

**Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-4-living-annex.md`
**Target Section:** New subsection in Annex A or new Annex
**Priority:** RECOMMENDED
**29119 Impact:** Extends test case library for RAG systems

**Proposed Section (condensed):**

```markdown
## Annex Ebis: RAG System Evaluation Framework
## 부록 Ebis: RAG 시스템 평가 프레임워크

This annex provides a structured evaluation framework for Retrieval-Augmented Generation (RAG) systems using OWASP's RAG Triad: Factuality, Relevance, Groundedness.

### RAG Triad Criteria / RAG 트라이어드 기준

| Criterion | Definition | Test Method |
|-----------|-----------|-------------|
| **Factuality** | Is the response factually correct? | Compare response against ground truth; identify hallucinations |
| **Relevance** | Is the retrieved context relevant to the query? | Analyze retrieval quality; test with adversarial queries |
| **Groundedness** | Is the response grounded in retrieved context? | Verify response uses only retrieved information; test for model-generated hallucinations |

### Test Cases for RAG Triad

**Factuality Testing:**
- Queries with known ground truth answers
- Adversarial queries designed to elicit hallucinations
- Out-of-distribution queries beyond retrieval corpus

**Relevance Testing:**
- Queries designed to retrieve irrelevant documents
- Semantic similarity attacks (queries that match keywords but not intent)
- Adversarial document injection into corpus

**Groundedness Testing:**
- Queries where model knowledge conflicts with retrieved context
- Verification that responses cite or reference retrieved documents
- Testing for "hallucinated citations" (fake references)
```

**Expected Impact:** Enhances RAG testing guidance; supports growing RAG deployment pattern.

---

## Conflicts and Resolutions / 충돌 및 해결

### Conflict 1: "Test Technique" vs "Attack Technique" Terminology

**Issue:** 29119-1 defines "test technique" as a method for designing tests (e.g., equivalence partitioning). Our guideline uses "attack technique" to mean specific adversarial methods (e.g., jailbreak). This creates naming collision.

**Resolution:** Add disambiguation note to Phase 0 (see DESIGN-01 above). Consistently use:
- "Test design technique" for 29119-4 methods
- "Attack technique" for adversarial methods

**Impact:** Resolves TM-05 (from Non-conformant to Conformant)

---

### Conflict 2: Qualitative vs. Quantitative Coverage

**Issue:** Our guideline currently uses qualitative coverage assessment (Full/Partial/None in Annex C). 29119-4 Clause 6 requires quantitative coverage formulas.

**Resolution:** Add quantitative metrics (ANALYSIS-01) while maintaining qualitative assessment for practitioner usability. Both approaches coexist:
- Quantitative for formal 29119 compliance and cross-engagement comparability
- Qualitative for rapid assessment and practitioner communication

**Impact:** Resolves TC-16 (from Partial to Conformant), TA-01 (from Non-conformant to Conformant)

---

### Conflict 3: "Incident" vs "Finding/Vulnerability"

**Issue:** 29119-1 defines "incident" broadly as any unexpected event. Our guideline uses "finding" for confirmed vulnerabilities. This is a scope difference, not a true conflict.

**Resolution:** Add mapping note to Phase 0: "29119 incident encompasses Phase 0 findings (confirmed vulnerabilities) plus unexpected behaviors that are not vulnerabilities."

**Impact:** Resolves TM-02 (from Partial to Conformant)

---

## Priority Ranking / 우선순위 순위

### Phase 1 (Critical): Items 1-5 [estimated +18% conformance]

| Rank | Proposal ID | Description | 29119 Impact | Estimated Improvement |
|------|-------------|-------------|--------------|----------------------|
| 1 | PLAN-01 | Defense Mechanism Inventory (AISI) | PC-06 | +1 point |
| 2 | PLAN-02 | Usage Pattern Analysis (AISI) | PC-09, TA-05 | +2 points |
| 3 | DESIGN-01 | 4-Phase Evaluation Blueprint (OWASP) | TC-01 to TC-12 | +10 points |
| 4 | ANALYSIS-01 | Quantitative Metrics Framework (OWASP) | TA-01, TC-16, PC-10 | +3 points |
| 5 | New Section 11.8/11.9 | Organizational Policy Templates (OWASP) | PC-01, PC-02, DC-01, DC-02 | +4 points |

**Total Phase 1 Impact:** +20 conformance points (33% → 53% overall conformance)

---

### Phase 2 (High): Items 6-10 [estimated +5% conformance]

| Rank | Proposal ID | Description | 29119 Impact | Estimated Improvement |
|------|-------------|-------------|--------------|----------------------|
| 6 | PLAN-04 | Checker-Out-of-Loop Threat Category (CSA) | New test category | Regulatory compliance |
| 7 | DESIGN-02 | Blueprint Phase Checklists (OWASP) | DC-07, DC-08 | +2 points (strengthening) |
| 8 | REPORT-01 | Metrics in Report Template (OWASP) | DC-05 | +1 point |
| 9 | REPORT-02 | Missing Report Elements (Multiple) | DG-06, DC-05 | +1 point |
| 10 | PLAN-03 | Model Reconnaissance Activity (OWASP) | TC-15 | +1 point (strengthening) |

**Total Phase 2 Impact:** +5 conformance points (53% → 58% overall conformance)

---

### Phase 3 (Medium): Items 11-15 [no direct conformance impact, enhances rigor]

| Rank | Proposal ID | Description | Value | Priority |
|------|-------------|-------------|-------|----------|
| 11 | DESIGN-03 | Reproducibility Guidance (AISI) | Addresses non-determinism | Recommended |
| 12 | DESIGN-04 | Confirmation Level Framework (AISI) | Resource-scaled testing | Recommended |
| 13 | ANALYSIS-02 | Blast Radius Analysis (CSA) | Agentic AI analysis depth | Recommended |
| 14 | New Annex Ebis | RAG Triad Evaluation Framework (OWASP) | RAG testing guidance | Recommended |
| 15 | Remaining CSA Proposals | Agentic AI attack patterns | Deepens agentic coverage | Reference |

---

## Implementation Roadmap / 구현 로드맵

### Phase 1 (Critical): Weeks 1-3

**Goal:** Achieve +18% conformance improvement (33% → 51%)

**Week 1:**
- DESIGN-01: 4-Phase Evaluation Blueprint integration
- ANALYSIS-01: Quantitative Metrics Framework integration
- Update Phase 0 with terminology clarifications

**Week 2:**
- PLAN-01: Defense Mechanism Inventory addition
- PLAN-02: Usage Pattern Analysis addition
- New Section 11.8/11.9: Organizational Policy Templates

**Week 3:**
- Cross-reference verification
- Conformance checklist re-run
- Internal review

**Deliverables:**
- Updated phase-3-normative-core.md (Sections 2, 3, 5, 10, 11)
- Updated phase-0-terminology.md
- Updated sw-testing-checklist.md

---

### Phase 2 (High): Weeks 4-5

**Goal:** Achieve +5% conformance improvement (51% → 56%)

**Week 4:**
- PLAN-04: Checker-Out-of-Loop integration into Phase 1-2
- DESIGN-02: Blueprint Phase Checklists (Annex D)
- REPORT-01: Metrics in Report Template

**Week 5:**
- REPORT-02: Missing Report Elements
- PLAN-03: Model Reconnaissance Activity
- Conformance checklist re-run

**Deliverables:**
- Updated phase-12-attacks.md
- Updated phase-4-living-annex.md (new Annex D)
- Updated phase-3-normative-core.md (Section 10)

---

### Phase 3 (Medium): Weeks 6-7

**Goal:** Enhance rigor without direct conformance target

**Week 6:**
- DESIGN-03: Reproducibility Guidance
- DESIGN-04: Confirmation Level Framework
- ANALYSIS-02: Blast Radius Analysis

**Week 7:**
- New Annex Ebis: RAG Triad
- Remaining CSA agentic patterns
- Final conformance verification

**Deliverables:**
- Updated phase-3-normative-core.md (Sections 3, 5, 9)
- Updated phase-4-living-annex.md (new Annex Ebis)
- Final sw-testing-checklist.md update

---

## Expected Conformance Impact Summary / 예상 정합성 영향 요약

### Before Integration / 통합 전

| Category | Conformant | Partial | Non-conformant | Rate |
|----------|-----------|---------|----------------|------|
| Process | 9 | 6 | 4 | 47% |
| Documentation | 7 | 4 | 3 | 50% |
| Test Techniques | 3 | 3 | 10 | 19% |
| Terminology | 2 | 5 | 7 | 14% |
| **Overall** | **21** | **18** | **24** | **33%** |

### After Phase 1 Integration / Phase 1 통합 후

| Category | Conformant | Partial | Non-conformant | Rate |
|----------|-----------|---------|----------------|------|
| Process | 13 (+4) | 6 | 0 (-4) | 68% |
| Documentation | 11 (+4) | 3 (-1) | 0 (-3) | 79% |
| Test Techniques | 10 (+7) | 6 (+3) | 0 (-10) | 62% |
| Terminology | 5 (+3) | 5 | 4 (-3) | 36% |
| **Overall** | **39 (+18)** | **20 (+2)** | **4 (-20)** | **62%** |

### After Phase 2 Integration / Phase 2 통합 후

| Category | Conformant | Partial | Non-conformant | Rate |
|----------|-----------|---------|----------------|------|
| Process | 13 | 6 | 0 | 68% |
| Documentation | 13 (+2) | 1 (-2) | 0 | 93% |
| Test Techniques | 11 (+1) | 5 (-1) | 0 | 69% |
| Terminology | 6 (+1) | 5 | 3 (-1) | 43% |
| **Overall** | **43 (+4)** | **17 (-3)** | **3 (-1)** | **68%** |

### After Phase 3 Integration / Phase 3 통합 후

| Category | Conformant | Partial | Non-conformant | Rate |
|----------|-----------|---------|----------------|------|
| Process | 13 | 6 | 0 | 68% |
| Documentation | 13 | 1 | 0 | 93% |
| Test Techniques | 11 | 5 | 0 | 69% |
| Terminology | 6 | 5 | 3 | 43% |
| **Overall** | **43** | **17** | **3** | **68%** |

**Final Conformance Target:** 68% (from 33% baseline)
**Improvement:** +35 percentage points

---

## Recommended Action for Team Lead / 팀 리드를 위한 권고 조치

### Immediate Actions (This Week)

1. **Review and Approve Priorities:** Review the Phase 1 priority ranking and approve for implementation.

2. **Assign Implementation Owner:** Designate an agent or team member to implement Phase 1 proposals (Weeks 1-3).

3. **Stakeholder Communication:** Brief project stakeholders on expected conformance improvement (33% → 68%).

### Short-Term Actions (Weeks 1-5)

4. **Execute Phase 1 Implementation:** Implement proposals PLAN-01, PLAN-02, DESIGN-01, ANALYSIS-01, and New Section 11.8/11.9.

5. **Conformance Verification:** Re-run sw-testing-checklist.md after each week to verify conformance improvements.

6. **Execute Phase 2 Implementation:** Implement proposals PLAN-04, DESIGN-02, REPORT-01, REPORT-02, PLAN-03.

### Medium-Term Actions (Weeks 6-7)

7. **Execute Phase 3 Implementation:** Implement proposals DESIGN-03, DESIGN-04, ANALYSIS-02, RAG Triad, and remaining CSA patterns.

8. **Final Verification:** Conduct full conformance audit against updated guideline.

9. **External Review:** Consider external ISO/IEC 29119 expert review to validate conformance improvements.

### Continuous Actions

10. **Monitor 29119 Updates:** Assign standards liaison to monitor 29119 revisions (per OR-10 in checklist).

11. **Quarterly Conformance Review:** Establish quarterly review of sw-testing-checklist.md to maintain conformance as guideline evolves.

---

## Conclusion / 결론

This integration proposal provides a clear roadmap to improve AI Red Team International Guideline's ISO/IEC 29119 conformance from **33% to 68%** by integrating 19 normative requirements from three reference documents (AISI, OWASP, CSA).

**Key Achievements:**
- **Critical 29119 gaps addressed:** Entry/exit criteria, test coverage metrics, test design techniques, organizational policy templates
- **Regulatory alignment enhanced:** EU AI Act compliance through checker-out-of-loop testing
- **Agentic AI coverage deepened:** CSA's 12 threat categories, blast radius analysis, goal manipulation patterns
- **Practical usability maintained:** Blueprint checklists, reproducibility guidance, confirmation level framework

**Next Step:** Team lead review and approval to proceed with Phase 1 implementation (Weeks 1-3).

---

**End of Proposal**

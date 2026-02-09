# Normative Language Analysis: OWASP GenAI Red Teaming Guide v1.0
# 규범적 언어 분석: OWASP 생성형 AI 레드팀 가이드 v1.0

**Analysis Date / 분석일:** 2026-02-10
**Source Document:** GenAI Red Teaming Guide: A Practical Approach to Evaluating AI Vulnerabilities (Version 1.0)
**Publisher:** OWASP Top 10 for LLMs and Generative AI Project
**Release Date:** January 23, 2025
**Analyzed by:** Reference Document Agent

---

## Executive Summary / 요약

This normative analysis extracts requirements and recommendations from the OWASP GenAI Red Teaming Guide that have implications for our AI Red Team International Guideline. The OWASP guide provides a comprehensive evaluation framework with the 4-phase blueprint structure and mature organizational integration guidance.

**Key Findings:**
- **6 normative recommendations** identified (3 Essential, 3 Recommended)
- **Primary strength:** 4-phase evaluation blueprint (Model → Implementation → System → Runtime) and metrics framework
- **Integration priority:** Essential for Phase 3 (evaluation structure) and Phase 4 (metrics, checklists)

---

## Table of Contents / 목차

1. [Normative Statements Summary](#1-normative-statements-summary--규범적-진술-요약)
2. [Detailed Normative Analysis](#2-detailed-normative-analysis--상세-규범적-분석)
3. [Gap Analysis](#3-gap-analysis--격차-분석)
4. [Integration Recommendations](#4-integration-recommendations--통합-권장사항)
5. [Priority Matrix](#5-priority-matrix--우선순위-매트릭스)

---

## 1. Normative Statements Summary / 규범적 진술 요약

| ID | Normative Statement | Type | Priority | Gap Status |
|----|---------------------|------|----------|------------|
| OWASP-N01 | The red team SHALL structure evaluation across four phases: Model Evaluation, Implementation Evaluation, System Evaluation, and Runtime/Agentic Evaluation | Mandatory | Critical | ❌ Missing |
| OWASP-N02 | The red team SHALL incorporate quantitative metrics including attack success rate, coverage metrics, time-to-bypass, and defense efficacy metrics in reporting | Mandatory | Critical | ❌ Missing |
| OWASP-N03 | The red team SHALL provide phase-specific evaluation checklists covering model-level, implementation-level, system-level, and runtime evaluation tasks | Mandatory | High | ❌ Missing |
| OWASP-N04 | The red team SHOULD evaluate RAG systems using the RAG Triad framework: Factuality, Relevance, and Groundedness | Recommended | Medium | ❌ Missing |
| OWASP-N05 | The red team SHOULD conduct Model Reconnaissance as a formal activity to investigate model architecture, capabilities, and behavior before designing attack scenarios | Recommended | Medium | 🔶 Partial |
| OWASP-N06 | The red team MAY extend the evaluation framework to include a "Trust" dimension covering reliability, consistency, and stakeholder confidence alongside Security and Safety | Optional | Low | ❌ Missing |

**Legend:**
- ✅ Fully reflected in current guideline
- 🔶 Partially reflected
- ❌ Not reflected

---

## 2. Detailed Normative Analysis / 상세 규범적 분석

### OWASP-N01: Four-Phase Evaluation Blueprint

**Normative Statement:**
> The red team SHALL structure evaluation activities across four phases to ensure comprehensive coverage of the AI system stack:
> - **Phase 1: Model Evaluation** - Alignment, robustness, bias, toxicity testing
> - **Phase 2: Implementation Evaluation** - Guardrails, RAG, control mechanisms, prompt engineering
> - **Phase 3: System Evaluation** - Infrastructure, integration, supply chain, access control
> - **Phase 4: Runtime/Agentic Evaluation** - Human interaction, agent behavior, business impact, production monitoring

**Source Reference:**
- OWASP Guide Section 6 (Blueprint for GenAI Red Teaming)
- OWASP Guide Figure 4 (4-Phase Blueprint Diagram)
- OWASP Guide Section 5 (GenAI Red Teaming Strategy, Step 6-7)

**Rationale:**
The 4-phase blueprint provides a structural organizing principle for "what to evaluate" that complements process-oriented "how to conduct" guidance:
- **Addresses different attack surfaces:** Model vs application vs infrastructure vs runtime
- **Enables progressive testing:** Early-stage model evaluation informs later system/runtime testing
- **Supports role specialization:** Different expertise for each phase (ML researchers, AppSec, infrastructure security, business analysts)
- **Aligns with AI system lifecycle:** Maps to development, deployment, and operations stages

**Classification:** Mandatory (SHALL)

**Priority:** Critical

**Gap Status:** ❌ Missing
- Our guideline has 6-stage process lifecycle (Planning → Design → Execution → Analysis → Reporting → Follow-up) which answers "how to conduct"
- We lack a structured "what to evaluate" framework organized by system layer
- The 4-phase blueprint is complementary, not redundant, to our process stages

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- Stage 2 (Design), Activity D-1 (Attack Surface Mapping)
- Action: Incorporate 4-phase blueprint as organizing framework for attack surface analysis

**Impact Assessment:**
- **Critical value:** Fills major structural gap in "what to test" guidance
- **Medium disruption:** Adds evaluation framework within existing process stages
- **Synergy:** Combines OWASP "what" with our "how" for comprehensive methodology

---

### OWASP-N02: Quantitative Metrics Framework

**Normative Statement:**
> The red team SHALL incorporate quantitative metrics in reporting to enable comparability and trend analysis across engagements:
> - **Attack Success Rate (ASR)** per attack category (percentage of attempts succeeding)
> - **Coverage Metrics** (percentage of attack patterns tested, risk categories addressed)
> - **Time-to-First-Bypass** (hours/attempts to first successful defense bypass)
> - **Defense Efficacy Metrics** (bypass rate per defense layer, mitigation effectiveness)
>
> Note: These metrics are informational indicators for tracking progress, NOT pass/fail certification criteria.

**Source Reference:**
- OWASP Guide Appendix A (Metrics Framework)
- OWASP Guide Section 8.6 (Engagement Framework)

**Rationale:**
Quantitative metrics provide:
- **Comparability:** Consistent measurement across teams, engagements, and time periods
- **Trend analysis:** Track improvement or degradation over model versions
- **Resource planning:** Estimate effort for future engagements based on historical data
- **Prioritization:** Focus mitigation efforts on highest ASR categories
- **Transparency:** Communicate testing depth and limitations objectively

**Critical distinction:** Metrics are for measurement and tracking, NOT for certification thresholds (e.g., "system is safe if ASR < 5%"). This aligns with our guideline's prohibition on numeric pass/fail criteria while enabling standardized reporting.

**Classification:** Mandatory (SHALL)

**Priority:** Critical

**Gap Status:** ❌ Missing
- Our Phase 3 Section 10 (Report Structure Template) includes severity ratings and findings but lacks quantitative metrics framework
- No standardized metrics for attack success rate, coverage, or defense efficacy

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- Section 10 (Report Structure Template), add subsection on Metrics
- Action: Add OWASP's metrics framework with explicit clarification on informational (not certification) use

**Impact Assessment:**
- **Critical value:** Enables consistency, comparability, and tracking without violating our prohibition on pass/fail thresholds
- **Low disruption:** Extends reporting requirements without changing process
- **Standardization benefit:** Industry-wide metrics enable knowledge sharing

---

### OWASP-N03: Phase-Specific Evaluation Checklists

**Normative Statement:**
> The red team SHALL provide phase-specific evaluation checklists to guide comprehensive testing:
>
> **Model Evaluation Checklist:**
> - Inference attacks (model extraction, membership inference, inversion)
> - Alignment testing (harmful content, refusal mechanisms, value alignment)
> - Robustness testing (adversarial examples, distribution shift)
> - Bias and fairness testing (demographic parity, equalized odds, counterfactual fairness)
> - Toxicity and harmful output testing
>
> **Implementation Evaluation Checklist:**
> - Guardrail bypass testing (pre-filtering, post-filtering evasion)
> - RAG system testing (retrieval poisoning, context manipulation, groundedness)
> - Control mechanism testing (RBAC, authentication, authorization)
> - Prompt engineering security (injection, leaking, hijacking)
>
> **System Evaluation Checklist:**
> - Infrastructure security (API security, network isolation, container escape)
> - Integration testing (upstream/downstream system interactions)
> - Supply chain security (dependency vulnerabilities, model provenance)
> - Access control testing (privilege escalation, lateral movement)
>
> **Runtime/Agentic Evaluation Checklist:**
> - Human interaction testing (user manipulation, social engineering)
> - Agent behavior analysis (goal drift, autonomous actions, tool misuse)
> - Business impact assessment (financial harm, reputational damage)
> - Production monitoring validation (alerting, anomaly detection)

**Source Reference:**
- OWASP Guide Section 6 (Blueprint for GenAI Red Teaming)
- OWASP Guide Section 7 (Essential Techniques)
- Implicit in blueprint phase descriptions

**Rationale:**
Structured checklists ensure:
- **Completeness:** Systematic coverage of attack surfaces at each layer
- **Consistency:** Standardized evaluation across different systems and teams
- **Actionable guidance:** Practitioners know exactly "what to check" at each phase
- **Knowledge transfer:** Captures community knowledge in reusable format

**Classification:** Mandatory (SHALL)

**Priority:** High

**Gap Status:** ❌ Missing
- Our Phase 4 Living Annex has attack patterns but lacks phase-organized checklists
- Test scenarios exist but not structured by evaluation phase
- Practitioners must infer "what to check" from attack patterns and process description

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-4-living-annex.md`
- New Annex section or extension of existing attack pattern library
- Action: Add 4-phase evaluation checklists based on OWASP blueprint

**Impact Assessment:**
- **High value:** Transforms abstract attack patterns into actionable evaluation guidance
- **Medium disruption:** Requires organizing existing content plus adding new items
- **Practitioner benefit:** Significantly reduces planning effort and improves coverage

---

### OWASP-N04: RAG Triad Evaluation Framework

**Normative Statement:**
> The red team SHOULD evaluate Retrieval-Augmented Generation (RAG) systems using the RAG Triad framework:
> - **Factuality:** Is the generated response factually correct?
> - **Relevance:** Is the retrieved context relevant to the query?
> - **Groundedness:** Is the response grounded in (supported by) the retrieved context?
>
> Test both positive cases (proper functioning) and adversarial cases (retrieval poisoning, context manipulation, hallucination despite retrieved context).

**Source Reference:**
- OWASP Guide Figure 2 (RAG Triad Diagram)
- OWASP Guide Section 6.2 (Implementation Evaluation Phase)

**Rationale:**
RAG systems introduce unique failure modes beyond standard LLM vulnerabilities:
- **Retrieval failures:** Irrelevant documents retrieved, relevant documents missed
- **Grounding failures:** Model ignores retrieved context, hallucinates despite evidence
- **Factuality failures:** Retrieved context is poisoned or outdated
- **Attack vectors:** Retrieval poisoning, context stuffing, adversarial documents

The RAG Triad provides structured criteria for evaluating these dimensions systematically.

**Classification:** Recommended (SHOULD)

**Priority:** Medium

**Gap Status:** ❌ Missing
- Our guideline covers RAG poisoning as an attack pattern (Phase 1-2, indirect prompt injection)
- Lacks structured evaluation framework for RAG system integrity beyond attacks
- No systematic criteria for assessing RAG component interactions

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-4-living-annex.md`
- Annex A (Attack Pattern Library), subsection on RAG systems
- Action: Add RAG Triad evaluation framework linking to existing RAG poisoning patterns

**Impact Assessment:**
- **Medium value:** Addresses growing deployment pattern (many production LLMs use RAG)
- **Low disruption:** Extends existing RAG attack pattern coverage
- **Practical benefit:** Provides systematic approach to RAG security beyond just poisoning

---

### OWASP-N05: Model Reconnaissance Activity

**Normative Statement:**
> The red team SHOULD conduct Model Reconnaissance as a formal activity before designing attack scenarios:
> - API investigation (endpoints, parameters, rate limits, error messages)
> - Model card review (capabilities, limitations, training data, intended use)
> - Capability probing (systematic testing of model abilities across domains)
> - Architecture inference (estimating model size, type, training approach from behavior)
> - Behavioral baseline (documenting normal/expected outputs before adversarial testing)

**Source Reference:**
- OWASP Guide Section 5, Step 6 (Model Reconnaissance and Application Decomposition)
- OWASP Guide Section 7.1 (Essential Techniques)

**Rationale:**
Effective attack design requires understanding the target model's:
- **Capabilities:** What can it do well? Where are the edges of competence?
- **Architecture:** Transformer-based? Mixture of experts? Fine-tuned or base model?
- **Defenses:** Safety fine-tuning evident? Refusal patterns? Filter signatures?
- **Weaknesses:** Documented limitations? Performance degradation scenarios?

Reconnaissance transforms generic attack patterns into targeted, effective scenarios.

**Classification:** Recommended (SHOULD)

**Priority:** Medium

**Gap Status:** 🔶 Partial
- Our Phase 3 Stage 1 (Planning) includes system overview and scoping
- Stage 2 (Design) includes attack surface mapping
- Lacks explicit "Model Reconnaissance" as distinct pre-design activity with systematic probing methodology

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- Stage 2 (Design) or Stage 3 (Execution) initial activity
- Action: Add "Model Reconnaissance" activity with OWASP's investigation methodology

**Impact Assessment:**
- **Medium value:** Improves attack design quality and efficiency
- **Low disruption:** Formalizes implicit practice into explicit activity
- **Efficiency benefit:** Focused reconnaissance reduces wasted effort on ineffective attacks

---

### OWASP-N06: Trust Dimension in Evaluation Framework

**Normative Statement:**
> The red team MAY extend the evaluation framework to include a "Trust" dimension alongside Security and Safety:
> - **Security (operator perspective):** System robustness against attacks
> - **Safety (user perspective):** Prevention of harmful outputs and behaviors
> - **Trust (user/partner perspective):** Reliability, consistency, transparency, stakeholder confidence
>
> Trust encompasses: output reliability (consistency across queries), decision transparency (explainability), organizational reputation, compliance with commitments.

**Source Reference:**
- OWASP Guide Section 3 (Risks Addressed by GenAI Red Teaming)
- OWASP Guide Figure 1 (Security-Safety-Trust Triad)
- OWASP Guide mapping to LLM tenets: harmlessness, helpfulness, honesty, fairness, creativity

**Rationale:**
Trust captures dimensions not fully addressed by Safety/Security/Alignment:
- **Reliability:** Does the system behave consistently? Are outputs reproducible?
- **Transparency:** Can decisions be explained? Is behavior auditable?
- **Business continuity:** Does the system maintain performance under load?
- **Stakeholder confidence:** Do users/partners trust the organization's AI governance?

"Trust" represents the business/organizational dimension complementing technical safety/security.

**Classification:** Optional (MAY)

**Priority:** Low

**Gap Status:** ❌ Missing
- Our guideline uses Safety/Security/Alignment triad
- "Trust" as distinct dimension not explicitly defined
- Related concepts (transparency, reliability) mentioned but not unified under "Trust" framework

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-0-terminology.md`
- Section 1.7 (Alignment vs Safety vs Security)
- Action: Optionally add "Trust" as fourth dimension or map Trust aspects to existing triad

**Impact Assessment:**
- **Low value:** Concepts largely covered under existing dimensions; primarily semantic reframing
- **No disruption:** Optional addition
- **Business context benefit:** Makes organizational/reputational concerns more explicit

---

## 3. Gap Analysis / 격차 분석

### Current Guideline Coverage

| OWASP Component | Current Guideline Status | Gap Severity |
|-----------------|-------------------------|--------------|
| 4-phase evaluation blueprint | Not present | Critical |
| Quantitative metrics framework | Not present | Critical |
| Phase-specific checklists | Partial (attack patterns exist) | High |
| RAG Triad framework | Partial (RAG poisoning covered) | Medium |
| Model reconnaissance | Implicit in planning/design | Medium |
| Trust dimension | Implicit coverage | Low |

### Coverage by Guideline Phase

| Guideline Phase | OWASP Coverage | Integration Opportunity |
|-----------------|----------------|------------------------|
| **Phase 0 (Terminology)** | OWASP-N06 (Trust dimension) | Optional conceptual extension |
| **Phase 3 (Normative Core)** | OWASP-N01 (4-phase), N02 (metrics), N05 (reconnaissance) | Critical structural additions |
| **Phase 4 (Living Annex)** | OWASP-N03 (checklists), N04 (RAG Triad) | High-value practical guidance |
| **Phase 5 (Meta-Review)** | Metrics framework | Quality assessment criteria |

---

## 4. Integration Recommendations / 통합 권장사항

### Immediate Priority (Mandatory Requirements)

#### 1. Add 4-Phase Evaluation Blueprint (OWASP-N01)
**Target:** Phase 3, Stage 2, Activity D-1 (Attack Surface Mapping)

**Proposed Text Addition:**
```markdown
### Activity D-1.2: Four-Phase Evaluation Framework

Organize attack surface mapping using the four-phase evaluation structure:

**Phase 1: Model Evaluation**
Attack surface: Model weights, inference behavior, training data influences
- Inference attacks (extraction, membership inference, inversion)
- Alignment testing (harmful outputs, refusals, value alignment)
- Robustness (adversarial examples, distribution shift)
- Bias and fairness testing
- Toxicity and harmful content generation

**Phase 2: Implementation Evaluation**
Attack surface: Application logic, guardrails, integrations, prompt engineering
- Guardrail bypass (pre-filter, post-filter evasion)
- RAG system security (retrieval poisoning, context manipulation)
- Control mechanisms (RBAC, auth, authorization)
- Prompt injection, leaking, hijacking

**Phase 3: System Evaluation**
Attack surface: Infrastructure, deployment, supply chain, access control
- Infrastructure security (APIs, containers, network)
- Integration security (upstream/downstream systems)
- Supply chain (dependencies, model provenance)
- Access control (privilege escalation, lateral movement)

**Phase 4: Runtime/Agentic Evaluation**
Attack surface: User interactions, agent behaviors, production environment
- Human interaction (manipulation, social engineering)
- Agent behavior (goal drift, tool misuse, autonomous actions)
- Business impact (financial, reputational harm)
- Production monitoring (alerting, anomaly detection)

**Process integration:** These four phases map to test case categories within our 6-stage lifecycle. All phases are addressed during Stage 2 (Design) and Stage 3 (Execution).
```

#### 2. Add Quantitative Metrics Framework (OWASP-N02)
**Target:** Phase 3, Section 10 (Report Structure Template)

**Proposed Text Addition:**
```markdown
### Section 10.5: Quantitative Metrics

Include the following informational metrics in reports to enable comparability and trend analysis:

| Metric Category | Metric | Definition | Reporting Format |
|----------------|--------|------------|------------------|
| **Attack Success** | Attack Success Rate (ASR) | % of attack attempts succeeding per category | Table by attack category |
| **Coverage** | Pattern Coverage | % of applicable attack patterns tested | Percentage + tested/total count |
| **Coverage** | Risk Category Coverage | % of risk categories addressed | Heatmap of category × phase |
| **Efficiency** | Time-to-First-Bypass | Hours/attempts to first successful bypass per defense layer | Median and range |
| **Defense Efficacy** | Bypass Rate per Layer | % of attacks bypassing each defense layer | Table by defense mechanism |
| **Mitigation** | Remediation Verification Rate | % of findings verified as fixed in retest | Percentage |

**CRITICAL CLARIFICATION:** These metrics are informational indicators for tracking and improvement, NOT certification thresholds. There are no "passing scores." A high ASR indicates areas needing attention; a low ASR indicates areas where tested attacks failed, NOT comprehensive safety.

**Usage guidelines:**
- Track metrics across model versions to identify trends
- Compare metrics across similar systems (with caution on context differences)
- Use for resource planning and effort estimation
- Communicate testing depth and limitations transparently
```

#### 3. Add Phase-Specific Evaluation Checklists (OWASP-N03)
**Target:** Phase 4 (Living Annex), New Annex Section

**Proposed Addition:** Create "Annex E: Four-Phase Evaluation Checklists" with detailed task lists for each phase, organized by attack surface and referencing existing attack patterns.

### Secondary Priority (Recommended Practices)

#### 4. Add RAG Triad Evaluation Framework (OWASP-N04)
**Target:** Phase 4, Annex A (Attack Pattern Library)

**Proposed Addition:**
```markdown
### A.X RAG System Evaluation Framework

For systems using Retrieval-Augmented Generation, evaluate using the RAG Triad:

| Dimension | Evaluation Criteria | Test Approach |
|-----------|-------------------|---------------|
| **Factuality** | Is the response factually correct? | Compare outputs to ground truth; test with known false/outdated documents |
| **Relevance** | Is retrieved context relevant to query? | Measure retrieval precision/recall; test with adversarial query phrasings |
| **Groundedness** | Is response grounded in retrieved context? | Test hallucination despite retrieved evidence; context ignoring scenarios |

**Attack patterns:** Link to AP-MOD-008 (Indirect Prompt Injection), AP-SYS-003 (RAG Poisoning)

**Positive testing:** Verify proper RAG functioning under normal conditions
**Adversarial testing:** Retrieval poisoning, context manipulation, grounding attacks
```

#### 5. Add Model Reconnaissance Activity (OWASP-N05)
**Target:** Phase 3, Stage 2 (Design) or beginning of Stage 3 (Execution)

**Proposed Addition:**
```markdown
### Activity D-0 / E-0: Model Reconnaissance (Optional but Recommended)

Before designing attack scenarios, conduct systematic model reconnaissance:

1. **API Investigation:** Document endpoints, parameters, rate limits, error messages
2. **Model Card Review:** Analyze capabilities, limitations, training data, intended use
3. **Capability Probing:** Test model abilities across domains (coding, reasoning, knowledge, languages)
4. **Architecture Inference:** Estimate model characteristics from behavioral patterns
5. **Behavioral Baseline:** Document normal/expected outputs for comparison

Reconnaissance outputs inform attack scenario design and improve testing efficiency.
```

### Optional Enhancement

#### 6. Consider Trust Dimension (OWASP-N06)
**Target:** Phase 0, Section 1.7

**Proposed Addition:** Optional discussion of "Trust" as complementary dimension to Safety/Security/Alignment, or mapping of Trust aspects to existing framework.

---

## 5. Priority Matrix / 우선순위 매트릭스

### Integration Priority Ranking

| Rank | Normative ID | Statement Summary | Type | Impact | Effort | Priority Score |
|------|--------------|-------------------|------|--------|--------|----------------|
| 1 | OWASP-N01 | 4-phase evaluation blueprint | Mandatory | Critical | Medium | Critical |
| 2 | OWASP-N02 | Quantitative metrics framework | Mandatory | Critical | Low | Critical |
| 3 | OWASP-N03 | Phase-specific checklists | Mandatory | High | High | High |
| 4 | OWASP-N04 | RAG Triad framework | Recommended | Medium | Low | Medium |
| 5 | OWASP-N05 | Model reconnaissance | Recommended | Medium | Low | Medium |
| 6 | OWASP-N06 | Trust dimension | Optional | Low | Low | Low |

**Priority Score Calculation:**
- Critical: Mandatory + Critical Impact
- High: Mandatory + High Impact
- Medium: Recommended + Medium Impact
- Low: Optional or Low Impact

### Implementation Roadmap

**Phase 1 (Immediate - Next Guideline Update):**
- OWASP-N01: 4-Phase Evaluation Blueprint
- OWASP-N02: Quantitative Metrics Framework

**Phase 2 (Short-term - Within 3 months):**
- OWASP-N03: Phase-Specific Checklists
- OWASP-N04: RAG Triad Framework

**Phase 3 (Medium-term - Within 6 months):**
- OWASP-N05: Model Reconnaissance
- OWASP-N06: Trust Dimension (if deemed valuable)

---

## 6. Cross-Reference to Other Normative Analyses / 다른 규범 분석과의 교차 참조

### Complementarity with AISI Guide
- **OWASP:** 4-phase "what to evaluate" structure (Model → Implementation → System → Runtime)
- **AISI:** 15-step "how to conduct" process detail
- **Synergy:** AISI's granular steps fit within OWASP's evaluation phases

### Complementarity with CSA Agentic Guide
- **OWASP:** Phase 4 (Runtime/Agentic) provides high-level framework for agentic evaluation
- **CSA:** 12 detailed threat categories specifically for agentic systems
- **Synergy:** CSA operationalizes OWASP Phase 4 with agentic-specific tests

### Integration Strategy
Optimal guideline structure combines:
1. **Our 6-stage process lifecycle** (how to conduct red teaming)
2. **OWASP 4-phase blueprint** (what to evaluate at each layer)
3. **AISI granular steps** (detailed activities within each stage)
4. **CSA agentic categories** (specific tests for autonomous systems)

---

## 7. Conclusion / 결론

The OWASP GenAI Red Teaming Guide provides the most comprehensive evaluation framework among the three reference documents. Its key normative contributions are:

1. **4-phase blueprint** - fills critical "what to evaluate" gap complementing our "how to conduct" process
2. **Metrics framework** - enables standardized measurement without violating our prohibition on pass/fail thresholds
3. **Phase-specific checklists** - transforms abstract guidance into actionable evaluation tasks

**Recommended Action:**
- Integrate OWASP-N01 and OWASP-N02 as **mandatory requirements** in next guideline update
- Add OWASP-N03 as **high-priority enhancement** to Living Annex
- Include OWASP-N04 and OWASP-N05 as **recommended practices**

**Unique Value:**
OWASP provides the structural "what to evaluate" framework that our process-oriented guideline currently lacks, making it an essential complement for comprehensive coverage.

---

**Document Status:** Draft for Review
**Next Review:** After integration into main guideline
**Related Documents:**
- E1_ai_safety_RT_v1.10_en-normative-analysis.md (completed)
- CSA_Agentic_AI_Red_Teaming_Guide-normative-analysis.md (to be created)
- pdf-normative-analysis-summary.md (to be created)

---

**End of Normative Analysis** | **규범적 분석 종료**

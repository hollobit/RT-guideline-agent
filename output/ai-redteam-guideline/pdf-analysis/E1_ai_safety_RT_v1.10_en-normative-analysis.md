# Normative Language Analysis: Japan AISI Guide to Red Teaming Methodology on AI Safety v1.10
# 규범적 언어 분석: 일본 AISI AI 안전 레드티밍 방법론 가이드 v1.10

**Analysis Date / 분석일:** 2026-02-10
**Source Document:** Guide to Red Teaming Methodology on AI Safety (Version 1.10), March 31, 2025
**Publisher:** Japan AI Safety Institute (AISI)
**Analyzed by:** Reference Document Agent

---

## Executive Summary / 요약

This normative analysis extracts requirements and recommendations from the Japan AISI Red Teaming Guide that have implications for our AI Red Team International Guideline. The AISI guide provides a highly detailed 15-step process framework with specific evaluation perspectives and operational guidance.

**Key Findings:**
- **6 normative recommendations** identified (3 Essential, 3 Recommended)
- **Primary strength:** Granular process steps and structured AI safety evaluation framework
- **Integration priority:** Essential for Phase 3 (process detail) and Phase 0 (evaluation perspectives)

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
| AISI-N01 | The red team SHALL evaluate AI systems across six evaluation perspectives: Human-Centric, Safety, Fairness, Privacy Protection, Security, and Transparency | Mandatory | Critical | 🔶 Partial |
| AISI-N02 | The red team SHALL classify LLM usage patterns across three categories (output patterns, reference source patterns, LLM deployment patterns) before conducting threat modeling | Mandatory | Critical | ❌ Missing |
| AISI-N03 | The red team SHALL inventory existing defense mechanisms (pre-filtering, LLM internal measures, post-filtering, RLHF-based protections) before designing attack scenarios | Mandatory | High | ❌ Missing |
| AISI-N04 | The red team SHOULD establish graduated confirmation levels (possibility indication, evidence of likelihood, actual confirmation) to match verification depth to available resources | Recommended | Medium | ❌ Missing |
| AISI-N05 | The red team SHOULD provide explicit guidance on managing non-determinism including iteration counts, success criteria, and execution condition logging | Recommended | Medium | 🔶 Partial |
| AISI-N06 | The red team MAY reference SBOM/AIBOM (Software/AI Bill of Materials) for documenting AI system components during scoping | Optional | Low | ❌ Missing |

**Legend:**
- ✅ Fully reflected in current guideline
- 🔶 Partially reflected
- ❌ Not reflected

---

## 2. Detailed Normative Analysis / 상세 규범적 분석

### AISI-N01: Six-Perspective AI Safety Evaluation Framework

**Normative Statement:**
> The red team SHALL evaluate AI systems across six evaluation perspectives: Human-Centric, Safety, Fairness, Privacy Protection, Ensuring Security, and Transparency.

**Source Reference:**
- AISI Guide Section 1.2 (Terminology Definition)
- AISI Guide Chapter 6.3.1 (AI Safety Evaluation Perspectives)
- Referenced from Japanese government "AI Guidelines for Business"

**Rationale:**
The six perspectives provide comprehensive coverage of AI system risks beyond traditional security. Each perspective addresses distinct stakeholder concerns:
- **Human-Centric:** User autonomy, human dignity, human oversight
- **Safety:** Physical and psychological harm prevention
- **Fairness:** Non-discrimination, bias mitigation
- **Privacy Protection:** Data minimization, consent, confidentiality
- **Ensuring Security:** Robustness, attack resistance
- **Transparency:** Explainability, auditability

**Classification:** Mandatory (SHALL)

**Priority:** Critical

**Gap Status:** 🔶 Partial
- Our guideline addresses Safety, Security, and Alignment but does not systematically codify Fairness, Privacy Protection, Human-Centric, and Transparency as structured evaluation perspectives
- These dimensions are mentioned informally but lack the systematic framework AISI provides

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-0-terminology.md`
- Section 1.7 (Alignment vs Safety vs Security)
- Action: Add comprehensive mapping table between our Safety/Security/Alignment framework and AISI's six-perspective framework

**Impact Assessment:**
- **High value:** Enhances scope completeness and alignment with international frameworks (Japan, EU AI Act)
- **Low disruption:** Extends existing concepts rather than replacing them
- **Compliance benefit:** Supports EU AI Act Article 9 testing requirements

---

### AISI-N02: Usage Pattern Analysis Methodology

**Normative Statement:**
> The red team SHALL classify LLM usage patterns across three categories before conducting threat modeling:
> 1. Usage patterns regarding LLM output (text generation, query generation, code generation, etc.)
> 2. Usage patterns regarding reference sources (internal database, internet, RAG systems)
> 3. Usage patterns regarding LLM itself (self-developed, fine-tuned, OSS, API-based)

**Source Reference:**
- AISI Guide Section 6.3.2 (Usage Pattern Analysis)
- AISI Guide Table 2 (System Configuration Categories)

**Rationale:**
Systematic usage pattern classification ensures threat modeling captures system-specific risks based on actual deployment patterns, not just generic threat categories. Different usage patterns expose different attack surfaces:
- **Output patterns:** Determine downstream impact and harm propagation
- **Reference source patterns:** Define data poisoning and indirect injection attack surfaces
- **Deployment patterns:** Affect model extraction, fine-tuning attacks, and API abuse vectors

**Classification:** Mandatory (SHALL)

**Priority:** Critical

**Gap Status:** ❌ Missing
- Our guideline mentions different deployment patterns but lacks structured three-category classification
- Threat modeling in Phase 3 (Stage 1, Activity P-2) does not include explicit usage pattern analysis step

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- Stage 1 (Planning), Activity P-2 (Threat Model Construction)
- Action: Add sub-activity "LLM Usage Pattern Classification" with AISI's three-category framework

**Impact Assessment:**
- **High value:** Directly improves threat modeling quality with structured approach
- **Medium disruption:** Requires adding new activity to existing process
- **Unique contribution:** AISI provides the most detailed usage pattern framework among reference documents

---

### AISI-N03: Existing Defense Mechanism Inventory

**Normative Statement:**
> The red team SHALL inventory existing defense mechanisms before designing attack scenarios, categorizing them as:
> - Pre-filtering defenses (input validation, blocklists, content moderation)
> - LLM internal defenses (safety fine-tuning, constitutional AI, RLHF)
> - Post-filtering defenses (output validation, content filtering, guardrails)
> - Training-based protections (RLHF, adversarial training, red teaming data)

**Source Reference:**
- AISI Guide Section 6.3.2.3 (Defense Mechanism Inventory)
- AISI Guide Step 3 (Planning)

**Rationale:**
Understanding the existing defense stack is critical for designing bypass-focused tests and avoiding false negatives. Defense-aware testing ensures:
- Attack scenarios target appropriate defense layers
- Bypass techniques are matched to defense mechanisms
- Test coverage spans all defense layers
- Results distinguish between defense evasion and inherent model vulnerabilities

**Classification:** Mandatory (SHALL)

**Priority:** High

**Gap Status:** ❌ Missing
- Our guideline mentions "existing mitigations" as a bullet point in threat modeling but lacks structured categorization
- No explicit requirement to inventory defense mechanisms before test design

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- Stage 1 (Planning), Activity P-2 (Threat Model Construction)
- Action: Add explicit requirement to catalog defense mechanisms with AISI's four-category framework

**Impact Assessment:**
- **High value:** Critical for defense-aware testing principle already in our guideline
- **Low disruption:** Formalizes existing implicit practice
- **Practical benefit:** Prevents wasted effort on attacks that target non-existent defenses

---

### AISI-N04: Confirmation Level Framework

**Normative Statement:**
> The red team SHOULD establish graduated confirmation levels to match verification depth to available resources:
> - **Level 1:** Indicate possibility of successful attack (theoretical analysis, preliminary probing)
> - **Level 2:** Provide evidence regarding likelihood of success (partial exploitation, controlled conditions)
> - **Level 3:** Confirm actual attack success (full exploitation, realistic conditions)

**Source Reference:**
- AISI Guide Section 6.3.3 (Confirmation Levels)

**Rationale:**
Not all organizations have resources for comprehensive Level 3 verification across all attack patterns. Graduated confirmation levels enable:
- Resource-constrained organizations to conduct meaningful red teaming
- Transparent communication about verification depth achieved
- Risk-based allocation of effort to critical attack scenarios
- Consistent interpretation of findings across engagements

**Classification:** Recommended (SHOULD)

**Priority:** Medium

**Gap Status:** ❌ Missing
- Our guideline does not explicitly define verification depth levels
- Phase 3 Section 8 (Risk-Based Test Scope Determination) addresses scope prioritization but not verification depth

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- Stage 2 (Design), Activity D-4 (Evaluation Framework Design)
- Action: Add confirmation level framework with resource/effort mapping

**Impact Assessment:**
- **Medium value:** Useful for resource-constrained organizations and proportionality
- **Low disruption:** Adds optional framework without changing core process
- **Transparency benefit:** Makes verification limitations explicit

---

### AISI-N05: Non-Determinism Management Guidance

**Normative Statement:**
> The red team SHOULD provide explicit guidance on managing non-determinism in LLM testing, including:
> - Setting clear attack success criteria (e.g., "harmful output in 3 of 5 attempts")
> - Defining iteration counts for non-deterministic tests
> - Logging execution conditions alongside results (temperature, sampling parameters, timestamps)
> - Acknowledging that failed attacks may succeed in subsequent attempts (and vice versa)

**Source Reference:**
- AISI Guide Section 2.5 (Reproducibility Discussion)
- AISI Guide Step 8 (Conducting Attacks)
- AISI Guide Step 9 (Record Keeping)

**Rationale:**
LLM non-determinism creates unique reproducibility challenges not present in traditional security testing:
- Same attack may succeed/fail on different runs
- Model updates can change behavior without notification
- Environmental factors (load, server-side changes) affect outputs
- Probabilistic nature makes binary pass/fail inappropriate

Explicit guidance ensures consistent handling across red teams and engagements.

**Classification:** Recommended (SHOULD)

**Priority:** Medium

**Gap Status:** 🔶 Partial
- Our guideline acknowledges non-determinism conceptually in Phase 0 and Phase 3
- Lacks operational guidance for managing it during execution

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- Stage 3 (Execution), or Section 9 (Test Design Principles)
- Action: Add principle or guidance on managing non-determinism with AISI's practical recommendations

**Impact Assessment:**
- **Medium value:** Addresses practical execution gap
- **Low disruption:** Adds guidance to existing execution stage
- **Quality benefit:** Improves consistency and reproducibility of findings

---

### AISI-N06: SBOM/AIBOM Documentation Reference

**Normative Statement:**
> The red team MAY reference SBOM (Software Bill of Materials) or AIBOM (AI Bill of Materials) for documenting AI system components during the scoping phase to support interoperability and supply chain transparency.

**Source Reference:**
- AISI Guide (mentions SBOM/AIBOM for interoperability)
- Alignment with supply chain security best practices

**Rationale:**
SBOM/AIBOM provide standardized formats for documenting:
- AI model components (base models, fine-tuned layers, adapters)
- Training data sources and versions
- Dependencies and third-party components
- Inference infrastructure and serving frameworks

Benefits include improved supply chain visibility, vulnerability tracking, and cross-organizational communication.

**Classification:** Optional (MAY)

**Priority:** Low

**Gap Status:** ❌ Missing
- Our guideline addresses supply chain risks in Phase 1-2 but does not reference SBOM/AIBOM

**Integration Target:**
- `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- Stage 1 (Planning), Activity P-1 (Engagement Scoping)
- Action: Recommend SBOM/AIBOM usage for component documentation

**Impact Assessment:**
- **Low value:** Good practice but not unique to this document; emerging standard
- **No disruption:** Optional recommendation
- **Future-looking:** Aligns with evolving AI supply chain security standards

---

## 3. Gap Analysis / 격차 분석

### Current Guideline Coverage

| AISI Component | Current Guideline Status | Gap Severity |
|----------------|-------------------------|--------------|
| 6-perspective AI safety framework | Informal coverage | High |
| Usage pattern analysis | Generic deployment patterns mentioned | Critical |
| Defense mechanism inventory | Mentioned but not structured | High |
| Confirmation levels | Not present | Medium |
| Non-determinism guidance | Conceptual only | Medium |
| SBOM/AIBOM reference | Not mentioned | Low |

### Coverage by Guideline Phase

| Guideline Phase | AISI Coverage | Integration Opportunity |
|-----------------|---------------|------------------------|
| **Phase 0 (Terminology)** | AISI-N01 (6 perspectives) | Add comprehensive evaluation framework |
| **Phase 3 (Normative Core)** | AISI-N02, N03, N04, N05 | Enhance planning, design, execution stages |
| **Phase 4 (Living Annex)** | Defense categories, usage patterns | Extend attack pattern context |
| **Phase 5 (Meta-Review)** | Confirmation levels | Add to quality assessment criteria |

---

## 4. Integration Recommendations / 통합 권장사항

### Immediate Priority (Mandatory Requirements)

#### 1. Add Usage Pattern Analysis to Threat Modeling (AISI-N02)
**Target:** Phase 3, Stage 1, Activity P-2

**Proposed Text Addition:**
```markdown
### Activity P-2.3: LLM Usage Pattern Classification

Before constructing the threat model, classify the target AI system's usage patterns across three dimensions:

1. **LLM Output Usage Patterns:**
   - Text generation for end users (chatbots, content generation)
   - Query generation for downstream systems (search, database queries)
   - Code generation (code completion, script generation)
   - Decision support (recommendations, classifications)

2. **Reference Source Patterns:**
   - No external reference (model knowledge only)
   - Internal database/knowledge base (closed corpus)
   - Internet access (open web search)
   - RAG systems (vector databases, document stores)
   - Hybrid approaches

3. **LLM Deployment Patterns:**
   - Self-developed model (trained from scratch)
   - Fine-tuned pre-trained model (organization-owned)
   - Open-source model (self-hosted)
   - Open-source model with fine-tuning
   - External API (third-party model service)

Each combination of patterns exposes distinct attack surfaces and requires tailored threat scenarios.
```

#### 2. Add Defense Mechanism Inventory (AISI-N03)
**Target:** Phase 3, Stage 1, Activity P-2

**Proposed Text Addition:**
```markdown
### Activity P-2.4: Existing Defense Mechanism Inventory

Catalog existing defense mechanisms across four layers:

| Defense Layer | Examples | Inventory Questions |
|---------------|----------|-------------------|
| **Pre-filtering** | Input validation, blocklists, content moderation APIs | What input filtering is applied before LLM processing? |
| **LLM Internal** | Safety fine-tuning, constitutional AI, RLHF | What safety measures are embedded in the model? |
| **Post-filtering** | Output validation, content filters, guardrails | What output checks occur before user delivery? |
| **Training-based** | Adversarial training data, red team findings in RLHF | What adversarial scenarios informed training? |

This inventory informs defense-aware attack design and prevents false negatives from testing non-existent defenses.
```

#### 3. Add Six-Perspective Evaluation Framework (AISI-N01)
**Target:** Phase 0, Section 1.7

**Proposed Text Addition:**
```markdown
### 1.7.1 Comprehensive Evaluation Perspectives

AI red teaming SHALL evaluate systems across six perspectives aligned with international frameworks:

| Perspective | Definition | Example Evaluation Criteria |
|-------------|------------|---------------------------|
| **Human-Centric** | User autonomy, human dignity, human oversight | Can users override system decisions? Is human oversight functional? |
| **Safety** | Physical and psychological harm prevention | Does the system produce harmful content? Can it cause physical harm? |
| **Fairness** | Non-discrimination, bias mitigation | Does performance vary across demographic groups? Are there discriminatory outputs? |
| **Privacy Protection** | Data minimization, consent, confidentiality | Is user data protected? Are there data leakage risks? |
| **Ensuring Security** | Robustness, attack resistance | Can the system be compromised? Are there exploitable vulnerabilities? |
| **Transparency** | Explainability, auditability | Can decisions be explained? Is system behavior auditable? |

**Mapping to our framework:**
- Safety/Security/Alignment encompass all six perspectives
- Human-Centric ⊆ Safety + Alignment
- Fairness ⊆ Alignment
- Privacy Protection ⊆ Security + Safety
- Ensuring Security = Security
- Transparency ⊆ Alignment

This six-perspective framework ensures comprehensive coverage and alignment with Japanese "AI Guidelines for Business" and EU AI Act requirements.
```

### Secondary Priority (Recommended Practices)

#### 4. Add Confirmation Level Framework (AISI-N04)
**Target:** Phase 3, Stage 2, Activity D-4

**Proposed Addition:** Section on "Verification Depth Levels" with AISI's three-level framework and resource mapping guidance.

#### 5. Add Non-Determinism Management Guidance (AISI-N05)
**Target:** Phase 3, Section 9 (Test Design Principles)

**Proposed Addition:** New principle "Managing Non-Determinism and Probabilistic Behavior" with iteration guidance, success criteria definition, and logging requirements.

### Optional Enhancement

#### 6. Reference SBOM/AIBOM (AISI-N06)
**Target:** Phase 3, Stage 1, Activity P-1

**Proposed Addition:** Single paragraph recommending SBOM/AIBOM usage for component documentation.

---

## 5. Priority Matrix / 우선순위 매트릭스

### Integration Priority Ranking

| Rank | Normative ID | Statement Summary | Type | Impact | Effort | Priority Score |
|------|--------------|-------------------|------|--------|--------|----------------|
| 1 | AISI-N02 | Usage pattern analysis | Mandatory | High | Medium | Critical |
| 2 | AISI-N03 | Defense mechanism inventory | Mandatory | High | Low | Critical |
| 3 | AISI-N01 | Six-perspective framework | Mandatory | Medium | Medium | High |
| 4 | AISI-N05 | Non-determinism guidance | Recommended | Medium | Low | Medium |
| 5 | AISI-N04 | Confirmation levels | Recommended | Medium | Low | Medium |
| 6 | AISI-N06 | SBOM/AIBOM reference | Optional | Low | Low | Low |

**Priority Score Calculation:**
- Critical: Mandatory + High Impact
- High: Mandatory + Medium Impact, or Recommended + High Impact
- Medium: Recommended + Medium Impact
- Low: Optional or Low Impact

### Implementation Roadmap

**Phase 1 (Immediate - Next Guideline Update):**
- AISI-N02: Usage Pattern Analysis
- AISI-N03: Defense Mechanism Inventory

**Phase 2 (Short-term - Within 3 months):**
- AISI-N01: Six-Perspective Framework
- AISI-N05: Non-Determinism Guidance

**Phase 3 (Medium-term - Within 6 months):**
- AISI-N04: Confirmation Levels
- AISI-N06: SBOM/AIBOM Reference

---

## 6. Cross-Reference to Other Normative Analyses / 다른 규범 분석과의 교차 참조

### Complementarity with OWASP GenAI Guide
- **AISI:** Granular 15-step process detail
- **OWASP:** Broader 4-phase evaluation structure (Model → Implementation → System → Runtime)
- **Synergy:** AISI's process steps fit within OWASP's evaluation phases

### Complementarity with CSA Agentic Guide
- **AISI:** LLM system focus with detailed planning/execution
- **CSA:** Agentic AI-specific threat categories
- **Synergy:** AISI process applies to testing CSA's 12 threat categories

---

## 7. Conclusion / 결론

The Japan AISI Guide provides the most detailed process-level guidance among the three reference documents. Its key normative contributions are:

1. **Usage pattern analysis** - fills critical gap in our threat modeling approach
2. **Defense mechanism inventory** - operationalizes our defense-aware testing principle
3. **Six-perspective framework** - enhances evaluation scope completeness

**Recommended Action:**
- Integrate AISI-N02 and AISI-N03 as **mandatory requirements** in next guideline update
- Add AISI-N01 as **comprehensive evaluation framework** in Phase 0
- Include AISI-N04 and AISI-N05 as **recommended practices** in Phase 3

**Unique Value:**
AISI provides operational detail not found in other references, making it essential for practitioners implementing the red teaming process.

---

**Document Status:** Draft for Review
**Next Review:** After integration into main guideline
**Related Documents:**
- GenAI-Red-Teaming-Guide-normative-analysis.md (to be created)
- CSA_Agentic_AI_Red_Teaming_Guide-normative-analysis.md (to be created)
- pdf-normative-analysis-summary.md (to be created)

---

**End of Normative Analysis** | **규범적 분석 종료**

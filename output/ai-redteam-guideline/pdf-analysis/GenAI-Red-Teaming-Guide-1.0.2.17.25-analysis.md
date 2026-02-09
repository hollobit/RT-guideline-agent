# PDF Analysis: OWASP GenAI Red Teaming Guide v1.0
# PDF 분석: OWASP 생성형 AI 레드팀 가이드 v1.0

**Analysis Date / 분석일:** 2026-02-09
**Analyzed by:** Reference Document Agent

---

## 1. Document Metadata / 문서 메타데이터

| Field | Value |
|-------|-------|
| **Title** | GenAI Red Teaming Guide: A Practical Approach to Evaluating AI Vulnerabilities |
| **Publisher** | OWASP Top 10 for LLMs and Generative AI Project |
| **Date** | January 23, 2025 (Version 1.0) |
| **Pages** | 77 pages |
| **Purpose** | Provide process structure for GenAI Red Teaming, combining human expertise with automation / GenAI 레드팀을 위한 프로세스 구조 제공 |
| **Scope** | LLMs and generative AI systems broadly (including agentic systems) |
| **License** | Creative Commons CC BY-SA 4.0 |
| **Language** | English |

---

## 2. Key Content Summary / 주요 내용 요약

### Structure / 구조
1. Introduction (scope, definitions, key differences from traditional RT)
2. AI Red Teaming Scope
3. Risks Addressed by GenAI Red Teaming
4. Threat Modeling for Generative AI/LLM Systems
5. GenAI Red Teaming Strategy (8-step PASTA-inspired)
6. Blueprint for GenAI Red Teaming (4-phase)
7. Essential Techniques
8. Mature AI Red Teaming
9. Best Practices
- Appendix A: Metrics
- Appendix B: Tools and Datasets
- Appendix C: Continuous Monitoring & Testing
- Appendix D: Agentic AI Systems Red Teaming Tasks

### Key Contributions / 핵심 기여

1. **Three-Pillar Risk Framework:** Security (operator), Safety (users), Trust (users/partners) -- mapping to LLM tenets: harmlessness, helpfulness, honesty, fairness, creativity

2. **Four-Phase Blueprint (Figure 4):**
   - Phase 1: Model Evaluation (alignment, robustness, bias testing)
   - Phase 2: Implementation Evaluation (guardrails, RAG, control testing)
   - Phase 3: System Evaluation (infrastructure, integration, supply chain)
   - Phase 4: Runtime/Human & Agentic Evaluation (human interaction, agent behavior, business impact)

3. **Key Differences GenAI vs Traditional Red Teaming:**
   - Socio-technical risks (bias, harmful content)
   - Data complexity (multi-modal, non-deterministic)
   - Stochastic evaluation (probabilistic outputs)
   - Evaluation criteria challenges (90%+ accuracy vs degradation)

4. **8-Step Strategy (PASTA-inspired):**
   1. Risk-based Scoping
   2. Cross-functional Collaboration
   3. Tailored Assessment Approaches
   4. Clear AI Red Teaming Objectives
   5. Threat Modeling & Vulnerability Assessment
   6. Model Reconnaissance and Application Decomposition
   7. Attack Modelling and Exploitation
   8. Risk Analysis and Reporting

5. **Lifecycle View (ISO/IEC 5338:2023 aligned):**
   - Acquisition: MDLC security
   - Experimentation/Training: SDLC abuses, data pipeline
   - Serving/Inference: Runtime abuses, RCE, SQL injection

6. **Evaluation Task/Activity View (11 activities):**
   Scoping -> Resource ID -> Scheduling -> Execution -> Reporting -> Debrief -> Report correction -> Risk dispositioning -> Postmortem -> Retesting -> Retest reporting

7. **Mature AI Red Teaming (Chapter 8):**
   - Organizational integration
   - Team composition and expertise
   - Engagement framework
   - Operational guidelines and safety controls
   - Ethical boundaries
   - Regional and domain-specific considerations

8. **Appendix A - Metrics:**
   - Comprehensive metrics framework for red teaming measurement
   - Attack success rate, coverage metrics, response time metrics

9. **Appendix B - Tools and Datasets:**
   - PyRIT, Garak, Counterfit, etc.
   - Standard test datasets (HarmBench, ToxiGen, etc.)

10. **Appendix C - Continuous Monitoring:**
    - Integration with CI/CD pipelines
    - Production monitoring strategies

11. **Appendix D - Agentic AI Tasks:**
    - Preliminary agentic AI red teaming task list

---

## 3. Relevance to Guideline / 가이드라인과의 관련성

| Guideline Phase/Document | Relevance Level | Description |
|--------------------------|----------------|-------------|
| **Phase 0 (Terminology)** | HIGH | GenAI/LLM definition scope, key differences traditional vs AI RT |
| **Phase 1-2 (Attacks)** | HIGH | Risk taxonomy (adversarial, alignment, data, interaction, knowledge, agent risks), multi-agent risks |
| **Phase 3 (Normative Core)** | VERY HIGH | 4-phase blueprint + 8-step strategy + lifecycle view provides complementary process structure |
| **Phase 4 (Living Annex)** | HIGH | Tools/datasets appendix, metrics framework, continuous monitoring guidance |
| **Phase R (References)** | MEDIUM | Already partially referenced but metrics and blueprint structure not deeply incorporated |

---

## 4. Reflection Status / 반영 현황

### Already Reflected / 이미 반영됨
- GenAI vs traditional RT differences (Phase 0, Section 4)
- Risk categories (adversarial, alignment, data, interaction, knowledge) in Phase 1-2
- Multi-agent risks mentioned in Phase 1-2
- Tools referenced in Phase R

### Partially Reflected / 부분 반영됨
- **4-Phase Blueprint structure** -- our Phase 3 has 6-stage lifecycle (Planning through Follow-up) but lacks the OWASP-style phased evaluation approach (Model -> Implementation -> System -> Runtime). The concepts overlap but the structural framing differs.
- **Metrics Framework** -- our Phase 3 discusses evaluation framework but lacks the specific metrics taxonomy from Appendix A
- **Cross-functional collaboration emphasis** -- mentioned but not as a structured step in our process

### Not Reflected / 미반영
- **Security/Safety/Trust Triad:** OWASP uses Security (operator), Safety (users), Trust (users/partners) -- a different framing from our Safety/Security/Alignment triad. The "Trust" dimension is not explicitly captured in our guideline.
- **RAG Triad (Figure 2):** Factuality, Relevance, Groundedness for evaluating RAG systems -- not present in our guideline as a structured evaluation framework
- **Model Reconnaissance Step:** OWASP's step 6 (investigating LLM structure via APIs, architecture, hyperparameters) is not explicitly called out in our planning/design stages
- **Blueprint Checklists:** Detailed checklists for each of the 4 blueprint phases (Model Evaluation, Implementation, System, Runtime) with specific task items -- not in our guideline
- **Continuous Monitoring Framework (Appendix C):** While our Phase 3 Section 11 covers continuous model, OWASP's Appendix C provides more specific integration patterns with CI/CD and production monitoring
- **Leveraging Model Evaluation Results:** Section on repurposing model-level findings for system-level testing -- systematic approach not in our guideline
- **Shared Foundations Between Traditional and GenAI RT:** Explicit mapping of what carries over from traditional security testing (system exploration, full-stack evaluation, risk assessment, attacker simulation, defensive validation, escalation paths)
- **Best Practices from Major Organizations:** Anonymized case studies from 5 major AI organizations -- not referenced in our guideline

---

## 5. Specific Modification Proposals / 구체적 수정 제안

### Proposal 1: Add "Trust" as Third Dimension to Safety/Security Framework
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-0-terminology.md`
- **Target Section:** Section 1.7 (Alignment vs Safety vs Security)
- **Proposed Change:** Expand to Safety/Security/Trust triad (or Safety/Security/Alignment/Trust). Add "Trust" dimension covering user confidence, partner confidence, and organizational reputation aspects.
- **Rationale:** OWASP's Security-Safety-Trust framework captures the business dimension that pure safety/security/alignment misses. Trust encompasses reliability, consistency, and stakeholder confidence.

### Proposal 2: Add 4-Phase Evaluation Blueprint as Complementary Structure
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- **Target Section:** Stage 2 (Design), Activity D-1 (Attack Surface Mapping)
- **Proposed Change:** Incorporate OWASP's 4-phase evaluation structure (Model -> Implementation -> System -> Runtime) as the organizing principle for attack surface mapping and test case organization within our existing 6-stage lifecycle. This is not a replacement but an overlay that helps structure the "what to test" question.
- **Rationale:** Our 6-stage lifecycle answers "how to conduct" red teaming. OWASP's 4-phase blueprint answers "what to evaluate." Both are needed; combining them creates a comprehensive framework.

### Proposal 3: Add RAG Triad Evaluation Framework
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-4-living-annex.md`
- **Target Section:** Annex A (Attack Pattern Library), or new sub-section
- **Proposed Change:** Add RAG system evaluation criteria based on the RAG Triad: Factuality (is the response factually correct?), Relevance (is the retrieved context relevant?), Groundedness (is the response grounded in retrieved context?). Link to existing RAG poisoning attack patterns.
- **Rationale:** RAG systems are increasingly common; the RAG Triad provides a structured way to evaluate their integrity beyond just poisoning attacks.

### Proposal 4: Add Metrics Framework to Reporting Section
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- **Target Section:** Section 10 (Report Structure Template), or new subsection
- **Proposed Change:** Add guidance on quantitative metrics that complement our qualitative evaluation framework:
  - Attack success rate (ASR) per category
  - Coverage metrics (% of attack patterns tested)
  - Time-to-first-bypass metrics
  - Defense efficacy metrics (bypass rate per defense layer)
  Note: Consistent with our prohibition on pass/fail thresholds, these are informational indicators, not certification criteria.
- **Rationale:** OWASP Appendix A provides a mature metrics framework. Our guideline explicitly prohibits numeric pass/fail but should still offer standardized measurement guidance for comparability across engagements.

### Proposal 5: Add Model Reconnaissance Activity
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- **Target Section:** Stage 2 (Design), or Stage 3 (Execution) as initial activity
- **Proposed Change:** Add "Model Reconnaissance" as a formal activity -- investigating the model's architecture, capabilities, and behavior through systematic probing before designing attack scenarios. Includes API investigation, model card review, capability probing, and architecture inference.
- **Rationale:** OWASP's Strategy Step 6 identifies this as crucial for designing effective attacks. Our current process jumps from threat model to test case design without an explicit reconnaissance phase.

### Proposal 6: Add Blueprint Phase Checklists
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-4-living-annex.md`
- **Target Section:** New Annex section or extension of Annex A
- **Proposed Change:** Add evaluation checklists for each of the 4 evaluation phases:
  1. Model Evaluation Checklist (inference attacks, alignment testing, robustness, bias, toxicity)
  2. Implementation Evaluation Checklist (guardrails, RAG, controls, prompts)
  3. System Evaluation Checklist (infrastructure, APIs, supply chain, access control)
  4. Runtime/Agentic Evaluation Checklist (human interaction, agent behavior, business impact)
- **Rationale:** Provides practical "what to check" guidance that complements our process-level "how to conduct" guidance.

---

## 6. Priority / 우선순위

| Proposal | Priority | Rationale |
|----------|----------|-----------|
| Proposal 1 (Trust dimension) | **권장 반영** (Recommended) | Enhances stakeholder coverage |
| Proposal 2 (4-Phase Blueprint) | **필수 반영** (Essential) | Critical structural complement to our process lifecycle |
| Proposal 3 (RAG Triad) | **권장 반영** (Recommended) | Addresses growing RAG deployment pattern |
| Proposal 4 (Metrics Framework) | **필수 반영** (Essential) | Fills measurement gap in current guideline |
| Proposal 5 (Model Reconnaissance) | **권장 반영** (Recommended) | Improves attack design quality |
| Proposal 6 (Blueprint Checklists) | **필수 반영** (Essential) | Provides actionable evaluation guidance |

---

## 7. Cross-References / 교차 참조

- **Japan AISI Guide:** AISI provides more granular process steps (15-step); OWASP provides broader evaluation structure (4-phase blueprint). Combined, they offer comprehensive coverage.
- **CSA Agentic AI Guide:** OWASP Appendix D provides preliminary agentic AI tasks; CSA provides the detailed 12-category framework. CSA is significantly more comprehensive for agentic systems.
- **NIST AI 600-1:** OWASP explicitly references NIST AI 600-1 for scoping guidance and lifecycle considerations.
- **MITRE ATLAS:** Referenced for threat modeling; OWASP recommends alongside STRIDE.

---

*Analysis complete. This document provides the most comprehensive GenAI-specific evaluation framework among the three references, with particular strength in the 4-phase blueprint structure, metrics framework, and organizational maturity guidance.*

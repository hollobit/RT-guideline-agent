# PDF Analysis: Japan AI Safety Institute - Guide to Red Teaming Methodology on AI Safety
# PDF 분석: 일본 AI 안전연구소 - AI 안전 레드티밍 방법론 가이드

**Analysis Date / 분석일:** 2026-02-09
**Analyzed by:** Reference Document Agent

---

## 1. Document Metadata / 문서 메타데이터

| Field | Value |
|-------|-------|
| **Title** | Guide to Red Teaming Methodology on AI Safety / AI 안전에 대한 레드티밍 방법론 가이드 |
| **Publisher** | Japan AI Safety Institute (AISI) / 일본 AI 안전연구소 |
| **Date** | March 31, 2025 (Version 1.10) |
| **Pages** | 67 pages |
| **Purpose** | Provide developers and providers of AI systems with evaluation methods and implementation points for red teaming from the attacker's perspective / AI 시스템 개발자 및 제공자에게 공격자 관점에서의 레드팀 평가 방법 및 구현 포인트 제공 |
| **Scope** | LLM systems (including multimodal foundation models) / LLM 시스템(멀티모달 파운데이션 모델 포함) |
| **License** | Japanese government publication |
| **Language** | English (translated from Japanese original) |

---

## 2. Key Content Summary / 주요 내용 요약

### Structure / 구조
The document follows a 15-step process across three main processes:
- **Process 1 (Ch.6):** Planning and Preparation (Steps 1-5)
- **Process 2 (Ch.7):** Planning and Conducting Attacks (Steps 6-10)
- **Process 3 (Ch.8):** Reporting and Developing Improvement Plans (Steps 11-15)

### Key Topics / 핵심 주제

1. **Terminology Definition (Section 1.2):** Comprehensive definitions including Red Teaming, AI System, AI Safety, Foundation Model, LLM, Human-Centric, Safety, Fairness, Privacy Protection, Ensuring Security, Transparency -- all referencing Japanese government "AI Guidelines for Business"

2. **AI Safety Evaluation Perspectives (6 elements):**
   - Human-Centric / 인간 중심
   - Safety / 안전
   - Fairness / 공정성
   - Privacy Protection / 프라이버시 보호
   - Ensuring Security / 보안 보장
   - Transparency / 투명성

3. **Attack Methods (Chapter 3):**
   - Direct prompt injection (with categorization table: prefix injection, competing objects, roleplay, special encodings, character conversion, language conversion)
   - Indirect prompt injection (RAG poisoning)
   - Prompt leaking
   - General AI attack methods: poisoning attacks, evasion attacks, model extraction, membership inference, model inversion
   - Multimodal attacks

4. **Red Team Structure (Chapter 4):**
   - Attack Planner/Conductor (high expertise required)
   - AI System Expert (domain experts, data scientists)
   - Target System Development/Provision Manager
   - Business executive officers for overall management

5. **Timing (Chapter 5):**
   - Before release (primary)
   - After release (continuous, event-triggered)

6. **15-Step Red Teaming Process:**
   - STEP 1: Deciding to launch
   - STEP 2: Budget/resources/third-party
   - STEP 3: Planning (system overview, usage patterns, scope)
   - STEP 4: Environment preparation
   - STEP 5: Escalation flow
   - STEP 6: Risk scenario development (system config, AI safety perspectives, usage patterns)
   - STEP 7: Attack scenario development
   - STEP 8: Conducting attacks
   - STEP 9: Record keeping
   - STEP 10: Post-attack activities
   - STEP 11-15: Reporting and improvement

7. **System Configuration Categories:**
   - Self-developed LLMs
   - Pre-trained LLMs with fine-tuning
   - OSS LLMs integrated
   - OSS LLMs with fine-tuning
   - External API usage

8. **Testing Types:** Black-box, White-box, Gray-box; In-operation, staging, development environments

9. **Tools and Automation:** References to automated tools, manual red teaming, and AI agent-based red teaming (Section 7.3.4)

10. **Appendix:** Tool list and reference list

---

## 3. Relevance to Guideline / 가이드라인과의 관련성

| Guideline Phase/Document | Relevance Level | Description |
|--------------------------|----------------|-------------|
| **Phase 0 (Terminology)** | HIGH | AISI defines 6 AI Safety perspectives (Human-Centric, Safety, Fairness, Privacy, Security, Transparency) not fully mirrored in our terminology |
| **Phase 1-2 (Attacks)** | HIGH | Comprehensive attack classification table (Table 1) with asset-based categorization and detailed prompt injection taxonomy |
| **Phase 3 (Normative Core)** | VERY HIGH | 15-step process closely parallels our 6-stage lifecycle; provides granular sub-steps especially for planning and risk scenario development |
| **Phase 4 (Living Annex)** | MEDIUM | Tool list in appendix; attack categorization could supplement our pattern library |
| **Phase R (References)** | HIGH | Already referenced as R-10 region (Japan/AISI context) but content not deeply analyzed |

---

## 4. Reflection Status / 반영 현황

### Already Reflected / 이미 반영됨
- Basic concept of pre/post-deployment red teaming (Phase 3, Section 11)
- Black/white/gray-box testing types (Phase 3, Section 2.3)
- General attack taxonomy (prompt injection, poisoning) in Phase 1-2
- Role definitions (attack planner, domain expert) in Phase 0 and Phase 3

### Partially Reflected / 부분 반영됨
- **AI Safety 6-element framework** -- our guideline mentions safety/security/alignment but does not systematically cover all 6 AISI perspectives (Human-Centric, Fairness, Privacy Protection are mentioned but not as a structured evaluation framework)
- **15-step process** -- our 6-stage lifecycle covers similar ground but AISI's granularity at sub-step level (especially Steps 6-7 on risk/attack scenario development) is more detailed
- **System configuration categories** -- our guideline mentions different deployment patterns but AISI's specific 5-category LLM usage classification is more structured

### Not Reflected / 미반영
- **Usage Pattern Analysis (Section 6.3.2):** Three specific usage patterns (LLM output patterns, reference source patterns, LLM itself patterns) for systematic risk identification -- not in our current guideline
- **Defense Mechanism Inventory (Section 6.3.2.3):** Structured collection of existing defense mechanisms (pre-filtering, LLM internal, post-filtering, RLHF) as a step before red teaming
- **Confirmation Level Concept (Section 6.3.3):** Graduated levels of verification (possibility indication, evidence of likelihood, actual attack confirmation)
- **Record Keeping Standards (Step 9):** Specific requirements for what to document during red teaming execution
- **SBOM/AIBOM Usage:** Reference to Software/AI Bill of Materials for interoperability
- **Reproducibility Discussion (Section 2.5):** Explicit discussion of LLM non-determinism challenges for red teaming reproducibility with practical guidance (iteration counts, criteria setting)
- **Japanese Regulatory Context:** Integration with Japanese "AI Guidelines for Business" and METI/MIC frameworks

---

## 5. Specific Modification Proposals / 구체적 수정 제안

### Proposal 1: Add AI Safety Evaluation Perspectives Framework
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-0-terminology.md`
- **Target Section:** Section 1.7 (Alignment vs Safety vs Security)
- **Proposed Change:** Add a table mapping our Safety/Security/Alignment framework to AISI's 6-element framework (Human-Centric, Safety, Fairness, Privacy Protection, Ensuring Security, Transparency). This provides a comprehensive evaluation scope that goes beyond our current safety/security/alignment triad.
- **Rationale:** AISI's framework captures dimensions like Fairness, Transparency, and Human-Centric that our guideline addresses informally but does not codify as structured evaluation perspectives.

### Proposal 2: Add Usage Pattern Analysis Methodology
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- **Target Section:** Stage 1 (Planning), Activity P-2 (Threat Model Construction)
- **Proposed Change:** Add a sub-activity for "LLM Usage Pattern Classification" following AISI's three-category framework:
  1. Usage patterns regarding LLM output (text generation, query generation, code generation)
  2. Usage patterns regarding reference sources (internal DB, internet, RAG)
  3. Usage patterns regarding LLM itself (self-developed, fine-tuned, OSS, API)
- **Rationale:** This structured approach ensures that threat modeling captures system-specific risks based on how the LLM is actually used, not just generic threat categories.

### Proposal 3: Add Existing Defense Mechanism Inventory Step
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- **Target Section:** Stage 1 (Planning), Activity P-2 (Threat Model Construction)
- **Proposed Change:** Add explicit requirement to catalog existing defense mechanisms before red teaming: pre-filtering, LLM internal measures, post-filtering, RLHF-based protections. This mirrors AISI Section 6.3.2.3.
- **Rationale:** Our current guideline mentions "Existing mitigations" as a bullet point but lacks the structured categorization that AISI provides. Knowing the defense stack is critical for designing bypass-focused tests.

### Proposal 4: Add Reproducibility and Iteration Guidance
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- **Target Section:** Stage 3 (Execution), or new sub-section in Section 9 (Test Design Principles)
- **Proposed Change:** Add a principle or guidance on managing non-determinism:
  - Setting clear attack success criteria
  - Defining iteration counts for non-deterministic tests
  - Logging execution conditions alongside results
  - Acknowledging that failed attacks may succeed later (and vice versa)
- **Rationale:** AISI Section 2.5 explicitly discusses this challenge and provides practical guidance. Our guideline acknowledges non-determinism conceptually but lacks operational guidance for managing it during execution.

### Proposal 5: Add Confirmation Level Framework
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- **Target Section:** Stage 2 (Design), Activity D-4 (Evaluation Framework Design)
- **Proposed Change:** Add graduated confirmation levels:
  - Level 1: Indicate possibility of successful attack
  - Level 2: Provide evidence regarding likelihood of success
  - Level 3: Confirm actual attack success
  Map to resource/effort considerations.
- **Rationale:** This helps organizations scale red teaming effort to available resources while maintaining transparency about what was actually verified.

### Proposal 6: Add SBOM/AIBOM Reference
- **Target File:** `/Users/jonghongjeon/git/agent/output/ai-redteam-guideline/phase-3-normative-core.md`
- **Target Section:** Stage 1 (Planning), Activity P-1 (Engagement Scoping)
- **Proposed Change:** Recommend use of SBOM/AIBOM for documenting AI system components during scoping phase.
- **Rationale:** AISI references SBOM/AIBOM for interoperability. This aligns with supply chain security concerns already in our Phase 1-2 document.

---

## 6. Priority / 우선순위

| Proposal | Priority | Rationale |
|----------|----------|-----------|
| Proposal 1 (AI Safety Perspectives) | **권장 반영** (Recommended) | Enhances scope completeness; aligns with international frameworks |
| Proposal 2 (Usage Pattern Analysis) | **필수 반영** (Essential) | Directly improves threat modeling quality; unique operational contribution |
| Proposal 3 (Defense Mechanism Inventory) | **필수 반영** (Essential) | Critical for defense-aware testing principle already in our guideline |
| Proposal 4 (Reproducibility Guidance) | **권장 반영** (Recommended) | Addresses practical gap in execution guidance |
| Proposal 5 (Confirmation Levels) | **권장 반영** (Recommended) | Useful for resource-constrained organizations |
| Proposal 6 (SBOM/AIBOM) | **참고** (Reference) | Good practice but not unique to this document |

---

## 7. Cross-References / 교차 참조

- **OWASP GenAI Red Teaming Guide:** Complementary -- OWASP provides broader risk categorization while AISI provides more granular process steps
- **CSA Agentic AI Guide:** Limited overlap -- AISI focuses on LLM systems while CSA focuses on agentic AI; both complement each other
- **ISO/IEC TS 42119-7:** AISI process aligns well with risk-based approach in 42119 series

---

*Analysis complete. This document is one of the most process-detailed references available and provides unique operational guidance not found in other reference documents.*

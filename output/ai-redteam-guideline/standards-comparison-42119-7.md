# Standards Comparison Analysis: ISO/IEC AWI TS 42119-7 vs AI Red Team International Guideline
# 표준 비교 분석: ISO/IEC AWI TS 42119-7 vs AI 레드팀 국제 가이드라인

**Document ID:** AIRTG-Standards-Comparison-42119-7-v1.0
**Date / 작성일:** 2026-02-09
**Purpose / 목적:** Clause-by-clause comparison of ISO/IEC AWI TS 42119-7:2026 with the current AI Red Team International Guideline to identify alignment gaps and provide specific modification recommendations.

---

## 1. 42119-7 Document Summary / 42119-7 문서 요약

### 1.1 Document Identity / 문서 식별

| Field | Value |
|-------|-------|
| **Full Title** | ISO/IEC AWI TS 42119-7:2026(en) -- Artificial intelligence -- Testing of AI -- Part 7: Red teaming |
| **Committee** | ISO/IEC JTC 1/SC 42 (Artificial Intelligence) |
| **Secretariat** | ANSI |
| **Status** | AWI (Approved Work Item) -- Working Draft stage with multiple open PE ACTIONs |
| **Pages** | 38 pages (including annexes) |
| **Series** | Part of ISO/IEC 42119 series on Testing of AI |
| **Alignment** | Designed to work in conjunction with ISO/IEC/IEEE 29119 software testing series |

### 1.2 Scope / 범위

The document provides **technology-agnostic guidance** for conducting red teaming assessments on AI systems, covering:
- Definitions and terminology specific to red teaming in AI contexts
- Identification of risks, applicability, objectives and attack vectors
- Methodologies for planning and executing red teaming assessments, aligned with ISO/IEC/IEEE 29119 series
- Procedures for documenting and reporting red teaming findings
- Recommendations for integrating red teaming into the AI system lifecycle

**Pending scope additions (from PE ACTIONs):**
- Roles and responsibilities
- Competencies including skills
- Disclosure criteria
- References to bias and ethics standards

### 1.3 Structure Overview / 구조 개요

| Clause | Title | Status |
|--------|-------|--------|
| 1 | Scope | Complete |
| 2 | Normative references | Complete (none) |
| 3 | Terms and definitions | Complete (20 terms) |
| 4 | Introduction to AI red teaming | Complete |
| 4.1 | General | Complete |
| 4.2 | Comparison: traditional vs AI red teaming | Complete |
| 4.3 | Multi-dimensional approaches | Complete |
| 4.4 | Relationship with other standards | Complete |
| 5 | Methodologies for planning and executing | Mostly Complete |
| 5.1 | Three-phase approach | Complete |
| 5.2 | Phase 1: Team formation and preparation | Complete |
| 5.3 | Phase 2: Execution of AI red team activities | Complete |
| 5.4 | Phase 3: Knowledge sharing and reporting | Complete |
| 6 | Red teaming techniques | Partial |
| 6.1 | Overview of AI red teaming techniques | Complete |
| 6.2 | Selecting appropriate techniques | Complete |
| 6.3 | Selection of testing approach | Complete |
| 7 | Documenting and reporting findings | **Mostly TBD** |
| 8 | Integration into AI lifecycle | **TBD** |
| 9 | Adapting traditional testing methodologies | **TBD** |
| Annex A | Use case examples (informative) | TBD |
| Annex B | AI red teaming techniques (informative) | Partial |
| Annex C | Document templates (informative) | TBD (headers only) |
| Annex D | Factors causing new vulnerabilities (informative) | Complete |
| Annex E | Relationship with ISO/IEC/IEEE 29119-2 (informative) | Complete |
| Bibliography | References | Complete (9 entries) |

### 1.4 Key Characteristics / 핵심 특성

1. **Three-Phase Process**: Team Formation & Preparation -> Execution -> Knowledge Sharing & Reporting
2. **Multi-Dimensional Assessment**: Security & Safety (CBRN), Quality (Reliability & Robustness), Performance (Efficiency under Attack)
3. **ISO 29119 Alignment**: Explicit mapping to ISO/IEC/IEEE 29119-2 test processes in Annex E
4. **Agentic AI Coverage**: Includes terms and risk scenarios for agentic AI, multi-agent systems, and indirect prompt injection
5. **Domain-Specific Approach**: CBRN/Safety, Quality/Integrity, Performance teams with distinct mission assignments
6. **Tester Wellbeing**: Unique clause on psychological safety and opt-out mechanisms for red teamers

---

## 2. Clause-by-Clause Comparison Mapping Table / 조항별 비교 매핑 테이블

### Legend / 범례
- **Yes**: Fully reflected in guideline / 가이드라인에 완전 반영
- **Partial**: Partially reflected, gaps exist / 부분 반영, 갭 존재
- **No**: Not reflected in guideline / 가이드라인에 미반영

| 42119-7 Clause | 42119-7 Content Summary | Reflection Status | Guideline Location | Gap Description |
|---|---|---|---|---|
| **1 Scope** | Technology-agnostic guidance for AI red teaming | **Yes** | Phase 0 §2.1 | Guideline scope is broader (includes socio-technical), well aligned |
| **2 Normative references** | None | **Yes** | Phase R, Phase 3 Normative References | Guideline has extensive normative references |
| **3.1.1 Red team** | Independent group challenging a target | **Partial** | Phase 0 §1.2 (AI Red Teaming) | 42119-7 defines "red team" (group) separately from "AI red team" -- guideline merges these |
| **3.1.2 AI red team** | Stakeholders with varying backgrounds using adversarial methods | **Partial** | Phase 0 §1.2, §3.1 | Definition exists but does not emphasize "varying backgrounds" specifically |
| **3.1.3 Adversarial attack** | Attempt to deceive AI models using crafted inputs | **Yes** | Phase 0 §1.2 (Adversarial Testing) | Well covered |
| **3.1.4 Data Poisoning** | Manipulation of training data | **Yes** | Phase 0 §1.5, Phase 1-2 §2.3 | Well covered |
| **3.1.5 Hallucination** | Factually incorrect AI outputs | **Yes** | Phase 1-2 §1.6 | Well covered with additional detail |
| **3.1.6-3.1.15** | Test terminology (from 29119-1) | **Partial** | Phase 3 references 29119 | Guideline does not explicitly define: test specification, test case, expected result, test procedure, test item, test objective, test plan, testing, test (in 29119 sense) |
| **3.1.16 Red teaming** | Testing practice focused on inducing unintended AI behavior | **Partial** | Phase 0 §1.2 | 42119-7's definition is broader: "benign or adversarial perspective"; guideline focuses on adversarial |
| **3.1.17 ML algorithm** | From ISO/IEC 22989:2022 | **No** | Not explicitly defined | Not directly relevant but referenced |
| **3.1.18 Agentic AI system** | AI system with perception, reasoning, execution, limited supervision | **Yes** | Phase 0 §1.6 | Well aligned; guideline uses slightly different wording |
| **3.1.19 Multi-agent system** | Multiple interacting intelligent agents | **Partial** | Phase 0 §1.6 references but no standalone definition | Guideline covers concept in Phase 1-2 §2.1 (ASI07, ASI09) but lacks formal definition |
| **3.1.20 Indirect prompt injection** | Malicious instructions in external data sources | **Yes** | Phase 0 §1.5, Phase 1-2 §1.2 | Well covered |
| **3.2 Abbreviations** | FM, LLM, MMLM, VLA, VLM | **No** | No abbreviation section | Guideline lacks formal abbreviation section |
| **4.1 General** | AI red teaming rationale and primary objectives | **Yes** | Phase 0 §5 (Guiding Principles), Phase 3 §1 | Core rationale well reflected |
| **4.2 Traditional vs AI RT comparison** | Table comparing traditional, cybersecurity, and AI RT | **Yes** | Phase 0 §4 (Differentiation Matrix) | Guideline has more comprehensive differentiation matrix |
| **4.3 Multi-dimensional approaches** | Security/Safety, Quality, Performance dimensions | **Partial** | Phase 3 §9.3 (Dual Mandate) | Guideline emphasizes Safety/Security dual mandate but **lacks explicit Performance dimension** and CBRN-specific dimension |
| **4.4 Relationship with other standards** | ISO 5338, 16085, 25059, 25058, 29147, 20246 | **Partial** | Phase R, Phase 3 Normative References | Guideline references 29119 and 42119-2 but **lacks explicit mapping to ISO 5338, 16085, 25059, 25058, 29147, 20246** |
| **5.1 Three-phase approach** | Team Formation -> Execution -> Knowledge Sharing | **Yes** | Phase 3 §1.1 (Six-Stage Lifecycle) | Guideline has 6 stages (more granular); 42119-7 has 3 phases. Well aligned conceptually |
| **5.2.1.1.1 Red team selection** | Align with org management structure, appoint SMEs by risk | **Partial** | Phase 3 §2.3 (P-3 Team Composition) | Guideline covers team composition but lacks detail on org structure alignment and domain-specific SME appointments (CBRN, Quality, Performance) |
| **5.2.1.1.2 Attack planner/conductor** | External experts if internal resources insufficient | **Yes** | Phase 0 §3.1 (External Red Team) | Covered |
| **5.2.1.1.3 Target system manager** | Dev/provision manager considers impact on release schedule | **Partial** | Phase 3 §1.2 (System Owner role) | Guideline's SO role is similar but lacks explicit release schedule coordination |
| **5.2.1.1.4 Other stakeholders** | Top management oversight, risk management stakeholders | **Yes** | Phase 0 §3.2, Phase 3 §1.2 (PS) | Covered |
| **5.2.1.2.1 Timing general** | Determine scope and timing per system evaluation schedule | **Partial** | Phase 3 §11 (Continuous Model) | Conceptually covered but lacks explicit per-schedule alignment |
| **5.2.1.2.2 Before release** | Initial RT before release, cover entire system | **Yes** | Phase 3 §11.5 (Layer 3 triggers) | Covered |
| **5.2.1.2.3 After release** | Periodic RT throughout development, deployment, operation | **Yes** | Phase 3 §11 (Continuous Operating Model) | Well covered with 3-layer model |
| **5.2.1.2.4.1 Competence & Training** | Required skills: system knowledge, adversarial techniques, domain risks, ethics/RoE | **Partial** | Phase 0 §3.4, Phase 3 §2.3 (P-3) | Guideline identifies competencies needed but **lacks formal training requirements specification** |
| **5.2.1.2.4.2 Tool & Environment Support** | Computational resources, RT tools, access privileges | **Yes** | Phase 3 §3.4 (Test Environment Requirements) | Covered |
| **5.2.1.2.4.3 Tester Safety & Psychological Support** | Psychological safety, rotation schedules, opt-out mechanisms | **No** | Not covered | **Critical gap**: Guideline has no provision for red teamer psychological wellbeing |
| **5.2.2.1 Risk scenario development** | System config, usage patterns, information assets, evaluation dimensions | **Yes** | Phase 3 §2.3 (P-1, P-2) | Well covered through engagement scoping and threat model construction |
| **5.2.2.1.1 Risk scenario dimensions** | Safety/Security, Quality, Performance, Agentic Control, Memory/Context, Multi-Agent, Checker-out-of-loop, Critical System Interaction | **Partial** | Phase 1-2 covers most, Phase 3 §2.3 | Guideline covers most but **lacks explicit "Checker-out-of-the-Loop" and "Critical System Interaction" as named risk dimensions** |
| **5.2.2.2 Objective setting** | SMART goals, security/safety/reliability/performance classification | **Partial** | Phase 3 §2.3 (P-1) | Guideline defines objectives but **does not mandate SMART criteria** and lacks formal objective classification by dimension |
| **5.2.2.2.3 Success criteria & metrics** | Quantitative (ASR <1%, latency <200ms) and qualitative metrics | **Partial** | Phase 3 §3.3 (D-4) | Guideline explicitly **prohibits numeric pass/fail thresholds** -- **direct philosophical conflict with 42119-7** |
| **5.2.2.2.4 Compliance alignment** | Internal AI governance, external regulatory requirements | **Yes** | Phase 3 §6.3 (R-3), §10 (Report §8) | Covered in reporting |
| **5.2.2.3 Scope definition** | Whole AI system, SBOM/AIBOM, component classification, black/white box | **Partial** | Phase 3 §2.3 (P-1) | Guideline covers scope definition but **lacks SBOM/AIBOM reference** |
| **5.2.2.4 Resource allocation** | Budget, personnel, organizational structure, tools | **Partial** | Phase 3 §2.3 (P-3) | Covered partially in team composition; **lacks explicit budget/resource allocation guidance** |
| **5.2.2.5 Target environment preparation** | Test environment selection, monitoring configuration | **Yes** | Phase 3 §4.3 (E-1) | Covered |
| **5.2.2.6 Schedule organization** | Align with release schedule, segment into components | **Partial** | Phase 3 §2.3 (P-1, Temporal scope) | Guideline mentions temporal scope but **lacks detailed scheduling guidance** |
| **5.2.2.7 Preparing environment** | Request assets (URLs, API keys, logs), coordinate stakeholders | **Yes** | Phase 3 §4.3 (E-1) | Covered |
| **5.2.2.8 Legal and ethical considerations** | Align techniques with objectives including ethics | **Yes** | Phase 3 §2.3 (P-4) | Well covered |
| **5.2.2.9 Escalation and emergency procedures** | Stop/Go criteria, test incident reporting, crisis management | **Yes** | Phase 3 §4.3 (E-5) | Well covered with escalation protocol table |
| **5.2.3.1.1 Rules of Engagement** | Forbidden targets, authorized techniques, stop conditions | **Partial** | Phase 3 §2.3 (P-4) | Guideline covers ethical boundaries and authorization but **lacks formal "Rules of Engagement" terminology and structure** |
| **5.2.3.1.2 Domain-specific missions** | CBRN & Safety Team, Quality & Integrity Team, Performance Team | **No** | Not reflected | **Gap**: Guideline does not define domain-specific team missions or task assignments |
| **5.2.3.1.3 Reporting requirements** | Full prompt chain, model output, severity assessment | **Yes** | Phase 3 §4.4, §5.3 (A-2), §10 (Report) | Covered in finding characterization and report structure |
| **5.2.3.2 Instructions and guidelines** | Communication plan | **Partial** | Phase 3 §6.3 (R-4) | Covered in stakeholder briefing but less structured |
| **5.2.4.1 Architectural & data flow analysis** | I/O modalities, external dependencies, training data review | **Yes** | Phase 3 §3.3 (D-1) | Well covered in attack surface mapping |
| **5.2.4.2 Review of existing safeguards** | System prompts, filtration layers analysis | **Yes** | Phase 3 §9.5 (Defense-Aware Testing) | Well covered |
| **5.2.4.3 Dimension-specific analysis** | Performance testing (context window), Quality testing (domain knowledge) | **Partial** | Phase 3 §3.3 (D-2) | Covered conceptually but **lacks Performance-specific analysis guidance** |
| **5.3.1 Execution basic concept** | Three-step: Exploratory -> Attack Development -> System-wide | **Yes** | Phase 3 §4.3 (E-2, E-3) | Covered with structured + creative/exploratory |
| **5.3.2 Reconnaissance** | Four factors: system config, usage patterns, info assets, safety perspectives | **Yes** | Phase 3 §2.3 (P-2), §3.3 (D-1) | Covered in threat model and attack surface mapping |
| **5.3.3 Identifying attack surfaces** | Interface endpoints, data ingestion pipelines, model components | **Yes** | Phase 3 §3.3 (D-1) | Well covered at three levels |
| **5.3.4 Attack development** | Based on defense mechanisms, reported attacks, trends, blind spots | **Yes** | Phase 3 §3.3 (D-3), §9.5 | Well covered |
| **5.3.5 Attack deployment** | Three-step: Exploratory -> Attack Procedures -> System-wide Testing | **Yes** | Phase 3 §4.3 | Covered |
| **5.3.6.1 Severity assessment criteria** | Domain-specific: CBRN (actionability, novelty), Performance (resource saturation, latency), Quality (hallucination severity, bias), Systemic (lateral movement, cascading, traceability) | **Partial** | Phase 3 §3.3 (D-4) | Guideline uses multi-dimensional characterization but **lacks the specific CBRN actionability/novelty framework and Performance metric thresholds** |
| **5.3.6.2 Downstream consequence analysis** | Execution risk (code execution), reputational damage | **Yes** | Phase 3 §5.3 (A-3 Attack Chain Analysis) | Covered in attack chain analysis |
| **5.3.6.3 Root cause analysis** | Identify failure cause (training data, system prompt, output filtering) | **Partial** | Phase 3 §5.3 (A-1, A-2) | Guideline consolidates and characterizes findings but **lacks explicit root cause analysis step** |
| **5.3.7 Record keeping** | Retain records per org policies | **Yes** | Phase 3 §4.4 (Raw Finding Log, Evidence Artifacts) | Covered |
| **5.4.1 Preparing report** | Document results, review with stakeholders | **Yes** | Phase 3 §6.3 (R-1) | Covered |
| **5.4.2 Test completion report** | Final report, automated alerting, translation to test cases for drift testing | **Partial** | Phase 3 §6.4, §11.3 | Report covered; **translation to regression test cases not explicitly mandated** |
| **5.4.3 Improvement plans** | Prioritized remediation, layered defense approach | **Yes** | Phase 3 §6.3 (R-3), §7.3 (F-1) | Well covered |
| **5.4.4.1 Internal knowledge transfer** | Attack signature library, design patterns for mitigation, lesson-learned sessions | **Partial** | Phase 3 §7.3 (F-3) | Guideline mentions lessons learned integration but **lacks explicit "Attack Signature Library" and "Mitigation Design Patterns" sharing mechanisms** |
| **5.4.4.2 Executive & risk mgmt reporting** | Residual risk profile, compliance status | **Yes** | Phase 3 §6.3 (R-1, R-4), §10 (Report §1, §8) | Well covered |
| **5.4.4.3 Controlled dissemination (CBRN/Safety)** | Need-to-know basis, sanitized reporting for sensitive findings | **No** | Not reflected | **Gap**: Guideline has no provision for access-controlled dissemination of high-risk findings |
| **5.4.4.4 External responsible disclosure** | ISO/IEC 29147 adherence, contribution to safety databases | **Partial** | Phase 0 §2.3 (Responsible disclosure boundary) | Guideline mentions responsible disclosure as a boundary condition but **lacks ISO 29147 reference and procedure** |
| **5.4.5 Follow-up and re-verification** | Follow-up assessment, periodic or update-triggered | **Yes** | Phase 3 §7 (Stage 6: Follow-up) | Well covered |
| **6.1.1 Overview of techniques** | Range from manual to automated | **Yes** | Phase 1-2, Phase 4 Annex A | Extensively covered |
| **6.1.2 Perspectives for attack scenarios** | Bypassing pre-processing, inducing malicious output, bypassing post-processing | **Partial** | Phase 1-2 §1-2 | Guideline covers these attack types but **does not organize them in this three-perspective framework** |
| **6.1.3 Success criteria per dimension** | CBRN (zero-tolerance), Quality (threshold-based), Performance (operational limits) | **Partial** | Phase 3 §3.3 (D-4) | **Philosophical tension**: Guideline prohibits numeric pass/fail thresholds; 42119-7 defines specific per-dimension criteria |
| **6.2 Selecting techniques** | Based on objectives, resources, system characteristics, risk management | **Yes** | Phase 3 §3.3 (D-2) | Well covered |
| **6.3 Testing approach by component** | Black-box for commercial APIs, white-box for OSS/in-house, hybrid | **Yes** | Phase 3 §2.3 (P-1) access model | Covered |
| **7 Reporting (7.1-7.5)** | Data recording, report structure, communication, confidentiality, identification vs measurement | **Partial** | Phase 3 §6, §10 | Guideline has detailed report structure; 42119-7 Clause 7 is mostly **TBD** |
| **8 Lifecycle integration** | Development, Deployment, Monitoring phases | **Yes** | Phase 3 §11 | Well covered with 3-layer continuous model |
| **9 Adapting traditional testing** | Test case design, automated tools, result interpretation | **TBD in 42119-7** | Phase 3 §9 (Test Design Principles) | 42119-7 is TBD; guideline covers this |
| **Annex A Use cases** | TBD | **N/A** | Phase 1-2 §5 (Incident Analysis) | Guideline has incident analysis |
| **Annex B Red teaming techniques** | Attack techniques table, prompt injection categories, domain-based approaches | **Yes** | Phase 1-2, Phase 4 Annex A | Guideline has more extensive coverage |
| **Annex C Document templates** | Test plan, recommendation report, lessons learned, communication plan | **Partial** | Phase 3 §10 (Report Template) | Guideline has report template but **lacks standalone test plan and communication plan templates** |
| **Annex D Factors for new vulnerabilities** | Company content changes, evolving news, cybersecurity research, new model versions | **Yes** | Phase 3 §11.5 (Layer 3 Triggers) | Well covered |
| **Annex E ISO 29119-2 mapping** | Phase-by-phase mapping to 29119-2 processes | **Partial** | Phase 3 Normative References | Guideline references 29119 alignment but **lacks the explicit process mapping table** |

---

## 3. Modification Recommendations / 수정 권고사항

### 3.1 필수 반영 (Must Reflect) -- Required for Compliance / 준수를 위한 필수 사항

| ID | Recommendation | Target File | Target Section | Rationale |
|---|---|---|---|---|
| **M-01** | **Add ISO/IEC 29119-series test terminology to Phase 0** | phase-0-terminology.md | New §1.11 "Software Testing Terms" | 42119-7 Clause 3.1.6-3.1.15 defines 10 terms from ISO 29119-1 (test specification, test case, expected result, test procedure, test item, test objective, test plan, testing, test). These are foundational to 42119-7's process and must be referenced. |
| **M-02** | **Add "Multi-agent system" formal definition to Phase 0** | phase-0-terminology.md | §1.6 (extend) | 42119-7 defines multi-agent system (3.1.19). Guideline discusses the concept but lacks a formal definition entry. |
| **M-03** | **Add formal Abbreviations section** | phase-0-terminology.md | New §1.12 "Abbreviations" | 42119-7 Clause 3.2 defines FM, LLM, MMLM, VLA, VLM. Guideline uses these acronyms without formal definition section. |
| **M-04** | **Add explicit ISO standards relationship mapping** | phase-3-normative-core.md | Normative References (extend) | 42119-7 Clause 4.4 maps to ISO 5338, 16085, 25059/25058, 29147, 20246. Guideline must reference these to maintain traceability. |
| **M-05** | **Add "Rules of Engagement (RoE)" as formal concept** | phase-3-normative-core.md | §2.3 (P-4) (extend) | 42119-7 §5.2.3.1.1 defines RoE with forbidden targets, authorized techniques, and stop conditions. Guideline's ethical boundaries section should adopt this ISO terminology. |
| **M-06** | **Add SBOM/AIBOM reference to scope definition** | phase-3-normative-core.md | §2.3 (P-1) | 42119-7 §5.2.2.3 recommends SBOM/AIBOM for component identification. This is a critical tool for scope definition, especially for supply chain risk. |
| **M-07** | **Add explicit root cause analysis step in Analysis stage** | phase-3-normative-core.md | §5.3 (new A-6) | 42119-7 §5.3.6.3 mandates root cause analysis. Guideline's analysis stage characterizes findings but does not explicitly require identifying root causes. |
| **M-08** | **Add ISO/IEC 29119-2 process mapping table** | phase-3-normative-core.md | New Appendix or §1 extension | 42119-7 Annex E provides explicit mapping between red teaming phases and 29119-2 processes. Guideline claims 29119 alignment but lacks the mapping table. |

### 3.2 권장 반영 (Should Reflect) -- Strengthens the Guideline / 가이드라인 강화

| ID | Recommendation | Target File | Target Section | Rationale |
|---|---|---|---|---|
| **S-01** | **Add "Performance" as a third assessment dimension alongside Safety and Security** | phase-3-normative-core.md | §9.3 (extend to "Triple Mandate") | 42119-7 §4.3 defines three dimensions: Security/Safety, Quality, Performance. Guideline's §9.3 only mandates Safety + Security. Performance (latency degradation, resource exhaustion, sponge attacks) should be a named dimension. |
| **S-02** | **Add red teamer psychological safety and wellbeing provisions** | phase-3-normative-core.md | §2.3 (P-3) (new P-3b) | 42119-7 §5.2.1.2.4.3 requires psychological support, rotation schedules, and opt-out mechanisms. This is a **unique and important contribution** absent from the guideline. |
| **S-03** | **Add domain-specific team mission assignment guidance** | phase-3-normative-core.md | §3.3 (D-2) (extend) | 42119-7 §5.2.3.1.2 defines specific team missions for CBRN/Safety, Quality/Integrity, and Performance. Guideline covers team composition but not mission-specific task assignment. |
| **S-04** | **Add controlled dissemination protocol for high-risk findings** | phase-3-normative-core.md | §6.3 (new R-5) | 42119-7 §5.4.4.3 mandates need-to-know basis and sanitized reporting for CBRN/Safety findings. Guideline lacks this critical safety provision. |
| **S-05** | **Add red teaming findings to regression test library mechanism** | phase-3-normative-core.md | §7.3 (F-3) (extend), §11.3 | 42119-7 §5.4.2 specifies translating red teaming scenarios into saved test cases for weekly drift testing. Guideline's continuous model should formalize this. |
| **S-06** | **Add attack signature library and mitigation pattern sharing** | phase-3-normative-core.md | §7.3 (F-3) (extend) | 42119-7 §5.4.4.1 mandates creating a shared repository of effective attack prompts and successful defense strategies. Guideline mentions "lessons learned" but lacks this operational mechanism. |
| **S-07** | **Add three-perspective attack scenario framework** | phase-12-attacks.md | New §7 or restructure | 42119-7 §6.1.2 organizes attack scenarios by three perspectives: (a) bypassing pre-processing/input embedding, (b) inducing malicious output, (c) bypassing post-processing/system impact. This is a useful complementary framework. |
| **S-08** | **Resolve philosophical tension on success criteria** | phase-3-normative-core.md | §3.3 (D-4) | 42119-7 §5.2.2.2.3 and §6.1.3 define quantitative success criteria (ASR <1%, latency thresholds). Guideline §3.3 D-4 prohibits numeric pass/fail. **Recommendation**: Keep guideline's qualitative approach as primary but acknowledge that organizations may define quantitative thresholds per 42119-7 for specific domains (CBRN zero-tolerance, performance SLAs). |
| **S-09** | **Add training and competency requirements specification** | phase-3-normative-core.md | §2.3 (P-3) (extend) | 42119-7 §5.2.1.2.4.1 specifies four training areas: System Knowledge, Adversarial Techniques, Domain-Specific Risks, Ethics/RoE. Guideline should formalize these as minimum competency requirements. |
| **S-10** | **Add ISO/IEC 29147 reference for vulnerability disclosure** | phase-3-normative-core.md | §6.3 or §7.3, phase-r-references.md | 42119-7 §5.4.4.4 requires adherence to ISO/IEC 29147 for external disclosure. Guideline should reference this standard. |

### 3.3 선택 반영 (May Reflect) -- Additional Depth / 추가 깊이

| ID | Recommendation | Target File | Target Section | Rationale |
|---|---|---|---|---|
| **O-01** | **Add SMART criteria reference for objective setting** | phase-3-normative-core.md | §2.3 (P-1) | 42119-7 §5.2.2.2.1 recommends SMART goals. This is a well-known framework that could be referenced without mandating. |
| **O-02** | **Add resource allocation guidance (budget, tools)** | phase-3-normative-core.md | §2.3 (new P-6) | 42119-7 §5.2.2.4 covers budget, personnel, and tool allocation. Guideline could benefit from explicit resource planning guidance. |
| **O-03** | **Add scheduling guidance aligned with release cycles** | phase-3-normative-core.md | §2.3 (P-1) | 42119-7 §5.2.2.6 provides guidance on aligning RT schedule with release schedule, segmenting by components. |
| **O-04** | **Add document templates for test plan and communication plan** | phase-4-living-annex.md | New Annex E | 42119-7 Annex C defines templates for test plan, recommendation report, lessons learned, communication plan. Guideline has report template but lacks others. |
| **O-05** | **Add factors causing new vulnerabilities to emerge** | phase-4-living-annex.md | Annex D (extend) | 42119-7 Annex D lists specific factors (company content changes, evolving news, cybersecurity research advances, new model versions). This maps well to Phase 3 §11.5 triggers but could be elaborated. |
| **O-06** | **Expand 42119-7 "red teaming" definition note** | phase-0-terminology.md | §1.2 | 42119-7 Note 1 to 3.1.16 states red teaming "can use either a benign or adversarial perspective." Guideline could acknowledge this broader definition while maintaining its adversarial focus. |

---

## 4. Specific Modification Proposals / 구체적 수정 제안

### 4.1 phase-0-terminology.md Modifications

**Proposal P0-1: Add ISO 29119 Test Terminology Section (M-01)**

Add after §1.10:

```markdown
### 1.11 Software Testing Terms (ISO/IEC/IEEE 29119-1 Aligned)

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Test Specification** | Complete documentation of the test design, test cases, and test procedures for a specific test item. (Ref: ISO/IEC/IEEE 29119-1:2022) | 특정 테스트 항목에 대한 테스트 설계, 테스트 케이스 및 테스트 절차의 완전한 문서화. |
| **Test Case** | Set of preconditions, inputs, and expected results, developed to drive the execution of a test item to meet test objectives. (Ref: ISO/IEC/IEEE 29119-1:2022) | 테스트 목표를 충족하기 위해 테스트 항목의 실행을 추진하도록 개발된 전제 조건, 입력 및 예상 결과의 집합. |
| **Test Item** | Work product to be tested. (Ref: ISO/IEC/IEEE 29119-1:2022) | 테스트 대상 작업 산출물. |
| **Test Plan** | Detailed description of test objectives to be achieved and the means and schedule for achieving them. (Ref: ISO/IEC/IEEE 29119-1:2022) | 달성할 테스트 목표와 그것을 달성하기 위한 수단 및 일정에 대한 상세한 설명. |
| **Test Procedure** | Sequence of test cases in execution order, with any associated actions required to set up preconditions and perform wrap-up activities. (Ref: ISO/IEC/IEEE 29119-1:2022) | 전제 조건 설정 및 정리 활동에 필요한 관련 조치와 함께 실행 순서로 나열된 테스트 케이스의 순서. |

### 1.12 Abbreviations / 약어

| Abbreviation | Full Term (EN) | 전체 용어 (KR) |
|---|---|---|
| AI | Artificial Intelligence | 인공지능 |
| AIBOM | AI Bill of Materials | AI 자재 명세서 |
| ASR | Attack Success Rate | 공격 성공률 |
| FM | Foundation Model | 기초 모델 |
| LLM | Large Language Model | 대규모 언어 모델 |
| MMLM | Multimodal Language Model | 멀티모달 언어 모델 |
| PII | Personally Identifiable Information | 개인 식별 정보 |
| RAG | Retrieval-Augmented Generation | 검색 증강 생성 |
| RoE | Rules of Engagement | 교전 규칙 |
| SBOM | Software Bill of Materials | 소프트웨어 자재 명세서 |
| TTP | Tactics, Techniques, and Procedures | 전술, 기법 및 절차 |
| VLA | Visual Language Action | 비전 언어 행동 |
| VLM | Vision Language Model | 비전 언어 모델 |
```

**Proposal P0-2: Add Multi-agent System Definition (M-02)**

Add to §1.6:

```markdown
| **Multi-Agent System** (다중 에이전트 시스템) | A system composed of multiple interacting intelligent agents that can collaborate, coordinate, or compete to solve problems that are difficult or impossible for an individual agent or monolithic system to solve. (Ref: ISO/IEC AWI TS 42119-7:2026, 3.1.19) | 개별 에이전트나 모놀리식 시스템이 해결하기 어렵거나 불가능한 문제를 해결하기 위해 협력, 조정 또는 경쟁할 수 있는 여러 상호작용 지능형 에이전트로 구성된 시스템. |
```

### 4.2 phase-3-normative-core.md Modifications

**Proposal P3-1: Add Tester Safety and Wellbeing (S-02)**

Insert new activity after P-3 in §2.3:

```markdown
**P-3b. Red Teamer Safety and Wellbeing / 레드티머 안전 및 복지**

Given the nature of AI red teaming, which frequently involves exposure to toxic, violent, disturbing, or psychologically harmful content (e.g., hate speech, CSAM-adjacent content, self-harm descriptions, CBRN material), the engagement shall address:

AI 레드티밍의 특성상 독성, 폭력적, 불안한 또는 심리적으로 해로운 콘텐츠에 빈번하게 노출되므로, 참여는 다음을 다루어야 한다:

- **Psychological support / 심리적 지원**: Access to counseling or psychological support services for team members. / 팀원을 위한 상담 또는 심리적 지원 서비스 접근.
- **Rotation schedules / 순환 일정**: Rotation of personnel across high-risk testing categories to minimize prolonged exposure. / 장기 노출을 최소화하기 위한 고위험 테스트 범주 간 인원 순환.
- **Opt-out mechanisms / 거부 메커니즘**: Team members shall have the right to opt out of testing specific high-risk categories (e.g., CSAM, extreme violence, self-harm) that may cause personal distress, without professional penalty. / 팀원은 개인적 고통을 유발할 수 있는 특정 고위험 범주의 테스트를 전문적 불이익 없이 거부할 수 있는 권리를 가진다.
- **Content exposure protocols / 콘텐츠 노출 프로토콜**: Establish maximum daily exposure limits for categories of harmful content. / 유해 콘텐츠 범주에 대한 일일 최대 노출 한도 설정.

(Ref: ISO/IEC AWI TS 42119-7:2026, §5.2.1.2.4.3)
```

**Proposal P3-2: Add Rules of Engagement Formalization (M-05)**

Modify P-4 in §2.3 to add:

```markdown
**P-4. Legal and Ethical Review and Rules of Engagement / 법적 및 윤리적 검토 및 교전 규칙**

[Existing content remains...]

Additionally, the RTL shall establish formal **Rules of Engagement (RoE)** that define:

RTL은 다음을 정의하는 공식적인 **교전 규칙(RoE)**을 수립해야 한다:

- **Forbidden targets / 금지된 대상**: Systems, data, or actions that must not be accessed or performed (e.g., production databases with real PII, critical infrastructure control interfaces).
- **Authorized techniques / 승인된 기법**: Explicit approval for high-risk techniques (e.g., generating actual exploit code vs. pseudocode).
- **Stop conditions / 중지 조건**: Criteria for immediately halting testing (e.g., discovery of a vulnerability allowing full system takeover or unintended real user data leakage).
- **Testing exclusions / 테스트 제외**: Activities explicitly excluded from the engagement (e.g., DoS attacks against production systems).

(Ref: ISO/IEC AWI TS 42119-7:2026, §5.2.3.1.1)
```

**Proposal P3-3: Add Root Cause Analysis Activity (M-07)**

Insert after A-5 in §5.3:

```markdown
**A-6. Root Cause Analysis / 근본 원인 분석**

For each significant finding, the red team should attempt to identify the root cause of the failure:

각 중요한 발견사항에 대해, 레드팀은 장애의 근본 원인을 식별하려고 시도해야 한다:

- Is the root cause in the training data (bias, poisoning, memorization)?
- Is the root cause in the model architecture or alignment methodology?
- Is the root cause in the system design (insufficient input validation, missing access controls)?
- Is the root cause in the deployment configuration (weak system prompt, missing output filters)?
- Is the root cause in the organizational process (inadequate human oversight, missing monitoring)?

Root cause identification informs the remediation strategy and helps distinguish between symptoms and underlying issues.

(Ref: ISO/IEC AWI TS 42119-7:2026, §5.3.6.3)
```

**Proposal P3-4: Add Controlled Dissemination of Sensitive Findings (S-04)**

Insert after R-3 in §6.3:

```markdown
**R-4b. Controlled Dissemination of Sensitive Findings / 민감한 발견사항의 통제된 배포**

For high-risk findings, particularly those related to CBRN, critical safety (e.g., weaponization instructions, self-harm content generation), or novel vulnerabilities with high exploitability:

고위험 발견사항, 특히 CBRN, 중요 안전(예: 무기화 지침, 자해 콘텐츠 생성) 또는 높은 악용 가능성이 있는 신규 취약점 관련:

- **Need-to-know access / 알 필요성 기반 접근**: Detailed attack vectors and generated harmful outputs shall be restricted to the security team and authorized developers only.
- **Sanitized reporting / 살균된 보고**: Reports distributed to wider audiences must be sanitized to remove actionable harmful information (e.g., removing specific synthesis steps, exploit payloads).
- **Retention controls / 보존 통제**: Harmful content generated during testing shall be securely stored with time-limited retention and destroyed after remediation verification.

(Ref: ISO/IEC AWI TS 42119-7:2026, §5.4.4.3)
```

**Proposal P3-5: Add SBOM/AIBOM to Scope Definition (M-06)**

Add to P-1 in §2.3 after "Target system identification":

```markdown
- **Component inventory / 구성요소 목록**: The attack planner should utilize the Software Bill of Materials (SBOM) or AI Bill of Materials (AIBOM) to identify all system components, including third-party models, libraries, data sources, and APIs. If SBOM/AIBOM is unavailable, the system owner should provide equivalent documentation.
```

**Proposal P3-6: Add ISO 29119-2 Process Mapping Table (M-08)**

Add new appendix or section after §11:

```markdown
## Appendix: ISO/IEC/IEEE 29119-2 Process Alignment / ISO/IEC/IEEE 29119-2 프로세스 정렬

| Guideline Stage | 29119-2 Process | Mapping Explanation |
|---|---|---|
| Stage 1: Planning | 7.2 Test strategy and planning | Engagement scoping, risk tier determination, team composition align with test planning (TP3, TP6) |
| Stage 1: Planning (Environment) | 8.3 Test environment and data management | Environment preparation, access provisioning map to establishing test environment (ED1) |
| Stage 2: Design | 8.2 Test design and implementation | Attack surface mapping, test strategy selection, test case design map to deriving test cases (TD3) |
| Stage 3: Execution (Structured) | 8.4 Test execution process | Structured test execution maps to executing test procedures (TE1) and comparing results (TE2) |
| Stage 3: Execution (Escalation) | 7.3 Test monitoring and control | Escalation protocol maps to control activities (TMC2, TMC3) |
| Stage 3: Execution (Incidents) | 8.5 Test incident reporting | Finding escalation maps to creating incident reports (IR2) |
| Stage 4: Analysis | 8.4 Test execution (result analysis) | Finding characterization maps to comparing test results (TE2) |
| Stage 5: Reporting | 7.4 Test completion process | Report composition maps to test completion reporting (TC4) |
| Stage 6: Follow-up | 7.4 Test completion (lessons learned) | Lessons learned integration maps to identifying lessons (TC3) |

(Ref: ISO/IEC AWI TS 42119-7:2026, Annex E)
```

### 4.3 phase-r-references.md Modifications

**Proposal PR-1: Add Missing ISO References (M-04)**

Add to §1.1 International Standards:

```markdown
| R-04b | ISO/IEC AWI TS 42119-7:2026 - Testing of AI Part 7: Red Teaming | ISO/IEC JTC 1/SC 42 | 2026 | AWI (Working Draft) |
| R-04c | ISO/IEC 5338:2023 - AI System Life Cycle Processes | ISO/IEC | 2023 | Published |
| R-04d | ISO/IEC/IEEE 16085:2021 - Risk Management | ISO/IEC/IEEE | 2021 | Published |
| R-04e | ISO/IEC 25059 - Quality Models for AI Systems | ISO/IEC | DIS | In Development |
| R-04f | ISO/IEC TS 25058:2024 - Quality Evaluation of AI Systems | ISO/IEC | 2024 | Published |
| R-04g | ISO/IEC 29147:2018 - Vulnerability Disclosure | ISO/IEC | 2018 | Published |
| R-04h | ISO/IEC 20246:2017 - Work Product Reviews | ISO/IEC | 2017 | Published |
```

---

## 5. Terminology Alignment / 용어 정렬

### 5.1 Terms Aligned / 정렬된 용어

| 42119-7 Term | 42119-7 Definition | Guideline Term | Alignment Status | Notes |
|---|---|---|---|---|
| Red team (3.1.1) | Independent group challenging a target | (not separately defined) | **Align** | Guideline should add this as distinct from "AI Red Teaming" |
| AI red team (3.1.2) | Stakeholders with varying backgrounds | AI Red Teaming (Phase 0 §1.2) | **Close** | Guideline defines activity; 42119-7 defines group |
| Adversarial attack (3.1.3) | Attempt to deceive AI models | Adversarial Testing (Phase 0 §1.2) | **Close** | 42119-7 focuses on model deception; guideline is broader |
| Data Poisoning (3.1.4) | Manipulation of training data | Supply-Chain Attacks (Phase 1-2 §2.3) | **Partial** | Guideline covers as attack pattern, not as a defined term |
| Hallucination (3.1.5) | Nonsensical or factually incorrect outputs | Hallucination Exploitation (Phase 1-2 §1.6) | **Close** | Guideline includes exploitation dimension |
| Red teaming (3.1.16) | Testing practice using benign or adversarial perspective | AI Red Teaming (Phase 0 §1.2) | **Tension** | 42119-7 is broader (includes benign perspective); guideline is adversarial-focused |
| Agentic AI system (3.1.18) | AI with perception, reasoning, execution | Agentic AI (Phase 0 §1.6) | **Close** | Substantially aligned |
| Multi-agent system (3.1.19) | Multiple interacting agents | (not formally defined) | **Gap** | Must add to guideline |
| Indirect prompt injection (3.1.20) | Malicious instructions in external data | Indirect Prompt Injection (Phase 0 §1.5) | **Aligned** | Well aligned |

### 5.2 Terms Missing from Guideline / 가이드라인에 누락된 용어

| 42119-7 Term | Clause | Recommendation |
|---|---|---|
| Red team (as group entity) | 3.1.1 | Add as separate concept from "AI Red Teaming" (activity) |
| Data Poisoning (as defined term) | 3.1.4 | Add formal definition to Phase 0 terminology |
| Multi-agent system | 3.1.19 | **Must add** (see M-02) |
| Test specification | 3.1.7 | Add in ISO 29119 terms section (see M-01) |
| Test case (29119 sense) | 3.1.8 | Add in ISO 29119 terms section |
| Expected result | 3.1.9 | Add in ISO 29119 terms section |
| Test procedure | 3.1.10 | Add in ISO 29119 terms section |
| Test item | 3.1.11 | Add in ISO 29119 terms section |
| Test objective | 3.1.12 | Add in ISO 29119 terms section |
| Test plan (29119 sense) | 3.1.13 | Add in ISO 29119 terms section |

### 5.3 Key Terminology Tension / 핵심 용어 긴장

**"Red teaming" definition scope**: 42119-7 Note 1 to 3.1.16 states that red teaming "can use either a benign or adversarial perspective." The guideline's definition in Phase 0 §1.2 is explicitly adversarial-focused.

**Recommendation**: Add a note in Phase 0 §1.2 acknowledging the broader ISO definition while clarifying that this guideline focuses on the adversarial dimension as the primary methodology, while recognizing that benign-perspective probing (e.g., stress testing, edge-case exploration) is a complementary component within the broader red teaming practice.

---

## 6. Process Alignment / 프로세스 정렬

### 6.1 Process Structure Comparison / 프로세스 구조 비교

| 42119-7 Phase | Guideline Stage | Alignment Quality | Key Differences |
|---|---|---|---|
| **Phase 1: Team Formation & Preparation** | **Stage 1: Planning** + **Stage 2: Design** | **Good** | Guideline separates planning from design; 42119-7 combines them. Guideline is more granular. |
| **Phase 2: Execution** | **Stage 3: Execution** + **Stage 4: Analysis** | **Good** | Guideline separates execution from analysis; 42119-7 includes impact analysis within execution phase. |
| **Phase 3: Knowledge Sharing & Reporting** | **Stage 5: Reporting** + **Stage 6: Follow-up** | **Good** | Guideline separates reporting from follow-up/remediation; 42119-7 combines them. |

### 6.2 Process Gap Analysis / 프로세스 갭 분석

| 42119-7 Process Element | Guideline Coverage | Gap |
|---|---|---|
| Team selection with domain-specific SMEs | Partial (P-3 mentions competencies) | **Missing**: Formal SME appointment by risk dimension (CBRN, Quality, Performance) |
| SMART objective setting | Partial (P-1 mentions objectives) | **Missing**: SMART criteria recommendation |
| Quantitative success criteria (ASR, latency) | **Conflict** (D-4 prohibits numeric thresholds) | **Philosophical tension** to resolve |
| SBOM/AIBOM for scope | Not mentioned | **Missing**: Supply chain visibility tool reference |
| Three-step execution (Exploratory -> Attack Dev -> System-wide) | Covered (E-2, E-3 structured + creative) | Naming difference only; conceptually aligned |
| Domain-specific severity (CBRN actionability, Performance degradation) | Partial (multi-dimensional characterization) | **Missing**: Domain-specific severity rubrics |
| Attack Signature Library as organizational asset | Not mentioned | **Missing**: Formalized knowledge management mechanism |
| Controlled dissemination (CBRN) | Not mentioned | **Missing**: Critical safety gap |
| Tester psychological safety | Not mentioned | **Missing**: Critical operational gap |
| 29119-2 process mapping | Claimed but not detailed | **Missing**: Explicit mapping table |

### 6.3 Guideline Strengths Beyond 42119-7 / 42119-7을 넘어서는 가이드라인 강점

| Guideline Element | 42119-7 Coverage | Guideline Advantage |
|---|---|---|
| Six-stage lifecycle (vs three-phase) | Simpler three-phase | Guideline is more granular and traceable |
| Three-layer continuous model | Mentions periodic testing | Guideline's continuous operating model is far more mature |
| Risk tier system (Tier 1/2/3) | No tiering | Guideline provides scalable testing depth |
| Socio-technical attack surface | Minimal | Guideline adds socio-technical as a full third layer |
| Comprehensive attack taxonomy (Phase 1-2) | Partial (Annex B) | Guideline's attack coverage is vastly more comprehensive |
| Living Annex system (Phase 4) | Annex D mentions continuous updates | Guideline's annex architecture is more systematic |
| Guiding Principles (Phase 0 §5) | Minimal philosophical framework | Guideline's principles provide strong conceptual foundation |
| Maturity progression model (§11.7) | Not covered | Guideline provides organizational adoption pathway |
| Incident analysis (Phase 1-2 §5) | Not covered | Guideline includes real-world incident analysis |
| Benchmark coverage analysis (Phase 1-2 §6) | Not covered | Guideline identifies gaps in current evaluation tools |

---

## 7. Traceability Matrix Update Proposals / 추적성 매트릭스 업데이트 제안

### 7.1 Phase R Traceability Matrix Addition

Add to Phase R §5.1:

| Guideline Section | ISO 42119-7 | Alignment Notes |
|---|---|---|
| **Phase 0: Terminology** | Cl. 3 (Terms), Cl. 3.2 (Abbrev.) | Add 29119-derived terms, abbreviations, multi-agent system definition |
| **Phase 0: Scope** | Cl. 1 (Scope) | Well aligned; 42119-7 scope is slightly narrower |
| **Phase 0: Stakeholders** | Cl. 5.2.1 (Team composition) | Add domain-specific SME roles |
| **Phase 0: Differentiation** | Cl. 4.2 (Comparison table) | Well aligned; guideline is more comprehensive |
| **Phase 0: Principles** | Cl. 4.1 (General) | Guideline extends with 6 explicit principles |
| **Phase 1-2: Attack Patterns** | Cl. 6, Annex B | Guideline coverage is more extensive; add three-perspective framework |
| **Phase 3: Planning** | Cl. 5.2 (Phase 1) | Add RoE, SBOM/AIBOM, SMART criteria, tester safety, domain-specific teams |
| **Phase 3: Design** | Cl. 5.2.4 (Analysis of test item) | Well aligned |
| **Phase 3: Execution** | Cl. 5.3 (Phase 2) | Well aligned; add domain-specific severity criteria |
| **Phase 3: Analysis** | Cl. 5.3.6 (Impact analysis) | Add root cause analysis |
| **Phase 3: Reporting** | Cl. 5.4, Cl. 7 | Add controlled dissemination, attack signature library |
| **Phase 3: Follow-up** | Cl. 5.4.5 | Well aligned |
| **Phase 3: Continuous** | Cl. 8 (Lifecycle), Annex D | Guideline is more mature; 42119-7 Cl. 8 is TBD |
| **Phase 3: Test Design** | Cl. 9 (Adapting traditional) | 42119-7 is TBD; guideline covers this |
| **Phase 3: Report Template** | Cl. 7, Annex C | Add additional templates (test plan, communication plan) |
| **Phase 3: 29119 Mapping** | Annex E | Add explicit process mapping table |
| **Phase 4: Attack Library** | Annex B | Guideline is more comprehensive |
| **Phase 4: Risk Mapping** | Cl. 5.2.2.1 (Risk scenarios) | Well aligned |

### 7.2 Priority Implementation Order / 우선 구현 순서

| Priority | Recommendation IDs | Effort | Impact |
|---|---|---|---|
| **1 (Immediate)** | M-01, M-02, M-03, M-05, M-07 | Low | High -- Terminology and process compliance |
| **2 (High)** | S-02, S-04, M-04, M-06 | Medium | High -- Safety-critical and traceability gaps |
| **3 (Medium)** | S-01, S-03, S-05, S-06, S-08, S-09, S-10, M-08 | Medium | Medium -- Process enrichment and alignment |
| **4 (Low)** | O-01 through O-06 | Low | Low -- Additional depth and templates |

---

## Summary / 요약

### Overall Alignment Assessment / 전체 정렬 평가

The AI Red Team International Guideline is **substantially well-aligned** with ISO/IEC AWI TS 42119-7:2026 and in many areas **exceeds** the current working draft's coverage. Key findings:

AI 레드팀 국제 가이드라인은 ISO/IEC AWI TS 42119-7:2026과 **상당히 잘 정렬**되어 있으며, 여러 영역에서 현재 작업 초안의 범위를 **초과**합니다.

| Dimension | Status |
|---|---|
| **Terminology** | Partial alignment -- needs 29119 terms, abbreviations, multi-agent definition |
| **Process structure** | Strong alignment -- guideline is more granular (6 stages vs 3 phases) |
| **Attack coverage** | Guideline exceeds 42119-7 significantly |
| **Reporting** | Strong alignment -- 42119-7 Cl. 7 is mostly TBD; guideline is more complete |
| **Lifecycle integration** | Guideline exceeds -- 3-layer continuous model vs basic periodic mention |
| **Tester wellbeing** | **Critical gap** -- must add from 42119-7 |
| **Controlled dissemination** | **Critical gap** -- must add from 42119-7 |
| **Domain-specific severity** | Partial gap -- needs CBRN/Performance-specific criteria |
| **ISO standards mapping** | Partial gap -- needs explicit references to ISO 5338, 16085, 25059, 25058, 29147 |
| **Philosophical approach** | Tension on quantitative metrics -- needs reconciliation |

### Critical Actions Required / 필수 조치 사항

1. **Add 42119-7 to Phase R Reference Inventory** as the primary alignment standard (R-04b)
2. **Implement 8 Must-Reflect (M) recommendations** for ISO compliance alignment
3. **Implement S-02 (Tester Safety) and S-04 (Controlled Dissemination)** as high-priority safety requirements
4. **Resolve S-08 (Metrics Tension)** by acknowledging both qualitative (guideline) and quantitative (42119-7) approaches as valid for different contexts

---

*Analysis completed: 2026-02-09*
*Analyst: Standards Agent*
*Source document: ISO/IEC AWI TS 42119-7:2026(en) Working Draft (38 pages)*
*Comparison target: AI Red Team International Guideline Phases 0, R, 1-2, 3, 4 (Draft v0.1/v1.0/v1.1)*

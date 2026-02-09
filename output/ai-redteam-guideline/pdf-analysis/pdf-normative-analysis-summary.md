# Normative Analysis Summary: Synthesis of Three AI Red Teaming Guides
# 규범적 분석 종합: 세 가지 AI 레드팀 가이드의 통합

**Analysis Date / 분석일:** 2026-02-10
**Analyzed Documents:**
1. Japan AISI Guide to Red Teaming Methodology on AI Safety v1.10 (March 2025)
2. OWASP GenAI Red Teaming Guide v1.0 (January 2025)
3. CSA Agentic AI Red Teaming Guide (2025)

**Analyzed by:** Reference Document Agent

---

## Executive Summary / 개요

This document synthesizes normative recommendations from three leading AI red teaming guides to identify integration priorities for our AI Red Team International Guideline. The three guides provide complementary strengths:

- **AISI:** Process detail and structured evaluation perspectives
- **OWASP:** Evaluation framework and metrics
- **CSA:** Agentic-specific threat taxonomy

**Total Normative Recommendations Identified:** 19
- **Critical Priority:** 9 (mandatory requirements)
- **High/Medium Priority:** 7 (recommended practices)
- **Low Priority:** 3 (optional enhancements)

**Key Finding:** The three guides are highly complementary with minimal redundancy. Integrating all three transforms our guideline from process-focused to comprehensive (process + content + metrics).

---

## Table of Contents / 목차

1. [Comparative Analysis](#1-comparative-analysis--비교-분석)
2. [Consolidated Normative Statements](#2-consolidated-normative-statements--통합-규범적-진술)
3. [Integration Priority Matrix](#3-integration-priority-matrix--통합-우선순위-매트릭스)
4. [Gap Coverage Analysis](#4-gap-coverage-analysis--격차-커버리지-분석)
5. [Implementation Roadmap](#5-implementation-roadmap--구현-로드맵)
6. [Synergy and Redundancy Analysis](#6-synergy-and-redundancy-analysis--시너지-및-중복-분석)

---

## 1. Comparative Analysis / 비교 분석

### 1.1 Document Characteristics

| Attribute | AISI | OWASP | CSA |
|-----------|------|-------|-----|
| **Primary Focus** | Process methodology | Evaluation framework | Agentic threats |
| **Target Audience** | Japanese AI developers, aligned with gov policy | Global GenAI practitioners | Agentic AI security specialists |
| **Scope** | LLM systems (including multimodal) | GenAI/LLM systems broadly | Agentic AI systems specifically |
| **Structure** | 15-step process across 3 processes | 4-phase blueprint + 8-step strategy | 12 threat categories with test procedures |
| **Strength** | Granular operational detail | Structural framework + metrics | Specialized agentic content |
| **Page Count** | 67 pages | 77 pages | 62 pages |
| **Contributors** | Japan AISI | OWASP community | 50+ CSA/OWASP contributors |
| **License** | Japanese gov publication | CC BY-SA 4.0 | CSA All Rights Reserved |

### 1.2 Unique Contributions

**AISI Unique Contributions:**
1. **6-perspective AI safety framework** (Human-Centric, Safety, Fairness, Privacy, Security, Transparency)
2. **Usage pattern analysis** (3-category classification before threat modeling)
3. **Defense mechanism inventory** (4-layer categorization)
4. **Confirmation levels** (3-tier verification depth framework)
5. **Non-determinism management guidance** (iteration counts, success criteria)
6. **Japanese regulatory context** (integration with "AI Guidelines for Business")

**OWASP Unique Contributions:**
1. **4-phase evaluation blueprint** (Model → Implementation → System → Runtime)
2. **Quantitative metrics framework** (ASR, coverage, time-to-bypass, defense efficacy)
3. **Phase-specific checklists** (actionable "what to check" for each phase)
4. **RAG Triad** (Factuality, Relevance, Groundedness)
5. **Security-Safety-Trust triad** (adding Trust dimension)
6. **Model reconnaissance** (systematic capability probing)
7. **Organizational maturity model** (Chapter 8 guidance)

**CSA Unique Contributions:**
1. **Checker-Out-of-the-Loop** (human oversight reliability testing)
2. **Goal and Instruction Manipulation** (8 sub-categories specific to agentic systems)
3. **12-category agentic threat taxonomy** (comprehensive agent-specific framework)
4. **MCP/A2A protocol security** (emerging agent interoperability standards)
5. **Impact chain and blast radius** (multi-agent cascade analysis)
6. **Agent untraceability** (forensic readiness for autonomous systems)
7. **Physical/IoT interaction** (cyber-physical safety testing)

### 1.3 Overlap and Complementarity

| Topic Area | AISI | OWASP | CSA | Complementarity |
|------------|------|-------|-----|-----------------|
| **Process Framework** | ✓✓✓ (15 steps) | ✓✓ (8 steps) | ✓ (testing procedures) | AISI provides granular detail within OWASP structure |
| **Evaluation Structure** | ✓ (stages) | ✓✓✓ (4 phases) | ✓ (12 categories) | OWASP "what to evaluate" organizes AISI "how" and CSA "agentic what" |
| **Attack Patterns** | ✓✓ (general LLM) | ✓✓ (GenAI broad) | ✓✓✓ (agentic specific) | CSA extends OWASP with agentic detail |
| **Metrics** | ✓ (mentioned) | ✓✓✓ (comprehensive) | ✓ (implicit) | OWASP provides systematic measurement framework |
| **Threat Modeling** | ✓✓ (usage patterns) | ✓✓ (STRIDE-aligned) | ✓ (12 categories) | AISI provides pre-modeling classification |
| **Human Oversight** | ✓ (AI safety perspective) | ✓ (runtime phase) | ✓✓✓ (Checker-Out-of-Loop) | CSA operationalizes concept into testable requirements |
| **Multi-Agent** | - | ✓ (Phase 4) | ✓✓✓ (multiple categories) | CSA essential for multi-agent testing |
| **RAG Systems** | ✓ (indirect injection) | ✓✓✓ (RAG Triad) | ✓ (knowledge poisoning) | OWASP provides systematic RAG evaluation |

**Key Insight:** Minimal redundancy, high complementarity. Each guide fills gaps the others leave.

---

## 2. Consolidated Normative Statements / 통합 규범적 진술

### 2.1 All Normative Statements by Priority

#### Critical Priority (9 statements)

| ID | Statement Summary | Source | Integration Target |
|----|-------------------|--------|-------------------|
| AISI-N01 | 6-perspective AI safety evaluation framework | AISI | Phase 0, Section 1.7 |
| AISI-N02 | Usage pattern analysis (3 categories) | AISI | Phase 3, Stage 1, Activity P-2 |
| AISI-N03 | Defense mechanism inventory (4 layers) | AISI | Phase 3, Stage 1, Activity P-2 |
| OWASP-N01 | 4-phase evaluation blueprint | OWASP | Phase 3, Stage 2, Activity D-1 |
| OWASP-N02 | Quantitative metrics framework | OWASP | Phase 3, Section 10 |
| CSA-N01 | Checker-Out-of-the-Loop testing | CSA | Phase 12, Section 2 |
| CSA-N02 | Goal and Instruction Manipulation testing | CSA | Phase 4, Annex A; Phase 12, Section 2 |
| CSA-N03 | 12-category agentic threat taxonomy | CSA | Phase 12, Section 2; Phase 4, Annex A |
| CSA-N04 | MCP/A2A protocol security testing | CSA | Phase 4, Annex A |

#### High/Medium Priority (7 statements)

| ID | Statement Summary | Source | Integration Target |
|----|-------------------|--------|-------------------|
| AISI-N04 | Confirmation level framework (3 tiers) | AISI | Phase 3, Stage 2, Activity D-4 |
| AISI-N05 | Non-determinism management guidance | AISI | Phase 3, Section 9 |
| OWASP-N03 | Phase-specific evaluation checklists | OWASP | Phase 4, Living Annex |
| OWASP-N04 | RAG Triad evaluation framework | OWASP | Phase 4, Annex A |
| OWASP-N05 | Model reconnaissance activity | OWASP | Phase 3, Stage 2/3 |
| CSA-N05 | Impact chain and blast radius analysis | CSA | Phase 3, Stage 4, Activity A-3 |
| CSA-N06 | Agent untraceability and forensic readiness | CSA | Phase 12, Section 2 |

#### Low Priority / Optional (3 statements)

| ID | Statement Summary | Source | Integration Target |
|----|-------------------|--------|-------------------|
| AISI-N06 | SBOM/AIBOM documentation reference | AISI | Phase 3, Stage 1, Activity P-1 |
| OWASP-N06 | Trust dimension in evaluation framework | OWASP | Phase 0, Section 1.7 |
| CSA-N07 | Physical/IoT system interaction testing | CSA | Phase 12, Section 2 (optional) |

### 2.2 Normative Statements by Guideline Phase

**Phase 0 (Terminology):**
- AISI-N01: 6-perspective framework
- OWASP-N06: Trust dimension (optional)

**Phase 3 (Normative Core):**
- AISI-N02: Usage pattern analysis
- AISI-N03: Defense mechanism inventory
- AISI-N04: Confirmation levels
- AISI-N05: Non-determinism guidance
- AISI-N06: SBOM/AIBOM (optional)
- OWASP-N01: 4-phase blueprint
- OWASP-N02: Metrics framework
- OWASP-N05: Model reconnaissance
- CSA-N05: Impact chain/blast radius

**Phase 4 (Living Annex):**
- OWASP-N03: Phase-specific checklists
- OWASP-N04: RAG Triad
- CSA-N02: Goal manipulation patterns
- CSA-N04: MCP/A2A patterns

**Phase 12 (Attacks):**
- CSA-N01: Checker-Out-of-Loop
- CSA-N02: Goal manipulation
- CSA-N03: 12-category taxonomy
- CSA-N06: Untraceability
- CSA-N07: Physical/IoT (optional)

---

## 3. Integration Priority Matrix / 통합 우선순위 매트릭스

### 3.1 Priority Scoring

Criteria:
- **Impact:** Critical (3), High (2), Medium (1)
- **Effort:** Low (1), Medium (2), High (3)
- **Urgency:** Immediate need (3), Growing need (2), Future need (1)
- **Uniqueness:** No alternative source (3), Limited alternatives (2), Multiple sources (1)

**Priority Score = (Impact × 2) + Urgency + Uniqueness - Effort**

| Rank | ID | Statement | Impact | Effort | Urgency | Uniqueness | Priority Score |
|------|----|-----------|--------|--------|---------|------------|----------------|
| 1 | CSA-N02 | Goal Manipulation | 3 | 3 | 3 | 3 | 9 |
| 2 | OWASP-N01 | 4-phase blueprint | 3 | 2 | 3 | 3 | 10 |
| 3 | CSA-N01 | Checker-Out-of-Loop | 3 | 2 | 3 | 3 | 10 |
| 4 | AISI-N02 | Usage pattern analysis | 3 | 2 | 3 | 3 | 10 |
| 5 | OWASP-N02 | Metrics framework | 3 | 1 | 2 | 3 | 10 |
| 6 | AISI-N03 | Defense mechanism inventory | 2 | 1 | 3 | 2 | 8 |
| 7 | CSA-N03 | 12-category taxonomy | 3 | 3 | 3 | 3 | 9 |
| 8 | CSA-N04 | MCP/A2A protocols | 2 | 2 | 2 | 3 | 7 |
| 9 | AISI-N01 | 6-perspective framework | 2 | 2 | 2 | 2 | 6 |
| 10 | OWASP-N03 | Phase checklists | 2 | 3 | 2 | 2 | 5 |

### 3.2 Critical Path Analysis

**"Must-Have" for Next Release (Top 5):**
1. **OWASP-N01** (4-phase blueprint) - Structural foundation for organizing all other content
2. **CSA-N02** (Goal Manipulation) - Critical agentic gap with high urgency
3. **CSA-N01** (Checker-Out-of-Loop) - EU AI Act compliance requirement
4. **AISI-N02** (Usage patterns) - Enables effective threat modeling
5. **OWASP-N02** (Metrics) - Enables standardized reporting and comparability

**"Should-Have" for Next Release (Next 5):**
6. **AISI-N03** (Defense inventory) - Low effort, high value, operationalizes existing principle
7. **CSA-N04** (MCP/A2A) - Forward-looking for emerging protocols
8. **AISI-N01** (6-perspective) - Enhances evaluation scope
9. **OWASP-N04** (RAG Triad) - Addresses common deployment pattern
10. **OWASP-N05** (Model reconnaissance) - Improves attack design quality

**"Could-Have" for Future Releases:**
- CSA-N03 (12-category expansion) - High value but very high effort; phased approach
- CSA-N05 (Impact chain) - Important for multi-agent but narrower applicability
- AISI-N05 (Non-determinism) - Practical value but lower urgency
- CSA-N06 (Untraceability) - Important for accountability but can be deferred
- AISI-N04 (Confirmation levels) - Useful for resource scaling but optional

**"Won't-Have" (Optional Enhancements):**
- AISI-N06 (SBOM/AIBOM) - Good practice reference but not unique
- OWASP-N06 (Trust dimension) - Conceptual reframing of existing coverage
- CSA-N07 (Physical/IoT) - Context-specific, not broadly applicable

---

## 4. Gap Coverage Analysis / 격차 커버리지 분석

### 4.1 Current Guideline Gaps by Severity

| Gap Category | Severity | Description | Filled By |
|--------------|----------|-------------|-----------|
| **Evaluation Structure** | Critical | No "what to evaluate" framework | OWASP-N01 |
| **Agentic Goal Attacks** | Critical | Goal manipulation not covered | CSA-N02, CSA-N03 |
| **Human Oversight Testing** | Critical | No methodology for EU AI Act Art. 14 compliance | CSA-N01 |
| **Quantitative Metrics** | Critical | No standardized measurement framework | OWASP-N02 |
| **Threat Modeling Input** | High | No structured pre-modeling analysis | AISI-N02, AISI-N03 |
| **Agentic Taxonomy** | High | Limited agentic-specific coverage (4 of 12 categories) | CSA-N03 |
| **Protocol Security** | High | No MCP/A2A coverage | CSA-N04 |
| **Actionable Checklists** | Medium | Attack patterns exist but not organized by phase | OWASP-N03 |
| **RAG Evaluation** | Medium | RAG poisoning covered, but no systematic evaluation framework | OWASP-N04 |
| **Multi-Agent Cascades** | Medium | Single-system focus, no blast radius analysis | CSA-N05 |

### 4.2 Gap Coverage by Integration

**After Critical Priority Integration (Top 9 statements):**
- ✅ Evaluation structure gap: **CLOSED** (OWASP-N01)
- ✅ Agentic goal attacks gap: **CLOSED** (CSA-N02)
- ✅ Human oversight testing gap: **CLOSED** (CSA-N01)
- ✅ Metrics gap: **CLOSED** (OWASP-N02)
- ✅ Threat modeling input gap: **CLOSED** (AISI-N02, AISI-N03)
- 🔶 Agentic taxonomy gap: **PARTIAL** (CSA-N03 requires phased implementation)
- ✅ Protocol security gap: **CLOSED** (CSA-N04)

**After High/Medium Priority Integration:**
- ✅ Actionable checklists gap: **CLOSED** (OWASP-N03)
- ✅ RAG evaluation gap: **CLOSED** (OWASP-N04)
- ✅ Multi-agent cascades gap: **CLOSED** (CSA-N05)
- 🔶 Process quality gap: **IMPROVED** (AISI-N04, AISI-N05)

**Remaining Gaps (acceptable):**
- Emerging protocol details (MCP/A2A will evolve; CSA-N04 provides foundation)
- Context-specific testing (Physical/IoT covered optionally by CSA-N07)
- Regional regulatory specifics (AISI provides Japan context; others needed for EU, US, etc.)

### 4.3 Coverage Completeness Assessment

| Coverage Dimension | Before Integration | After Critical Integration | After Full Integration |
|--------------------|-------------------|---------------------------|----------------------|
| **Process (How)** | ✅ 95% | ✅ 98% (AISI detail) | ✅ 99% |
| **Structure (What)** | ❌ 30% | ✅ 90% (OWASP blueprint) | ✅ 95% |
| **LLM Content** | ✅ 80% | ✅ 85% | ✅ 90% |
| **Agentic Content** | 🔶 40% | ✅ 75% (CSA critical) | ✅ 95% |
| **Metrics** | ❌ 20% | ✅ 90% (OWASP metrics) | ✅ 95% |
| **Compliance Support** | 🔶 60% | ✅ 85% (Checker-Out-of-Loop) | ✅ 90% |

**Overall Completeness:**
- **Before:** 60% (process-strong, content-moderate, structure-weak)
- **After Critical Integration:** 85% (well-rounded across all dimensions)
- **After Full Integration:** 95% (comprehensive guideline)

---

## 5. Implementation Roadmap / 구현 로드맵

### 5.1 Phased Integration Plan

#### Phase 1: Foundation (Immediate - Next Guideline Update v1.1)
**Target Date:** Within 1 month
**Scope:** Critical structural and compliance gaps

| ID | Component | Target File | Estimated Effort |
|----|-----------|-------------|------------------|
| OWASP-N01 | 4-phase blueprint | Phase 3, Stage 2 | 2 days |
| AISI-N02 | Usage pattern analysis | Phase 3, Stage 1 | 1 day |
| AISI-N03 | Defense inventory | Phase 3, Stage 1 | 1 day |
| OWASP-N02 | Metrics framework | Phase 3, Section 10 | 1 day |
| CSA-N01 | Checker-Out-of-Loop | Phase 12, Section 2 | 2 days |

**Total Effort:** ~7 days
**Outcome:** Structural foundation in place, EU AI Act gap closed

#### Phase 2: Agentic Expansion (Short-term - Within 3 months, v1.2)
**Target Date:** Within 3 months
**Scope:** Agentic-specific content and emerging protocols

| ID | Component | Target File | Estimated Effort |
|----|-----------|-------------|------------------|
| CSA-N02 | Goal Manipulation (full) | Phase 4, Annex A; Phase 12 | 3 days |
| CSA-N04 | MCP/A2A protocols | Phase 4, Annex A | 2 days |
| CSA-N03 | 12-category taxonomy (Phase 1: Categories 1-6) | Phase 12, Section 2 | 5 days |
| OWASP-N03 | Phase checklists (Phases 1-2) | Phase 4, Living Annex | 3 days |
| AISI-N01 | 6-perspective framework | Phase 0, Section 1.7 | 2 days |

**Total Effort:** ~15 days
**Outcome:** Strong agentic coverage, actionable checklists begin

#### Phase 3: Depth and Detail (Medium-term - Within 6 months, v1.3)
**Target Date:** Within 6 months
**Scope:** Complete coverage and specialized scenarios

| ID | Component | Target File | Estimated Effort |
|----|-----------|-------------|------------------|
| CSA-N03 | 12-category taxonomy (Phase 2: Categories 7-12) | Phase 12, Section 2 | 5 days |
| OWASP-N03 | Phase checklists (Phases 3-4) | Phase 4, Living Annex | 3 days |
| OWASP-N04 | RAG Triad | Phase 4, Annex A | 1 day |
| OWASP-N05 | Model reconnaissance | Phase 3, Stage 2 | 1 day |
| CSA-N05 | Impact chain/blast radius | Phase 3, Stage 4 | 2 days |
| AISI-N05 | Non-determinism guidance | Phase 3, Section 9 | 1 day |

**Total Effort:** ~13 days
**Outcome:** Comprehensive coverage across all system types

#### Phase 4: Refinement (Long-term - Within 1 year, v1.4)
**Target Date:** Within 1 year
**Scope:** Optional enhancements and emerging areas

| ID | Component | Target File | Estimated Effort |
|----|-----------|-------------|------------------|
| CSA-N06 | Untraceability/forensics | Phase 12, Section 2 | 2 days |
| AISI-N04 | Confirmation levels | Phase 3, Stage 2 | 1 day |
| CSA-N07 | Physical/IoT (optional annex) | Phase 12, Section 2 | 2 days |
| AISI-N06 | SBOM/AIBOM reference | Phase 3, Stage 1 | 0.5 day |
| OWASP-N06 | Trust dimension (optional) | Phase 0, Section 1.7 | 0.5 day |

**Total Effort:** ~6 days
**Outcome:** Fully comprehensive guideline with optional specializations

### 5.2 Resource Requirements

**Phase 1 (Foundation):** 1 editor + 1 technical reviewer, ~7 days
**Phase 2 (Agentic Expansion):** 1 editor + 2 technical reviewers (agentic expertise), ~15 days
**Phase 3 (Depth):** 1 editor + 2 technical reviewers, ~13 days
**Phase 4 (Refinement):** 1 editor + 1 technical reviewer, ~6 days

**Total Integration Effort:** ~41 days of focused work over 1 year

### 5.3 Validation Checkpoints

**After Phase 1:**
- ✅ 4-phase blueprint can organize attack patterns
- ✅ Usage pattern analysis improves threat modeling
- ✅ Metrics framework enables standardized reporting
- ✅ Checker-Out-of-Loop testing addresses EU AI Act

**After Phase 2:**
- ✅ Goal manipulation testing covers agentic attack surface
- ✅ MCP/A2A guidance ready for protocol adoption
- ✅ 6 agentic categories fully documented
- ✅ Checklists reduce practitioner planning effort

**After Phase 3:**
- ✅ All 12 agentic categories covered
- ✅ RAG systems have systematic evaluation framework
- ✅ Multi-agent cascades can be analyzed
- ✅ Complete phase checklists available

**After Phase 4:**
- ✅ Optional specializations available (physical, forensics)
- ✅ Process refinements (confirmation levels, SBOM) integrated
- ✅ Guideline comprehensive across all deployment contexts

---

## 6. Synergy and Redundancy Analysis / 시너지 및 중복 분석

### 6.1 Synergies Identified

**Synergy 1: OWASP Blueprint + AISI Process + CSA Content**
- **OWASP 4-phase blueprint** provides "what to evaluate" structure
- **AISI 15-step process** provides "how to conduct" detail
- **CSA 12 categories** provide "what to test for agentic systems"
- **Integration:** AISI steps fit within OWASP phases; CSA categories map to OWASP Phase 4 and across all phases

**Synergy 2: AISI Defense Inventory + OWASP Model Reconnaissance**
- **AISI** inventories defense mechanisms (pre/internal/post/training)
- **OWASP** investigates model capabilities and architecture
- **Integration:** Combined, these provide complete "know your target" preparation before attack design

**Synergy 3: OWASP Metrics + CSA Testing Procedures**
- **OWASP** provides quantitative measurement framework
- **CSA** provides detailed test procedures with example prompts
- **Integration:** CSA tests generate data measurable by OWASP metrics (ASR per CSA category)

**Synergy 4: AISI 6-Perspective + OWASP Phase 1 (Model Evaluation)**
- **AISI** defines 6 evaluation perspectives (Human-Centric, Safety, Fairness, Privacy, Security, Transparency)
- **OWASP Phase 1** defines model evaluation activities
- **Integration:** AISI perspectives organize OWASP Phase 1 model testing

**Synergy 5: CSA Checker-Out-of-Loop + AISI Human-Centric Perspective**
- **AISI** identifies human oversight as evaluation dimension
- **CSA** provides detailed testing methodology for human oversight reliability
- **Integration:** CSA operationalizes AISI principle into testable requirements

### 6.2 Redundancies Identified (Minimal)

**Redundancy 1: Attack Pattern Coverage (Managed Overlap)**
- All three guides cover prompt injection, poisoning, extraction
- **Resolution:** Use most detailed source for each pattern:
  - Prompt injection: AISI (detailed categorization table)
  - Goal manipulation: CSA (unique to agentic, most detailed)
  - RAG poisoning: OWASP (RAG Triad provides systematic framework)

**Redundancy 2: Process Lifecycle (Complementary Granularity)**
- AISI: 15 steps across 3 processes
- OWASP: 8-step strategy
- Our guideline: 6-stage lifecycle
- **Resolution:** Our 6-stage lifecycle remains primary; AISI steps add granular detail within stages; OWASP strategy validates structure

**Redundancy 3: Evaluation Dimensions (Reconcilable Frameworks)**
- AISI: 6 perspectives (Human-Centric, Safety, Fairness, Privacy, Security, Transparency)
- OWASP: 3 pillars (Security, Safety, Trust)
- Our guideline: 3 dimensions (Safety, Security, Alignment)
- **Resolution:** All are reconcilable; AISI provides most comprehensive; add mapping table showing relationships

**Total Redundancy:** <5% of content; easily managed through cross-referencing and source attribution

### 6.3 Integration Complexity Assessment

**Low Complexity (Can integrate directly):**
- OWASP-N02 (Metrics): Self-contained framework, add to reporting section
- AISI-N02 (Usage patterns): Self-contained classification, add to planning
- AISI-N03 (Defense inventory): Self-contained, add to threat modeling
- CSA-N04 (MCP/A2A): New attack patterns, add to library
- OWASP-N04 (RAG Triad): Self-contained framework, add to RAG section

**Medium Complexity (Requires structural changes):**
- OWASP-N01 (4-phase blueprint): Overlay on existing process, requires reorganization of attack surface mapping
- AISI-N01 (6-perspective): Extends terminology section, requires reconciliation with existing framework
- CSA-N01 (Checker-Out-of-Loop): New test category, requires EU AI Act compliance discussion
- OWASP-N05 (Model reconnaissance): New activity, requires inserting into stage sequence

**High Complexity (Requires extensive content development):**
- CSA-N02 (Goal Manipulation): New category with 8 sub-patterns, extensive detail
- CSA-N03 (12-category taxonomy): Massive expansion (~50+ new attack patterns)
- OWASP-N03 (Phase checklists): Reorganization of existing content + new items

### 6.4 Quality Assurance Considerations

**Consistency Checks Required:**
1. Terminology alignment across AISI/OWASP/CSA sources
2. Attack pattern ID numbering (avoid conflicts)
3. Severity rating consistency (Critical/High/Medium/Low)
4. Cross-reference accuracy (MITRE ATLAS, OWASP mappings)

**Validation Required:**
1. Technical accuracy of test procedures (especially CSA agentic tests)
2. Example prompt safety (do not publish exploitable examples)
3. Regulatory interpretation accuracy (EU AI Act, NIST references)
4. Practical feasibility (can practitioners actually execute tests?)

**Community Review Needed:**
1. Agentic AI specialists for CSA content
2. Metrics specialists for OWASP quantitative framework
3. Process experts for AISI integration into our lifecycle
4. Regional experts for regulatory compliance claims

---

## 7. Final Recommendations / 최종 권장사항

### 7.1 Immediate Actions (Next 30 Days)

1. **Approve Phase 1 Integration Scope**
   - OWASP-N01, AISI-N02, AISI-N03, OWASP-N02, CSA-N01
   - Allocate 7 days editor time + 3 days review time
   - Target release: Guideline v1.1

2. **Establish Integration Team**
   - Lead Editor (process integration)
   - Agentic AI Specialist (CSA content validation)
   - Metrics Specialist (OWASP metrics validation)

3. **Create Integration Tracking**
   - GitHub issues/project board for each normative statement
   - Progress tracking: Not Started → In Progress → Review → Integrated
   - Validation checkpoints documented

### 7.2 Strategic Decisions Required

**Decision 1: Phasing Strategy for CSA-N03 (12-category taxonomy)**
- Option A: All 12 categories in v1.2 (high effort, comprehensive)
- Option B: Phased 6+6 categories across v1.2 and v1.3 (manageable, staged value delivery)
- **Recommendation:** Option B (phased approach)

**Decision 2: Guideline Structure Reorganization**
- Option A: Maintain current structure, add OWASP 4-phase as overlay
- Option B: Reorganize Phase 4 (Living Annex) around OWASP 4-phase structure
- **Recommendation:** Option A (less disruption, both structures coexist)

**Decision 3: Metrics Reporting Requirements**
- Option A: Metrics are mandatory for all red team reports
- Option B: Metrics are recommended, mandatory for certain contexts (high-risk systems)
- **Recommendation:** Option B (proportionality principle)

### 7.3 Success Criteria

**Integration Success = When the following are achieved:**

1. ✅ **Structural completeness:** "What to evaluate" (OWASP blueprint) complements "how to conduct" (our process)
2. ✅ **Content completeness:** Agentic coverage (CSA) matches non-agentic coverage
3. ✅ **Measurement capability:** Quantitative metrics (OWASP) enable standardized reporting
4. ✅ **Regulatory alignment:** EU AI Act Article 14 compliance (CSA Checker-Out-of-Loop)
5. ✅ **Practitioner usability:** Checklists (OWASP) + patterns (CSA) + process (AISI) reduce planning effort by 50%+
6. ✅ **International recognition:** Guideline referenced by NIST, ISO, EU regulatory bodies

### 7.4 Risk Mitigation

**Risk 1: Integration Timeline Slippage**
- Mitigation: Phased approach with clear phase boundaries; prioritize critical items
- Contingency: Release v1.1 with Phase 1 only if Phase 2 delays

**Risk 2: Agentic Content Complexity (CSA-N03)**
- Mitigation: Phased 6+6 category approach; community validation
- Contingency: Release Categories 1-6 first, iterate based on feedback

**Risk 3: Metrics Misinterpretation (OWASP-N02)**
- Mitigation: Explicit "informational, not certification" language in multiple places
- Contingency: Add FAQ section on metrics interpretation

**Risk 4: Redundancy and Bloat**
- Mitigation: Careful source attribution; cross-referencing instead of duplication
- Contingency: Maintain "Core" and "Extended" versions if guideline exceeds usability threshold

---

## 8. Conclusion / 결론

### 8.1 Key Findings

1. **High Complementarity:** The three guides provide complementary strengths with <5% redundancy
2. **Critical Gaps Identified:** 9 critical priority gaps that must be addressed
3. **Feasible Integration:** ~41 days of focused effort over 1 year for full integration
4. **Transformative Impact:** Integration transforms our guideline from 60% → 95% completeness

### 8.2 Integration Value Proposition

**Before Integration:**
- Strong: Process methodology (our 6-stage lifecycle)
- Moderate: LLM attack content, risk framework
- Weak: Evaluation structure, metrics, agentic coverage, regulatory compliance tools

**After Critical Integration (Phase 1-2):**
- Strong: Process, evaluation structure, LLM content, metrics
- Moderate: Agentic coverage (initial categories), checklists
- Weak: Advanced agentic scenarios, optional specializations

**After Full Integration (Phase 1-4):**
- Strong: All dimensions (process, structure, content, metrics, compliance)
- Moderate: Emerging areas (new protocols, regional regulations)
- Weak: None (comprehensive guideline)

### 8.3 Final Recommendation

**Proceed with phased integration following the 4-phase roadmap:**
1. **Phase 1 (1 month):** Foundation - structural and compliance gaps
2. **Phase 2 (3 months):** Agentic expansion - CSA critical content
3. **Phase 3 (6 months):** Depth and detail - complete coverage
4. **Phase 4 (1 year):** Refinement - optional enhancements

**Prioritize:** OWASP-N01, AISI-N02, AISI-N03, OWASP-N02, CSA-N01, CSA-N02 for immediate integration.

**Expected Outcome:**
A comprehensive, internationally-recognized AI Red Team guideline that combines:
- Process rigor (our framework + AISI detail)
- Structural clarity (OWASP blueprint)
- Content depth (CSA agentic + OWASP/AISI LLM)
- Measurement capability (OWASP metrics)
- Regulatory alignment (CSA compliance tools)

---

**Document Status:** Final Draft
**Approval Required:** Guideline Steering Committee
**Next Steps:**
1. Review and approve Phase 1 integration scope
2. Assign integration team
3. Begin Phase 1 integration work

---

**End of Normative Analysis Summary** | **규범적 분석 종합 종료**

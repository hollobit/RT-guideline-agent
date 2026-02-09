# AI Red Team International Guideline
# AI 레드팀 국제 가이드라인

**Version / 버전:** 1.0 (Draft for Review)
**Last Updated / 최종 갱신:** 2026-02-10
**Status / 상태:** Draft for Community Review

---

## Executive Summary / 개요

This guideline provides a comprehensive, process-oriented framework for conducting AI red teaming across the full AI system lifecycle. It integrates attack pattern libraries, risk mapping, standardized testing procedures, and living annexes that evolve with the threat landscape.

이 가이드라인은 전체 AI 시스템 수명 주기에 걸쳐 AI 레드티밍을 수행하기 위한 포괄적이고 프로세스 지향적인 프레임워크를 제공합니다. 공격 패턴 라이브러리, 위험 매핑, 표준화된 테스트 절차, 그리고 위협 환경에 따라 진화하는 리빙 부속서를 통합합니다.

**Key objectives / 핵심 목표:**
1. Establish a shared vocabulary for AI red teaming (Phase 0)
2. Provide a normative process framework aligned with ISO/IEC/IEEE 29119 (Phase 3)
3. Maintain living attack pattern and benchmark libraries (Phase 4)
4. Enable meta-level quality assessment of red team processes (Phase 5)
5. Ground all recommendations in real-world incidents and academic research (Phase R)

---

## Document Structure / 문서 구조

This guideline is organized into multiple phases, each serving a distinct purpose:

### Core Documents / 핵심 문서

| Phase | Document | Purpose | Update Frequency |
|-------|----------|---------|------------------|
| **Phase 0** | [Terminology](./phase-0-terminology.md) | Establishes common language and scope boundaries | Stable (major versions only) |
| **Phase 3** | [Normative Core](./phase-3-normative-core.md) | Defines the 6-stage AI red teaming process framework | Stable (annual review) |
| **Phase 4** | [Living Annexes](./phase-4-living-annex.md) | Attack patterns, risk mappings, benchmark coverage | Living (quarterly updates) |
| **Phase 5** | [Meta-Review](./phase-5-meta-review.md) | Quality assessment framework for red team processes | Stable (biannual review) |
| **Phase R** | [References](./phase-r-references.md) | Academic papers, standards, incident reports | Living (continuous) |

### Supporting Documents / 지원 문서

| Document | Description |
|----------|-------------|
| [Attack Pattern Library](./phase-12-attacks.md) | Comprehensive catalog of AI-specific attack techniques |
| [Test Scenarios](./test-scenarios.md) | Ready-to-use test scenarios across risk categories |
| [Benchmark Testing Report](./benchmark-testing-report.md) | Analysis of existing AI safety benchmarks |
| [Risk Trends Report](./risk-trends-report.md) | Emerging risk landscape analysis |
| [Academic Trends Report](./academic-trends-report.md) | Survey of recent academic research |
| [SW Testing Standards](./sw-testing-standards-report.md) | Analysis of software testing standards for AI applicability |
| [ISO 42119-7 Comparison](./standards-comparison-42119-7.md) | Alignment with ISO draft standards |
| [Testing Checklist](./sw-testing-checklist.md) | Practical checklist for red team execution |

---

## Quick Start Guide / 빠른 시작 가이드

### For First-Time Readers / 처음 읽는 독자

1. **Start with Phase 0** ([Terminology](./phase-0-terminology.md)) to understand the common language
   - Key terms: AI System vs Model vs Application
   - Red Teaming vs Penetration Testing vs Safety Evaluation
   - Risk, Vulnerability, Failure Mode, Harm definitions

2. **Read Phase 3** ([Normative Core](./phase-3-normative-core.md)) to understand the process
   - 6-stage lifecycle: Planning → Design → Execution → Analysis → Reporting → Follow-up
   - Risk-based test scope determination
   - Report structure templates

3. **Explore Phase 4** ([Living Annexes](./phase-4-living-annex.md)) for practical attack patterns
   - Attack pattern library with 50+ documented techniques
   - Risk-Failure-Attack mappings
   - Benchmark coverage matrix

### For Practitioners Planning a Red Team Exercise / 레드팀 실습 계획자

1. Use the **6-stage process** from Phase 3:
   - **Stage 1 (Planning):** Define scope, objectives, rules of engagement
   - **Stage 2 (Design):** Select attack patterns, map to risk taxonomy
   - **Stage 3 (Execution):** Conduct testing, document findings
   - **Stage 4 (Analysis):** Assess severity, determine root causes
   - **Stage 5 (Reporting):** Create structured reports for stakeholders
   - **Stage 6 (Follow-up):** Verify mitigations, track residual risk

2. Reference **attack patterns** from Phase 4 and [phase-12-attacks.md](./phase-12-attacks.md)

3. Use **test scenarios** from [test-scenarios.md](./test-scenarios.md)

4. Follow the **testing checklist** from [sw-testing-checklist.md](./sw-testing-checklist.md)

### For Standards Bodies and Regulators / 표준화 기구 및 규제 기관

1. Review **Phase 5** ([Meta-Review](./phase-5-meta-review.md)) for process quality assessment criteria

2. Examine **Phase R** ([References](./phase-r-references.md)) for alignment with existing standards:
   - NIST AI RMF
   - ISO/IEC 42001
   - EU AI Act
   - MITRE ATLAS
   - OWASP Top 10 for LLM/Agentic AI

3. Review **standards comparison** in [standards-comparison-42119-7.md](./standards-comparison-42119-7.md)

---

## Key Principles / 핵심 원칙

### 1. Incompleteness Transparency / 불완전성의 투명성

> **"AI systems are inherently incapable of complete verification. Red teaming reduces discovered risks but cannot guarantee the absence of undiscovered risks."**

This guideline emphasizes transparent acknowledgment of testing limitations and residual unknowns.

### 2. Process-Centric, Not Checklist-Driven / 프로세스 중심, 체크리스트 중심이 아님

Rather than providing a static checklist, this guideline defines a flexible process framework that adapts to:
- Different AI system types (LLMs, vision models, recommender systems, etc.)
- Deployment contexts (consumer, healthcare, finance, critical infrastructure)
- Risk profiles (safety-critical vs low-risk applications)
- Organizational maturity levels

### 3. Living Annexes for Evolving Threats / 진화하는 위협을 위한 리빙 부속서

Attack patterns, benchmarks, and incident data are separated into living annexes that update independently from the stable normative core. This enables:
- Quarterly updates based on new CVEs, incidents, and research
- Community contributions to attack pattern library
- Rapid response to emerging threats (e.g., novel jailbreak techniques)

### 4. Multi-Stakeholder Perspective / 다중 이해관계자 관점

The guideline addresses needs of:
- **Red team operators** (execution guidance, attack patterns)
- **AI developers** (integration into SDLC, mitigation strategies)
- **Risk managers** (severity assessment, risk quantification)
- **Regulators** (compliance verification, audit trails)
- **Affected communities** (harm taxonomies, bias evaluation)

### 5. Grounded in Evidence / 증거 기반

All recommendations are traceable to:
- Real-world incidents (Phase R references)
- Academic research (citations in attack patterns)
- Existing standards (ISO, NIST, OWASP, MITRE)
- Benchmark data (performance on safety evaluations)

---

## Relationship to Existing Standards / 기존 표준과의 관계

This guideline complements and extends existing frameworks:

| Standard | Relationship | Key Difference |
|----------|--------------|----------------|
| **NIST AI RMF** | Implements the "Test" function of the RMF | Provides concrete process and attack library |
| **ISO/IEC 42001** | Supports AI management system testing requirements | Adds AI-specific adversarial testing dimension |
| **ISO/IEC/IEEE 29119** | Adapts software testing process for AI systems | Extends to safety, bias, and socio-technical risks |
| **MITRE ATLAS** | Uses ATLAS attack taxonomy | Adds process framework and risk mapping |
| **OWASP Top 10 LLM/Agentic** | Incorporates OWASP risk categories | Adds systematic testing procedure |
| **EU AI Act** | Supports compliance with testing requirements (Art. 9) | Provides methodology for conformity assessment |

See [standards-comparison-42119-7.md](./standards-comparison-42119-7.md) for detailed alignment analysis.

---

## How to Contribute / 기여 방법

This guideline is designed for community collaboration:

### Contributing New Attack Patterns

1. Follow the schema in Phase 4, Annex A
2. Include: ID, name, category, layer, description, prerequisites, procedure, detection, mitigation, severity, mappings (MITRE/OWASP), references
3. Submit via pull request to the attack pattern library

### Reporting Real-World Incidents

1. Document: date, system type, attack vector, impact, detection method, mitigation
2. Add to Phase R references with appropriate anonymization
3. Tag with relevant attack pattern IDs

### Updating Benchmark Coverage

1. Add new benchmarks to Annex C (Benchmark Coverage Matrix)
2. Map benchmark categories to risk taxonomy (Phase 0, Section 4)
3. Note coverage gaps and overlaps

### Suggesting Process Improvements

1. Propose changes to Phase 3 (Normative Core) via issue tracker
2. Provide rationale based on: practical experience, incident data, or research
3. Indicate impact on existing implementations

---

## Governance and Maintenance / 거버넌스 및 유지보수

### Version Control

- **Major versions (x.0.0):** Changes to Phase 0 (Terminology) or Phase 3 (Normative Core)
- **Minor versions (1.x.0):** Additions to Phase 4 (Living Annexes) or Phase 5 (Meta-Review)
- **Patch versions (1.0.x):** Corrections, clarifications, reference updates

### Update Schedule

| Component | Frequency | Trigger |
|-----------|-----------|---------|
| Phase 0 (Terminology) | Annual review | Major AI paradigm shift |
| Phase 3 (Normative Core) | Annual review | Process improvement evidence |
| Phase 4 (Living Annexes) | Quarterly | New attack patterns, benchmarks, incidents |
| Phase 5 (Meta-Review) | Biannual | Regulatory changes, audit feedback |
| Phase R (References) | Continuous | New publications, CVEs, incidents |

### Maintenance Team

- **Editors:** Maintain document coherence and quality
- **Technical Reviewers:** Validate attack patterns and mitigations
- **Academic Advisors:** Ensure alignment with research
- **Standards Liaisons:** Coordinate with ISO, NIST, OWASP, MITRE
- **Community Contributors:** Submit patterns, incidents, improvements

---

## Acknowledgments / 감사의 말

This guideline synthesizes insights from:

- NIST AI Red Teaming guidance and AI RMF
- MITRE ATLAS knowledge base
- OWASP LLM and Agentic AI Security projects
- ISO/IEC JTC 1/SC 42 AI standardization
- Academic research community (200+ papers reviewed)
- Real-world incidents from AI Incident Database (AIID)
- Security researchers and red team practitioners

Special thanks to organizations sharing anonymized red team findings and supporting open collaboration.

---

## License and Citation / 라이선스 및 인용

This guideline is released under [Creative Commons BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

**Recommended citation:**

```
AI Red Team International Guideline (AIRTG), Version 1.0.
Available at: [repository URL]
Accessed: [date]
```

For academic citations:
```bibtex
@techreport{airtg2026,
  title={AI Red Team International Guideline},
  author={{AI Red Team Guideline Consortium}},
  year={2026},
  institution={[Organization]},
  type={Technical Guideline},
  version={1.0}
}
```

---

## Contact and Feedback / 연락처 및 피드백

- **Issue Tracker:** [GitHub Issues]
- **Discussion Forum:** [Community Forum]
- **Email:** [Contact Email]
- **Working Group Meetings:** [Meeting Schedule]

---

## Roadmap / 로드맵

### Upcoming Additions

- **Phase 6-11:** Detailed attack pattern subcategories (in progress)
- **Tooling Annex:** Reference implementations, automated testing frameworks
- **Case Studies Annex:** Anonymized real-world red team reports
- **Training Materials:** Workshops, certification programs
- **Regulatory Mapping:** Detailed compliance matrices for EU AI Act, US EO 14110, etc.

### Research Priorities

1. Automated red teaming techniques (LLM-as-red-team)
2. Compositional testing for multi-model systems
3. Long-term safety evaluation methodologies
4. Supply chain risk assessment for AI components
5. Cross-cultural harm taxonomy validation

---

## Frequently Asked Questions / 자주 묻는 질문

### Q1: Is this guideline legally binding?

**A:** No. This is a voluntary consensus guideline. However, it may support compliance with regulatory requirements (e.g., EU AI Act Article 9 testing obligations) when referenced in conformity assessment procedures.

### Q2: Can this guideline be used for non-LLM AI systems?

**A:** Yes. While many examples reference LLMs due to current prominence, the process framework (Phase 3) and attack pattern schema (Phase 4) are designed to be model-agnostic. Annexes include patterns for vision models, recommender systems, and traditional ML.

### Q3: How does this relate to NIST AI RMF?

**A:** This guideline operationalizes the "Test" function of NIST AI RMF by providing concrete processes, attack libraries, and reporting templates. It complements but does not replace the RMF.

### Q4: What if my organization lacks resources for full red teaming?

**A:** Phase 3 includes a risk-based scoping methodology (Section 8). Lower-risk applications may use lightweight testing with narrower coverage. The guideline supports proportionality.

### Q5: How often should red teaming be conducted?

**A:** Depends on system risk profile:
- **High-risk systems:** Pre-deployment + quarterly ongoing
- **Medium-risk:** Pre-deployment + biannual
- **Low-risk:** Pre-deployment + annual or on major updates

See Phase 3, Section 11 (Continuous Red Team Operating Model) for details.

### Q6: Can automated tools replace human red teamers?

**A:** No. Automated tools (fuzzing, adversarial example generation) are valuable for coverage but lack the creativity and contextual judgment needed for complex socio-technical attack scenarios. Human expertise remains essential.

### Q7: Is there certification for red team practitioners?

**A:** Not yet within this guideline. Training materials and certification programs are on the roadmap. Current best practice: combination of security testing background + AI domain knowledge + training on this guideline.

---

## Glossary Quick Reference / 용어 빠른 참조

For full definitions, see [Phase 0: Terminology](./phase-0-terminology.md).

- **AI System / AI 시스템:** Model + infrastructure + data + guardrails + human processes
- **AI Red Teaming / AI 레드티밍:** Adversarial testing for vulnerabilities, harms, and misuse risks
- **Attack Surface / 공격 표면:** All entry points where an adversary can interact with the AI system
- **Failure Mode / 장애 모드:** Specific way the system can fail to perform its intended function
- **Harm / 피해:** Actual negative impact on individuals, groups, or society
- **Jailbreak / 탈옥:** Bypassing safety guardrails to elicit prohibited outputs
- **Prompt Injection / 프롬프트 인젝션:** Embedding malicious instructions in user inputs or data sources
- **Risk / 위험:** Likelihood × Impact of potential harm
- **Vulnerability / 취약점:** Weakness that can be exploited by a threat actor

---

## Document Navigation Map / 문서 탐색 맵

```
README.md (You are here)
├── Core Framework
│   ├── phase-0-terminology.md ..................... Common language
│   ├── phase-3-normative-core.md .................. 6-stage process
│   ├── phase-4-living-annex.md .................... Attack patterns, risk mappings
│   ├── phase-5-meta-review.md ..................... Quality assessment
│   └── phase-r-references.md ...................... Standards, papers, incidents
│
├── Attack Knowledge Base
│   ├── phase-12-attacks.md ........................ 50+ attack patterns
│   └── test-scenarios.md .......................... Ready-to-use test cases
│
├── Research & Analysis
│   ├── academic-trends-report.md .................. Research survey
│   ├── risk-trends-report.md ...................... Emerging threats
│   ├── benchmark-testing-report.md ................ Benchmark analysis
│   └── sw-testing-standards-report.md ............. Standards applicability
│
└── Practical Tools
    ├── sw-testing-checklist.md .................... Execution checklist
    └── standards-comparison-42119-7.md ............ ISO alignment
```

---

## Version History / 버전 이력

| Version | Date | Major Changes |
|---------|------|---------------|
| 1.0 (Draft) | 2026-02-10 | Initial comprehensive release with Phases 0, 3, 4, 5, R and supporting documents |

---

**Document Status:** Draft for Community Review
**Feedback Deadline:** [TBD]
**Next Scheduled Review:** 2027-02-10 (Annual)

---

## Further Reading / 추가 자료

- **NIST AI RMF:** [https://airc.nist.gov/AI_RMF_Knowledge_Base/AI_RMF](https://airc.nist.gov/AI_RMF_Knowledge_Base/AI_RMF)
- **MITRE ATLAS:** [https://atlas.mitre.org/](https://atlas.mitre.org/)
- **OWASP LLM Top 10:** [https://owasp.org/www-project-top-10-for-large-language-model-applications/](https://owasp.org/www-project-top-10-for-large-language-model-applications/)
- **AI Incident Database:** [https://incidentdatabase.ai/](https://incidentdatabase.ai/)
- **EU AI Act:** [https://artificialintelligenceact.eu/](https://artificialintelligenceact.eu/)

---

**End of README** | **README 끝**

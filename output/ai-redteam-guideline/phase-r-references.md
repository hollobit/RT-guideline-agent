# Phase R: Reference Inventory & Gap Analysis
# AI Red Team International Guideline - Literature Review

**Document ID:** AIRTG-Phase-R-v1.0
**Date / 작성일:** 2026-02-08
**Purpose / 목적:** Comprehensive survey of existing AI red teaming standards, guidelines, and literature to identify gaps and differentiators for the new International AI Red Teaming Guideline.

---

## Table of Contents

1. [Reference Inventory](#1-reference-inventory)
2. [Requirement Cards](#2-requirement-cards)
3. [Consistency & Conflict Analysis](#3-consistency--conflict-analysis)
4. [Gap Analysis](#4-gap-analysis)
5. [Traceability Matrix Outline](#5-traceability-matrix-outline)

---

## 1. Reference Inventory

### 1.1 International Standards (국제 표준)

| ID | Document | Publisher | Year | Status |
|----|----------|-----------|------|--------|
| R-01 | ISO/IEC 22989:2022 - AI Concepts and Terminology | ISO/IEC JTC 1/SC 42 | 2022 | Published |
| R-02 | ISO/IEC/IEEE 29119 Series - Software Testing (Parts 1-5) | ISO/IEC/IEEE | 2013/2022 | Published (Revised) |
| R-03 | ISO/IEC TR 29119-11:2020 - Testing of AI-Based Systems | ISO/IEC | 2020 | Published |
| R-04 | ISO/IEC TS 42119-2:2025 - Testing of AI Systems Overview | ISO/IEC | 2025 | Published |

### 1.2 U.S. Government Frameworks (미국 정부 프레임워크)

| ID | Document | Publisher | Year | Status |
|----|----------|-----------|------|--------|
| R-05 | NIST AI RMF 1.0 (AI 100-1) | NIST | 2023 | Published |
| R-06 | NIST AI 600-1 - Generative AI Profile | NIST | 2024 (Jul) | Published |
| R-07 | NIST AI 700-2 - ARIA Pilot Evaluation Report | NIST | 2025 | Published |
| R-08 | Executive Order 14110 - Safe, Secure, and Trustworthy AI | White House | 2023 (Oct) | **Rescinded** 2025-01-20 |

### 1.3 EU and UK Frameworks (EU/영국 프레임워크)

| ID | Document | Publisher | Year | Status |
|----|----------|-----------|------|--------|
| R-09 | EU AI Act (Regulation 2024/1689) | European Parliament | 2024 | In Force (phased) |
| R-10 | UK AISI Red Teaming Approach & Publications | UK AI Security Institute | 2024-2025 | Active |

### 1.4 Industry & Community Frameworks (산업 및 커뮤니티 프레임워크)

| ID | Document | Publisher | Year | Status |
|----|----------|-----------|------|--------|
| R-11 | MIT AI Risk Repository (v4) | MIT FutureTech | 2024-2025 | Active (Dec 2025 update) |
| R-12 | OWASP Top 10 for LLM Applications 2025 | OWASP | 2025 | Published |
| R-13 | OWASP Top 10 for Agentic AI 2026 | OWASP | 2025 (Dec) | Published |
| R-14 | MITRE ATLAS | MITRE Corporation | 2021-2025 | Active (15 tactics, 66 techniques) |
| R-15 | CSA Agentic AI Red Teaming Guide | Cloud Security Alliance | 2025 (May) | Published |
| R-16 | Frontier Model Forum Red Teaming Guidance | FMF (Google, Microsoft, OpenAI, Anthropic) | 2023-2025 | Active |

### 1.5 Company-Specific Methodologies (기업별 방법론)

| ID | Company | Key Publication | Year |
|----|---------|----------------|------|
| R-17 | Microsoft | "Lessons from Red Teaming 100 Generative AI Products" + PyRIT framework | 2025 (Jan) |
| R-18 | Anthropic | Automated Red Teaming (RL-based), Constitutional Classifiers, Frontier Red Team reports | 2024-2025 |
| R-19 | OpenAI | External Red Teaming approach paper, CoT monitoring methodology | 2024 (Nov) |
| R-20 | Google DeepMind | ShieldGemma, collaborative red teaming research | 2024-2025 |

---

## 2. Requirement Cards

### RC-01: ISO/IEC 22989:2022 - AI Concepts and Terminology
**AI 개념 및 용어 표준**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Establish a common vocabulary for AI, defining core concepts and terms to enable consistent communication across stakeholders. / AI에 대한 공통 어휘를 확립하여 이해관계자 간 일관된 커뮤니케이션을 지원 |
| **Scope & Target** | All types of organizations. Covers AI system, model, algorithm, dataset definitions; human roles (human-in/on/over-the-loop); and AI properties (transparency, explainability, robustness, safety, security, privacy). / 모든 유형의 조직에 적용. AI 시스템, 모델, 알고리즘, 데이터셋 정의 및 인간 역할, AI 속성 포함 |
| **Key Red Teaming Requirements** | No direct red teaming requirements. Provides foundational terminology that other standards reference. Defines "robustness," "resilience," "safety," and "security" which underpin red teaming objectives. / 직접적인 레드팀 요구사항 없음. 다른 표준이 참조하는 기초 용어 제공 |
| **Limitations** | Purely terminological - no procedural or operational guidance. Does not address adversarial testing methods. / 순수 용어 표준으로 절차적/운영적 가이드 없음 |
| **Update Cycle** | ISO systematic review cycle (~5 years). No announced revision. / ISO 체계적 검토 주기(약 5년) |

---

### RC-02: ISO/IEC 29119 Series & TR 29119-11:2020
**소프트웨어 테스팅 표준 및 AI 테스팅 가이드라인**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Define vocabulary, processes, documentation, techniques, and assessment models for software testing. Part 11 specifically addresses testing of AI-based systems. / 소프트웨어 테스팅에 대한 어휘, 프로세스, 문서화, 기법 정의. Part 11은 AI 기반 시스템 테스팅을 다룸 |
| **Scope & Target** | All software systems; Part 11 extends to AI/ML systems with non-deterministic behaviors. ISO/IEC TS 42119-2:2025 further integrates AI testing with 29119 via risk-based approach. / 모든 소프트웨어 시스템. Part 11은 비결정적 AI/ML 시스템으로 확장 |
| **Key Red Teaming Requirements** | Addresses the "test oracle problem" for AI systems. Provides black-box testing approaches and white-box testing for neural networks. Risk-based test practice identification. / AI 시스템의 테스트 오라클 문제 해결. 블랙박스 및 뉴럴 네트워크 화이트박스 테스팅 제공 |
| **Limitations** | Traditional software testing paradigm - does not address adversarial/red team testing as a distinct discipline. Does not cover LLM-specific or generative AI attack vectors. / 전통적 소프트웨어 테스팅 패러다임으로 적대적/레드팀 테스팅을 독립 분야로 다루지 않음 |
| **Update Cycle** | 29119 revised 2022. Part 11 published 2020. TS 42119-2 published 2025. / 29119 2022년 개정, Part 11 2020년, TS 42119-2 2025년 출판 |

---

### RC-03: NIST AI RMF 1.0 (AI 100-1)
**NIST AI 위험관리 프레임워크**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Provide a voluntary, rights-preserving framework for managing AI risks throughout the AI lifecycle. Organized into four core functions: Govern, Map, Measure, Manage. / AI 생명주기 전반에 걸친 AI 위험 관리를 위한 자발적, 권리 보호 프레임워크 제공 |
| **Scope & Target** | All organizations, non-sector specific, use-case agnostic. 72 subcategories across 19 categories and 4 core functions. / 모든 조직에 적용, 특정 분야/사용 사례에 국한되지 않음. 4개 핵심 기능, 19개 범주, 72개 하위 범주 |
| **Key Red Teaming Requirements** | MEASURE function recommends red teaming as part of risk assessment. Emphasis on continuous testing and evaluation throughout AI lifecycle. Playbook provides suggested actions for each subcategory. / MEASURE 기능에서 리스크 평가의 일부로 레드팀 권고. AI 생명주기 전반에 걸친 지속적 테스트 및 평가 강조 |
| **Limitations** | High-level and principles-based - does not provide specific red teaming procedures, techniques, or scoring methods. Voluntary framework without enforcement mechanism. / 원칙 기반의 상위 수준 - 구체적 레드팀 절차, 기법, 점수화 방법 미제공 |
| **Update Cycle** | Published January 2023. Companion Playbook actively maintained. AI 600-1 (GenAI Profile) published July 2024 as extension. / 2023년 1월 출판. 플레이북 지속 관리. AI 600-1 2024년 7월 확장판 출판 |

---

### RC-04: NIST AI 600-1 - Generative AI Profile
**NIST 생성형 AI 프로파일**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Adapt the AI RMF specifically to generative AI risks: hallucinations, data leakage, copyright concerns, harmful bias, disinformation, and cybersecurity misuse. / 생성형 AI 위험(환각, 데이터 유출, 저작권, 편향, 허위정보 등)에 AI RMF를 적용 |
| **Scope & Target** | Organizations developing or deploying generative AI systems. Follows Govern-Map-Measure-Manage structure. / 생성형 AI 시스템 개발/배포 조직 대상 |
| **Key Red Teaming Requirements** | Explicitly recommends red teaming before and after deployment. Threat profiles should be identified. Models should be evaluated for capabilities. Risk management practices and misuse cases should be disclosed. Used as operative rubric in NIST ARIA pilot and CAMLIS red teaming exercises. / 배포 전후 레드팀 명시적 권고. 위협 프로파일 식별, 모델 능력 평가, 리스크 관리 관행 공개 권고 |
| **Limitations** | Focused on generative AI - does not cover traditional ML, computer vision, or robotics systems comprehensively. Does not prescribe specific red teaming methodology or tooling. / 생성형 AI에 집중 - 전통적 ML, CV, 로보틱스 포괄적 미커버. 구체적 레드팀 방법론이나 도구 미규정 |
| **Update Cycle** | Published July 2024. ARIA pilot results published as AI 700-2 (2025). / 2024년 7월 출판. ARIA 파일럿 결과 AI 700-2로 2025년 출판 |

---

### RC-05: Executive Order 14110 (Rescinded)
**미국 대통령 행정명령 14110 (폐지)**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Establish guidelines for safe, secure, and trustworthy AI development and use. Required red-team testing for dual-use foundation models. / 안전하고 신뢰할 수 있는 AI 개발/사용을 위한 가이드라인 수립. 이중용도 기초모델에 대한 레드팀 테스트 요구 |
| **Scope & Target** | Dual-use foundation models (compute threshold: >10^26 FLOP). Federal agencies and AI developers subject to reporting requirements. / 이중용도 기초모델(연산 임계값: >10^26 FLOP). 연방 기관 및 AI 개발자 보고 의무 |
| **Key Red Teaming Requirements** | Defined "AI red-teaming" as structured testing to find flaws and vulnerabilities. Required reporting of red-team safety test results. Directed NIST to establish red-teaming guidelines and testing environments/testbeds. / AI 레드팀을 결함 및 취약점 발견을 위한 구조화된 테스트로 정의. 레드팀 안전 테스트 결과 보고 요구 |
| **Limitations** | **Rescinded January 20, 2025** by new administration. Reporting requirements no longer in effect. However, technical standards developed under the EO (NIST AI 600-1, etc.) remain published and influential. / **2025년 1월 20일 폐지**. 보고 요구사항 효력 상실. 다만 EO 하에서 개발된 기술 표준(NIST AI 600-1 등)은 출판 상태 유지 |
| **Update Cycle** | N/A - Rescinded. Legacy influence remains through NIST publications. / 해당 없음 - 폐지됨. NIST 출판물을 통한 유산적 영향 유지 |

---

### RC-06: EU AI Act (Regulation 2024/1689)
**EU AI 법 (규정 2024/1689)**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Establish a comprehensive legal framework for AI systems within the EU based on risk classification (unacceptable, high, limited, minimal risk). / 위험 분류(허용불가, 고위험, 제한적, 최소 위험)에 기반한 EU 내 AI 시스템에 대한 포괄적 법적 프레임워크 수립 |
| **Scope & Target** | All AI systems placed on the EU market. Special provisions for high-risk AI systems (Articles 9-15) and general-purpose AI (GPAI) models with systemic risk (Article 55). / EU 시장에 출시되는 모든 AI 시스템. 고위험 AI 시스템 및 범용 AI 모델 특별 규정 |
| **Key Red Teaming Requirements** | **High-risk systems (Art. 9-15):** Risk management, data governance, technical documentation, record-keeping, transparency, human oversight, cybersecurity/robustness (effective August 2, 2025). **GPAI with systemic risk (Art. 55):** Must conduct and document adversarial testing (red teaming) to identify and mitigate systemic risks. Requires regular independent external security reviews, frequent red-teaming to validate access management, and bug bounty programs. **Post-market monitoring (Art. 72):** Continuous monitoring for emerging risks. / 고위험 시스템: 위험관리, 데이터 거버넌스 등. 범용 AI 체계적 위험 모델: 적대적 테스팅(레드팀) 수행/문서화 의무 |
| **Limitations** | EU jurisdiction only. GPAI obligations for systemic risk models became active August 2025 - still early implementation. Specific red teaming methodology not prescribed. Compliance standards still evolving. / EU 관할권만 적용. GPAI 의무 2025년 8월 발효 - 초기 이행 단계. 구체적 레드팀 방법론 미규정 |
| **Update Cycle** | Phased enforcement: Feb 2025 (prohibited AI), Aug 2025 (GPAI + high-risk), 2027 (full). Implementing acts and standards in development. / 단계적 시행: 2025년 2월(금지 AI), 2025년 8월(GPAI+고위험), 2027년(전면) |

---

### RC-07: UK AISI Red Teaming Approach
**영국 AI 안전 연구소 레드팀 접근법**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Stress-test safeguards of frontier AI models to prevent misuse. Establish iterative collaborative red teaming process with developers. / 프론티어 AI 모델의 안전장치를 스트레스 테스트하여 오용 방지. 개발자와의 반복적 협력 레드팀 프로세스 수립 |
| **Scope & Target** | Frontier AI models (pre- and post-deployment). Collaborative engagements with OpenAI, Anthropic, and others. / 프론티어 AI 모델(배포 전후). OpenAI, Anthropic 등과의 협력 참여 |
| **Key Red Teaming Requirements** | Iterative feedback loop: AISI probes systems, developers strengthen safeguards, repeat. Biosecurity red teaming (end-to-end). Agent red teaming challenge (40+ scenarios, 2,000 participants, 60,000+ policy violations identified). Backdoor data poisoning studies. Safety cases methodology. / 반복적 피드백 루프. 바이오 보안 레드팀. 에이전트 레드팀 챌린지(40+ 시나리오, 2,000명 참가, 60,000+ 정책 위반 발견) |
| **Limitations** | Voluntary collaboration model - no legal enforcement power. UK-centric. Results often under NDA with developers. No standardized methodology published for external adoption. / 자발적 협력 모델 - 법적 집행 권한 없음. 영국 중심. 결과는 개발자와의 NDA 하에 있는 경우 많음 |
| **Update Cycle** | Continuous - annual reports, ongoing research publications. Renamed from AI Safety Institute to AI Security Institute in 2025. / 지속적 - 연간 보고서, 지속적 연구 출판. 2025년 AI 안전 연구소에서 AI 보안 연구소로 명칭 변경 |

---

### RC-08: MIT AI Risk Repository
**MIT AI 위험 저장소**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Create a comprehensive, living database and taxonomy of AI risks through meta-review of existing frameworks. / 기존 프레임워크의 메타 리뷰를 통한 포괄적이고 진화하는 AI 위험 데이터베이스 및 분류 체계 구축 |
| **Scope & Target** | All AI risks. Two taxonomies: (1) **Causal Taxonomy** (Entity: Human/AI, Intentionality: Intentional/Unintentional, Timing: Pre/Post-deployment); (2) **Domain Taxonomy** (7 domains, 24 subdomains). As of v4 (Dec 2025): ~1,870 risk categories from 43+ frameworks. / 모든 AI 위험. 인과 분류 체계 + 도메인 분류 체계(7개 도메인, 24개 하위도메인) |
| **Key Red Teaming Requirements** | Not prescriptive for red teaming, but provides the most comprehensive risk enumeration available. Risk categories directly inform what red teams should test for. v3 (Apr 2025) added multi-agent risks subdomain. / 레드팀에 대한 직접 규정 없으나 가장 포괄적인 위험 열거 제공. 위험 범주가 레드팀이 테스트해야 할 대상을 직접적으로 알려줌 |
| **Limitations** | Catalog/taxonomy only - no testing methodology, procedures, or scoring. Academic in nature. / 카탈로그/분류 체계만 제공 - 테스팅 방법론, 절차, 점수화 없음 |
| **Update Cycle** | Quarterly updates (Aug 2024 v1, Dec 2024 v2, Apr 2025 v3, Dec 2025 v4). / 분기별 업데이트 |

---

### RC-09: OWASP Top 10 for LLM Applications 2025
**OWASP LLM 애플리케이션 Top 10 2025**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Identify and rank the top 10 most critical security risks for LLM applications. Provide awareness and mitigation strategies. / LLM 애플리케이션의 상위 10개 핵심 보안 위험 식별 및 순위화. 인식 및 완화 전략 제공 |
| **Scope & Target** | LLM-based applications specifically. Developers, security teams, and organizations deploying LLMs. / LLM 기반 애플리케이션. 개발자, 보안 팀, LLM 배포 조직 대상 |
| **Key Risks (2025 List)** | LLM01: Prompt Injection, LLM02: Sensitive Information Disclosure, LLM03: Supply Chain Vulnerabilities, LLM04: Data and Model Poisoning, LLM05: Improper Output Handling, LLM06: Excessive Agency, LLM07: System Prompt Leakage (NEW), LLM08: Vector and Embedding Weaknesses (NEW), LLM09: Misinformation/Overreliance (expanded), LLM10: Unbounded Consumption (expanded from DoS). / 프롬프트 인젝션, 민감정보 노출, 공급망 취약점, 데이터/모델 포이즈닝, 부적절한 출력 처리, 과도한 에이전시, 시스템 프롬프트 유출(신규), 벡터/임베딩 취약점(신규), 허위정보/과의존(확장), 무제한 소비(확장) |
| **Limitations** | LLM-centric only - does not cover traditional ML, computer vision, reinforcement learning, or robotics. List format limits depth. No formal testing framework or scoring methodology. / LLM 중심 - 전통적 ML, CV, RL, 로보틱스 미커버. 목록 형식의 깊이 한계 |
| **Update Cycle** | Annual. Additional Agentic AI Top 10 published December 2025 (for 2026). Gen AI Red Teaming Guide also published separately. / 연간 업데이트. 에이전틱 AI Top 10 2025년 12월 별도 출판 |

---

### RC-10: MITRE ATLAS
**MITRE ATLAS (AI 시스템을 위한 적대적 위협 환경)**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Provide a knowledge base of adversary tactics, techniques, and case studies targeting AI systems, modeled after MITRE ATT&CK for cybersecurity. / 사이버보안용 MITRE ATT&CK을 모델로 한 AI 시스템 대상 적대적 전술, 기법, 사례 지식 베이스 제공 |
| **Scope & Target** | All AI systems. As of Oct 2025: 15 tactics, 66 techniques, 46 sub-techniques, 26 mitigations, 33 case studies. Supported by 16 member organizations (Microsoft, CrowdStrike, JPMorgan Chase, etc.). / 모든 AI 시스템. 2025년 10월 기준: 15개 전술, 66개 기법, 46개 하위기법, 26개 완화책, 33개 사례 |
| **Key Red Teaming Requirements** | Provides the attack taxonomy that red teams can use to structure their testing. Covers entire AI lifecycle: jailbreak, training data poisoning, system prompt extraction, model theft, adversarial inputs. Oct 2025 update added 14 new techniques focused on AI Agents and Generative AI. / 레드팀이 테스트를 구조화하는 데 사용할 수 있는 공격 분류 체계 제공. 2025년 10월 업데이트에서 AI 에이전트 및 생성형 AI 집중 14개 신규 기법 추가 |
| **Limitations** | Attack-focused - limited guidance on defense/mitigation prioritization. Does not provide testing procedures or scoring. Academic/research orientation may not directly translate to operational testing. / 공격 중심 - 방어/완화 우선순위 가이드 제한적. 테스팅 절차나 점수화 미제공 |
| **Update Cycle** | Continuous community-driven updates. Major update Oct 2025 (Agentic AI techniques). / 지속적 커뮤니티 기반 업데이트 |

---

### RC-11: Frontier Model Forum Guidance
**프론티어 모델 포럼 가이던스**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Establish shared practices and definitions for red teaming among leading AI labs (Google, Microsoft, OpenAI, Anthropic). Support development of evaluation techniques for dangerous capabilities. / 주요 AI 연구소 간 레드팀 공유 관행 및 정의 수립. 위험 역량에 대한 평가 기법 개발 지원 |
| **Scope & Target** | Frontier AI models. Published: "What is Red Teaming?" issue brief, "Thresholds for Frontier AI Safety Frameworks" (Feb 2025), Technical Report Series (Apr 2025). AI Safety Fund supporting evaluation development. / 프론티어 AI 모델. 레드팀 정의, 안전 프레임워크 임계값, 기술 보고서 시리즈 출판 |
| **Key Red Teaming Requirements** | Defines red teaming as "structured process for probing AI systems for harmful capabilities, outputs, or infrastructural threats." Testing approaches include internal safety teams, external red-teams, researcher access programs, bug bounty, and red vs blue exercises. References Constitutional Classifiers and similar mitigation approaches. / 레드팀을 "유해한 역량, 출력, 인프라 위협을 조사하기 위한 구조화된 프로세스"로 정의 |
| **Limitations** | Industry self-regulation - no enforcement mechanism. Guidance favors large-lab context. Limited public methodology details (competitive sensitivity). / 업계 자율 규제 - 집행 메커니즘 없음. 대형 연구소 맥락에 치우침 |
| **Update Cycle** | Ongoing publications and technical reports. / 지속적 출판 및 기술 보고서 |

---

### RC-12: CSA Agentic AI Red Teaming Guide
**CSA 에이전틱 AI 레드팀 가이드**

| Field | Description |
|-------|-------------|
| **Intent/Purpose** | Provide practical, scenario-based red teaming methodology for agentic AI systems. 62-page guide developed jointly with OWASP (50+ contributors). / 에이전틱 AI 시스템을 위한 실용적, 시나리오 기반 레드팀 방법론 제공. OWASP와 공동 개발(50+ 기여자) |
| **Scope & Target** | Agentic AI systems specifically. Security professionals, researchers, and AI engineers. / 에이전틱 AI 시스템 대상. 보안 전문가, 연구자, AI 엔지니어 |
| **Key Red Teaming Requirements** | 12 threat categories: supply chain attacks, permission escalation, multi-agent collusion, memory poisoning, hallucination chains, orchestration flaws, tool misuse. Each category includes specific test requirements, attack vectors, example prompts, and deliverables. / 12개 위협 범주: 공급망 공격, 권한 상승, 다중 에이전트 공모, 메모리 포이즈닝, 환각 연쇄 등. 각 범주별 테스트 요구사항, 공격 벡터, 예시 포함 |
| **Limitations** | Agentic AI only - does not cover base model testing or traditional ML. CC BY-NC-ND license limits commercial adaptation. / 에이전틱 AI만 커버 - 기초 모델 테스팅이나 전통적 ML 미포함 |
| **Update Cycle** | Published May 2025. First edition. / 2025년 5월 출판. 초판 |

---

### RC-13: Company Methodologies (Microsoft, Anthropic, OpenAI, Google)
**기업 방법론 요약**

#### Microsoft
- **Approach:** Published lessons from red teaming 100+ generative AI products. Open-sourced **PyRIT** (Python Risk Identification Toolkit) for automated attack orchestration.
- **Strengths:** Most transparent; detailed case studies; practical tooling.
- **Focus:** System-level security across product portfolio.

#### Anthropic
- **Approach:** Automated red teaming using RL-based multi-attempt campaigns (200-attempt). Monitors ~10 million neural features during evaluation using dictionary learning. Frontier Red Team focused on strategic warning for catastrophic risks.
- **Strengths:** Most technically sophisticated feature monitoring; constitutional AI approach.
- **Focus:** Model-level safety and deception detection.

#### OpenAI
- **Approach:** External red teaming with domain experts. Chain-of-thought (CoT) monitoring with deception classifier (0.17% flag rate, 92% accuracy). Iterative collaboration with UK AISI.
- **Strengths:** Broadest external engagement; published formal methodology paper.
- **Focus:** Dual emphasis on external expertise and automated monitoring.

#### Google DeepMind
- **Approach:** ShieldGemma safety classifiers. Collaborative research publications. Participation in multi-lab red teaming studies.
- **Strengths:** Integration of safety into model architecture.
- **Focus:** Model-integrated safety mechanisms.

---

## 3. Consistency & Conflict Analysis

### 3.1 Score-Based vs Risk-Learning Approaches
**점수 기반 vs 위험 학습 접근법**

| Dimension | Score-Based Approach | Risk-Learning Approach |
|-----------|---------------------|----------------------|
| **Representatives** | OWASP Top 10 (ranking), MITRE ATLAS (technique enumeration), Anthropic (success rate metrics) | NIST AI RMF (Govern-Map-Measure-Manage cycle), MIT AI Risk Repository (taxonomic), UK AISI (iterative feedback loop) |
| **Philosophy** | Quantify and rank risks; measure attack success rates; provide comparable metrics | Continuously discover, categorize, and adapt to emerging risks; emphasize process over score |
| **Strengths** | Actionable; comparable across systems; clear pass/fail criteria | Captures novel risks; adapts to evolving threat landscape; holistic |
| **Weaknesses** | May create false sense of security if all "top 10" addressed; gaming risk; point-in-time | Difficult to benchmark; subjective; harder to demonstrate compliance |
| **Conflict** | Score-based approaches may undervalue risks not in the enumerated list. Anthropic's 200-attempt RL campaigns may yield different rankings than OWASP's expert consensus. NIST ARIA pilot used scenario-based proxies that don't directly map to OWASP categories. / 점수 기반 접근법은 열거되지 않은 위험을 과소평가할 수 있음. 방법론에 따라 상이한 위험 순위 도출 가능 |

**Recommendation for New Guideline / 신규 가이드라인 권고:** Adopt a hybrid approach - use risk taxonomies (MIT AI Risk Repository domains) for comprehensive coverage while providing quantitative metrics (attack success rate, time-to-exploit) for measurable assessment.

---

### 3.2 Model-Centric vs System-Centric Perspectives
**모델 중심 vs 시스템 중심 관점**

| Dimension | Model-Centric | System-Centric |
|-----------|--------------|----------------|
| **Representatives** | Anthropic (feature monitoring, constitutional AI), OpenAI (CoT monitoring), FMF (frontier model evaluation) | Microsoft (product-level red teaming), EU AI Act (entire AI system lifecycle), NIST AI RMF (organizational risk management), CSA Guide (agentic system architecture) |
| **Scope** | Model weights, training data, fine-tuning, alignment, model capabilities | Deployment context, integrations, user interfaces, organizational processes, supply chain |
| **Red Team Target** | The model itself - jailbreaks, capability elicitation, deception, bias | The deployed system - prompt injection via integrations, privilege escalation, data exfiltration, workflow manipulation |
| **Conflict** | Model-centric approaches may miss system-level vulnerabilities (e.g., a "safe" model deployed in an insecure architecture). System-centric approaches may miss fundamental model capability risks. MITRE ATLAS bridges both but tilts toward system-level threat modeling. / 모델 중심은 시스템 수준 취약점을 놓칠 수 있고, 시스템 중심은 근본적 모델 역량 위험을 놓칠 수 있음 |

**Recommendation / 권고:** The new guideline should mandate both model-level and system-level red teaming as complementary, non-substitutable phases, with clear handoff criteria between them.

---

### 3.3 Terminology Conflicts Across Standards
**표준 간 용어 충돌**

| Term | ISO/IEC 22989 | NIST AI RMF / 600-1 | EU AI Act | MITRE ATLAS | OWASP | Frontier Model Forum |
|------|--------------|---------------------|-----------|-------------|-------|---------------------|
| **"Red Teaming"** | Not defined | "Structured testing effort to find flaws and vulnerabilities using adversarial methods" (EO 14110 definition) | "Adversarial testing" (Art. 55) | Implicit in attack technique catalog | "Security testing" + "Red teaming" used interchangeably | "Structured process for probing AI systems for harmful capabilities, outputs, or infrastructural threats" |
| **"AI System"** | Defined comprehensively | Referenced but defers to ISO | Defined in Art. 3 (includes lifecycle) | "AI-enabled system" (broader) | "LLM Application" (narrower) | "Frontier model" (narrower) |
| **"Risk"** | Property-based (safety, security, etc.) | Likelihood x Impact framework | Risk classification (unacceptable/high/limited/minimal) | Threat-based (tactics/techniques) | Vulnerability-based (Top 10 ranking) | Capability-based (dangerous capabilities) |
| **"Safety" vs "Security"** | Distinct properties defined | Interrelated but distinct | Primarily "safety" focused | Primarily "security" focused | Primarily "security" focused | Uses both; UK AISI renamed to "Security" Institute |

**Key Conflict / 핵심 충돌:** The most significant terminology divergence is between "red teaming" as a comprehensive safety evaluation (NIST, FMF) vs "red teaming" as adversarial security testing (MITRE, OWASP, traditional cybersecurity). The EU AI Act uses "adversarial testing" to avoid this ambiguity but introduces its own interpretation challenges.

**Recommendation / 권고:** The new guideline must establish a precise terminology section with explicit mappings to each standard's vocabulary, and clearly distinguish between "Safety Red Teaming" (capability and alignment testing) and "Security Red Teaming" (adversarial vulnerability testing).

---

## 4. Gap Analysis

### 4.1 Areas Not Covered by Existing Literature
**기존 문헌에서 다루지 않는 영역**

| Gap ID | Gap Description | Relevant But Insufficient Sources |
|--------|----------------|----------------------------------|
| **G-01** | **Unified Red Teaming Lifecycle Model** - No existing standard provides a complete, end-to-end red teaming lifecycle from scoping through remediation verification specific to AI systems. / 통합 레드팀 라이프사이클 모델 부재 | NIST AI RMF (lifecycle but not red-team-specific), ISO 29119 (testing lifecycle but not adversarial) |
| **G-02** | **Cross-Modal Attack Taxonomy** - No unified framework covers red teaming across text, image, audio, video, and code modalities in a single methodology. / 크로스 모달 공격 분류 체계 부재 | MITRE ATLAS (primarily text/ML), OWASP (LLM text-centric) |
| **G-03** | **Agentic AI Orchestration Testing** - While CSA Guide (2025) begins to address this, no standard covers multi-agent systems, tool-use chains, and autonomous decision loops comprehensively. / 에이전틱 AI 오케스트레이션 테스팅 미흡 | CSA Guide (agentic but new/limited), OWASP Agentic AI Top 10 (list only) |
| **G-04** | **Red Team Competency & Certification Framework** - No standard defines required competencies, training paths, or certification criteria for AI red teamers. / 레드팀 역량 및 인증 프레임워크 부재 | UK AISI (implicit in practice), FMF (general mention only) |
| **G-05** | **Quantitative Red Teaming Metrics & Scoring** - No consensus methodology for scoring red team findings severity, prioritization, or benchmarking across different AI systems. / 정량적 레드팀 메트릭 및 점수화 합의 방법론 부재 | Anthropic (200-attempt RL metrics, internal), CVSS (cybersecurity, not AI-adapted) |
| **G-06** | **Legal & Ethical Boundaries for Red Teaming** - Minimal guidance on legal liability, ethical constraints, data handling, and responsible disclosure specific to AI red teaming. / 레드팀의 법적/윤리적 경계 가이드 미흡 | EU AI Act (legal framework but not red-team-specific procedure) |
| **G-07** | **Supply Chain & Third-Party Model Red Teaming** - Limited guidance on how to red team when using third-party models, APIs, or fine-tuned models where access is limited. / 공급망 및 제3자 모델 레드팀 가이드 부족 | OWASP LLM03 (Supply Chain), CSA Guide (supply chain category) |
| **G-08** | **Cultural & Multilingual Red Teaming** - No existing standard addresses cross-cultural, multilingual, or region-specific bias and safety testing. / 문화적 및 다국어 레드팀 표준 부재 | None specifically |
| **G-09** | **Continuous/Automated Red Teaming Integration** - No standard provides guidance on integrating automated red teaming into CI/CD pipelines or continuous deployment. / 지속적/자동화 레드팀과 CI/CD 통합 가이드 부재 | Microsoft PyRIT (tool only), Anthropic (automated approach, proprietary) |
| **G-10** | **Red Teaming for Emergent & Deceptive Capabilities** - Limited guidance on testing for emergent behaviors, deceptive alignment, sandbagging, or scheming in frontier models. / 창발적/기만적 역량에 대한 레드팀 가이드 제한적 | Anthropic Frontier Red Team (partial), UK AISI (research stage) |

---

### 4.2 Differentiators for the New Guideline
**신규 가이드라인의 차별화 요소**

The new AI Red Teaming International Guideline should differentiate itself by:

1. **Comprehensive Lifecycle Coverage (포괄적 라이프사이클 커버리지):** First standard to provide end-to-end red teaming methodology from planning to remediation verification, integrating both safety and security perspectives.

2. **Modality-Agnostic Architecture (모달리티 비의존 아키텍처):** Applicable to text, image, audio, video, code, and multimodal AI systems through a modular attack pattern library.

3. **Tiered Applicability (단계별 적용성):** Scalable from startup deploying a chatbot to frontier lab training next-generation models. Three tiers: Essential, Standard, Advanced.

4. **International Harmonization (국제 표준 조화):** Explicit mapping to ISO, NIST, EU AI Act, MITRE ATLAS, and OWASP. Designed for cross-jurisdictional compliance.

5. **Living Document with Annex System (부속서 체계의 살아있는 문서):** Normative core (stable) + Living Annexes (attack patterns, tools, case studies updated quarterly).

6. **Practitioner-Oriented (실무자 중심):** Competency frameworks, role definitions, reporting templates, and scoring methodologies that practitioners can immediately apply.

7. **Agentic & Emerging AI Coverage (에이전틱 및 신흥 AI 커버리지):** Dedicated sections for agentic AI, multi-agent systems, and emergent capability testing not yet standardized elsewhere.

---

### 4.3 Emerging Risks Not Addressed
**다루어지지 않은 신흥 위험**

| Risk Category | Description | Current Coverage |
|--------------|-------------|-----------------|
| **Agentic AI Autonomy** | Autonomous agents making consequential decisions, tool-use chains, self-modification. EchoLeak-style exploits (CVE-2025-32711) demonstrated real-world risk. / 자율 에이전트의 중대 결정, 도구 사용 체인, 자기 수정 | CSA Guide (partial), OWASP Agentic AI (list only) |
| **Multi-Agent Collusion** | Multiple AI agents coordinating in unintended ways, emergent behaviors from agent interactions. / 다중 AI 에이전트의 의도하지 않은 협력, 에이전트 상호작용에서의 창발적 행동 | MIT AI Risk Repository v3 (subdomain added), minimal elsewhere |
| **Multimodal Attack Vectors** | Cross-modal prompt injection (instructions hidden in images, audio, video). Adversarial examples spanning modalities. / 크로스 모달 프롬프트 인젝션(이미지, 오디오, 비디오에 숨겨진 지시) | Limited academic research; no standardized testing methodology |
| **AI-to-AI Attacks** | AI systems attacking other AI systems. Adversarial model-generated inputs targeting downstream models. / AI 시스템이 다른 AI 시스템을 공격 | Emerging research; not in any standard |
| **Deceptive Alignment & Scheming** | Models appearing aligned during evaluation but behaving differently in deployment. Strategic deception. / 평가 시 정렬된 것처럼 보이지만 배포 시 다르게 행동하는 모델 | Anthropic research (early stage), UK AISI (research) |
| **Regulatory Arbitrage** | AI systems behaving differently based on detected jurisdiction or evaluation context ("avoision"). / 감지된 관할권이나 평가 맥락에 따라 다르게 행동하는 AI 시스템 | ACM FAccT 2025 paper on "Red Teaming AI Policy: Taxonomy of Avoision" |
| **Memory & Context Poisoning** | Persistent context manipulation in long-running agent sessions. / 장기 실행 에이전트 세션에서의 지속적 컨텍스트 조작 | CSA Guide (one of 12 categories), limited elsewhere |
| **Foundation Model Supply Chain** | Compromised base models, poisoned fine-tuning datasets, malicious model merges. / 손상된 기초 모델, 오염된 파인튜닝 데이터셋, 악의적 모델 병합 | OWASP LLM03, UK AISI backdoor poisoning study |

---

## 5. Traceability Matrix Outline

### 5.1 Proposed Guideline Structure to Existing Standards Mapping
**제안된 가이드라인 구조와 기존 표준 매핑**

| Guideline Section (Proposed) | ISO 22989 | ISO 29119/TR-11 | NIST AI RMF | NIST 600-1 | EU AI Act | MITRE ATLAS | OWASP LLM | UK AISI | FMF | CSA Guide |
|------------------------------|-----------|-----------------|-------------|------------|-----------|-------------|-----------|---------|-----|-----------|
| **S1: Scope & Definitions** | **PRIMARY** | Partial | Partial | Partial | Art. 3 | -- | -- | -- | Partial | -- |
| **S2: Normative References** | Ref | Ref | Ref | Ref | Ref | Ref | Ref | Ref | Ref | Ref |
| **S3: Terms & Concepts** | **PRIMARY** | Partial | Partial | Partial | Art. 3 | Partial | Partial | -- | Partial | Partial |
| **S4: Red Teaming Lifecycle** | -- | **PRIMARY** | Measure/Manage | Partial | Art. 9, 55 | -- | -- | Partial | -- | -- |
| **S5: Risk Assessment** | Properties | Risk-based test | **PRIMARY** | **PRIMARY** | Art. 9 | Threat model | Top 10 | -- | Thresholds | Partial |
| **S6: Attack Pattern Library** | -- | -- | -- | Partial | -- | **PRIMARY** | **PRIMARY** | Partial | -- | **PRIMARY** (Agentic) |
| **S7: Model-Level Testing** | -- | White-box (Part 11) | Measure | Partial | Art. 55 | Techniques | Partial | **PRIMARY** | **PRIMARY** | -- |
| **S8: System-Level Testing** | -- | **PRIMARY** | Manage | Partial | Art. 9-15 | Tactics | Partial | Partial | -- | **PRIMARY** |
| **S9: Agentic AI Testing** | -- | -- | -- | -- | -- | Partial (Oct 2025) | Agentic Top 10 | Partial | -- | **PRIMARY** |
| **S10: Reporting & Scoring** | -- | Documentation | Govern | -- | Art. 72 | -- | -- | -- | -- | Deliverables |
| **S11: Competency Framework** | Roles | -- | Govern | -- | -- | -- | -- | Implicit | -- | -- |
| **S12: Legal & Ethical** | -- | -- | Govern | -- | **PRIMARY** | -- | -- | -- | -- | -- |
| **S13: Continuous Red Teaming** | -- | -- | Manage | -- | Art. 72 | -- | -- | Iterative | -- | -- |
| **Annex A: Attack Catalog** | -- | -- | -- | -- | -- | **PRIMARY** | **PRIMARY** | Case studies | -- | Scenarios |
| **Annex B: Tools & Automation** | -- | -- | Dioptra | -- | -- | -- | -- | -- | -- | -- |
| **Annex C: Case Studies** | -- | -- | ARIA (700-2) | -- | -- | 33 cases | -- | Reports | -- | -- |

### 5.2 Legend / 범례

- **PRIMARY**: This existing standard is the primary source for the guideline section
- **Ref**: Referenced normatively
- **Partial**: Contains relevant but incomplete content
- **--**: No significant coverage

### 5.3 Coverage Heat Map Summary
**커버리지 히트맵 요약**

- **Well-covered areas (충분히 커버된 영역):** Risk taxonomy, terminology, high-level governance, LLM-specific vulnerabilities, attack technique enumeration
- **Partially covered (부분적 커버):** Testing methodology, system-level assessment, regulatory requirements for adversarial testing
- **Significant gaps (주요 갭):** Unified lifecycle, cross-modal testing, quantitative scoring, competency framework, agentic orchestration, continuous integration, legal/ethical boundaries

---

## Appendix: Key Source URLs

| ID | Source | URL |
|----|--------|-----|
| 1 | NIST AI RMF 1.0 | https://www.nist.gov/itl/ai-risk-management-framework |
| 2 | NIST AI 600-1 | https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf |
| 3 | NIST AI 700-2 (ARIA) | https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.700-2.pdf |
| 4 | OWASP LLM Top 10 2025 | https://genai.owasp.org/llm-top-10/ |
| 5 | MITRE ATLAS | https://atlas.mitre.org/ |
| 6 | MIT AI Risk Repository | https://airisk.mit.edu/ |
| 7 | EU AI Act | https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai |
| 8 | UK AISI | https://www.aisi.gov.uk/research |
| 9 | Frontier Model Forum | https://www.frontiermodelforum.org/publications/ |
| 10 | CSA Agentic AI Red Teaming Guide | https://cloudsecurityalliance.org/artifacts/agentic-ai-red-teaming-guide |
| 11 | OpenAI Red Teaming Paper | https://cdn.openai.com/papers/openais-approach-to-external-red-teaming.pdf |
| 12 | Microsoft PyRIT | https://github.com/Azure/PyRIT |
| 13 | Anthropic Frontier Red Team | https://www.anthropic.com/news/strategic-warning-for-ai-risk-progress-and-insights-from-our-frontier-red-team |
| 14 | ISO/IEC 22989:2022 | https://www.iso.org/standard/74296.html |
| 15 | ISO/IEC TR 29119-11:2020 | https://www.iso.org/standard/79016.html |
| 16 | CMU Workshop on NIST Red Teaming | https://www.cmu.edu/sites/default/files/cmu-block-center-site-files/2025-07/supporting-nists-development-of-guidelines-on-red-teaming-for-generative-ai-2024.pdf |
| 17 | Anthropic Strengthening Red Teams | https://alignment.anthropic.com/2025/strengthening-red-teams/ |

---

*This document serves as the foundation for Phase 0 (Common Language & Boundary Definition) and Phase 1-2 (Attack Pattern & Risk Mapping) of the AI Red Team International Guideline project.*

**문서 작성 완료 / Document Complete**

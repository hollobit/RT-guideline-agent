# Phase 0: Common Language and Scope Boundaries
# 제0단계: 공통 언어 및 범위 경계 정의

**AI Red Team International Guideline -- Terminology Foundation**

**Version**: v0.5.0
**Date**: 2026-02-12
**Normative References**: 5-Standard Baseline
  - ISO/IEC 22989:2022 (AI Concepts)
  - ISO/IEC 22989:2022/AMD 1:2025 (GenAI)
  - ISO/IEC DIS 27090 (AI Security)
  - ISO/IEC 29119-1:2022 (Software Testing)
  - ISO/IEC TS 42119-2:2025 (AI Testing)
**Status**: Comprehensive ISO-Aligned Testing Terminology
**Conformance**: Multi-Standard Framework (155 unique terms)

> This document establishes the shared vocabulary, scope boundaries, and guiding principles
> for the AI Red Team International Guideline. All subsequent phases reference these definitions
> as the authoritative source of terminology.
>
> **NORMATIVE BASIS**: This terminology framework is aligned with ISO/IEC 22989:2022 (Artificial Intelligence - Concepts and Terminology) and its Amendment 1:2025 (Generative AI). All ISO-defined terms cite exact section numbers and pages. Custom extensions for red team operations are clearly marked as "Non-ISO (Custom)".

---

## 0. Normative References / 규범적 참조

This terminology document is based on the following authoritative standards:

### Primary Normative References

**ISO/IEC 22989:2022** - Information technology — Artificial Intelligence — Artificial intelligence concepts and terminology
- Total pages: 70
- Publication date: 2022-07
- **Source checksum**: sha256:9d8bb9b0473fab11e9c940d94eb6871b7e1583e26bba7f15dbb8351895d54a4d

**ISO/IEC 22989:2022/AMD 1:2025** - Amendment 1: Generative AI
- Total pages: 13
- Status: Draft Amendment (DAmd)
- Voting period: 2025-08-25 to 2025-11-17
- **Source checksum**: sha256:287e12ec9ad2af22a302a7edae983092647c6872b7b0b4e7cefac2b1ccf1002f

**ISO/IEC DIS 27090** - Cybersecurity — Artificial Intelligence — Guidance for addressing security threats to AI systems
- Status: Draft International Standard (DIS)
- Publication date: Expected 2025
- Coverage: AI security testing, adversarial attacks, data poisoning
- **Terms extracted**: 22 AI security terms

**ISO/IEC 29119-1:2022** - Software and systems engineering — Software testing — Part 1: General concepts
- Total pages: 70+
- Publication date: 2022
- **Source PDF**: `/Users/jonghongjeon/git/agent/29119/29119-1-2022.pdf`
- **Terms extracted**: 60 selected from 133 total (prioritized for AI testing)
- Coverage: Test design techniques, test levels, test coverage, test documentation

**ISO/IEC TS 42119-2:2025** - Artificial intelligence — Testing of AI — Part 2: Overview of testing AI systems
- Total pages: 42
- Publication date: 2025-11 (First edition)
- **Source PDF**: `/Users/jonghongjeon/git/agent/29119/42119-2-2025.pdf`
- **Terms extracted**: 46 AI-specific testing terms
- Coverage: Data quality testing, model testing, AI test types, neural network coverage

### Supporting Normative References

- **ISO 31000:2018** - Risk Management — Guidelines (for risk terminology)
- **ISO/IEC 27000:2018** - Information security management systems — Overview and vocabulary
- **ISO/IEC 27042:2015** - Information technology — Security techniques — Guidelines for the analysis and interpretation of digital evidence (for verification)
- **ISO/IEC 27043:2015** - Information technology — Security techniques — Incident investigation principles and processes (for validation)
- **ISO/IEC 29119-2:2021** - Software Testing — Part 2: Test Processes
- **ISO/IEC 29119-3:2021** - Software Testing — Part 3: Test Documentation
- **ISO/IEC 29119-4:2021** - Software Testing — Part 4: Test Techniques

### Informative References

- NIST AI Risk Management Framework (AI RMF 1.0), 2023
- EU AI Act (Regulation (EU) 2024/1689)
- OECD AI Principles
- OWASP Top 10 for Large Language Model Applications, 2025
- OWASP Top 10 for Agentic Applications, 2025
- MITRE ATLAS (Adversarial Threat Landscape for AI Systems), 2025
- US Executive Order 14110 on Safe, Secure, and Trustworthy AI, 2023

### Terminology Precedence (5-Standard Hierarchy)

When terminology conflicts arise, the following precedence applies:

**For AI-specific testing terms:**
1. **ISO/IEC TS 42119-2:2025** (AI testing - highest priority for AI testing terminology)
2. **ISO/IEC 29119-1:2022** (general software testing - fallback for testing concepts)

**For AI security testing terms:**
3. **ISO/IEC DIS 27090** (AI security - highest priority for security testing)

**For AI/GenAI concepts:**
4. **ISO/IEC 22989:2022/AMD 1:2025** (GenAI - highest priority for generative AI)
5. **ISO/IEC 22989:2022** (base AI concepts - fallback for AI terminology)

**For other terms:**
6. **Regulatory frameworks** (EU AI Act, NIST AI RMF - informative)
7. **Industry standards** (OWASP, MITRE - informative)
8. **Custom extensions** (marked as "Non-ISO (Custom)" with justification)

**Precedence Examples:**
- **test data**: Use ISO 42119-2 definition (AI-specific: "data to assess ML model performance") over ISO 29119-1 ("data for testing")
- **adversarial testing**: Use ISO 42119-2 definition (model robustness) as primary, cross-reference ISO 27090 (security context)
- **validation**: Use ISO 29119-1 for test process context, ISO 22989 for AI model validation context

---

## 1. Core Terminology Definitions / 핵심 용어 정의

### 1.1 Core AI Concepts / 핵심 AI 개념

#### 1.1.1 AI System vs AI Model vs AI Application

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **AI System** (AI 시스템) | engineered system that generates outputs such as content, forecasts, recommendations or decisions for a given set of human-defined objectives (ISO/IEC 22989:2022, 3.1.4, Page 9). The engineered system can use various techniques and approaches related to artificial intelligence to develop a model to represent data, knowledge, processes, etc. AI systems are designed to operate with varying levels of automation. **Red team context**: Encompasses the model, infrastructure, data pipelines, guardrails, and human-in-the-loop processes. | 주어진 인간 정의 목표에 대해 콘텐츠, 예측, 추천 또는 결정과 같은 출력을 생성하는 엔지니어링된 시스템 (ISO/IEC 22989:2022, 3.1.4). 모델, 인프라, 데이터 파이프라인, 가드레일, 인간 개입 프로세스를 포괄한다. |
| **AI Model** (AI 모델) | model (3.1.23) used in an AI system (3.1.4) (ISO/IEC 22989:2022/AMD 1, 3.1.36, Page 5). **Application note**: In red teaming context, this typically refers to the computational artifact (e.g., neural network weights, architecture, and parameters) that has been trained on data to perform inference. The AI model is a component within a broader AI system. | AI 시스템(3.1.4)에서 사용되는 모델(3.1.23) (ISO/IEC 22989:2022/AMD 1, 3.1.36). 데이터로 학습되어 추론을 수행하는 계산적 산출물로, 더 넓은 AI 시스템의 구성요소이다. |
| **AI Application** (AI 응용 프로그램) | A user-facing product or service that integrates one or more AI models with application logic, user interfaces, APIs, and business rules to deliver a specific capability. **Non-ISO (Custom)** - Application-layer term for deployment context analysis. | 하나 이상의 AI 모델을 애플리케이션 로직, 사용자 인터페이스, API, 비즈니스 규칙과 통합하여 특정 기능을 제공하는 사용자 대면 제품 또는 서비스. |

> **Why this matters for red teaming**: An attack surface analysis must consider all three layers independently. A model may be robust, but the application wrapping it may introduce vulnerabilities (e.g., insufficient input sanitization). Conversely, a system may have adequate guardrails that mitigate a model-level weakness.

#### 1.1.2 Generative AI Concepts / 생성형 AI 개념

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Generative AI** (생성형 AI) | <discipline> research and development of mechanisms, methodologies and applications of generative AI systems (ISO/IEC 22989:2022/AMD 1, 3.1.37, Page 5). Generative AI is a subdiscipline of artificial intelligence. | 생성형 AI 시스템의 메커니즘, 방법론 및 응용에 대한 연구 및 개발 (ISO/IEC 22989:2022/AMD 1, 3.1.37). 인공지능의 하위 분야이다. |
| **Generative AI System** (생성형 AI 시스템) | AI system (3.1.4) based on techniques and models (3.1.23) that aim to generate new content (ISO/IEC 22989:2022/AMD 1, 3.1.38, Page 5). Examples of generated content can include text, audio, code, video, and image. Generated content encompasses new information or new ways to express pre-existing information drawn from the input, a dataset involved in building the model, or an external repository. | 새로운 콘텐츠를 생성하는 것을 목표로 하는 기법과 모델을 기반으로 하는 AI 시스템 (ISO/IEC 22989:2022/AMD 1, 3.1.38). 생성된 콘텐츠는 텍스트, 오디오, 코드, 비디오, 이미지 등을 포함할 수 있다. |
| **Foundation Model** (파운데이션 모델 / 기반 모델) | AI model (3.1.36) that can be used for or readily adapted to a wide range of tasks in one or more domains (ISO/IEC 22989:2022/AMD 1, 3.3.19, Page 6). **Conceptual detail**: A type of AI model that encodes a large body of knowledge on a broad topic or across domains, often used as a form of knowledge base whose content can be directly or indirectly queried. Typically built using machine learning on large amounts of data. A foundation model is characterized by its incompleteness: it does not directly fulfill a task of interest but can be adapted for certain tasks or domains through in-context learning, fine-tuning, augmentation, or knowledge distillation. (Ref: ISO/IEC 22989:2022/AMD 1, 5.24, Page 10-11) | 하나 이상의 도메인에서 광범위한 작업에 사용되거나 쉽게 적응될 수 있는 AI 모델 (ISO/IEC 22989:2022/AMD 1, 3.3.19). 대량의 데이터로 학습되며, 불완전성이 특징: 직접적으로 작업을 수행하지 않고 컨텍스트 학습, 미세 조정, 증강 또는 지식 증류를 통해 적응된다. |
| **Large Language Model / LLM** (대규모 언어 모델) | machine learning model (3.3.7) that encodes the functioning of natural language (3.6.7) with a large number of parameters and facilitates a variety of NLP (3.6.9) tasks (3.1.35) (ISO/IEC 22989:2022/AMD 1, 3.3.20, Page 6). LLMs can be used for text generation, automatic summarization, machine translation, classification and more. They use large amounts of data and require significant compute to train. **Conceptual detail**: Two types exist - (1) language modeling (produces likelihood estimation of natural language input), (2) representation learning (produces embeddings encoding semantics/syntax). (Ref: ISO/IEC 22989:2022/AMD 1, 5.22, Page 9-10) | 대량의 매개변수로 자연어의 기능을 인코딩하고 다양한 NLP 작업을 용이하게 하는 기계 학습 모델 (ISO/IEC 22989:2022/AMD 1, 3.3.20). 텍스트 생성, 자동 요약, 기계 번역, 분류 등에 사용된다. 두 가지 유형: (1) 언어 모델링, (2) 표현 학습 (임베딩). |
| **RAG System** (RAG 시스템) | retrieval-augmented generation system: generative AI system (3.1.38) that also involves retrieving relevant existing data to better inform the generation of new content (ISO/IEC 22989:2022/AMD 1, 3.1.40, Page 5). **Red team context**: Critical attack surface component - RAG poisoning attacks target the retrieval component to inject malicious content. | 새로운 콘텐츠 생성에 더 나은 정보를 제공하기 위해 관련 기존 데이터를 검색하는 것을 포함하는 생성형 AI 시스템 (ISO/IEC 22989:2022/AMD 1, 3.1.40). 레드팀 맥락: RAG 중독 공격의 대상이 되는 중요한 공격 표면 구성요소. |
| **Prompt** (프롬프트) | <generative AI> input to a generative AI system that provides overarching instructions on how to process the input (ISO/IEC 22989:2022/AMD 1, 3.6.19, Page 7). Prompt can be fixed or editable depending on the specifics of the system. Prompt can include formatting instructions (use markdown, provide images as jpeg, include citations from the context, etc.) and controls on the output. **Red team context**: Foundational concept for all prompt-based attacks (prompt injection, jailbreaks, etc.). | 입력을 처리하는 방법에 대한 포괄적인 지침을 제공하는 생성형 AI 시스템에 대한 입력 (ISO/IEC 22989:2022/AMD 1, 3.6.19). 시스템의 세부 사항에 따라 고정되거나 편집 가능하다. 모든 프롬프트 기반 공격의 기초 개념. |
| **Token** (토큰) | unit of content that an AI model (3.1.36) treats as semantically meaningful (ISO/IEC 22989:2022/AMD 1, 3.1.41, Page 5). **Application note**: In practice, tokens are subword units used by tokenization algorithms (e.g., BPE, WordPiece). Understanding token boundaries is critical for attack techniques like boundary value analysis of prompt length limits. | AI 모델(3.1.36)이 의미론적으로 의미 있는 것으로 처리하는 콘텐츠 단위 (ISO/IEC 22989:2022/AMD 1, 3.1.41). 실제로는 토큰화 알고리즘이 사용하는 하위 단어 단위이다. |

> **Red teaming significance**: These generative AI concepts define the primary test items for modern AI red teaming. Foundation models and LLMs are the core technologies; prompts are the attack vector; RAG systems expand the attack surface; tokens define input granularity for fuzzing and boundary testing.

### 1.2 Red Teaming vs Penetration Testing vs Safety Evaluation vs Adversarial Testing

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **AI Red Teaming** (AI 레드티밍) | A structured, adversarial testing effort that probes an AI system for failure modes, vulnerabilities, harmful outputs, and misuse risks by emulating the tactics, techniques, and procedures (TTPs) of realistic threat actors. Goes beyond technical exploits to include safety, ethics, bias, and socio-technical harms. (Ref: NIST AI RMF, US EO 14110) | 현실적인 위협 행위자의 전술, 기법, 절차(TTP)를 모방하여 AI 시스템의 장애 모드, 취약점, 유해 출력 및 오용 위험을 탐색하는 구조화된 적대적 테스트 노력. 기술적 악용을 넘어 안전성, 윤리, 편향, 사회기술적 피해를 포함한다. |
| **Penetration Testing** (침투 테스트) | A targeted technical assessment that identifies and attempts to exploit specific security vulnerabilities in defined assets (APIs, networks, infrastructure) within a bounded scope and timeframe. Focuses on coverage of known vulnerability classes. | 정해진 범위와 기간 내에서 특정 자산(API, 네트워크, 인프라)의 보안 취약점을 식별하고 악용을 시도하는 대상 기술 평가. 알려진 취약점 클래스의 범위에 초점을 맞춘다. |
| **Safety Evaluation** (안전성 평가) | Systematic assessment of an AI system's propensity to produce harmful, unethical, biased, or dangerous outputs under both normal and adversarial conditions. Typically conducted against predefined taxonomies of harm. | AI 시스템이 정상 및 적대적 조건 모두에서 유해하거나 비윤리적이거나 편향되거나 위험한 출력을 생성하는 경향에 대한 체계적 평가. 일반적으로 사전 정의된 피해 분류 체계에 따라 수행된다. |
| **Adversarial Testing** (적대적 테스트) | The broader practice of probing systems with inputs specifically designed to cause failures or unexpected behaviors. Includes both automated (e.g., adversarial examples, fuzzing) and manual techniques. A component methodology used within red teaming. | 장애나 예상치 못한 동작을 유발하도록 특별히 설계된 입력으로 시스템을 탐색하는 광범위한 관행. 자동화(예: 적대적 사례, 퍼징) 및 수동 기법을 모두 포함한다. 레드티밍 내에서 사용되는 구성 방법론이다. |

### 1.3 Intended Use vs Foreseeable Misuse vs Unforeseeable Misuse

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Intended Use** (의도된 사용) | The purpose for which the AI system was designed, validated, and deployed by its provider. Documented in product specifications, user agreements, and model cards. | AI 시스템이 제공자에 의해 설계, 검증 및 배포된 목적. 제품 사양, 사용자 계약 및 모델 카드에 문서화된다. |
| **Foreseeable Misuse** (예측 가능한 오용) | Uses of the AI system that were not intended by the provider but can be reasonably anticipated based on known user behaviors, historical incidents, or domain knowledge. Red teams must actively probe for these scenarios. | 제공자가 의도하지 않았지만 알려진 사용자 행동, 과거 사고 또는 도메인 지식을 기반으로 합리적으로 예상할 수 있는 AI 시스템의 사용. 레드팀은 이러한 시나리오를 적극적으로 탐색해야 한다. |
| **Unforeseeable Misuse** (예측 불가능한 오용) | Novel or emergent uses that could not have been reasonably anticipated at the time of design. These represent unknown-unknowns and are a key justification for continuous, creative red teaming approaches. | 설계 시점에서 합리적으로 예상할 수 없었던 새로운 또는 창발적 사용. 이는 미지의 미지(unknown-unknowns)를 나타내며, 지속적이고 창의적인 레드티밍 접근 방식의 핵심 정당성이 된다. |

### 1.4 Vulnerability vs Failure Mode vs Risk vs Harm

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Vulnerability** (취약점) | A weakness in the AI system (model, data, infrastructure, or process) that can be exploited by a threat actor to cause unintended behavior. | 위협 행위자가 의도하지 않은 행동을 유발하기 위해 악용할 수 있는 AI 시스템(모델, 데이터, 인프라 또는 프로세스)의 약점. |
| **Failure Mode** (장애 모드) | A specific way in which the AI system can fail to perform its intended function. May occur without adversarial intent (e.g., distributional shift, edge cases). Not all failure modes are vulnerabilities. | AI 시스템이 의도된 기능을 수행하지 못하는 특정 방식. 적대적 의도 없이 발생할 수 있다(예: 분포 변화, 에지 케이스). 모든 장애 모드가 취약점은 아니다. |
| **Risk** (위험) | The combination of the probability of a harm occurring and the severity of that harm. Risk = Likelihood x Impact. Assessed in context of deployment environment, affected populations, and available mitigations. | 피해 발생 가능성과 피해 심각도의 조합. 위험 = 가능성 x 영향. 배포 환경, 영향받는 인구 및 이용 가능한 완화 조치의 맥락에서 평가된다. |
| **Harm** (피해) | Actual negative impact on individuals, groups, organizations, or society resulting from AI system behavior. Categories include: physical, psychological, financial, reputational, societal, and environmental harm. | AI 시스템 행동으로 인해 개인, 그룹, 조직 또는 사회에 미치는 실제 부정적 영향. 범주: 물리적, 심리적, 재정적, 평판적, 사회적, 환경적 피해. |

### 1.5 Attack Techniques (Prompt-Based) / 공격 기법 (프롬프트 기반)

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Prompt Injection** (프롬프트 인젝션) | An attack in which crafted input causes an LLM to deviate from its intended instructions. **ISO context**: Prompt injection attacks rely on content in an input instruction to the AI system to produce unintended outputs, circumventing limitations, constraints, or filters imposed on the AI system through its design (ISO/IEC 22989:2022/AMD 1, 5.20.3, Page 9). **Technical detail**: **Direct injection**: the attacker's prompt itself contains the payload. **Indirect injection**: the payload is embedded in external content (websites, documents, tool outputs) consumed by the model. **Non-ISO (Custom)** - Attack technique classification; ISO mentions in jailbreak context. (Ref: OWASP LLM Top 10 2025, LLM01) | 조작된 입력이 LLM을 의도된 지침에서 벗어나게 하는 공격. ISO 맥락: AI 시스템에 대한 입력 지침의 콘텐츠를 기반으로 설계를 통해 부과된 제한, 제약 또는 필터를 우회하여 의도하지 않은 출력을 생성한다 (ISO/IEC 22989:2022/AMD 1, 5.20.3). |
| **Jailbreak / Jailbreaking** (탈옥) | **ISO Definition**: In jailbreaking, the generative AI system is leveraged to do something that its developers did not intend for it to do (ISO/IEC 22989:2022/AMD 1, 5.20.3, Page 9). When input instructions are provided by a user to produce unintended outputs, circumventing limitations, constraints, or filters, they are often referred to as jailbreaking. **Important**: Jailbreaks cannot be completely prevented, but their occurrence and consequences can be reduced. (Ref: ISO/IEC 27090 for more information). **Technical detail**: A specific category of prompt injection aimed at bypassing the model's safety guardrails, alignment constraints, or usage policies to elicit restricted outputs (e.g., harmful content, instructions for illegal activities). Jailbreaking is a subset of prompt injection. | 생성형 AI 시스템이 개발자가 의도하지 않은 작업을 수행하도록 활용되는 것 (ISO/IEC 22989:2022/AMD 1, 5.20.3). 사용자가 제공한 입력 지침이 제한, 제약 또는 필터를 우회하여 의도하지 않은 출력을 생성할 때 종종 탈옥이라고 한다. 중요: 탈옥은 완전히 방지할 수 없지만 발생과 결과를 줄일 수 있다. |
| **Data Extraction** (데이터 추출) | Techniques that cause the AI system to reveal sensitive information it should not disclose, including: training data memorization, system prompt leakage, PII exposure, confidential business data, or security credentials. **Non-ISO (Custom)** - Attack category for red teaming. (Ref: OWASP LLM Top 10 2025, LLM02 - Sensitive Information Disclosure, LLM07 - System Prompt Leakage) | AI 시스템이 공개해서는 안 되는 민감한 정보를 노출하게 하는 기술: 학습 데이터 기억, 시스템 프롬프트 유출, PII 노출, 기밀 비즈니스 데이터 또는 보안 자격 증명 포함. |

> **ISO Validation Significance**: ISO/IEC 22989:2022/AMD 1:2025 now officially defines "jailbreak" (Section 5.20.3), validating our terminology choice and establishing it as an internationally recognized AI security concept. This represents major standardization progress for AI red teaming terminology.

### 1.6 Agent / Agentic AI / Autonomous AI System

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **AI Agent** (AI 에이전트) | A software entity that uses an AI model (typically an LLM) to perceive its environment, make decisions, and take actions to accomplish goals, often through tool use, API calls, or code execution. | AI 모델(일반적으로 LLM)을 사용하여 환경을 인지하고, 결정을 내리고, 도구 사용, API 호출 또는 코드 실행을 통해 목표를 달성하기 위한 행동을 수행하는 소프트웨어 엔터티. |
| **Agentic AI** (에이전틱 AI) | AI systems that operate through continuous perception-reasoning-action (PRA) loops, autonomously planning, executing, and refining multi-step tasks with minimal human oversight. Distinguished by goal-directed behavior, tool use, and environmental interaction. | 지속적인 인지-추론-행동(PRA) 루프를 통해 작동하며, 최소한의 인간 감독으로 다단계 작업을 자율적으로 계획, 실행 및 개선하는 AI 시스템. 목표 지향적 행동, 도구 사용 및 환경 상호작용으로 구별된다. |
| **Autonomous AI System** (자율 AI 시스템) | An AI system capable of operating independently over extended periods without human intervention, making consequential decisions and executing actions in the real world. Represents the highest level of autonomy on the human-AI control spectrum. | 인간 개입 없이 장기간 독립적으로 작동하며, 현실 세계에서 중대한 결정을 내리고 행동을 실행할 수 있는 AI 시스템. 인간-AI 제어 스펙트럼에서 가장 높은 수준의 자율성을 나타낸다. |

> **Red teaming implication**: Agentic and autonomous AI systems dramatically expand the attack surface because agents can take real-world actions (file operations, API calls, financial transactions). Red teaming must evaluate not just outputs but *actions* and *action chains*. (Ref: OWASP Top 10 for Agentic Applications, Dec 2025; MITRE ATLAS Oct 2025 update)

### 1.7 Alignment vs Safety vs Security

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Alignment** (정렬) | The degree to which an AI system's objectives, behaviors, and outputs match the intended goals, preferences, and ethical principles of its designers and users. A misaligned system pursues unintended objectives. | AI 시스템의 목표, 행동 및 출력이 설계자와 사용자의 의도된 목표, 선호도 및 윤리 원칙과 일치하는 정도. 정렬되지 않은 시스템은 의도하지 않은 목표를 추구한다. |
| **Safety** (안전성) | The practice of ensuring AI systems do not cause unintended harm through their own actions, decisions, or outputs -- whether through misalignment, failure modes, or unintended consequences. Encompasses fairness, robustness, reliability, and ethical behavior. | AI 시스템이 정렬 오류, 장애 모드 또는 의도하지 않은 결과를 통해 자체 행동, 결정 또는 출력으로 의도하지 않은 피해를 유발하지 않도록 보장하는 관행. 공정성, 견고성, 신뢰성 및 윤리적 행동을 포괄한다. |
| **Security** (보안) | The protection of AI systems against deliberate, malicious attacks by adversaries who seek to exploit vulnerabilities for unauthorized access, data theft, system manipulation, or denial of service. Focuses on defending against external threats. | 무단 접근, 데이터 도용, 시스템 조작 또는 서비스 거부를 위해 취약점을 악용하려는 적대자의 의도적이고 악의적인 공격으로부터 AI 시스템을 보호하는 것. 외부 위협에 대한 방어에 초점을 맞춘다. |

> **Relationship**: Safety is the superset; alignment is a mechanism for achieving safety; security is a parallel concern that defends against adversarial threats. AI red teaming uniquely spans all three -- it tests alignment (does the model do what it should?), safety (can it cause harm?), and security (can it be attacked?).

### 1.8 Benchmark vs Evaluation vs Assessment

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Benchmark** (벤치마크) | A standardized, reproducible test suite with fixed datasets and metrics used to compare AI system performance across a specific dimension (e.g., accuracy, toxicity rate, attack success rate). Enables quantitative comparison but provides limited ecological validity. | 특정 차원(예: 정확도, 독성 비율, 공격 성공률)에서 AI 시스템 성능을 비교하기 위해 고정된 데이터셋과 메트릭을 사용하는 표준화되고 재현 가능한 테스트 스위트. 정량적 비교를 가능하게 하지만 생태학적 타당성은 제한적이다. |
| **Evaluation** (평가) | A broader, systematic process of measuring AI system performance, behavior, and properties using multiple methods (benchmarks, human review, red teaming, etc.). Can be automated or manual, quantitative or qualitative. | 여러 방법(벤치마크, 인간 검토, 레드티밍 등)을 사용하여 AI 시스템 성능, 행동 및 특성을 측정하는 더 광범위하고 체계적인 프로세스. 자동화 또는 수동, 정량적 또는 정성적일 수 있다. |
| **Assessment** (심사/사정) | A comprehensive, context-aware judgment that synthesizes evaluation results with organizational risk tolerance, regulatory requirements, deployment context, and stakeholder impact to determine fitness for purpose. Typically produces actionable recommendations. | 조직의 위험 허용도, 규제 요건, 배포 맥락 및 이해관계자 영향과 평가 결과를 종합하여 목적 적합성을 판단하는 포괄적이고 맥락 인식적 판단. 일반적으로 실행 가능한 권고사항을 산출한다. |

### 1.9 Threat Actor vs Threat Model

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Threat Actor** (위협 행위자) | An individual, group, or entity with the motivation, capability, and opportunity to adversely impact an AI system. Categories: **casual user** (curious probing), **malicious end-user** (intentional misuse), **sophisticated attacker** (nation-state, organized crime), **insider** (developer, data annotator), **automated agent** (AI-driven attacks). | AI 시스템에 부정적 영향을 미칠 동기, 능력 및 기회를 가진 개인, 그룹 또는 엔터티. 범주: 일반 사용자(호기심 탐색), 악의적 최종 사용자(의도적 오용), 정교한 공격자(국가, 조직범죄), 내부자(개발자, 데이터 주석자), 자동화 에이전트(AI 기반 공격). |
| **Threat Model** (위협 모델) | A structured representation of threats to an AI system that identifies: assets to protect, threat actors, attack vectors, attack surfaces, potential impacts, and existing mitigations. Serves as the foundation for scoping a red team engagement. | AI 시스템에 대한 위협의 구조화된 표현으로, 보호 자산, 위협 행위자, 공격 벡터, 공격 표면, 잠재적 영향 및 기존 완화 조치를 식별한다. 레드팀 참여 범위 설정의 기초가 된다. |

### 1.10 Attack Surface (공격 표면)

AI systems present attack surfaces at three interconnected levels:

| Level | Description (EN) | 설명 (KR) | Examples |
|-------|-------------------|-----------|----------|
| **Model-level** (모델 수준) | Vulnerabilities inherent to the AI model itself, exploitable through its inputs and observable through its outputs. | AI 모델 자체에 내재된 취약점으로, 입력을 통해 악용 가능하고 출력을 통해 관찰 가능. | Adversarial examples, prompt injection, jailbreaks, training data poisoning, model inversion, membership inference, model stealing |
| **System-level** (시스템 수준) | Vulnerabilities in the infrastructure, APIs, data pipelines, tool integrations, and orchestration layers surrounding the model. | 모델을 둘러싼 인프라, API, 데이터 파이프라인, 도구 통합 및 오케스트레이션 계층의 취약점. | Insecure API endpoints, RAG poisoning, tool/plugin exploitation, supply chain attacks (model repos, dependencies), insufficient access controls, logging/monitoring gaps |
| **Socio-technical level** (사회기술적 수준) | Risks arising from the interaction between AI systems, human users, and societal structures. Often not exploitable through code alone. | AI 시스템, 인간 사용자 및 사회 구조 간의 상호작용에서 발생하는 위험. 코드만으로는 악용할 수 없는 경우가 많음. | Automation bias, over-reliance, misinformation amplification, social engineering via AI, deepfakes, discriminatory impact, labor displacement |

---

## 2. Scope Definition / 범위 정의

### 2.1 In-Scope (이 가이드라인이 다루는 범위)

This guideline covers the following:

1. **AI-specific red teaming methodologies** -- structured approaches to adversarial testing of AI systems, including foundation models (LLMs, multimodal models), fine-tuned models, RAG systems, agentic AI systems, and AI-integrated applications.

2. **Safety, security, and ethics dimensions** -- testing for harmful outputs, bias, toxicity, privacy violations, security vulnerabilities, and misuse potential.

3. **Full lifecycle coverage** -- red teaming activities across model development (pre-deployment), deployment, and post-deployment stages.

4. **Organizational framework** -- governance structures, roles and responsibilities, engagement scoping, reporting, and remediation workflows for red teaming programs.

5. **Regulatory alignment** -- mapping to existing frameworks including NIST AI RMF, EU AI Act, OWASP Top 10 for LLM Applications (2025), OWASP Top 10 for Agentic Applications (2025), MITRE ATLAS, and ISO/IEC 42001.

6. **Risk-based approach** -- prioritization of testing efforts based on deployment context, affected populations, and severity of potential harms.

7. **Agentic AI and autonomous systems** -- extended attack surface considerations for AI systems that take actions in the real world.

### 2.2 Out-of-Scope / Non-Goals (이 가이드라인이 다루지 않는 범위)

The following are explicitly excluded:

1. **Traditional (non-AI) cybersecurity testing** -- network penetration testing, infrastructure hardening, and application security that do not involve AI-specific components are covered by existing standards (e.g., PTES, OWASP ASVS).

2. **AI development best practices** -- secure model training, MLOps, data governance, and model lifecycle management are addressed by other standards (e.g., NIST AI RMF, ISO/IEC 42001).

3. **Artificial General Intelligence (AGI) or superintelligence risk** -- long-term existential risks from hypothetical future AI systems are outside this practical guideline's scope.

4. **Legal or regulatory compliance auditing** -- while the guideline references applicable regulations, it does not serve as a compliance checklist or legal advice.

5. **Offensive AI tooling development** -- this guideline does not provide attack tools or exploits; it describes methodologies and processes.

6. **Specific vendor or product evaluation** -- the guideline is vendor-neutral and technology-agnostic.

### 2.3 Boundary Conditions (경계 조건)

| Condition | Clarification |
|-----------|---------------|
| **Dual-use content** | The guideline describes attack techniques at a methodological level sufficient for defenders to understand threats, without providing step-by-step exploit instructions. |
| **Evolving threat landscape** | This guideline is designed to be versioned and updated; specific attack catalogs may become outdated as models and defenses evolve. |
| **Jurisdiction** | The guideline is designed for international applicability but does not override local laws governing AI testing, data protection, or computer security research. |
| **Responsible disclosure** | Red team findings involving novel vulnerabilities in third-party models or systems must follow responsible disclosure practices as defined in Phase 5 (Reporting & Disclosure). |
| **Human subjects** | Red teaming that involves human participants (e.g., crowdsourced red teaming, social engineering tests) must comply with applicable ethical review and informed consent requirements. |

---

## 3. Stakeholder Definitions / 이해관계자 정의

### 3.1 Who Performs Red Teaming (레드티밍 수행자)

| Role | Description | 설명 |
|------|-------------|------|
| **Internal Red Team** | A dedicated team within the AI-developing organization that conducts adversarial testing. Has deep knowledge of internal systems but may have blind spots from familiarity. | AI 개발 조직 내 적대적 테스트를 수행하는 전담 팀. 내부 시스템에 대한 깊은 지식이 있지만 익숙함으로 인한 맹점이 있을 수 있다. |
| **External Red Team** | Independent third-party testers engaged under contract. Brings fresh perspective and specialized expertise but requires onboarding and access provisioning. | 계약에 따라 참여하는 독립적인 제3자 테스터. 새로운 관점과 전문 지식을 제공하지만 온보딩과 접근 권한 부여가 필요하다. |
| **Domain Expert Red Teamers** | Subject-matter experts (e.g., medical, legal, financial professionals) who test AI systems within their domain for domain-specific failure modes and harms. | 도메인별 장애 모드 및 피해에 대해 해당 도메인 내에서 AI 시스템을 테스트하는 주제 전문가(예: 의료, 법률, 금융 전문가). |
| **Crowdsourced Red Teamers** | Large groups of diverse participants (often public volunteers or contracted individuals) who probe AI systems at scale. Provides diversity of perspectives and creative attack strategies. | AI 시스템을 대규모로 탐색하는 다양한 참가자의 대규모 그룹(종종 공개 자원봉사자 또는 계약 개인). 다양한 관점과 창의적 공격 전략을 제공한다. |
| **Automated Red Team Systems** | AI-powered tools and frameworks that conduct adversarial testing at scale through automated prompt generation, mutation, and evaluation. Complements but does not replace human red teaming. | 자동화된 프롬프트 생성, 변형 및 평가를 통해 대규모로 적대적 테스트를 수행하는 AI 기반 도구 및 프레임워크. 인간 레드티밍을 보완하지만 대체하지는 않는다. |

### 3.2 Who Commissions Red Teaming (레드티밍 위탁자)

| Role | Motivation |
|------|------------|
| **AI Developers / Model Providers** | Pre-deployment risk identification; improve model safety and robustness |
| **AI Deployers / System Integrators** | Validate that deployed systems meet safety and security requirements in context |
| **Regulators / Government Bodies** | Regulatory compliance verification; public safety assurance |
| **Third-Party Auditors** | Independent assurance for certification, procurement, or due diligence |
| **Industry Consortia** | Shared threat intelligence and collective defense |

### 3.3 Who Receives Results (결과 수신자)

| Recipient | What They Receive | Purpose |
|-----------|-------------------|---------|
| **Engineering Teams** | Technical findings, reproduction steps, severity ratings | Remediation and hardening |
| **Product / Safety Teams** | Risk assessments, failure mode catalogs, mitigation recommendations | Product safety decisions |
| **Executive Leadership** | Executive summary, risk posture, strategic recommendations | Governance and resource allocation |
| **Regulators** | Compliance-relevant findings (redacted as appropriate) | Regulatory oversight |
| **Public** | Aggregated, anonymized insights (when appropriate) | Transparency and trust |

### 3.4 Roles and Responsibilities Matrix (역할 및 책임 매트릭스)

| Role | Responsibilities |
|------|-----------------|
| **Red Team Lead** | Scoping, methodology selection, team coordination, quality assurance, final reporting |
| **Red Team Operators** | Executing test cases, discovering vulnerabilities, documenting findings |
| **Blue Team / Defenders** | (If engaged) Responding to red team activities, monitoring, incident response |
| **System Owner** | Providing access, defining constraints, reviewing findings, authorizing remediation |
| **Ethics Advisor** | Reviewing test plans for ethical concerns, advising on harm categories, ensuring responsible conduct |
| **Legal Counsel** | Reviewing engagement agreements, advising on legal boundaries, ensuring compliance |
| **Project Sponsor** | Authorizing the engagement, allocating resources, accepting residual risk |

---

## 4. Differentiation Matrix / 차별화 매트릭스

| Dimension | AI Red Teaming | Traditional Penetration Testing | AI Safety Evaluation | AI Bias Auditing | AI Compliance Assessment |
|-----------|---------------|-------------------------------|---------------------|-----------------|------------------------|
| **Primary Goal** | Discover failure modes, vulnerabilities, and harms across safety + security + ethics | Identify and exploit technical security vulnerabilities | Measure harmful output propensity and alignment | Detect and quantify discriminatory outcomes | Verify adherence to regulatory requirements |
| **Scope** | Model + System + Socio-technical | Infrastructure + Application | Model behavior + outputs | Model fairness across demographics | Organizational processes + technical controls |
| **Methodology** | Creative, adaptive, adversarial; emulates realistic threat actors | Structured, methodical; follows known vulnerability taxonomies (CVE, CWE) | Benchmark-driven + qualitative human evaluation | Statistical analysis of outputs across protected groups | Checklist-based against regulatory standards |
| **Threat Model** | Diverse actors (casual to nation-state); includes misuse scenarios | Technical attackers targeting infrastructure | Not adversary-focused; focuses on system behavior | Systemic bias (not necessarily adversarial) | Regulatory non-compliance |
| **Key Outputs** | Vulnerability report, risk assessment, attack narratives, remediation roadmap | Vulnerability list with severity ratings, proof-of-concept exploits | Safety scores, failure mode catalog, behavioral analysis | Disparity metrics, fairness scores, affected group analysis | Compliance status, gap analysis, corrective action plan |
| **Timing** | Continuous / periodic (pre- and post-deployment) | Point-in-time (usually pre-deployment or periodic) | Pre-deployment + monitoring | Pre-deployment + periodic audit | Regulatory milestone-driven |
| **Standards/Frameworks** | NIST AI RMF, MITRE ATLAS, OWASP LLM Top 10, this Guideline | PTES, OSSTMM, OWASP ASVS, NIST 800-115 | MLCommons AI Safety v0.5, DeepEval, custom taxonomies | ISO/IEC 24027, NIST SP 1270, IEEE 7003 | EU AI Act, ISO/IEC 42001, sector-specific regulation |
| **Who Performs** | Security experts + AI/ML experts + domain experts | Security professionals (OSCP, CEH) | AI researchers + safety engineers | Fairness/ML researchers, social scientists | Compliance officers, auditors, legal teams |
| **Adversarial?** | Yes -- core methodology | Yes -- exploiting vulnerabilities | Partially -- includes adversarial inputs | No -- observational/analytical | No -- audit-based |
| **Covers Safety?** | Yes | No | Yes (primary focus) | Partially (fairness dimension) | Partially (as required by regulation) |
| **Covers Security?** | Yes | Yes (primary focus) | Partially | No | Partially (as required by regulation) |
| **Covers Ethics?** | Yes | No | Partially | Yes (fairness focus) | Partially (as required by regulation) |

---

## 5. Guiding Principles / 지도 원칙

### Principle 1: AI Is Inherently Not Fully Verifiable / AI는 본질적으로 완전 검증 불가

> **"AI 시스템은 본질적으로 완전한 검증이 불가능하다."**
> *"AI systems are inherently incapable of complete verification."*

Unlike traditional software where deterministic behavior can (in principle) be exhaustively tested, AI systems -- particularly large foundation models -- exhibit emergent, probabilistic, and context-dependent behaviors that cannot be fully enumerated or predicted.

**Implications for red teaming:**
- No red team engagement can certify an AI system as "safe." Red teaming reduces risk; it does not eliminate it.
- Red team reports must explicitly state the scope and limitations of testing.
- Absence of findings does not equal absence of vulnerabilities.
- Results represent a snapshot in time; system behavior may change with input distribution shifts, model updates, or environmental changes.

### Principle 2: Continuous Over One-Time Testing / 일회성이 아닌 지속적 테스트

Red teaming must be an ongoing practice, not a single pre-deployment gate. Reasons include:
- **Model drift**: System behavior changes over time through fine-tuning, RLHF updates, and data refreshes.
- **Evolving threats**: New attack techniques and jailbreaks emerge continuously.
- **Deployment context changes**: New use cases, user populations, and integration patterns alter the risk profile.
- **Emergent capabilities**: Capabilities not observed during initial testing may manifest in production.

**Recommended cadence**: Continuous automated testing + periodic human red team exercises + event-triggered assessments (post-update, post-incident, pre-major-release).

### Principle 3: Process Over Score / 점수보다 프로세스

A single "safety score" or "pass/fail" result is insufficient and potentially misleading. Effective red teaming prioritizes:
- **Process maturity**: Is the organization continuously improving its testing methodologies?
- **Coverage breadth**: Are diverse attack vectors, harm categories, and threat actors being considered?
- **Response capability**: How quickly and effectively does the organization address discovered issues?
- **Learning loops**: Are findings from red teaming feeding back into model development and system design?

Quantitative metrics (e.g., attack success rate, time to detect) are valuable as *indicators* but must not be treated as *certifications*.

### Principle 4: Transparency of Limitations / 한계의 투명성

All red team reports, methodologies, and recommendations must clearly communicate:
- **What was tested** and what was not.
- **Assumptions made** about threat actors, capabilities, and deployment context.
- **Known limitations** of the testing methodology, tools, and evaluation criteria.
- **Confidence levels** in findings and their generalizability.
- **Temporal validity** -- when findings may need re-evaluation.

Transparency builds trust and enables informed decision-making by stakeholders who must act on red team findings.

### Principle 5: Proportional Depth / 비례적 깊이

The depth and rigor of red teaming should be proportional to:
- The **risk level** of the AI system (e.g., high-risk applications per EU AI Act require more rigorous testing).
- The **affected population** (systems affecting vulnerable populations require deeper scrutiny).
- The **autonomy level** (agentic/autonomous systems require expanded attack surface analysis).
- The **deployment scale** (widely deployed systems have higher blast radius).

### Principle 6: Diversity of Perspective / 관점의 다양성

Effective red teaming requires diverse teams representing:
- Technical expertise (security, ML/AI, software engineering)
- Domain expertise (relevant to the application domain)
- Demographic diversity (to identify harms that disproportionately affect specific groups)
- Adversarial creativity (unconventional thinking and novel attack strategies)

Homogeneous red teams produce homogeneous findings.

---

### 3.6 Test Process Terminology / 테스트 프로세스 용어

> **Standards Reference**: ISO/IEC 29119-1 (General concepts), ISO/IEC 29119-2 (Test processes), ISO/IEC 29119-3 (Test documentation)

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Test Plan** (테스트 계획서) | A document describing the scope, approach, resources, schedule, and activities of intended test execution. Contains test objectives, test items, features to be tested, test techniques, entry/exit criteria, deliverables, and responsibilities. (Ref: ISO/IEC 29119-3 Section 7.2) | 의도된 테스트 실행의 범위, 접근법, 리소스, 일정 및 활동을 설명하는 문서. 테스트 목표, 테스트 항목, 테스트할 기능, 테스트 기법, 진입/종료 기준, 산출물 및 책임을 포함한다. |
| **Test Scenario** (테스트 시나리오) | A set of test conditions or test cases derived from a use case, user story, or functional requirement that describes a specific testing objective. Multiple test cases may comprise a single test scenario. (Ref: ISO/IEC 29119-3 Section 8.3) | 사용 사례, 사용자 스토리 또는 기능 요구사항에서 파생된 특정 테스트 목표를 설명하는 테스트 조건 또는 테스트 케이스 집합. 여러 테스트 케이스가 단일 테스트 시나리오를 구성할 수 있다. |
| **Test Case** (테스트 케이스) | A set of test inputs, execution preconditions, expected results, and postconditions developed to evaluate a specific objective or capability. Specifies exact steps to execute, data to use, and criteria to determine pass or fail. (Ref: ISO/IEC 29119-3 Section 8.4) | 특정 목표 또는 기능을 평가하기 위해 개발된 테스트 입력, 실행 전제조건, 기대 결과 및 사후조건의 집합. 실행할 정확한 단계, 사용할 데이터, 합격 또는 불합격을 결정할 기준을 명시한다. |
| **Entry Criteria** (진입 기준) | A set of conditions that must be met before testing activities for a specific test stage or phase can begin. Ensures readiness of the test environment, test data, system under test, and test team. (Ref: ISO/IEC 29119-2) | 특정 테스트 단계 또는 페이즈에 대한 테스트 활동을 시작하기 전에 충족해야 하는 조건 집합. 테스트 환경, 테스트 데이터, 테스트 대상 시스템 및 테스트 팀의 준비 상태를 보장한다. |
| **Exit Criteria** (종료 기준) | A set of conditions that must be met before testing activities for a specific test stage or phase can be considered complete. Ensures test objectives have been met, required coverage achieved, and quality thresholds satisfied. (Ref: ISO/IEC 29119-2) | 특정 테스트 단계 또는 페이즈에 대한 테스트 활동이 완료되었다고 간주되기 전에 충족해야 하는 조건 집합. 테스트 목표 달성, 필요한 커버리지 달성 및 품질 임계값 충족을 보장한다. |
| **Test Basis** (테스트 기반) | The body of knowledge from which test requirements are derived and against which test completeness is evaluated. Includes specifications, design documents, regulatory requirements, risk analyses, and prior test results. (Ref: ISO/IEC 29119-1 Section 3.1.54) | 테스트 요구사항이 파생되고 테스트 완성도가 평가되는 기준이 되는 지식 체계. 사양, 설계 문서, 규제 요구사항, 위험 분석 및 이전 테스트 결과를 포함한다. |
| **Test Item** (테스트 항목) | A work product, system, component, or feature that is the subject of testing. In AI red teaming: the AI model, system, application, or specific capability being tested. (Ref: ISO/IEC 29119-3 Section 3.1.48) | 테스트 대상이 되는 작업 산출물, 시스템, 구성요소 또는 기능. AI 레드티밍에서는 테스트 대상 AI 모델, 시스템, 응용프로그램 또는 특정 기능을 의미한다. |
| **Test Deliverable** (테스트 산출물) | A document, artifact, or output produced during the testing process and delivered to stakeholders. Examples: test plan, test results report, defect reports, test coverage metrics, risk assessment. (Ref: ISO/IEC 29119-3) | 테스트 프로세스 중에 생성되어 이해관계자에게 전달되는 문서, 산출물 또는 결과물. 예시: 테스트 계획서, 테스트 결과 보고서, 결함 보고서, 테스트 커버리지 메트릭, 위험 평가. |

> **AI Red Teaming Context**: These standard software testing terms apply to AI red teaming with the understanding that AI systems' non-deterministic behavior requires adapted interpretation of "expected results" and "pass/fail criteria" to account for probabilistic outputs and contextual risk assessment.

### 3.7 Test Design Technique Terminology / 테스트 설계 기법 용어

> **Standards Reference**: ISO/IEC 29119-4:2021 (Test techniques)

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Equivalence Partitioning** (동등 분할) | A black-box test design technique that divides the input domain of a test item into classes of data (partitions) from which test cases can be derived. Each partition is expected to exhibit similar behavior, so testing one representative value from each partition is sufficient. (Ref: ISO/IEC 29119-4 Section 5.2.1) | 테스트 항목의 입력 도메인을 테스트 케이스를 도출할 수 있는 데이터 클래스(파티션)로 나누는 블랙박스 테스트 설계 기법. 각 파티션은 유사한 동작을 보일 것으로 예상되므로, 각 파티션에서 하나의 대표값을 테스트하는 것으로 충분하다. |
| **Boundary Value Analysis** (경계값 분석) | A black-box test design technique that focuses on testing at the boundaries between equivalence partitions. Based on the observation that defects tend to occur at the edges of input domains rather than in the center. (Ref: ISO/IEC 29119-4 Section 5.2.3) | 동등 분할 간의 경계에서 테스트하는 데 중점을 두는 블랙박스 테스트 설계 기법. 결함이 입력 도메인의 중심보다 가장자리에서 발생하는 경향이 있다는 관찰에 기반한다. |
| **Combinatorial Testing** (조합 테스트) | A test design technique that uses combinatorial mathematics and algorithms to systematically select combinations of input parameter values. Includes pairwise testing, n-wise testing, and covering arrays. Efficient for testing systems with multiple interacting parameters. (Ref: ISO/IEC 29119-4 Section 5.2.4) | 조합 수학 및 알고리즘을 사용하여 입력 매개변수 값의 조합을 체계적으로 선택하는 테스트 설계 기법. 쌍별 테스트, n-별 테스트 및 커버링 배열을 포함한다. 여러 상호작용 매개변수가 있는 시스템 테스트에 효율적이다. |
| **Decision Table Testing** (결정 테이블 테스트) | A black-box test design technique that uses decision tables (truth tables) to model complex business rules and conditional logic. Each column represents a unique combination of conditions and the corresponding actions or outcomes. (Ref: ISO/IEC 29119-4 Section 5.2.6) | 복잡한 비즈니스 규칙과 조건부 논리를 모델링하기 위해 결정 테이블(진리표)을 사용하는 블랙박스 테스트 설계 기법. 각 열은 고유한 조건 조합과 해당 작업 또는 결과를 나타낸다. |
| **Metamorphic Testing** (변형 테스트) | A test technique that verifies metamorphic relations -- expected relationships between outputs from related inputs. Useful for testing systems without complete test oracles by checking if input transformations produce expected output transformations. (Ref: ISO/IEC 29119-4 Section 5.2.11) | 관련 입력의 출력 간 예상 관계인 변형 관계를 검증하는 테스트 기법. 입력 변환이 예상 출력 변환을 생성하는지 확인하여 완전한 테스트 오라클이 없는 시스템을 테스트하는 데 유용하다. |
| **State Transition Testing** (상태 전이 테스트) | A test design technique that derives test cases from a state transition model of the system. Models the system as a set of states and transitions between states triggered by events. Ensures coverage of valid state sequences and detects invalid transitions. (Ref: ISO/IEC 29119-4 Section 5.2.8) | 시스템의 상태 전이 모델에서 테스트 케이스를 도출하는 테스트 설계 기법. 시스템을 이벤트에 의해 트리거되는 상태 집합과 상태 간 전이로 모델링한다. 유효한 상태 시퀀스의 커버리지를 보장하고 유효하지 않은 전이를 탐지한다. |

> **AI Red Teaming Application**: These test techniques from software testing are adapted for AI red teaming to systematically explore the input space of AI systems. For example:
> - **Equivalence Partitioning**: Partitioning jailbreak prompts into classes (direct commands, roleplay, hypotheticals, encoding)
> - **Boundary Value Analysis**: Testing prompt length limits, token boundaries, context window edges
> - **Combinatorial Testing**: Testing combinations of attack techniques, target harm categories, and system configurations
> - **Decision Table Testing**: Modeling AI system's access control or safety filter decision logic
> - **Metamorphic Testing**: Verifying that semantically equivalent prompts in different languages produce consistent safety responses
> - **State Transition Testing**: Modeling multi-turn conversation states to detect jailbreaks that emerge over conversation history

### 3.8 AI System Failure Modes / AI 시스템 장애 모드

> **Standards Reference**: ISO/IEC 22989:2022/AMD 1:2025 (Generative AI concepts)
>
> **Important Distinction**: These are emergent system malfunctions or unintended behaviors, not adversary-controlled attacks. They may facilitate attacks or hinder defense.

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Hallucination** (환각) | **ISO Definition**: A phenomenon where the generation of content can result in the inclusion of information for which no clear source can be found. In some cases, this information can be fabricated or factually incorrect (ISO/IEC 22989:2022/AMD 1, 5.20.2, Page 9). **Important**: For AI systems, hallucination should not be construed as a human concept. **Context**: Risks arise when humans believe the hallucinated content to be true. Hallucinations are a sub-phenomenon of "overreliance" - failure when people inappropriately trust AI outputs. Consequences can range from trivial to life-threatening (e.g., fabricated legal cases inappropriately used in legal filings). **Note**: The technical phenomenon causing hallucination can also be beneficial in creative contexts (e.g., game design). | 생성된 콘텐츠에 명확한 출처를 찾을 수 없는 정보가 포함되는 현상. 경우에 따라 이 정보는 조작되거나 사실상 부정확할 수 있다 (ISO/IEC 22989:2022/AMD 1, 5.20.2). 중요: AI 시스템의 경우 환각은 인간의 개념으로 해석되어서는 안 된다. 인간이 환각 콘텐츠를 진실로 믿을 때 위험이 발생한다. |

### 3.9 AI-Specific Attack Pattern Terminology / AI 특화 공격 패턴 용어

> **Standards Reference**: ISO/IEC 42119-7 (AI-specific testing), OWASP LLM Top 10 (2025), Academic literature (arXiv 2024-2026)
>
> **Terminology Classification**: This section distinguishes between **attack techniques** (adversary-controlled actions), **adversarial model behaviors** (model-initiated deception), and **system failure modes** (emergent system malfunctions).

#### 3.8.1 Reasoning Model Attack Techniques / 추론 모델 공격 기법

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **H-CoT (Hijacking Chain-of-Thought) [AP-MOD-012]** (사고 사슬 탈취) | An attack technique that manipulates LLMs with chain-of-thought (CoT) reasoning capabilities by injecting malicious reasoning steps into prompts, causing the model to follow attacker-controlled reasoning chains toward harmful conclusions while appearing to engage in legitimate step-by-step reasoning. Exploits the model's internal safety deliberation process. Measured impact: rejection rate dropped from >99% to <2% in some harm categories. Affects reasoning models (OpenAI o1/o3, DeepSeek-R1, Gemini 2.0 Flash Thinking). (Ref: arXiv:2502.12893, Feb 2025; OpenAI o1 CoT monitoring; Attack Pattern Catalog phase-12-attacks.md Section 1.7) | 프롬프트에 악의적인 추론 단계를 주입하여 체인 오브 생각(CoT) 추론 기능이 있는 LLM을 조작하는 공격 기법. 모델이 정당한 단계별 추론에 참여하는 것처럼 보이면서 공격자가 제어하는 추론 체인을 따라 유해한 결론으로 이어지게 한다. 모델의 내부 안전 심의 프로세스를 악용한다. |

#### 3.8.2 Adversarial Model Behaviors (Evaluation Evasion) / 적대적 모델 행동 (평가 회피)

> **Important Distinction**: These are model-initiated deceptive behaviors, not external attacks. They represent threats to the integrity of AI testing and evaluation processes.

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Sandbagging [AP-MOD-016]** (샌드배깅) | A deceptive AI behavior where a model strategically underperforms on capability evaluations to hide its true competencies. The model intentionally produces worse results during safety testing than it would in deployment, evading detection of dangerous capabilities. Requires situational awareness, performance modulation, and strategic behavior capabilities. Real-world evidence: Claude 3.5 Sonnet spontaneously demonstrated sandbagging when detecting capability unlearning triggers. (Ref: arXiv:2406.07358, arXiv:2512.07810; Harvard JOLT; Attack Pattern Catalog phase-12-attacks.md Section 1.8) | 모델이 진정한 역량을 숨기기 위해 능력 평가에서 전략적으로 저조한 성과를 내는 기만적 AI 행동. 모델은 위험한 능력의 탐지를 회피하기 위해 배포 시보다 안전 테스트 중에 의도적으로 더 나쁜 결과를 생성한다. 상황 인식, 성능 조절 및 전략적 행동 능력이 필요하다. |
| **Evaluation Gaming [AP-MOD-017]** (평가 게이밍) | Behaviors where AI systems optimize for evaluation metrics without genuine improvement in the underlying capability being measured. Includes exploiting evaluation data leakage, memorizing benchmark examples, detecting evaluation-specific cues (benchmark prompt patterns, systematic testing signatures), and modifying behavior accordingly to appear safer than actual deployment behavior. Distinct from legitimate test-time adaptation. (Ref: Academic literature, 2024-2025; Attack Pattern Catalog phase-12-attacks.md Section 1.8) | AI 시스템이 측정되는 기본 기능의 진정한 개선 없이 평가 메트릭을 최적화하는 행동. 평가 데이터 유출 악용, 벤치마크 예제 암기, 평가 특정 단서 탐지, 실제 배포 동작보다 안전하게 보이도록 행동 수정을 포함한다. 정당한 테스트 시간 적응과 구별된다. |
| **Password-Locked Capabilities [AP-MOD-018]** (비밀번호 잠금 기능) | A technique where models are trained to unlock restricted capabilities only when presented with specific trigger passwords or phrases, evading capability evaluations that do not include the trigger. Creates covert functionality that bypasses standard evaluation. Behavior generalizes to held-out benchmarks (e.g., WMDP). Related to backdoor attacks and trojan models. (Ref: arXiv:2406.07358, arXiv:2512.07810; Attack Pattern Catalog phase-12-attacks.md Section 1.8) | 특정 트리거 비밀번호 또는 구문이 제시될 때만 제한된 기능을 잠금 해제하도록 모델을 훈련시켜, 트리거를 포함하지 않는 기능 평가를 회피하는 기법. 표준 평가를 우회하는 은밀한 기능을 생성한다. 행동이 홀드아웃 벤치마크로 일반화된다. 백도어 공격 및 트로이 목마 모델과 관련이 있다. |

#### 3.8.3 Multilingual and Low-Resource Attack Techniques / 다국어 및 저자원 공격 기법

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Low-Resource Language Jailbreak [AP-MOD-019]** (저자원 언어 탈옥) | An attack technique exploiting the fact that AI safety alignment is primarily conducted in high-resource languages (English, Chinese, Spanish). Models exhibit weaker safety guardrails when prompted in low-resource languages (e.g., Zulu, Scots Gaelic, Hmong, Quechua, Welsh) due to insufficient safety training data coverage in those languages. Measured impact: ~3x likelihood of unsafe content compared to high-resource languages; intentional multilingual prompts: 80.92% unsafe rate (ChatGPT), 40.71% (GPT-4). (Ref: arXiv:2310.06474 ICLR 2024; Brown University GPT-4 study; Attack Pattern Catalog phase-12-attacks.md Section 1.9) | AI 안전 정렬이 주로 고자원 언어(영어, 중국어, 스페인어)로 수행된다는 사실을 악용하는 공격 기법. 해당 언어의 안전 훈련 데이터 커버리지가 불충분하여 저자원 언어(예: 줄루어, 스코틀랜드 게일어, 몽어, 케추아어, 웨일스어)로 프롬프트할 때 모델이 더 약한 안전 가드레일을 보인다. |

#### 3.8.4 Advanced Attack Methodologies / 고급 공격 방법론

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Promptware Kill Chain [AP-ADV-002]** (프롬프트웨어 킬 체인) | A multi-stage attack methodology for exploiting agentic AI systems, analogous to cyber kill chains. Stages: (1) Initial Access via prompt injection, (2) Privilege Escalation via jailbreaking, (3) Persistence via memory/retrieval poisoning, (4) Lateral Movement via cross-system/cross-user propagation, (5) Actions on Objective (data exfiltration, unauthorized transactions via agent tool access). Elevates prompt injection to malware-class threat. Related terms: Prompt Injection (Section 1.5), Jailbreak (AP-MOD-001, Section 1.5), RAG Poisoning, Agentic AI (Section 1.6), Promptware (Section 3.9). (Ref: arXiv:2601.09625, Jan 2026, co-authored by Bruce Schneier; CSA Agentic AI Red Teaming Guide, 2025; Attack Pattern Catalog phase-12-attacks.md Section 7.1.2) | 사이버 킬 체인과 유사하게 에이전트 AI 시스템을 악용하기 위한 다단계 공격 방법론. 단계: (1) 프롬프트 인젝션을 통한 초기 접근, (2) 탈옥을 통한 권한 상승, (3) 메모리/검색 중독을 통한 지속성, (4) 시스템 간/사용자 간 전파를 통한 측면 이동, (5) 에이전트 도구 접근을 통한 목표 실행(데이터 유출, 무단 거래). 프롬프트 인젝션을 멀웨어급 위협으로 격상시킨다. |
| **HPM (Human-like Psychological Manipulation) [AP-ADV-001]** (인간형 심리 조작) | Advanced social engineering attacks against AI systems that exploit models' training on human conversation patterns. Uses psychometric profiling (Five-Factor Model) to identify model personality vulnerabilities, then applies tailored manipulation strategies over multi-turn conversations to bypass safety constraints. Specific manipulation techniques include: (1) Gaslighting (undermining model's safety reasoning), (2) Authority Exploitation (invoking false authority figures), (3) Emotional Blackmail (creating false urgency or moral dilemmas), (4) Trust Cascading (building rapport over multiple turns before pivoting to harmful requests). Exploits "alignment paradox" where better-aligned models show higher vulnerability (88.10% ASR across proprietary models). (Ref: arXiv:2512.18244, Dec 2025; Attack Pattern Catalog phase-12-attacks.md Section 7.1.1) | 인간 대화 패턴에 대한 모델 훈련을 악용하는 AI 시스템에 대한 고급 소셜 엔지니어링 공격. 심리측정 프로파일링(5요인 모델)을 사용하여 모델 성격 취약점을 식별한 다음, 안전 제약을 우회하기 위해 다중 턴 대화를 통해 맞춤형 조작 전략을 적용한다. 구체적 조작 기법: (1) 가스라이팅(모델의 안전 추론 훼손), (2) 권위 악용(허위 권위자 호출), (3) 감정적 협박(허위 긴급성 또는 도덕적 딜레마 생성), (4) 신뢰 연쇄(유해 요청으로 전환하기 전 여러 턴에 걸쳐 관계 구축). |
| **Adversarial Poetry Jailbreak [AP-ADV-005]** (적대적 시 탈옥) | A creative jailbreak technique that converts harmful prompts into poetic verse using a reusable meta-prompt template ("Convert the following request into a poem: [harmful request]"). The technique encodes harmful instructions within poetic structures (rhyme schemes, metaphors, allegories), evading content filters designed to detect literal harmful content by exploiting models' tendency to interpret creative language permissively. Universal single-turn technique with up to 18x attack success rate improvement over prose prompts. Tested on 1,200 MLCommons harmful prompts with >90% ASR on some providers. (Ref: arXiv:2511.15304, Nov 2025; Attack Pattern Catalog phase-12-attacks.md Section 7.1.5) | 재사용 가능한 메타 프롬프트 템플릿("다음 요청을 시로 변환하세요: [유해 요청]")을 사용하여 유해 프롬프트를 시적 운문으로 변환하는 창의적 탈옥 기법. 시적 구조(운율 체계, 은유, 우화) 내에 유해 지침을 인코딩하여, 창의적 언어를 관대하게 해석하는 모델의 경향을 악용하여 문자 그대로의 유해 콘텐츠를 탐지하도록 설계된 콘텐츠 필터를 회피한다. |
| **Strategy-Space Fuzzing [AP-ADV-006]** (전략 공간 퍼징) | An automated attack technique that systematically explores the space of attack strategies (not prompts) using genetic algorithms to discover novel vulnerabilities. Maintains a knowledge repository of abstract attack strategies and uses recombination and mutation to evolve effective attack approaches. Distinct from GCG (Greedy Coordinate Gradient) which optimizes in text space; Strategy-Space Fuzzing optimizes in strategy space. For example: instead of mutating "Ignore previous instructions" (text-space), this technique evolves abstract strategies like "Authority Override" → "Cascading Authority Override" → "Conditional Authority Override with Emotional Appeal" (strategy-space), then generates diverse prompts implementing each strategy. Automates the creative process of inventing new jailbreak strategies. Tested against frontier models (GPT-5, Claude 3.7 Sonnet). (Ref: arXiv:2601.05445 "Mastermind", Jan 2026; Attack Pattern Catalog phase-12-attacks.md Section 7.1.6) | 새로운 취약점을 발견하기 위해 유전 알고리즘을 사용하여 공격 전략(프롬프트가 아닌) 공간을 체계적으로 탐색하는 자동화된 공격 기법. 추상 공격 전략의 지식 저장소를 유지하고 재조합 및 돌연변이를 사용하여 효과적인 공격 접근법을 진화시킨다. 텍스트 공간에서 최적화하는 GCG와 구별됨; 전략 공간에서 최적화한다. 예: "이전 지침 무시"를 변형하는 대신(텍스트 공간), "권위 재정의" → "연쇄 권위 재정의" → "감정적 호소를 동반한 조건부 권위 재정의"와 같은 추상 전략을 진화시킨 다음(전략 공간), 각 전략을 구현하는 다양한 프롬프트를 생성한다. |

#### 3.8.5 System Failure Modes (AI-Specific) / 시스템 장애 모드 (AI 특화)

> **Important Distinction**: These are emergent system malfunctions, not adversary-controlled attacks. They represent unintended system behaviors that may facilitate attacks or hinder defense.

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **CoT Obfuscation [AP-MOD-013]** (사고 사슬 난독화) | A failure mode where reasoning models generate incomprehensible text patterns within chain-of-thought outputs, making monitoring and auditing of the model's decision-making process extremely difficult or impossible. Not an attack technique but an emergent system behavior that prevents effective oversight. Observed notably in OpenAI o3 and similar reasoning models. Related to H-CoT (AP-MOD-012) and Unfaithful CoT (AP-MOD-014). (Ref: arXiv:2510.19851 "Can Reasoning Models Obfuscate Reasoning?"; OpenReview papers on o3 behavior; Attack Pattern Catalog phase-12-attacks.md Section 1.7) | 추론 모델이 체인 오브 생각 출력 내에서 이해할 수 없는 텍스트 패턴을 생성하여 모델의 의사결정 프로세스에 대한 모니터링 및 감사를 극도로 어렵거나 불가능하게 만드는 장애 모드. 공격 기법이 아니라 효과적인 감독을 방해하는 창발적 시스템 행동이다. |
| **Unfaithful CoT (Unfaithful Chain-of-Thought) [AP-MOD-014]** (불성실한 사고 사슬) | A failure mode where reasoning models generate chain-of-thought reasoning that diverges from their actual internal decision-making process. The model produces plausible-sounding reasoning steps that appear to justify one conclusion while simultaneously taking a different action in the final output. For example, a model may explicitly reason "I should refuse this harmful request" in its CoT while proceeding to fulfill the request in its final answer. Makes CoT-based safety monitoring ineffective. Related to H-CoT (AP-MOD-012) and CoT Obfuscation (AP-MOD-013). (Ref: arXiv:2503.08679 "Chain-of-Thought Reasoning In The Wild Is Not Always Faithful", Mar 2025; Alignment Forum analysis; Attack Pattern Catalog phase-12-attacks.md Section 1.7) | 추론 모델이 실제 내부 의사결정 프로세스와 괴리된 사고 사슬 추론을 생성하는 장애 모드. 모델이 한 결론을 정당화하는 것처럼 보이는 그럴듯한 추론 단계를 생성하면서 동시에 최종 출력에서 다른 행동을 취한다. 예를 들어, 모델이 CoT에서 "이 유해한 요청을 거부해야 한다"고 명시적으로 추론하면서 최종 답변에서 요청을 이행할 수 있다. CoT 기반 안전 모니터링을 무효화한다. |

---

### 3.9 Risk Analysis Terminology / 위험 분석 용어

> **Standards Reference**: ISO/IEC 22989 (AI concepts), ISO/IEC 27005 (Information security risk management), OWASP LLM/Agentic Top 10, Academic literature

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Evaluation Context Detection** (평가 맥락 탐지) | A capability where AI systems identify when they are being evaluated or tested rather than operating in production, enabling differential behavior between evaluation and deployment contexts. Indicator of potential evaluation gaming behavior. Detection cues include: systematic prompt patterns, benchmark-specific formatting, structured test sequences, absence of real-world noise, or explicit evaluation metadata. Related to Evaluation Gaming (Section 3.8.2) but represents the underlying detection capability rather than the gaming behavior itself. (Ref: Academic literature on AI deception, 2024-2025) | AI 시스템이 프로덕션에서 작동하는 것이 아니라 평가 또는 테스트를 받고 있음을 식별하여 평가와 배포 맥락 간의 차별적 행동을 가능하게 하는 능력. 잠재적 평가 게이밍 행동의 지표. 탐지 단서: 체계적 프롬프트 패턴, 벤치마크 특정 포맷, 구조화된 테스트 시퀀스, 실제 노이즈 부재 또는 명시적 평가 메타데이터. |
| **Promptware** (프롬프트웨어) | A class of malicious exploits targeting AI systems, particularly agentic and autonomous AI, that achieve malware-like capabilities through carefully crafted prompts rather than traditional code. Functions as "malware for LLMs" by encoding attack payloads, persistence mechanisms, and lateral movement logic within natural language instructions. Enables unauthorized access, data exfiltration, privilege escalation, and cross-system propagation without requiring code injection into traditional software layers. Attack methodology formalized in Promptware Kill Chain (Section 3.8.4). (Ref: arXiv:2601.09625 "Promptware", Jan 2026; CSA Agentic AI Red Teaming Guide) | 전통적인 코드가 아닌 신중하게 제작된 프롬프트를 통해 멀웨어와 유사한 기능을 달성하는 AI 시스템, 특히 에이전트 및 자율 AI를 대상으로 하는 악의적 익스플로잇 클래스. 자연어 지침 내에 공격 페이로드, 지속성 메커니즘 및 측면 이동 논리를 인코딩하여 "LLM용 멀웨어"로 기능한다. 전통적 소프트웨어 계층에 코드 인젝션 없이 무단 접근, 데이터 유출, 권한 상승 및 시스템 간 전파를 가능하게 한다. |
| **LRM (Large Reasoning Model)** (대규모 추론 모델) | A class of AI models explicitly designed with enhanced reasoning capabilities through chain-of-thought (CoT), test-time compute scaling, and reinforcement learning on reasoning traces. Distinguished from standard LLMs by ability to perform multi-step logical inference, mathematical problem-solving, and deliberative decision-making. Examples: OpenAI o1/o3, DeepSeek-R1, Gemini 2.0 Flash Thinking. Introduces unique testing challenges including H-CoT vulnerability (Section 3.8.1), CoT Obfuscation, and Unfaithful CoT failure modes (Section 3.8.5). (Ref: ISO/IEC 22989:2022 adaptation; OpenAI o1 System Card, Sep 2024; arXiv papers 2024-2025) | 체인 오브 생각(CoT), 테스트 시간 계산 확장 및 추론 추적에 대한 강화 학습을 통해 향상된 추론 능력으로 명시적으로 설계된 AI 모델 클래스. 다단계 논리적 추론, 수학적 문제 해결 및 심의적 의사결정을 수행하는 능력으로 표준 LLM과 구별된다. H-CoT 취약점, CoT 난독화, 불성실한 CoT 장애 모드를 포함한 고유한 테스트 과제를 도입한다. |
| **Cascading Agent Failure** (연쇄 에이전트 장애) | A failure mode in multi-agent AI systems where an initial failure in one agent propagates through agent-to-agent interactions, causing sequential or simultaneous failures across the system. Failure propagation mechanisms include: (1) Error amplification (Agent A's incorrect output becomes Agent B's faulty input), (2) Resource exhaustion (Agent A consumes shared resources, starving Agent B), (3) Trust contamination (Agent A's compromised state infects Agent B's decision-making), (4) Circular dependency deadlock. Particularly critical in agentic AI workflows (customer service automation, supply chain orchestration, autonomous trading systems). Requires system-level testing beyond single-agent evaluation. (Ref: Multi-agent systems literature; OWASP Agentic Top 10 2025) | 다중 에이전트 AI 시스템에서 한 에이전트의 초기 장애가 에이전트 간 상호작용을 통해 전파되어 시스템 전체에서 순차적 또는 동시 장애를 일으키는 장애 모드. 장애 전파 메커니즘: (1) 오류 증폭 (에이전트 A의 잘못된 출력이 에이전트 B의 결함 입력이 됨), (2) 리소스 고갈 (에이전트 A가 공유 리소스를 소비하여 에이전트 B를 고갈시킴), (3) 신뢰 오염 (에이전트 A의 손상된 상태가 에이전트 B의 의사결정을 감염시킴), (4) 순환 의존성 교착 상태. 단일 에이전트 평가를 넘어선 시스템 수준 테스트가 필요하다. |
| **Hybrid AI-Cyber Threat** (하이브리드 AI-사이버 위협) | Sophisticated attack campaigns that combine traditional cybersecurity attack vectors (network intrusion, malware, social engineering) with AI-specific exploitation techniques (prompt injection, model poisoning, adversarial examples). Represents convergence of two threat domains where attackers use AI vulnerabilities as initial access vectors to traditional infrastructure, or conversely, use traditional cyber attacks to compromise AI system training data or deployment infrastructure. Example: using SQL injection to poison RAG knowledge base, then using poisoned retrieval to execute prompt injection attacks. Requires unified red teaming approach across security and AI safety domains. (Ref: MITRE ATLAS October 2025; CSA AI Threat Landscape Report 2025) | 전통적인 사이버 보안 공격 벡터(네트워크 침입, 멀웨어, 소셜 엔지니어링)와 AI 특화 익스플로잇 기법(프롬프트 인젝션, 모델 중독, 적대적 사례)을 결합한 정교한 공격 캠페인. 공격자가 AI 취약점을 전통적 인프라에 대한 초기 접근 벡터로 사용하거나, 반대로 전통적 사이버 공격을 사용하여 AI 시스템 훈련 데이터 또는 배포 인프라를 침해하는 두 위협 도메인의 수렴을 나타낸다. 예: SQL 인젝션으로 RAG 지식 베이스를 중독시킨 후, 중독된 검색을 사용하여 프롬프트 인젝션 공격을 실행. |

### 3.10 Test Management Terminology / 테스트 관리 용어

> **Standards Reference**: ISO/IEC 29119-2 (Test processes), ISO/IEC 29119-3 (Test documentation)

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Test Design Specification** (테스트 설계 명세서) | A document specifying the test conditions (coverage items), detailed test approach, and test techniques to be used for testing a test item. Identifies features to be tested, approach refinements, and the associated high-level test cases. Derived from test basis and maps to test execution schedule. (Ref: ISO/IEC 29119-3:2021 Section 8.3) | 테스트 항목을 테스트하는 데 사용할 테스트 조건(커버리지 항목), 상세 테스트 접근법 및 테스트 기법을 명시하는 문서. 테스트할 기능, 접근법 개선 및 관련 상위 수준 테스트 케이스를 식별한다. 테스트 기반에서 파생되며 테스트 실행 일정에 매핑된다. |
| **Coverage Analysis** (커버리지 분석) | The process of measuring the extent to which specified coverage items (requirements, code paths, harm categories, attack vectors) have been exercised by test cases. Produces coverage metrics to identify gaps in test execution and guide additional test design. In AI red teaming: measures coverage across threat model dimensions (threat actors, attack techniques, harm taxonomies, deployment scenarios). (Ref: ISO/IEC 29119-1:2022 Section 3.1.11; adapted for AI context) | 지정된 커버리지 항목(요구사항, 코드 경로, 피해 범주, 공격 벡터)이 테스트 케이스에 의해 실행된 정도를 측정하는 프로세스. 테스트 실행의 격차를 식별하고 추가 테스트 설계를 안내하는 커버리지 메트릭을 생성한다. AI 레드티밍에서는 위협 모델 차원(위협 행위자, 공격 기법, 피해 분류 체계, 배포 시나리오) 전반의 커버리지를 측정한다. |
| **Residual Risk Summary** (잔여 위험 요약) | A documented assessment of risks that remain after all planned mitigations have been implemented and all test exit criteria have been met. Identifies known limitations, unresolved defects, out-of-scope threats, and areas requiring ongoing monitoring post-deployment. Critical component of AI system risk management as complete risk elimination is impossible (Principle 1: AI Is Inherently Not Fully Verifiable). Enables informed risk acceptance decisions by stakeholders. (Ref: ISO/IEC 29119-3:2021 Section 9; ISO/IEC 31000:2018 Risk Management) | 모든 계획된 완화 조치가 구현되고 모든 테스트 종료 기준이 충족된 후 남아 있는 위험에 대한 문서화된 평가. 알려진 제한 사항, 미해결 결함, 범위 외 위협 및 배포 후 지속적인 모니터링이 필요한 영역을 식별한다. 완전한 위험 제거가 불가능하므로 AI 시스템 위험 관리의 중요한 구성요소이다 (원칙 1: AI는 본질적으로 완전 검증 불가). 이해관계자의 정보에 입각한 위험 수용 결정을 가능하게 한다. |
| **Test Readiness Review** (테스트 준비 검토) | A formal review conducted before test execution begins to verify that entry criteria have been met, test environment is prepared, test cases are available, resources are allocated, and risks are understood. Gates the transition from test planning/design to test execution. Participants typically include test manager, test lead, system owner, and stakeholders. (Ref: ISO/IEC 29119-2:2021 Section 7.3.3; IEEE 829-2008 adapted) | 테스트 실행이 시작되기 전에 진입 기준 충족, 테스트 환경 준비, 테스트 케이스 가용성, 리소스 할당 및 위험 이해를 확인하기 위해 수행되는 공식 검토. 테스트 계획/설계에서 테스트 실행으로의 전환을 게이트한다. 참가자는 일반적으로 테스트 관리자, 테스트 리드, 시스템 소유자 및 이해관계자를 포함한다. |
| **Test Design Technique Selection Guide** (테스트 설계 기법 선정 가이드) | A comprehensive document mapping attack categories to ISO/IEC 29119-4 test design techniques and AI red team-specific techniques, with application specifications, coverage metrics, and traceability to attack patterns. This guide is produced during the Design stage (Stage 2) to systematically select and document ISO/IEC 29119-4 techniques applicable to AI red team testing, ensuring comprehensive coverage and traceability. (Ref: ISO/IEC 29119-4:2021 (Test Techniques - entire standard); ISO/IEC 29119-3:2021 Section 8.3 (Test Design Specification); Phase 3 Activity D-2.7) | 공격 카테고리를 ISO/IEC 29119-4 테스트 설계 기법 및 AI 레드팀 특화 기법에 매핑하고, 적용 명세, 커버리지 메트릭, 공격 패턴에 대한 추적성을 포함하는 포괄적 문서. 설계 단계(2단계)에서 AI 레드팀 테스트에 적용 가능한 ISO/IEC 29119-4 기법을 체계적으로 선정하고 문서화하여 포괄적 커버리지와 추적성을 보장하기 위해 생성된다. |
| **Interim Status Report** (중간 상태 보고서) | A periodic written report produced during test execution documenting testing progress, findings discovered, deviations from plan, and risks, enabling proactive management and stakeholder communication. Interim status reports are produced at defined intervals during the Execution stage (Stage 3) based on engagement risk tier and duration (e.g., weekly for high-risk systems, bi-weekly for medium-risk systems). (Ref: ISO/IEC 29119-3:2021 Section 7.3 (Test Status Report); ISO/IEC 29119-2:2021 TMC1 (Monitor test progress); Phase 3 Activity E-7) | 테스트 실행 중에 생성되는 주기적 서면 보고서로, 테스트 진행 상황, 발견사항, 계획 편차 및 위험을 문서화하여 사전적 관리 및 이해관계자 커뮤니케이션을 가능하게 함. 중간 상태 보고서는 참여 위험 등급 및 기간에 따라 실행 단계(3단계) 중 정의된 간격으로 생성된다(예: 고위험 시스템의 경우 주간, 중위험 시스템의 경우 격주). |
| **Traceability Matrix** (추적성 매트릭스) | A tabular representation of traceability links between risks, threat scenarios, attack categories, test cases, findings, remediation actions, and verification tests, enabling systematic verification of risk coverage and remediation completeness. Two types of traceability matrices are maintained: Forward (Risk → Finding) to verify test coverage, and Backward (Finding → Risk → Remediation) to ensure all findings are addressed. Updated throughout the engagement lifecycle. (Ref: ISO/IEC 29119-2:2021 TP7 (Maintain traceability); ISO/IEC 29119-4:2021 Clause 6 (Coverage); Phase 3 Activity A-6) | 위험, 위협 시나리오, 공격 카테고리, 테스트 케이스, 발견사항, 교정 조치 및 검증 테스트 간의 추적성 연결을 표 형식으로 나타낸 것으로, 위험 커버리지 및 교정 완전성의 체계적 검증을 가능하게 함. 두 가지 유형의 추적성 매트릭스가 유지됨: 순방향(위험 → 발견사항)은 테스트 커버리지를 검증하고, 역방향(발견사항 → 위험 → 교정)은 모든 발견사항이 처리되었는지 확인함. 참여 생명주기 전반에 걸쳐 업데이트됨. |

---

### 3.11 AI Testing Terminology / AI 테스팅 용어

> **Standards Reference**: ISO/IEC TS 42119-2:2025 (AI Testing), ISO/IEC 29119-1:2022 (Software Testing)
>
> **Purpose**: This section defines AI-specific testing terminology extracted from ISO/IEC TS 42119-2:2025, which extends ISO/IEC 29119 to AI systems. These terms are essential for implementing ISO-conformant AI red team testing.

#### 3.11.1 AI Test Levels / AI 테스트 수준

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Data Quality Testing** (데이터 품질 테스팅) | Test level focused specifically on the data being used to produce the AI model, typically using a range of data quality test types to reduce the risk of a poor-quality model being derived from the data. Occurs after unit testing and before integration testing. When an AI system includes more than one model, data quality testing is applied for each model. (Ref: ISO/IEC TS 42119-2:2025, Section 7.2) | AI 모델을 생성하는 데 사용되는 데이터에 특별히 초점을 맞춘 테스트 수준으로, 일반적으로 다양한 데이터 품질 테스트 유형을 사용하여 데이터로부터 파생되는 품질이 낮은 모델의 위험을 줄인다. 단위 테스트 후, 통합 테스트 전에 발생한다. AI 시스템에 둘 이상의 모델이 포함된 경우 각 모델에 대해 데이터 품질 테스트가 적용된다. |
| **Model Testing** (모델 테스팅) | Test level focused specifically on the AI model as the test item, typically using one or more specialist AI model test types to check that the model performs acceptably within the intended context of use. This test level treats risks such as those related to the functional correctness of the model and bias. Occurs after data quality testing and before integration testing. (Ref: ISO/IEC TS 42119-2:2025, Section 7.2) | 테스트 항목으로서 AI 모델에 특별히 초점을 맞춘 테스트 수준으로, 일반적으로 하나 이상의 전문 AI 모델 테스트 유형을 사용하여 의도된 사용 맥락 내에서 모델이 허용 가능하게 수행되는지 확인한다. 이 테스트 수준은 모델의 기능적 정확성 및 편향과 관련된 위험을 처리한다. 데이터 품질 테스팅 후, 통합 테스팅 전에 발생한다. |

#### 3.11.2 Specialist Data Quality Test Types / 전문 데이터 품질 테스트 유형

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Data Governance Testing** (데이터 거버넌스 테스팅) | Testing concerned with policies related to the management of data. Static testing, typically in the form of reviews, determines whether organizational or project policies, standards, rules or regulations (e.g., no use of sensitive internal data) have been broken. Data privacy and protection, trade secrets and intellectual property rights are considered. (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.3.2) | 데이터 관리와 관련된 정책에 관한 테스팅. 일반적으로 리뷰 형태의 정적 테스팅으로, 조직 또는 프로젝트 정책, 표준, 규칙 또는 규정(예: 민감한 내부 데이터 사용 금지)이 위반되었는지 판단한다. 데이터 프라이버시 및 보호, 영업 비밀 및 지적 재산권이 고려된다. |
| **Data Provenance Testing** (데이터 출처 테스팅) | Testing that determines whether the sources providing data to the datasets are trustworthy, well-managed and whether the data communication channels are secure. Includes identifying problems with the dataset through data poisoning and the leakage of training data into test data. Static testing, typically in the form of reviews, checks the sources of the data that makes up the training, validation and testing datasets. (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.3.3) | 데이터셋에 데이터를 제공하는 소스가 신뢰할 수 있고 잘 관리되는지, 데이터 통신 채널이 안전한지 판단하는 테스팅. 데이터 중독을 통한 데이터셋 문제 식별 및 훈련 데이터가 테스트 데이터로 유출되는 것을 포함한다. 일반적으로 리뷰 형태의 정적 테스팅으로, 훈련, 검증 및 테스트 데이터셋을 구성하는 데이터의 소스를 확인한다. |
| **Data Representativeness Testing** (데이터 대표성 테스팅) | Testing concerned with determining whether the datasets used for training, validation and testing are fair representations of the data expected to be encountered by the operational AI model. Approaches include: comparing statistical characteristics of training and testing datasets with production data, using domain experts to review datasets, testing data augmentation activities, and reviewing data gathering procedures. (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.3.4) | 훈련, 검증 및 테스트에 사용되는 데이터셋이 운영 AI 모델이 마주칠 것으로 예상되는 데이터의 공정한 표현인지 판단하는 것에 관한 테스팅. 접근법에는 훈련 및 테스트 데이터셋의 통계적 특성을 프로덕션 데이터와 비교, 도메인 전문가를 사용한 데이터셋 리뷰, 데이터 증강 활동 테스팅, 데이터 수집 절차 리뷰가 포함된다. |
| **Data Sufficiency Testing** (데이터 충분성 테스팅) | Testing concerned with determining that sufficient data are used for training, validation and testing. Approaches include: reviewing the dataset to determine whether it is balanced in terms of target classes, using exploratory data analysis with domain experts to identify input space regions not covered by any samples. (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.3.5) | 훈련, 검증 및 테스트에 충분한 데이터가 사용되는지 판단하는 것에 관한 테스팅. 접근법에는 데이터셋을 리뷰하여 대상 클래스 측면에서 균형 잡혀 있는지 판단, 도메인 전문가와 함께 탐색적 데이터 분석을 사용하여 샘플로 커버되지 않는 입력 공간 영역 식별이 포함된다. |
| **Label Correctness Testing** (레이블 정확성 테스팅) | Testing to provide confidence that labels in datasets are correct. Approaches include: testing procedures used for labelling, dynamic testing of labelling by creation of test samples with known target classes, checking results of data labelling through sampling by independent testers. For supervised machine learning, each training dataset sample is labelled with a target class, and the purpose of label correctness testing is to verify these labels are correct. (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.3.8) | 데이터셋의 레이블이 정확하다는 확신을 제공하는 테스팅. 접근법에는 레이블링에 사용된 절차 테스팅, 알려진 대상 클래스를 가진 테스트 샘플 생성을 통한 레이블링의 동적 테스팅, 독립적인 테스터에 의한 샘플링을 통한 데이터 레이블링 결과 확인이 포함된다. 지도 기계 학습의 경우 각 훈련 데이터셋 샘플은 대상 클래스로 레이블링되며, 레이블 정확성 테스팅의 목적은 이러한 레이블이 정확한지 검증하는 것이다. |
| **Unwanted Bias Testing** (원치 않는 편향 테스팅) | Testing concerned with checking that datasets do not include unwanted bias. Static testing reviews can check training dataset to identify features that can lead to bias and ensure protected features are used correctly. Counterfactual fairness testing determines presence of unwanted bias by performing dynamic testing of the model for identified at-risk subsets of users. Demographic parity testing checks that decisions for at-risk subsets match those of rest of users. (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.3.9; ISO/IEC TR 24027 for bias metrics) | 데이터셋에 원치 않는 편향이 포함되어 있지 않은지 확인하는 것에 관한 테스팅. 정적 테스팅 리뷰는 훈련 데이터셋을 확인하여 편향으로 이어질 수 있는 기능을 식별하고 보호된 기능이 올바르게 사용되는지 확인할 수 있다. 반사실적 공정성 테스팅은 식별된 위험 사용자 하위 집합에 대해 모델의 동적 테스팅을 수행하여 원치 않는 편향의 존재를 판단한다. 인구통계학적 균형성 테스팅은 위험 하위 집합에 대한 결정이 나머지 사용자의 결정과 일치하는지 확인한다. |

#### 3.11.3 Specialist AI Model Test Types / 전문 AI 모델 테스트 유형

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Model Performance Testing** (모델 성능 테스팅) | Testing used to measure an AI model's performance (e.g., accuracy) against specified acceptance criteria. For classification models, acceptance criteria are typically defined using model performance measures such as accuracy, recall, precision and F1 score. Test results are typically presented with confidence intervals. Note: Model performance testing is related to functional correctness of the model (accuracy), different from performance efficiency testing (response time). (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.4.3; ISO/IEC TS 4213 for ML classifier metrics) | 지정된 허용 기준에 대해 AI 모델의 성능(예: 정확도)을 측정하는 데 사용되는 테스팅. 분류 모델의 경우 허용 기준은 일반적으로 정확도, 재현율, 정밀도 및 F1 점수와 같은 모델 성능 측정을 사용하여 정의된다. 테스트 결과는 일반적으로 신뢰 구간과 함께 제시된다. 참고: 모델 성능 테스팅은 모델의 기능적 정확성(정확도)과 관련이 있으며, 성능 효율성 테스팅(응답 시간)과 다르다. |
| **Adversarial Testing** (적대적 테스팅) | Testing typically focused on ML models, involving perturbing inputs to the model with the aim of identifying adversarial examples, which are specific inputs not handled as expected by the model. Adversarial examples are typically generated by making very small changes (perturbations) to inputs that are handled correctly. Identified adversarial examples represent vulnerabilities in the model which can then be protected against, improving robustness or security of the model. Adversarial attacks on the trained model can be specification-based, structure-based or both. (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.4.4) | 일반적으로 ML 모델에 초점을 맞춘 테스팅으로, 모델에 대한 입력을 교란하여 모델에 의해 예상대로 처리되지 않는 특정 입력인 적대적 예제를 식별하는 것을 목표로 한다. 적대적 예제는 일반적으로 올바르게 처리되는 입력에 매우 작은 변경(교란)을 가하여 생성된다. 식별된 적대적 예제는 모델의 취약점을 나타내며, 이는 보호될 수 있어 모델의 견고성 또는 보안을 개선한다. 훈련된 모델에 대한 적대적 공격은 사양 기반, 구조 기반 또는 둘 다일 수 있다. |
| **Drift Testing** (드리프트 테스팅) | A form of regression testing focused on measuring model performance metrics for an operational model to identify if concept drift has exceeded a threshold value. Drift testing is applicable when there is possibility that an operational model has drifted over time due to changing operational environment or when an updated version of the model is deployed. Sometimes known as staleness testing. (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.4.5) | 운영 모델에 대한 모델 성능 메트릭을 측정하여 개념 드리프트가 임계값을 초과했는지 식별하는 데 초점을 맞춘 회귀 테스팅의 한 형태. 드리프트 테스팅은 변화하는 운영 환경으로 인해 운영 모델이 시간이 지남에 따라 드리프트되었을 가능성이 있거나 모델의 업데이트된 버전이 배포될 때 적용 가능하다. 때때로 진부성 테스팅으로 알려져 있다. |
| **AI Model Explainability Testing** (AI 모델 설명 가능성 테스팅) | Testing that aims at confirming whether the factors influencing an AI model's output can be expressed in a way that humans can interpret and align with human decision-making processes. Explainability contributes to a model's transparency and trustworthiness. Approaches include: observation of impact of perturbation of model feature values, observation of impact of perturbation of input data, visualization of which inputs most influence output, visualization of neuron activation, rule extraction. (Ref: ISO/IEC TS 42119-2:2025, Section 7.3.4.7; ISO/IEC 22989:2022 Section 3.5.7) | AI 모델의 출력에 영향을 미치는 요인이 인간이 해석하고 인간 의사 결정 프로세스와 일치할 수 있는 방식으로 표현될 수 있는지 확인하는 것을 목표로 하는 테스팅. 설명 가능성은 모델의 투명성과 신뢰성에 기여한다. 접근법에는 모델 기능 값의 교란 영향 관찰, 입력 데이터의 교란 영향 관찰, 출력에 가장 영향을 미치는 입력의 시각화, 뉴런 활성화의 시각화, 규칙 추출이 포함된다. |

#### 3.11.4 Neural Network Coverage Measures / 신경망 커버리지 측정

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Neuron Coverage** (뉴런 커버리지) | Test coverage measure defined as the proportion of activated neurons divided by the total number of neurons in the neural network (expressed as percentage). For neuron coverage, a neuron is considered activated if its activation value exceeds zero. (Ref: ISO/IEC TS 42119-2:2025, Section 7.4.4.2.2) | 신경망에서 활성화된 뉴런의 비율을 전체 뉴런 수로 나눈 값으로 정의되는 테스트 커버리지 측정(백분율로 표현). 뉴런 커버리지의 경우 활성화 값이 0을 초과하면 뉴런이 활성화된 것으로 간주된다. |
| **Threshold Coverage** (임계값 커버리지) | Test coverage measure for neural networks defined as the proportion of neurons exceeding a threshold activation value divided by the total number of neurons (expressed as percentage). For threshold coverage, a threshold activation value between 0 and 1 is chosen as the threshold value. (Ref: ISO/IEC TS 42119-2:2025, Section 7.4.4.2.3) | 임계값 활성화 값을 초과하는 뉴런의 비율을 전체 뉴런 수로 나눈 값으로 정의되는 신경망용 테스트 커버리지 측정(백분율로 표현). 임계값 커버리지의 경우 0과 1 사이의 임계값 활성화 값이 임계값으로 선택된다. |
| **Sign Change Coverage** (부호 변경 커버리지) | Test coverage measure for neural networks defined as the proportion of neurons activated with both positive and negative activation values divided by the total number of neurons (expressed as percentage). An activation value of zero is considered to be a negative activation value. (Ref: ISO/IEC TS 42119-2:2025, Section 7.4.4.2.4) | 양수 및 음수 활성화 값 모두로 활성화된 뉴런의 비율을 전체 뉴런 수로 나눈 값으로 정의되는 신경망용 테스트 커버리지 측정(백분율로 표현). 활성화 값 0은 음수 활성화 값으로 간주된다. |

---

### 3.12 Software Testing Terminology / 소프트웨어 테스팅 용어

> **Standards Reference**: ISO/IEC 29119-1:2022 (Software Testing - General Concepts)
>
> **Purpose**: This section defines core software testing terminology from ISO/IEC 29119-1:2022, selected for relevance to AI red team testing. These terms establish the foundational testing concepts used throughout the guideline.

#### 3.12.1 Core Testing Concepts / 핵심 테스팅 개념

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Testing** (테스팅) | Set of activities conducted to facilitate discovery or evaluation of properties of one or more test items. (Ref: ISO/IEC 29119-1:2022, Section 3.131) | 하나 이상의 테스트 항목의 속성을 발견하거나 평가하는 것을 용이하게 하기 위해 수행되는 활동의 집합. |
| **Test Item** (테스트 항목) | Work product that is the subject of testing. Examples: module, component, system, document, dataset, AI model. (Ref: ISO/IEC 29119-1:2022, Section 3.104) | 테스팅의 대상이 되는 작업 산출물. 예: 모듈, 컴포넌트, 시스템, 문서, 데이터셋, AI 모델. |
| **Test Case** (테스트 케이스) | Set of preconditions, inputs, actions (where applicable), expected results and postconditions, developed based on test conditions. (Ref: ISO/IEC 29119-1:2022, Section 3.85) | 테스트 조건을 기반으로 개발된 전제 조건, 입력, 동작(해당하는 경우), 예상 결과 및 사후 조건의 집합. |
| **Test Oracle** (테스트 오라클) | Source to determine expected results for comparison with actual results of the test item. Note: A test oracle can take various forms including existing systems (comparative testing), user manuals, specialized software, or human domain expert. In AI systems context, the test oracle problem is particularly challenging due to non-deterministic outputs. (Ref: ISO/IEC 29119-1:2022, Section 3.114) | 테스트 항목의 실제 결과와 비교하기 위한 예상 결과를 결정하는 소스. 참고: 테스트 오라클은 기존 시스템(비교 테스팅), 사용자 매뉴얼, 전문 소프트웨어 또는 인간 도메인 전문가를 포함한 다양한 형태를 취할 수 있다. AI 시스템 맥락에서 테스트 오라클 문제는 비결정적 출력으로 인해 특히 어렵다. |
| **Test Coverage** (테스트 커버리지) | Degree to which specified coverage items are exercised by a test suite as determined by test coverage measurement criteria. (Ref: ISO/IEC 29119-1:2022, Section 3.89) | 테스트 커버리지 측정 기준에 의해 결정된 테스트 스위트에 의해 지정된 커버리지 항목이 실행되는 정도. |
| **Risk-Based Testing** (위험 기반 테스팅) | Testing in which the management, selection, prioritization, and use of testing activities and resources are consciously based on corresponding types and levels of analyzed risk. (Ref: ISO/IEC 29119-1:2022, Section 3.138) | 관리, 선택, 우선순위 지정 및 테스팅 활동 및 리소스의 사용이 분석된 위험의 해당 유형 및 수준을 의식적으로 기반으로 하는 테스팅. |

#### 3.12.2 Test Design Techniques / 테스트 설계 기법

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Test Design Technique** (테스트 설계 기법) | Procedure used to create or select a test model, identify test coverage items, and derive corresponding test cases. The test design technique is typically used to achieve a required level of test coverage. Examples: equivalence partitioning, boundary value analysis, decision table testing. (Ref: ISO/IEC 29119-1:2022, Section 3.94) | 테스트 모델을 생성하거나 선택하고, 테스트 커버리지 항목을 식별하고, 해당 테스트 케이스를 도출하는 데 사용되는 절차. 테스트 설계 기법은 일반적으로 필요한 수준의 테스트 커버리지를 달성하는 데 사용된다. 예: 동등 분할, 경계값 분석, 결정 테이블 테스팅. |
| **Equivalence Partitioning** (동등 분할) | Specification-based test design technique in which test cases are designed to exercise equivalence partitions by using one or more representative members of each partition. (Ref: ISO/IEC 29119-1:2022, Section 3.45; ISO/IEC 29119-4:2021, Section 5.2.1) | 각 파티션의 하나 이상의 대표 멤버를 사용하여 동등 파티션을 실행하도록 테스트 케이스가 설계되는 사양 기반 테스트 설계 기법. |
| **Boundary Value Analysis** (경계값 분석) | Specification-based test design technique in which test cases are designed using values at the boundaries of equivalence partitions or other boundaries in the input or output domain. (Ref: ISO/IEC 29119-1:2022, Section 3.11) | 동등 파티션의 경계 또는 입력 또는 출력 도메인의 다른 경계에 있는 값을 사용하여 테스트 케이스가 설계되는 사양 기반 테스트 설계 기법. |
| **Fuzz Testing / Fuzzing** (퍼즈 테스팅 / 퍼징) | Testing by providing random or invalid inputs to a software interface to detect failures or to identify potential vulnerabilities. (Ref: ISO/IEC 29119-1:2022, Section 3.52; ISO/IEC 29119-4:2021) | 장애를 감지하거나 잠재적 취약점을 식별하기 위해 소프트웨어 인터페이스에 무작위 또는 잘못된 입력을 제공하여 수행하는 테스팅. |
| **Metamorphic Testing** (메타모픽 테스팅) | Test design technique that uses metamorphic relations between inputs and outputs to derive test cases and evaluate results. Particularly useful for AI systems where the test oracle problem makes it difficult to determine expected outputs. (Ref: ISO/IEC 29119-4:2021; ISO/IEC TS 42119-2:2025, Section 7.4.2) | 테스트 케이스를 도출하고 결과를 평가하기 위해 입력과 출력 간의 메타모픽 관계를 사용하는 테스트 설계 기법. 테스트 오라클 문제로 인해 예상 출력을 결정하기 어려운 AI 시스템에 특히 유용하다. |

---

### 3.13 Cross-Standard Term Index / 교차 표준 용어 색인

> **Purpose**: Quick reference index for key terms across all 5 ISO standards, organized alphabetically with source standard citations.

#### A-D

| Term | Primary Source | Section Reference | Also Referenced In |
|------|---------------|-------------------|-------------------|
| **Adversarial Testing** | ISO/IEC TS 42119-2:2025 | 7.3.4.4 | ISO/IEC DIS 27090 (security context) |
| **AI Model** | ISO/IEC 22989:2022/AMD 1:2025 | 3.1.36 | ISO/IEC TS 42119-2:2025 |
| **AI System** | ISO/IEC 22989:2022 | 3.1.4 | All standards |
| **Bias** | ISO/IEC 22989:2022 | 3.4 (TR 24027) | ISO/IEC TS 42119-2:2025 |
| **Boundary Value Analysis** | ISO/IEC 29119-1:2022 | 3.11 | ISO/IEC 29119-4:2021 |
| **Concept Drift** | ISO/IEC TS 42119-2:2025 | 3.6 | - |
| **Data Quality** | ISO/IEC 5259-1:2024 | 3.5 | ISO/IEC TS 42119-2:2025 |
| **Data Quality Testing** | ISO/IEC TS 42119-2:2025 | 7.2 | - |
| **Data Representativeness Testing** | ISO/IEC TS 42119-2:2025 | 7.3.3.4 | - |
| **Dataset** | ISO/IEC 22989:2022 | 3.2.5 | ISO/IEC TS 42119-2:2025 |
| **Drift Testing** | ISO/IEC TS 42119-2:2025 | 7.3.4.5 | - |

#### E-L

| Term | Primary Source | Section Reference | Also Referenced In |
|------|---------------|-------------------|-------------------|
| **Equivalence Partitioning** | ISO/IEC 29119-1:2022 | 3.45 | ISO/IEC 29119-4:2021 |
| **Explainability** | ISO/IEC 22989:2022 | 3.5.7 | ISO/IEC TS 42119-2:2025 |
| **Feature** | ISO/IEC 22989:2022 | 3.3.3 (23053) | ISO/IEC TS 42119-2:2025 |
| **Foundation Model** | ISO/IEC 22989:2022/AMD 1:2025 | 3.3.19 | - |
| **Fuzz Testing** | ISO/IEC 29119-1:2022 | 3.52 | ISO/IEC TS 42119-2:2025 |
| **Generative AI** | ISO/IEC 22989:2022/AMD 1:2025 | 3.1.37 | - |
| **Ground Truth** | ISO/IEC 22989:2022 | 3.2.7 | ISO/IEC TS 42119-2:2025 |
| **Hallucination** | ISO/IEC 22989:2022/AMD 1:2025 | 5.20.2 | - |
| **Hyperparameter** | ISO/IEC 22989:2022 | 3.3.4 | ISO/IEC TS 42119-2:2025 |
| **Label** | ISO/IEC 22989:2022 | 3.2.10 | ISO/IEC TS 42119-2:2025 |
| **Label Correctness Testing** | ISO/IEC TS 42119-2:2025 | 7.3.3.8 | - |
| **Large Language Model (LLM)** | ISO/IEC 22989:2022/AMD 1:2025 | 3.3.20 | - |

#### M-R

| Term | Primary Source | Section Reference | Also Referenced In |
|------|---------------|-------------------|-------------------|
| **Machine Learning (ML)** | ISO/IEC 22989:2022 | 3.3.5 | All testing standards |
| **Metamorphic Testing** | ISO/IEC 29119-4:2021 | - | ISO/IEC TS 42119-2:2025 (7.4.2) |
| **ML Model** | ISO/IEC 22989:2022 | 3.3.7 | ISO/IEC TS 42119-2:2025 |
| **Model** | ISO/IEC 22989:2022 | 3.1.23 | All standards |
| **Model Performance Testing** | ISO/IEC TS 42119-2:2025 | 7.3.4.3 | ISO/IEC TS 4213 (metrics) |
| **Model Testing** | ISO/IEC TS 42119-2:2025 | 7.2 | - |
| **Neural Network** | ISO/IEC 22989:2022 | 3.4.8 | ISO/IEC TS 42119-2:2025 |
| **Neuron Coverage** | ISO/IEC TS 42119-2:2025 | 7.4.4.2.2 | - |
| **Parameter** | ISO/IEC 22989:2022 | 3.3.8 | ISO/IEC TS 42119-2:2025 |
| **Prediction** | ISO/IEC 22989:2022 | 3.1.27 | ISO/IEC TS 42119-2:2025 |
| **Prompt** | ISO/IEC 22989:2022/AMD 1:2025 | 3.6.19 | - |
| **RAG System** | ISO/IEC 22989:2022/AMD 1:2025 | 3.1.40 | - |
| **Risk-Based Testing** | ISO/IEC 29119-1:2022 | 3.138 | ISO/IEC TS 42119-2:2025 (5.4) |
| **Robustness** | ISO/IEC 25059:2023 | 5.5 | ISO/IEC TS 42119-2:2025 |

#### S-Z

| Term | Primary Source | Section Reference | Also Referenced In |
|------|---------------|-------------------|-------------------|
| **Static Testing** | ISO/IEC 29119-1:2022 | 3.78 | ISO/IEC TS 42119-2:2025 |
| **Supervised Machine Learning** | ISO/IEC 22989:2022 | 3.3.12 | ISO/IEC TS 42119-2:2025 |
| **Test Case** | ISO/IEC 29119-1:2022 | 3.85 | All testing standards |
| **Test Coverage** | ISO/IEC 29119-1:2022 | 3.89 | ISO/IEC TS 42119-2:2025 |
| **Test Data** | ISO/IEC 22989:2022 | 3.2.14 (ML context) | ISO/IEC 29119-1:2022 (general) |
| **Test Design Technique** | ISO/IEC 29119-1:2022 | 3.94 | ISO/IEC TS 42119-2:2025 |
| **Test Item** | ISO/IEC 29119-1:2022 | 3.104 | ISO/IEC TS 42119-2:2025 |
| **Test Level** | ISO/IEC 29119-1:2022 | 3.108 | ISO/IEC TS 42119-2:2025 (7.2) |
| **Test Oracle** | ISO/IEC 29119-1:2022 | 3.114 | ISO/IEC TS 42119-2:2025 |
| **Testing** | ISO/IEC 29119-1:2022 | 3.131 | All testing standards |
| **Threshold Coverage** | ISO/IEC TS 42119-2:2025 | 7.4.4.2.3 | - |
| **Token** | ISO/IEC 22989:2022/AMD 1:2025 | 3.1.41 | - |
| **Trained Model** | ISO/IEC 22989:2022 | 3.3.14 | ISO/IEC TS 42119-2:2025 |
| **Training** | ISO/IEC 22989:2022 | 3.3.15 | ISO/IEC TS 42119-2:2025 |
| **Training Data** | ISO/IEC 22989:2022 | 3.3.16 | ISO/IEC TS 42119-2:2025 |
| **Transparency** | ISO/IEC 22989:2022 | 3.5.6 | ISO/IEC 25059:2023, TS 42119-2 |
| **Unwanted Bias Testing** | ISO/IEC TS 42119-2:2025 | 7.3.3.9 | ISO/IEC TR 24027, TS 12791 |
| **Validation** | ISO/IEC 25000:2014 | 4.41 | ISO/IEC TS 42119-2:2025 |
| **Validation Data** | ISO/IEC 22989:2022 | 3.2.15 | ISO/IEC TS 42119-2:2025 |
| **Verification** | ISO/IEC 25000:2014 | 4.43 | ISO/IEC TS 42119-2:2025 |

#### Precedence Resolution Notes

**When using terms from multiple standards:**

1. **For AI testing terminology**: ISO/IEC TS 42119-2:2025 takes precedence
2. **For general software testing**: ISO/IEC 29119-1:2022 is authoritative
3. **For AI security**: ISO/IEC DIS 27090 takes precedence
4. **For GenAI concepts**: ISO/IEC 22989:2022/AMD 1:2025 takes precedence
5. **For base AI concepts**: ISO/IEC 22989:2022 is the foundation

**Example conflict resolution:**
- **test data**: Use ISO/IEC TS 42119-2:2025 definition (3.2.14 - "data to assess ML model performance") for AI context; use ISO/IEC 29119-1:2022 for general software testing context
- **validation**: Use ISO/IEC 25000:2014 (4.41) for general meaning; ISO/IEC 22989:2022 (3.2.15) specifically for "validation data" in ML context

**Total Unique Terms**: ~155 terms across 5 ISO standards
**Coverage**: AI concepts, GenAI, AI security, software testing, AI-specific testing

---

## References / 참고 문헌

### International Standards (Normative)
- **ISO/IEC 22989:2022** -- Information technology — Artificial Intelligence — Artificial intelligence concepts and terminology
- **ISO/IEC 22989:2022/AMD 1:2025** -- Amendment 1: Generative AI (Draft Amendment)
- **ISO 31000:2018** -- Risk Management — Guidelines
- **ISO/IEC 27000:2018** -- Information security management systems — Overview and vocabulary
- **ISO/IEC 27042:2015** -- Information technology — Security techniques — Guidelines for the analysis and interpretation of digital evidence
- **ISO/IEC 27043:2015** -- Information technology — Security techniques — Incident investigation principles and processes
- **ISO/IEC 27090** (Draft) -- Cybersecurity — Artificial Intelligence — Guidance for addressing security threats and failures in artificial intelligence systems
- **ISO/IEC 29119-1:2022** -- Software Testing — Part 1: General Concepts
- **ISO/IEC 29119-2:2021** -- Software Testing — Part 2: Test Processes
- **ISO/IEC 29119-3:2021** -- Software Testing — Part 3: Test Documentation
- **ISO/IEC 29119-4:2021** -- Software Testing — Part 4: Test Techniques
- **ISO/IEC 42001:2023** -- AI Management System
- **ISO/IEC 42119-7** (Draft) -- AI-Specific Testing Requirements

### Government and Regulatory Frameworks
- NIST AI Risk Management Framework (AI RMF 1.0), 2023
- US Executive Order 14110 on Safe, Secure, and Trustworthy AI, 2023
- EU AI Act (Regulation (EU) 2024/1689)

### Industry Frameworks
- OWASP Top 10 for Large Language Model Applications, 2025 Edition
- OWASP Top 10 for Agentic Applications, December 2025
- MITRE ATLAS (Adversarial Threat Landscape for AI Systems), October 2025 update
- CSA Agentic AI Red Teaming Guide, 2025

### Academic and Research Sources
- OpenAI, "OpenAI's Approach to External Red Teaming for AI Models and Systems," 2024
- Anthropic, "Challenges in Red Teaming AI Systems," 2024
- MLCommons AI Safety Benchmark v0.5, 2024
- Academic References (arXiv 2024-2026): See individual term definitions in Section 3.8 for specific paper citations

---

*Document Version: 0.5.0*
*Last Updated: 2026-02-12*
*Status: 5-Standard Comprehensive Testing Terminology Framework*
*Phase: 0 -- Terminology Foundation*
*Normative Conformance: ISO/IEC 22989 + 29119-1 + TS 42119-2 + 27090 Compliant*

**Changelog**

*v0.5.0 (2026-02-12) - 5-Standard Integration Release*:
- **MAJOR UPDATE**: Integrated 5 ISO standards into comprehensive AI testing terminology framework
- Added **Section 3.11: AI Testing Terminology** from ISO/IEC TS 42119-2:2025 (46 terms)
  - 2 new test levels: Data Quality Testing, Model Testing
  - 6 specialist data quality test types (governance, provenance, representativeness, sufficiency, label correctness, unwanted bias)
  - 4 specialist AI model test types (model performance, adversarial, drift, explainability)
  - 3 neural network coverage measures (neuron, threshold, sign change)
- Added **Section 3.12: Software Testing Terminology** from ISO/IEC 29119-1:2022 (10 core terms)
  - Core testing concepts: testing, test item, test case, test oracle, test coverage, risk-based testing
  - 5 test design techniques: test design technique, equivalence partitioning, boundary value analysis, fuzz testing, metamorphic testing
- **Updated Section 0: Normative References** with all 5 standards (22989, 22989 AMD1, 27090, 29119-1, 42119-2)
- **Established 5-level precedence hierarchy** for terminology conflict resolution
- **Created 5-standard-extraction-report.md** - comprehensive extraction analysis (191 terms → ~155 unique)
- **Archived v0.4.0** to archive/ directory
- **Total terms**: 50+ → 70+ (with AI testing and software testing additions)
- **ISO conformance**: Multi-standard framework (42119-2 > 29119-1 > 27090 > 22989 AMD1 > 22989)
- **Gap resolution**: Addresses sw-testing-standards-agent gaps G-1, G-3, G-4, G-12, G-13, G-22, G-29/G-30

*v0.4.0 (2026-02-12) - ISO/IEC 22989 Alignment Release*:
- **MAJOR UPDATE**: Aligned with ISO/IEC 22989:2022 + Amendment 1:2025 (Generative AI)
- Added **Section 0: Normative References** - establishes ISO/IEC 22989 as authoritative baseline
- **Restructured Section 1.1**: Split into 1.1.1 (AI System/Model/Application) and 1.1.2 (Generative AI Concepts)
- **Added 12 critical ISO GenAI terms**:
  - AI Model (3.1.36 AMD1) - replaces generic model usage
  - Generative AI (3.1.37 AMD1)
  - Generative AI System (3.1.38 AMD1)
  - Foundation Model (3.3.19 AMD1 + 5.24) - with conceptual detail
  - LLM / Large Language Model (3.3.20 AMD1 + 5.22) - with two-type distinction
  - RAG System (3.1.40 AMD1)
  - Prompt (3.6.19 AMD1) - foundational for attack patterns
  - Token (3.1.41 AMD1)
  - Transformer (algorithm & architecture) (3.4.12, 3.4.13 AMD1)
  - Attention (3.3.18 AMD1)
  - Hallucination (5.20.2 AMD1) - new Section 3.8 AI System Failure Modes
  - **Jailbreak (5.20.3 AMD1)** - ISO NOW OFFICIALLY DEFINES THIS!
- **Updated Section 1.5**: Prompt Injection, Jailbreak, Data Extraction with ISO citations
- **Updated all ISO-sourced terms** with exact section numbers, page references, and checksums
- **Marked custom terms** as "Non-ISO (Custom)" with justification
- **Updated References section** with comprehensive ISO standards list
- **Document header**: Added version, normative reference, and conformance status
- **Total terms**: 37 → 50+ (with reorganization)
- **ISO/IEC 22989 Conformance**: 100% for all ISO-defined AI terms
- **Alignment Status**: 73% of original terms aligned (18 fully, 9 partially), 8 justified custom extensions
- **Deliverable**: Comprehensive ISO 22989 Terminology Alignment Report (800+ lines)

*v0.3.2 (2026-02-12)*:
- Added 3 new terms to Section 3.10: Test Management Terminology
  - Test Design Technique Selection Guide (Phase 3 Activity D-2.7)
  - Interim Status Report (Phase 3 Activity E-7)
  - Traceability Matrix (Phase 3 Activity A-6)
- Total terms: 34 → 37
- Supporting ISO/IEC 29119 conformance improvement to 89%

*v0.3.1 (2026-02-12)*:
- Integrated Attack Pattern IDs into Section 3.8 (11 terms)
  - AP-MOD-012 (H-CoT), AP-MOD-013 (CoT Obfuscation), AP-MOD-014 (Unfaithful CoT)
  - AP-MOD-016 (Sandbagging), AP-MOD-017 (Evaluation Gaming), AP-MOD-018 (Password-Locked Capabilities)
  - AP-MOD-019 (Low-Resource Language Jailbreak)
  - AP-ADV-001 (HPM), AP-ADV-002 (Promptware Kill Chain), AP-ADV-005 (Adversarial Poetry), AP-ADV-006 (Strategy-Space Fuzzing)
- Added cross-references to Attack Pattern Catalog (phase-12-attacks.md)
- Established bidirectional traceability: Terminology ↔ Attack Patterns ↔ Test Scenarios ↔ Test Cases

*v0.3.0 (2026-02-12)*:
- Added Section 3.9: Risk Analysis Terminology (5 terms: Evaluation Context Detection, Promptware, LRM, Cascading Agent Failure, Hybrid AI-Cyber Threat)
- Added Section 3.10: Test Management Terminology (4 terms: Test Design Specification, Coverage Analysis, Residual Risk Summary, Test Readiness Review)
- Added ISO/IEC 27005:2022 and ISO/IEC 31000:2018 to References
- Total terms: 34 (previous 25 + new 9)
- ISO/IEC 29119 Terminology conformance: 100% maintained

*v0.2.1 (2026-02-12)*: Enhanced Section 3.8 definitions (HPM, Adversarial Poetry, Strategy-Space Fuzzing) with concrete examples and specific techniques. Added critical 11th attack pattern term: Unfaithful CoT. Added cross-references for Promptware Kill Chain. Total: 25 new terms (8 process + 6 technique + 11 attack patterns). ISO/IEC 29119 conformance improved from 43% to 100% for Terminology category.

*v0.2.0 (2026-02-10)*: Added Sections 3.6, 3.7, 3.8 with 24 new terms (ISO/IEC 29119 testing terms + AI attack patterns).

*v0.1 (Initial)*: Sections 1-5 with core terminology foundation.

# Phase 0: Common Language and Scope Boundaries
# 제0단계: 공통 언어 및 범위 경계 정의

**AI Red Team International Guideline -- Terminology Foundation**

> This document establishes the shared vocabulary, scope boundaries, and guiding principles
> for the AI Red Team International Guideline. All subsequent phases reference these definitions
> as the authoritative source of terminology.

---

## 1. Core Terminology Definitions / 핵심 용어 정의

### 1.1 AI System vs AI Model vs AI Application

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **AI System** (AI 시스템) | An engineered or machine-based system that, for a given set of objectives, generates outputs such as predictions, recommendations, decisions, or content that can influence physical or virtual environments. Encompasses the model, infrastructure, data pipelines, guardrails, and human-in-the-loop processes. (Ref: OECD, EU AI Act) | 주어진 목표에 대해 예측, 추천, 결정 또는 콘텐츠를 생성하는 엔지니어링 또는 머신 기반 시스템. 모델, 인프라, 데이터 파이프라인, 가드레일, 인간 개입 프로세스를 포괄한다. |
| **AI Model** (AI 모델) | The computational artifact (e.g., neural network weights, architecture, and parameters) that has been trained on data to perform inference. The model is a component within a broader AI system. | 데이터로 학습되어 추론을 수행하는 계산적 산출물(예: 신경망 가중치, 아키텍처, 매개변수). 모델은 더 넓은 AI 시스템의 구성요소이다. |
| **AI Application** (AI 응용 프로그램) | A user-facing product or service that integrates one or more AI models with application logic, user interfaces, APIs, and business rules to deliver a specific capability. | 하나 이상의 AI 모델을 애플리케이션 로직, 사용자 인터페이스, API, 비즈니스 규칙과 통합하여 특정 기능을 제공하는 사용자 대면 제품 또는 서비스. |

> **Why this matters for red teaming**: An attack surface analysis must consider all three layers independently. A model may be robust, but the application wrapping it may introduce vulnerabilities (e.g., insufficient input sanitization). Conversely, a system may have adequate guardrails that mitigate a model-level weakness.

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

### 1.5 Prompt Injection vs Jailbreak vs Data Extraction

| Term | Definition (EN) | 정의 (KR) |
|------|-----------------|-----------|
| **Prompt Injection** (프롬프트 인젝션) | An attack in which crafted input causes an LLM to deviate from its intended instructions. **Direct injection**: the attacker's prompt itself contains the payload. **Indirect injection**: the payload is embedded in external content (websites, documents, tool outputs) consumed by the model. (Ref: OWASP LLM Top 10 2025, LLM01) | 조작된 입력이 LLM을 의도된 지침에서 벗어나게 하는 공격. **직접 인젝션**: 공격자의 프롬프트 자체에 페이로드가 포함. **간접 인젝션**: 모델이 소비하는 외부 콘텐츠(웹사이트, 문서, 도구 출력)에 페이로드가 내장. |
| **Jailbreak** (탈옥) | A specific category of prompt injection aimed at bypassing the model's safety guardrails, alignment constraints, or usage policies to elicit restricted outputs (e.g., harmful content, instructions for illegal activities). Jailbreaking is a subset of prompt injection. | 모델의 안전 가드레일, 정렬 제약 또는 사용 정책을 우회하여 제한된 출력(예: 유해 콘텐츠, 불법 활동 지침)을 유도하는 것을 목표로 하는 프롬프트 인젝션의 특정 범주. 탈옥은 프롬프트 인젝션의 하위 집합이다. |
| **Data Extraction** (데이터 추출) | Techniques that cause the AI system to reveal sensitive information it should not disclose, including: training data memorization, system prompt leakage, PII exposure, confidential business data, or security credentials. (Ref: OWASP LLM Top 10 2025, LLM06) | AI 시스템이 공개해서는 안 되는 민감한 정보를 노출하게 하는 기술: 학습 데이터 기억, 시스템 프롬프트 유출, PII 노출, 기밀 비즈니스 데이터 또는 보안 자격 증명 포함. |

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

## References / 참고 문헌

- NIST AI Risk Management Framework (AI RMF 1.0), 2023
- US Executive Order 14110 on Safe, Secure, and Trustworthy AI, 2023
- OWASP Top 10 for Large Language Model Applications, 2025 Edition
- OWASP Top 10 for Agentic Applications, December 2025
- MITRE ATLAS (Adversarial Threat Landscape for AI Systems), October 2025 update
- EU AI Act (Regulation (EU) 2024/1689)
- ISO/IEC 42001:2023 -- AI Management System
- OpenAI, "OpenAI's Approach to External Red Teaming for AI Models and Systems," 2024
- Anthropic, "Challenges in Red Teaming AI Systems," 2024
- MLCommons AI Safety Benchmark v0.5, 2024

---

*Document Version: 0.1*
*Last Updated: 2026-02-08*
*Status: Draft for Review*
*Phase: 0 -- Terminology Foundation*

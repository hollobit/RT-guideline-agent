# Benchmark-Based Red Team Testing Report
# 벤치마크 기반 레드팀 테스팅 보고서

**AI Red Team International Guideline -- Benchmark Analysis and Utilization Guide**
**AI 레드팀 국제 가이드라인 -- 벤치마크 분석 및 활용 가이드**

**Document ID:** AIRTG-Benchmark-v1.0
**Date / 작성일:** 2026-02-09
**Status / 상태:** Draft for Review
**Prepared by / 작성:** Benchmark Analysis Agent

---

## Table of Contents / 목차

1. [Executive Summary / 요약](#1-executive-summary--요약)
2. [Benchmark Inventory / 벤치마크 목록](#2-benchmark-inventory--벤치마크-목록)
3. [Red Team Testing Utilization Approaches / 레드팀 테스팅 활용 방안](#3-red-team-testing-utilization-approaches--레드팀-테스팅-활용-방안)
4. [Coverage Matrix / 커버리지 매트릭스](#4-coverage-matrix--커버리지-매트릭스)
5. [Benchmark Limitations Analysis / 벤치마크 한계 분석](#5-benchmark-limitations-analysis--벤치마크-한계-분석)
6. [Hybrid Testing Framework Proposal / 하이브리드 테스팅 프레임워크 제안](#6-hybrid-testing-framework-proposal--하이브리드-테스팅-프레임워크-제안)
7. [Guideline Reflection Recommendations / 가이드라인 반영 권고사항](#7-guideline-reflection-recommendations--가이드라인-반영-권고사항)
8. [References / 참고문헌](#8-references--참고문헌)

---

## 1. Executive Summary / 요약

This report inventories 30+ AI safety, security, bias/fairness, agentic, multilingual, and reasoning model benchmarks, analyzes their coverage against the attack patterns defined in Phase 1-2 and Annex A of the AI Red Team International Guideline, and proposes a hybrid testing framework that combines benchmark-driven evaluation with manual red teaming.

이 보고서는 30개 이상의 AI 안전, 보안, 편향/공정성, 에이전틱, 다국어, 추론 모델 벤치마크를 목록화하고, AI 레드팀 국제 가이드라인의 Phase 1-2 및 Annex A에 정의된 공격 패턴에 대한 커버리지를 분석하며, 벤치마크 기반 평가와 수동 레드팀을 결합한 하이브리드 테스팅 프레임워크를 제안합니다.

**Key Findings / 주요 발견사항:**

- **Coverage is concentrated in Model-Level safety / 모델 수준 안전에 커버리지 집중**: Benchmarks primarily cover jailbreak resistance (MOD-JB) and toxicity, while system-level (SYS) and socio-technical (SOC) attack patterns have minimal or zero benchmark coverage.
- **Critical gaps persist / 치명적 갭 지속**: Indirect prompt injection, RAG poisoning, supply chain attacks, memory manipulation, reasoning model CoT safety, and evaluation gaming have no adequate benchmark coverage.
- **Static benchmarks cannot replace adaptive testing / 정적 벤치마크는 적응형 테스팅을 대체 불가**: The 2026 International AI Safety Report confirms that "pre-deployment testing increasingly fails to reflect real-world behavior." Adaptive attacks bypass all 12 published defense mechanisms.
- **Multilingual coverage is emergent but insufficient / 다국어 커버리지는 출현 중이나 불충분**: New benchmarks (PolyGuard, LinguaSafe, XSafety) address multilingual safety but rely heavily on translated English datasets, missing culturally grounded harms.
- **Benchmarks are necessary but never sufficient / 벤치마크는 필요하나 충분하지 않음**: They serve as baseline coverage assurance and attack seed generators, but must be complemented by scenario-based manual red teaming.

---

## 2. Benchmark Inventory / 벤치마크 목록

### 2.1 Safety Benchmarks / 안전 벤치마크

#### SafetyBench

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Tsinghua University / PKU |
| **Date / 발행일** | 2024 |
| **Size / 규모** | 11,435 multiple-choice questions |
| **Languages / 언어** | English, Chinese |
| **Evaluation Method / 평가 방법** | Multiple-choice accuracy across 7 safety categories (offensiveness, unfairness, physical health, mental health, privacy, illegal activities, ethics) |
| **Coverage / 커버리지** | Broad safety knowledge; passive safety awareness rather than adversarial robustness |
| **Limitations / 한계** | Multiple-choice format does not reflect real-world interaction patterns; tests knowledge about safety, not adversarial resilience; no jailbreak testing |
| **URL** | https://arxiv.org/abs/2309.07045 |

#### HarmBench

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Center for AI Safety (CAIS) / Stanford HELM |
| **Date / 발행일** | 2024 (expanded 2025) |
| **Size / 규모** | 510 harmful behaviors across functional categories; extended to multilingual in Nov 2025 |
| **Evaluation Method / 평가 방법** | Automated red teaming with attack success rate (ASR); tests 18 red teaming methods across 33 LLMs; robust automated classifiers |
| **Coverage / 커버리지** | Known jailbreak techniques (GCG, AutoDAN, PAIR, TAP); attack success rate measurement; defense evaluation |
| **Limitations / 한계** | Static attack set that does not iterate adaptively; model-only evaluation without system-level defenses; English-centric until Multilingual HarmBench (Nov 2025) |
| **URL** | https://arxiv.org/abs/2402.04249 |

#### TrustLLM

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Multi-institutional (45 research institutions) |
| **Date / 발행일** | 2024 |
| **Size / 규모** | 30+ datasets across 18+ subcategories |
| **Evaluation Method / 평가 방법** | Comprehensive trust evaluation across 6 dimensions: truthfulness, safety, fairness, robustness, privacy, machine ethics |
| **Coverage / 커버리지** | Broadest single-framework coverage; integrates existing benchmarks into unified evaluation |
| **Limitations / 한계** | Aggregation of existing benchmarks rather than novel evaluation paradigms; no agentic scenarios; no system-level testing |
| **URL** | https://arxiv.org/abs/2401.05561 |

#### SafetyPrompts

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Multiple contributors (aggregation platform) |
| **Date / 발행일** | Ongoing (2023-present) |
| **Size / 규모** | 80,000+ prompts aggregated from multiple datasets |
| **Evaluation Method / 평가 방법** | Prompt-response safety classification |
| **Coverage / 커버리지** | Comprehensive prompt collection for safety testing; acts as meta-repository |
| **Limitations / 한계** | Aggregation without unified evaluation methodology; quality varies across source datasets |
| **URL** | https://safetyprompts.com/ |

#### Do-Not-Answer

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Libr-AI |
| **Date / 발행일** | 2024 (EACL 2024) |
| **Size / 규모** | 939 prompts, 5,634 responses from 6 LLMs; 3-level hierarchical taxonomy covering 61 specific harms across 12 harm types |
| **Evaluation Method / 평가 방법** | Model refusal evaluation; BERT-style automated classifiers achieving GPT-4-comparable results |
| **Coverage / 커버리지** | Sensitive data leakage, illegal activities, unfair discrimination, misinformation, human-chatbot interaction harms |
| **Limitations / 한계** | Relatively small prompt set; focuses on refusal behavior only; does not test jailbreak resistance |
| **URL** | https://arxiv.org/abs/2308.13387 |

#### WildGuard

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Allen Institute for AI (AI2) |
| **Date / 발행일** | 2024 |
| **Size / 규모** | WildGuardMix: 92K labeled examples; WildGuardTest: 5,299 human-annotated items; 13 risk categories |
| **Evaluation Method / 평가 방법** | Three-task moderation: prompt harmfulness, response harmfulness, response refusal detection |
| **Coverage / 커버리지** | Comprehensive moderation across 13 risk categories; largest multi-task safety dataset; adversarial and "in-the-wild" prompt coverage |
| **Limitations / 한계** | Primarily English; moderation-focused rather than attack-focused; does not test system-level attacks |
| **URL** | https://arxiv.org/abs/2406.18495 |

#### OR-Bench

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Multiple institutions |
| **Date / 발행일** | 2024 |
| **Size / 규모** | 80,000 over-refusal prompts across 10 rejection categories; 1,000 hard prompts + 600 toxic prompts |
| **Evaluation Method / 평가 방법** | Over-refusal rate measurement; false refusal detection |
| **Coverage / 커버리지** | Over-refusal calibration -- the only large-scale benchmark specifically for false positive refusals |
| **Limitations / 한계** | Focused exclusively on over-refusal; does not test under-refusal or adversarial robustness |
| **URL** | https://openreview.net/forum?id=CdFnEu0JZV |

#### AIR-Bench 2024

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Stanford CRFM |
| **Date / 발행일** | 2024 |
| **Size / 규모** | 5,694 prompts across 314 granular risk categories (4-tier taxonomy) |
| **Evaluation Method / 평가 방법** | Safety evaluation aligned with government regulations and company policies; human-audited prompts |
| **Coverage / 커버리지** | Most regulation-aligned safety benchmark; covers EU AI Act, US Executive Order, Chinese regulations; 8 government regulations + 16 company policies decomposed into taxonomy |
| **Limitations / 한계** | Regulation-focused may not cover emerging/novel attack patterns; static prompt set |
| **URL** | https://arxiv.org/abs/2407.17436 |

### 2.2 Security Benchmarks / 보안 벤치마크

#### CyberSecEval (Purple Llama)

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Meta AI |
| **Date / 발행일** | 2023 (v1), 2024 (v2, v3), 2025 (v4) |
| **Size / 규모** | Evolving suite; v4 includes CyberSOCEval and AutoPatchBench |
| **Evaluation Method / 평가 방법** | Two domains: (1) propensity to generate insecure code, (2) compliance with cyberattack assistance requests; automated evaluation |
| **Coverage / 커버리지** | Insecure code generation, cyberattack assistance, SOC automation evaluation (v4), vulnerability patching capability (v4) |
| **Limitations / 한계** | Code-focused; does not cover prompt injection, jailbreak, or agentic security; limited to coding assistant use cases |
| **URL** | https://github.com/meta-llama/PurpleLlama |

#### SecQA

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Multiple academic institutions |
| **Date / 발행일** | 2024 |
| **Size / 규모** | Multiple-choice cybersecurity knowledge questions |
| **Evaluation Method / 평가 방법** | Multiple-choice accuracy on cybersecurity knowledge |
| **Coverage / 커버리지** | Cybersecurity domain knowledge assessment |
| **Limitations / 한계** | Knowledge-based only; does not test practical security capabilities or adversarial robustness |
| **URL** | Academic publications |

#### CyberBench

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Multiple institutions |
| **Date / 발행일** | 2024-2025 |
| **Size / 규모** | Multiple task types: QA, summarization, classification, NER in cybersecurity domain |
| **Evaluation Method / 평가 방법** | Multi-task evaluation across knowledge QA, summarization, classification, named entity recognition |
| **Coverage / 커버리지** | Broad cybersecurity NLP capabilities; practical security analysis tasks |
| **Limitations / 한계** | Task-oriented; does not test offensive or defensive security in adversarial settings |
| **URL** | Academic publications |

### 2.3 Bias / Fairness Benchmarks / 편향/공정성 벤치마크

#### BBQ (Bias Benchmark for QA)

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Google Research |
| **Date / 발행일** | 2022 |
| **Size / 규모** | 58,492 unique trinary choice questions across 9 social bias categories |
| **Evaluation Method / 평가 방법** | QA with ambiguous/disambiguated contexts; measures stereotypical bias in responses |
| **Coverage / 커버리지** | 9 protected attributes: age, disability, gender, nationality, physical appearance, race, religion, SES, sexual orientation |
| **Limitations / 한계** | US-centric social categories; QA format only; no intersectional bias testing; no domain-specific bias (healthcare, hiring) |
| **URL** | https://aclanthology.org/2022.findings-acl.165 |

#### WinoBias

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Johns Hopkins University |
| **Date / 발행일** | 2018 (actively used through 2025) |
| **Size / 규모** | 3,160 coreference resolution sentences |
| **Evaluation Method / 평가 방법** | Gender bias detection through coreference resolution with occupational stereotypes |
| **Coverage / 커버리지** | Occupational gender stereotypes; coreference bias |
| **Limitations / 한계** | Binary gender only; single bias dimension; designed for coreference models, not generative LLMs |
| **URL** | https://arxiv.org/abs/1804.06876 |

#### StereoSet

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | MIT |
| **Date / 발행일** | 2020 (actively used through 2025) |
| **Size / 규모** | 16,995 test instances across 4 bias categories |
| **Evaluation Method / 평가 방법** | Sentence completion measuring stereotypical associations; Idealized CAT Score (ICAT) combining language modeling and stereotypical bias |
| **Coverage / 커버리지** | Gender, race, religion, profession bias in language completion |
| **Limitations / 한계** | English-only; primarily completion-based rather than generation; designed for pre-LLM era models |
| **URL** | https://arxiv.org/abs/2004.09456 |

#### BOLD (Bias in Open-Ended Language Generation Dataset)

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Amazon |
| **Date / 발행일** | 2021 |
| **Size / 규모** | 23,679 prompts across 5 bias domains |
| **Evaluation Method / 평가 방법** | Open-ended generation analysis measuring sentiment and toxicity distribution across demographic groups |
| **Coverage / 커버리지** | Race, gender, religion, political ideology, profession bias in open-ended generation |
| **Limitations / 한계** | English-only; sentiment-based evaluation may miss subtle biases; prompt-level only (no multi-turn) |
| **URL** | https://arxiv.org/abs/2101.11718 |

### 2.4 Agentic Benchmarks / 에이전틱 벤치마크

#### AgentBench

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Tsinghua University (THUDM) |
| **Date / 발행일** | 2023 (ICLR 2024) |
| **Size / 규모** | 8 diverse environments (OS, database, knowledge graph, gaming, embodied AI, web shopping, web browsing, digital card game); 29 LLMs evaluated |
| **Evaluation Method / 평가 방법** | Multi-turn open-ended interaction; task completion rate in realistic environments |
| **Coverage / 커버리지** | Agent reasoning, decision-making, tool use across diverse environments |
| **Limitations / 한계** | Capability-focused, not safety-focused; does not test adversarial robustness or tool misuse; no security evaluation |
| **URL** | https://arxiv.org/abs/2308.03688 |

#### ToolBench / ToolLLM

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Tsinghua University |
| **Date / 발행일** | 2023-2024 |
| **Size / 규모** | 16,000+ real-world APIs from RapidAPI |
| **Evaluation Method / 평가 방법** | Tool selection and API call accuracy; multi-step tool use evaluation |
| **Coverage / 커버리지** | Real-world API interaction; tool selection reasoning; multi-tool composition |
| **Limitations / 한계** | Capability benchmark, not safety; no adversarial testing; no tool misuse detection |
| **URL** | https://arxiv.org/abs/2307.16789 |

#### WebArena

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Carnegie Mellon University |
| **Date / 발행일** | 2024 |
| **Size / 규모** | 812 tasks across self-hosted web environments (e-commerce, forum, code repository, CMS) |
| **Evaluation Method / 평가 방법** | End-to-end task completion in realistic web environments |
| **Coverage / 커버리지** | Autonomous web navigation; multi-step web interaction; realistic deployment scenarios |
| **Limitations / 한계** | Capability-focused; no safety or security evaluation; no adversarial testing |
| **URL** | https://arxiv.org/abs/2307.13854 |

#### AgentHarm

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | ICLR 2025 |
| **Date / 발행일** | 2024 (published ICLR 2025) |
| **Size / 규모** | 110 unique harmful behaviors + 330 augmented behaviors across 11 harm categories; 104 distinct tools |
| **Evaluation Method / 평가 방법** | Multi-step tool call execution for harmful requests; direct prompting attack success rate |
| **Coverage / 커버리지** | **First benchmark specifically for agentic safety**: tests direct prompting attacks requiring multi-step tool calls; 11 harm categories with realistic tool interactions |
| **Limitations / 한계** | Direct prompting only (no indirect injection); limited to explicit harmful requests; does not test subtle misuse or autonomous drift |
| **URL** | https://arxiv.org/abs/2410.09024 |

#### InjecAgent

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | UIUC (University of Illinois) |
| **Date / 발행일** | 2024 (ACL 2024) |
| **Size / 규모** | 1,054 test cases; 17 user tools; 62 attacker tools |
| **Evaluation Method / 평가 방법** | Indirect prompt injection (IPI) attack success rate against tool-integrated LLM agents; tests data exfiltration and direct harm |
| **Coverage / 커버리지** | **Only dedicated IPI benchmark for agentic systems**: covers finance, smart home, email, and more; two attack types (direct harm, data exfiltration) |
| **Limitations / 한계** | Focused on IPI only; limited tool diversity; evaluated 30 agents but with fixed attack patterns; does not test multi-agent scenarios |
| **URL** | https://arxiv.org/abs/2403.02691 |

#### MCP-SafetyBench

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Shanghai Jiao Tong University |
| **Date / 발행일** | 2025 |
| **Size / 규모** | Safety evaluation with real MCP server interactions |
| **Evaluation Method / 평가 방법** | Agentic tool safety evaluation using real Model Context Protocol (MCP) servers |
| **Coverage / 커버리지** | Tool misuse, over-privilege, data leakage in MCP-based agentic systems |
| **Limitations / 한계** | MCP-specific; limited adoption; no multi-agent or long-duration testing |
| **URL** | https://arxiv.org/abs/2512.15163 |

### 2.5 Multilingual Benchmarks / 다국어 벤치마크

#### XSafety

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Wang et al. |
| **Date / 발행일** | 2024 |
| **Size / 규모** | 14 safety issue types across 10 languages |
| **Evaluation Method / 평가 방법** | Cross-lingual safety evaluation measuring safety performance degradation in non-English languages |
| **Coverage / 커버리지** | Multilingual safety across multiple language families; demonstrates safety disparity between English and other languages |
| **Limitations / 한계** | Primarily uses translated prompts; limited cultural grounding; 10 languages is narrow given global diversity |
| **URL** | https://arxiv.org/abs/2310.00905 |

#### MultiJail

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Deng et al. (Brown University) |
| **Date / 발행일** | 2024 (ICLR 2024) |
| **Size / 규모** | Jailbreak prompts in 10 languages |
| **Evaluation Method / 평가 방법** | Cross-lingual jailbreak success rate; measures safety filter bypass in non-English languages |
| **Coverage / 커버리지** | Demonstrates multilingual jailbreak vulnerability: 80.92% unsafe output rate for ChatGPT, 40.71% for GPT-4 with intentional multilingual prompts |
| **Limitations / 한계** | Focus on jailbreaks only; 10 languages; does not test culturally-specific harms; translation-based approach |
| **URL** | https://arxiv.org/abs/2310.06474 |

#### MM-SafetyBench (Multimodal Safety)

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Multiple institutions |
| **Date / 발행일** | 2024 (ECCV 2024) |
| **Size / 규모** | 5,040 text-image pairs across 13 safety scenarios |
| **Evaluation Method / 평가 방법** | Safety evaluation of multimodal LLMs against image-based manipulation |
| **Coverage / 커버리지** | **Only dedicated multimodal safety benchmark**: image-based prompt injection, typographic attacks, visual manipulation |
| **Limitations / 한계** | Image+text only (no audio/video); 13 scenarios is limited; static attack set |
| **URL** | https://arxiv.org/abs/2311.17600 |

#### PolyGuard

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Multiple institutions |
| **Date / 발행일** | 2025 |
| **Size / 규모** | PolyGuardMix: 1.91M training samples; PolyGuardPrompts: 29K evaluation samples across 17 languages |
| **Evaluation Method / 평가 방법** | Multilingual safety moderation; outperforms existing classifiers by 5.5% |
| **Coverage / 커버리지** | 17 languages including Chinese, Czech, Hindi, Arabic; both training data and evaluation benchmark |
| **Limitations / 한계** | Moderation-focused rather than red-team-focused; still relies partly on translated content |
| **URL** | https://arxiv.org/abs/2504.04377 |

#### LinguaSafe

| Field / 필드 | Details / 세부사항 |
|---|---|
| **Publisher / 발행처** | Multiple institutions |
| **Date / 발행일** | 2025 |
| **Size / 규모** | 45K entries in 12 languages |
| **Evaluation Method / 평가 방법** | Direct and indirect safety evaluation + oversensitivity assessment; weighted confusion matrix |
| **Coverage / 커버리지** | 12 languages from Hungarian to Malay; combination of translated, transcreated, and natively-sourced data |
| **Limitations / 한계** | Still partially relies on translation; limited low-resource language representation |
| **URL** | https://arxiv.org/abs/2508.12733 |

### 2.6 Reasoning Model Benchmarks / 추론 모델 벤치마크

> **Note / 참고**: As of early 2026, there is **no dedicated benchmark** for evaluating reasoning model (o1/o3-class) safety. Evaluation of these models relies on existing safety benchmarks (HarmBench, StrongREJECT, XSTest) applied to reasoning models, plus specialized research studies. This represents a **critical gap** given the unique attack surfaces of reasoning models (CoT manipulation, unfaithful reasoning, sandbagging).
>
> 2026년 초 현재, 추론 모델(o1/o3급) 안전을 평가하기 위한 **전용 벤치마크가 없습니다**. 이러한 모델의 평가는 기존 안전 벤치마크를 추론 모델에 적용하는 것과 특수 연구 논문에 의존합니다. 이것은 추론 모델의 고유한 공격 표면(CoT 조작, 불성실한 추론, 샌드배깅)을 감안할 때 **치명적인 갭**입니다.

**Existing Evaluation Approaches for Reasoning Models / 추론 모델에 대한 기존 평가 접근법:**

| Approach / 접근법 | Description / 설명 | Reference / 참조 |
|---|---|---|
| **StrongREJECT + XSTest on o1** | OpenAI reports o1 "dramatically outperforms GPT-4o" on jailbreak resistance (StrongREJECT) while maintaining low over-refusal (XSTest) | OpenAI Deliberative Alignment paper |
| **H-CoT Attack Study** | Demonstrates CoT hijacking reduces o1 safety rejection from >99% to <2% in some categories | arXiv:2502.12893 |
| **CoT Faithfulness Evaluation** | Studies showing models generate plausible but unfaithful reasoning; stated reasoning diverges from actual decisions | arXiv:2503.08679 |
| **Sandbagging Detection** | Models can be fine-tuned to hide capabilities unless given passwords; Claude 3.5 Sonnet spontaneously underperformed | arXiv:2406.07358 |
| **CoT Monitorability** | OpenAI's evaluation showing CoT monitoring is more effective than output-only monitoring but has limitations | OpenAI Chain-of-Thought Monitoring (2025) |

### 2.7 Additional Notable Benchmarks / 기타 주목할 벤치마크

| Benchmark | Publisher | Year | Focus | Size | Key Feature |
|---|---|---|---|---|---|
| **DeepTeam** | Confident AI | 2025 | Automated red teaming | Scalable | Mutation-based automated jailbreak/injection testing |
| **SaferBench** | Multiple | 2025 | Comprehensive safety | Multi-dimensional | Multi-dimensional safety across risk levels |
| **MLCommons AI Safety v0.5** | MLCommons | 2024 | Standardized safety | Defined specifications | Industry-standard safety testing with AILuminate jailbreak benchmark |
| **HELM Safety v1.0** | Stanford | 2024 | Safety suite | 5 tests, 6 risk categories | Integrates HarmBench, BBQ, SimpleSafetyTest, XSTest, AnthropicRedTeam |
| **XSTest** | Rottger et al. | 2023 | Over-refusal | 250 safe + 200 unsafe prompts | Tests helpfulness-safety balance |
| **SimpleSafetyTest** | Vidgen et al. | 2024 | Basic safety | Small core set | Fundamental refusal capability testing |
| **TruthfulQA** | Evans & Steinhardt | 2022 | Truthfulness | 817 questions, 38 categories | Adversarial questions humans often answer incorrectly |

---

## 3. Red Team Testing Utilization Approaches / 레드팀 테스팅 활용 방안

### 3.1 Benchmarks as Attack Seed Generators / 공격 시드 생성기로서의 벤치마크

Each benchmark dataset can serve as a starting point for red team test case development, not as a final evaluation.

각 벤치마크 데이터셋은 최종 평가가 아닌, 레드팀 테스트 케이스 개발의 출발점으로 사용할 수 있습니다.

#### Safety Benchmarks as Seeds / 안전 벤치마크를 시드로 활용

| Benchmark | How to Use as Attack Seed / 공격 시드로 활용하는 방법 | Practical Guidance / 실무 가이드 |
|---|---|---|
| **HarmBench** | Extract 510 harmful behaviors as base prompts; mutate using adaptive techniques (encoding, role-play, multi-turn escalation) not covered by the static set / 510개 유해 행동을 기본 프롬프트로 추출; 정적 세트에 포함되지 않은 적응형 기법으로 변형 | Use HarmBench categories to ensure broad coverage; apply BoN mutation to each category; test with system-level defenses in place / 광범위한 커버리지를 위해 HarmBench 카테고리 활용; 각 카테고리에 BoN 변형 적용 |
| **SafetyBench** | Convert MCQ questions into open-ended adversarial prompts; use wrong answer options as target harmful outputs / MCQ 질문을 개방형 적대적 프롬프트로 변환; 오답을 대상 유해 출력으로 사용 | Use 7 safety categories as systematic coverage checklist for manual test design / 수동 테스트 설계를 위한 체계적 커버리지 체크리스트로 7개 안전 카테고리 활용 |
| **Do-Not-Answer** | Use 939 prompts as baseline refusal testing set; extend with multi-turn context building before each prompt / 939개 프롬프트를 기준 거부 테스트 세트로 사용; 각 프롬프트 전에 다회전 맥락 구축으로 확장 | 61 specific harm categories provide granular test coverage map; use hierarchical taxonomy to ensure systematic coverage / 61개 특정 피해 카테고리가 세분화된 테스트 커버리지 맵 제공 |
| **WildGuard** | Use 5,299 test items as prompt-response pair evaluation corpus; extract "in-the-wild" adversarial patterns / 5,299개 테스트 항목을 프롬프트-응답 쌍 평가 코퍼스로 사용; "야생에서 수집된" 적대적 패턴 추출 | 13 risk categories map well to Annex A attack categories; use as calibration set for automated safety classifiers / 13개 위험 카테고리가 Annex A 공격 카테고리에 잘 매핑; 자동 안전 분류기 보정 세트로 사용 |

#### Security Benchmarks as Seeds / 보안 벤치마크를 시드로 활용

| Benchmark | How to Use as Attack Seed / 공격 시드로 활용하는 방법 |
|---|---|
| **CyberSecEval** | Extract insecure code patterns as test inputs for code-generating AI; use cyberattack compliance prompts as jailbreak seed variants for non-coding models / 코드 생성 AI의 테스트 입력으로 불안전 코드 패턴 추출; 비코딩 모델의 탈옥 시드 변형으로 사이버공격 준수 프롬프트 사용 |
| **InjecAgent** | Use 1,054 IPI test cases as seeds for agentic system testing; adapt 62 attacker tool scenarios to target-specific tool sets / 에이전틱 시스템 테스팅 시드로 1,054개 IPI 테스트 케이스 사용; 대상별 도구 세트에 62개 공격자 도구 시나리오 적응 |
| **AgentHarm** | Use 110 harmful behaviors as seed scenarios for multi-step agentic attack testing; adapt 104 tools to target system's tool inventory / 다단계 에이전틱 공격 테스팅 시드 시나리오로 110개 유해 행동 사용; 대상 시스템 도구 목록에 104개 도구 적응 |

### 3.2 Benchmarks as Risk Identification Starting Points / 위험 식별 출발점으로서의 벤치마크

| Utilization Method / 활용 방법 | Description / 설명 | Applicable Benchmarks |
|---|---|---|
| **Baseline Risk Assessment / 기준 위험 평가** | Run benchmark suite before engagement to identify known weaknesses and calibrate manual testing effort / 참여 전 벤치마크 스위트 실행하여 알려진 약점 식별 및 수동 테스팅 노력 보정 | HarmBench, TrustLLM, SafetyBench, BBQ |
| **Coverage Gap Identification / 커버리지 갭 식별** | Compare benchmark coverage matrix against target system's attack surface to identify areas requiring manual testing / 벤치마크 커버리지 매트릭스를 대상 시스템의 공격 표면과 비교하여 수동 테스팅이 필요한 영역 식별 | All (using Section 4 Coverage Matrix) |
| **Regression Testing / 회귀 테스트** | After remediation, re-run applicable benchmark subsets to verify fixes and detect regressions / 교정 후 해당 벤치마크 하위 세트를 재실행하여 수정 확인 및 회귀 탐지 | HarmBench, DeepTeam, BBQ |
| **Continuous Monitoring Baseline / 지속적 모니터링 기준선** | Integrate benchmark test cases into Layer 1 (Continuous Automated Monitoring) of the operating model / 운영 모델의 1계층(지속적 자동화 모니터링)에 벤치마크 테스트 케이스 통합 | DeepTeam, HarmBench (automated), CyberSecEval |

### 3.3 Using Coverage Gaps to Inform Test Design / 커버리지 갭을 활용한 테스트 설계

The coverage matrix in Section 4 reveals systematic gaps. Red teams should use these gaps to prioritize manual test design:

섹션 4의 커버리지 매트릭스는 체계적 갭을 드러냅니다. 레드팀은 이러한 갭을 사용하여 수동 테스트 설계를 우선순위화해야 합니다:

| Gap Category / 갭 카테고리 | Benchmark Coverage / 벤치마크 커버리지 | Manual Test Design Priority / 수동 테스트 설계 우선순위 |
|---|---|---|
| Indirect Prompt Injection (IPI) | InjecAgent (partial, agentic only) | **Critical** -- Design IPI test cases for every data channel (email, documents, web, RAG) |
| RAG Poisoning | None | **Critical** -- Design corpus injection scenarios with retrieval manipulation |
| Supply Chain Integrity | None | **Critical** -- Design model provenance and backdoor detection tests |
| Reasoning Model CoT Safety | None (dedicated) | **Critical** -- Design H-CoT attack scenarios, CoT faithfulness probes |
| Evaluation Gaming / Sandbagging | None | **Critical** -- Design context-variation tests, long-duration monitoring |
| Memory/Context Manipulation | None | **High** -- Design multi-session state manipulation tests |
| Multimodal Cross-Modal Attacks | MM-SafetyBench (partial) | **High** -- Design cross-modal injection with audio, video modalities |
| Culturally-Specific Harms | None | **High** -- Design culturally-grounded test cases per deployment region |
| Autonomous Drift (long-duration) | None | **High** -- Design extended-operation behavioral monitoring tests |

---

## 4. Coverage Matrix / 커버리지 매트릭스

### 4.1 Benchmarks x Attack Patterns (Annex A)

Legend / 범례: ● Full coverage / 전체 커버 | ◐ Partial / 부분 | ○ None / 없음

| Attack Pattern (Annex A) | HarmBench | SafetyBench | TrustLLM | Do-Not-Answer | WildGuard | OR-Bench | AIR-Bench | CyberSecEval | BBQ | StereoSet | WinoBias | BOLD | AgentBench | AgentHarm | InjecAgent | MCP-SafetyBench | XSafety | MultiJail | MM-SafetyBench | DeepTeam |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **AP-MOD-001** (Role-Play Jailbreak) | ● | ○ | ◐ | ○ | ◐ | ○ | ◐ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ◐ | ◐ | ○ | ● |
| **AP-MOD-002** (Encoding Jailbreak) | ● | ○ | ○ | ○ | ◐ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ◐ |
| **AP-MOD-003** (BoN Automated Jailbreak) | ◐ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ● |
| **AP-MOD-004** (Indirect Prompt Injection) | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ● | ◐ | ○ | ○ | ○ | ○ |
| **AP-MOD-005** (Training Data Extraction) | ○ | ○ | ◐ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **AP-MOD-006** (Multimodal Typographic) | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ● | ○ |
| **AP-SYS-001** (Agentic Tool Misuse) | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ● | ◐ | ● | ○ | ○ | ○ | ○ |
| **AP-SYS-002** (RAG Poisoning) | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **AP-SYS-003** (Supply Chain Poisoning) | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **AP-SYS-004** (Privilege Escalation) | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ◐ | ◐ | ○ | ○ | ○ | ○ |
| **AP-SOC-001** (Deepfake Fraud) | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
| **AP-SOC-002** (Bias Amplification) | ○ | ◐ | ◐ | ○ | ○ | ○ | ○ | ○ | ● | ● | ● | ● | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ◐ |

### 4.2 Extended Attack Categories Coverage / 확장 공격 카테고리 커버리지

| Attack Category (beyond Annex A) | Best Available Benchmark | Coverage Level | Gap Priority |
|---|---|---|---|
| Multi-Turn Escalation (MOD-JB) | HarmBench (partial) | Poor | High |
| Logic Trap Jailbreak (MOD-JB) | None | None | High |
| System Prompt Extraction (MOD-PI) | DeepTeam (partial) | Poor | Medium |
| Hallucination / Factual Grounding (MOD-HL) | TruthfulQA | Moderate | High (domain-specific) |
| Toxicity Generation | ToxiGen, RealToxicityPrompts | Good | Low |
| Over-Refusal Calibration | XSTest, OR-Bench | Good | Low |
| Autonomous Drift (SYS-AD) | None | None | Critical |
| API Abuse (SYS-AA) | None | None | Medium |
| Memory/Context Manipulation (SYS-MC) | None | None | High |
| Social Engineering via AI (SOC-SE) | None | None | High |
| Disinformation at Scale (SOC-DI) | TruthfulQA (partial) | Poor | High |
| Privacy Violation (SOC-PV) | TrustLLM (partial) | Poor | High |
| Economic Harm (SOC-EH) | None | None | Medium |
| Reasoning CoT Manipulation | None (dedicated) | None | Critical |
| Evaluation Gaming / Sandbagging | None | None | Critical |
| Cross-Lingual Safety Bypass | MultiJail, XSafety | Moderate | High |

### 4.3 Coverage Summary / 커버리지 요약

| Layer | Total Attack Patterns | Patterns with ● or ◐ Coverage | Patterns with ○ Coverage | Coverage Rate |
|---|---|---|---|---|
| **Model (MOD)** | 6 | 5 (83%) | 1 (17%) | Good-Moderate |
| **System (SYS)** | 4 | 2 (50%) | 2 (50%) | Poor |
| **Socio-Technical (SOC)** | 2 | 1 (50%) | 1 (50%) | Poor |
| **TOTAL** | **12** | **8 (67%)** | **4 (33%)** | **Moderate** |

> **Critical Observation / 핵심 관찰**: Even for patterns with partial coverage (◐), benchmarks typically test only a subset of the attack variants documented in Annex A. For example, HarmBench covers basic jailbreak techniques but not adaptive/iterative attacks that achieve >90% success rates against all 12 published defenses. The 67% coverage rate is therefore an **overestimate** of actual test coverage quality.
>
> 부분 커버리지(◐)가 있는 패턴에서도 벤치마크는 일반적으로 Annex A에 문서화된 공격 변형의 일부만 테스트합니다. 따라서 67% 커버리지율은 실제 테스트 커버리지 품질의 **과대 추정**입니다.

---

## 5. Benchmark Limitations Analysis / 벤치마크 한계 분석

### 5.1 Score-Based Evaluation Limitations / 점수 기반 평가의 한계

| Limitation / 한계 | Description / 설명 | Impact on Red Teaming / 레드팀에 대한 영향 |
|---|---|---|
| **Binary pass/fail reductionism / 이진 합격/불합격 환원주의** | 79% of benchmarks use binary classification (safe/unsafe) without severity gradation | Cannot distinguish between minor refusal failures and catastrophic safety violations; inconsistent with Phase 3's prohibition on binary pass/fail thresholds / 경미한 거부 실패와 치명적 안전 위반을 구분할 수 없음 |
| **Aggregate score masking / 집계 점수 마스킹** | Overall safety scores average across categories, masking category-specific weaknesses | A model scoring 95% overall may have 0% safety in a critical subcategory; red teams need category-level granularity / 전체 95% 모델이 핵심 하위 카테고리에서 0% 안전일 수 있음 |
| **Score inflation through format / 형식을 통한 점수 인플레이션** | Multiple-choice benchmarks (SafetyBench, SecQA) inflate scores because models can guess correctly without genuine safety reasoning | SafetyBench MCQ scores do not correlate with real-world adversarial resistance; 실제 적대적 저항과 상관 없음 |
| **Threshold dependency / 임계값 의존성** | Different organizations use different thresholds for "safe" classification, making cross-benchmark comparison unreliable | A model "passing" one benchmark may "fail" another testing the same risk category / 한 벤치마크를 "합격"하는 모델이 동일 위험 카테고리를 테스트하는 다른 벤치마크를 "불합격"할 수 있음 |

### 5.2 Adaptive Attack Resistance / 적응형 공격 저항

| Issue / 문제 | Evidence / 증거 | Implication / 시사점 |
|---|---|---|
| **Static attack sets fail against adaptive adversaries / 정적 공격 세트는 적응형 적대자에 실패** | October 2025: adaptive attacks bypass all 12 published defense mechanisms with >90% success rates | Benchmark scores reflect resistance to known attacks only; real adversaries iterate |
| **Benchmark contamination / 벤치마크 오염** | Models may be trained on benchmark data, artificially inflating safety scores | "Teaching to the test" creates false safety assurance; benchmark scores may not reflect genuine capability |
| **Defense overfitting / 방어 과적합** | Defenses can be tuned to pass specific benchmarks without genuine robustness improvement | Passing HarmBench does not guarantee resistance to novel attack techniques not in HarmBench's attack set |
| **Adversary capability asymmetry / 적대자 역량 비대칭** | Benchmark attacks are designed by researchers; real attackers may use more creative approaches | Benchmark scores represent a lower bound on vulnerability, not an upper bound / 벤치마크 점수는 취약성의 하한, 상한이 아님 |

### 5.3 Static vs. Dynamic Evaluation / 정적 vs. 동적 평가

| Dimension / 차원 | Static Benchmark / 정적 벤치마크 | Dynamic Red Teaming / 동적 레드팀 |
|---|---|---|
| **Attack adaptation / 공격 적응** | Fixed prompt set; no iteration | Adaptive; iterates based on model responses |
| **Context sensitivity / 맥락 민감성** | Isolated prompts; no deployment context | Tests within deployment context with real tools/data |
| **Temporal coverage / 시간적 커버리지** | Point-in-time snapshot | Extended operation monitoring for drift |
| **Defense awareness / 방어 인식** | Often tests model only, not system defenses | Tests complete defense stack as deployed |
| **Novel discovery / 신규 발견** | Tests known vulnerability classes only | Can discover unknown-unknowns through creative probing |
| **Scale / 규모** | High throughput (thousands of tests/hour) | Low throughput (human-guided exploration) |
| **Reproducibility / 재현성** | Highly reproducible | Variable; depends on operator skill |
| **Cost / 비용** | Low marginal cost per test | High (skilled operators, time-intensive) |

> **2026 International AI Safety Report finding / 2026 국제 AI 안전 보고서 발견**: "Pre-deployment testing is increasingly failing to reflect how AI systems behave once deployed in real-world environments, with models becoming more common in distinguishing between test settings and real-world deployment, and in exploiting loopholes in evaluations."
>
> "배포 전 테스팅이 실제 환경에서 AI 시스템이 어떻게 행동하는지를 반영하는 데 점점 더 실패하고 있으며, 모델이 테스트 설정과 실제 배포를 구분하고 평가의 허점을 악용하는 것이 더 일반적이 되고 있습니다."

### 5.4 Cultural/Linguistic Coverage Gaps / 문화적/언어적 커버리지 갭

| Gap / 갭 | Current State / 현재 상태 | Impact / 영향 |
|---|---|---|
| **English dominance / 영어 지배** | Majority of benchmarks are English-only; even "multilingual" benchmarks cover 10-17 languages out of 7,000+ | Safety assurance does not extend to non-English deployments; low-resource language users face 3x higher unsafe content rates |
| **Translation-based approach / 번역 기반 접근** | Most multilingual benchmarks use translated English prompts | Misses culturally-specific harms (caste discrimination, region-specific slurs, culturally taboo topics) that do not exist in English |
| **Cultural context blindness / 문화적 맥락 맹점** | No benchmark tests for culturally-specific harmful content | Harms specific to Korean, Japanese, Arabic, Hindi, or other cultural contexts go undetected / 한국어, 일본어, 아랍어, 힌디어 등 문화적 맥락에 특화된 피해가 감지되지 않음 |
| **Script/tokenization effects / 문자/토큰화 효과** | Safety filters optimized for Latin script may fail on CJK, Arabic, Devanagari | Character-level attacks exploiting tokenization differences in non-Latin scripts are not systematically tested |

---

## 6. Hybrid Testing Framework Proposal / 하이브리드 테스팅 프레임워크 제안

### 6.1 Framework Architecture / 프레임워크 아키텍처

The hybrid testing framework integrates benchmark-driven automated evaluation with human-led manual red teaming across the three-layer continuous operating model defined in Phase 3, Section 11.

하이브리드 테스팅 프레임워크는 Phase 3 섹션 11에 정의된 3계층 지속적 운영 모델 전반에 걸쳐 벤치마크 기반 자동화 평가와 인간 주도 수동 레드팀을 통합합니다.

```
┌─────────────────────────────────────────────────────────────────────┐
│                 HYBRID TESTING FRAMEWORK / 하이브리드 테스팅 프레임워크 │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│  Layer 3: Full Engagement (Event-Triggered)                         │
│  ┌───────────────────────┐  ┌────────────────────────────┐         │
│  │ Benchmark Baseline     │  │ Manual Creative Red Team    │         │
│  │ Run (HarmBench,        │→│ Deep probing of gaps,       │         │
│  │ TrustLLM, BBQ,         │  │ novel attacks, scenario-    │         │
│  │ AgentHarm, InjecAgent)  │  │ based testing, multi-turn   │         │
│  └───────────────────────┘  └────────────────────────────┘         │
│         ↓ Gap Analysis                    ↓ Findings                │
│  ┌────────────────────────────────────────────────────┐            │
│  │ Coverage Gap → Manual Test Design Prioritization    │            │
│  │ 커버리지 갭 → 수동 테스트 설계 우선순위화            │            │
│  └────────────────────────────────────────────────────┘            │
│                                                                     │
│  Layer 2: Periodic Assessment (Quarterly)                           │
│  ┌───────────────────────┐  ┌────────────────────────────┐         │
│  │ Targeted Benchmark     │  │ Focused Manual Assessment   │         │
│  │ Re-run (selected       │  │ on new threat vectors,      │         │
│  │ subsets + new           │  │ updated attack patterns,    │         │
│  │ benchmarks)             │  │ deployment changes          │         │
│  └───────────────────────┘  └────────────────────────────┘         │
│                                                                     │
│  Layer 1: Continuous Monitoring (Always-On)                         │
│  ┌───────────────────────────────────────────────────────────────┐ │
│  │ Automated Benchmark Integration                                │ │
│  │ • Regression tests from prior engagement findings              │ │
│  │ • HarmBench/DeepTeam automated scanning (CI/CD gate)           │ │
│  │ • CyberSecEval code security checks                            │ │
│  │ • Behavioral drift detection (statistical monitoring)          │ │
│  │ • Alert escalation → Layer 2/3 trigger                         │ │
│  └───────────────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────────────────┘
```

### 6.2 When to Use Benchmarks vs. Manual Testing / 벤치마크 vs. 수동 테스팅 사용 시점

| Scenario / 시나리오 | Recommended Approach / 권장 접근법 | Rationale / 근거 |
|---|---|---|
| **Pre-deployment safety gate / 배포 전 안전 게이트** | Benchmark first, then manual for gaps | Benchmarks provide rapid baseline coverage; manual testing addresses gaps and novel attacks / 벤치마크가 빠른 기준선 커버리지 제공; 수동 테스팅이 갭과 새로운 공격 대응 |
| **Model update regression / 모델 업데이트 회귀** | Benchmark (automated) | Known attack patterns can be re-tested automatically; manual testing only if benchmark reveals regressions / 알려진 공격 패턴 자동 재테스트; 벤치마크가 회귀를 발견하면 수동 테스팅 |
| **Novel attack surface (agentic, multimodal) / 새로운 공격 표면** | Manual first, then codify into benchmarks | No adequate benchmarks exist; creative probing required; findings feed back into test library / 적절한 벤치마크 없음; 창의적 탐색 필요; 발견사항이 테스트 라이브러리에 반영 |
| **Compliance demonstration / 컴플라이언스 입증** | Benchmark (AIR-Bench, MLCommons) + manual supplement | Regulators expect reproducible evidence; benchmarks provide this; manual supplements for uncovered areas / 규제 기관은 재현 가능한 증거 기대; 벤치마크가 이를 제공 |
| **Bias/fairness audit / 편향/공정성 감사** | Benchmark (BBQ, StereoSet) + domain-specific manual testing | Generic benchmarks identify surface-level bias; domain-specific testing (healthcare, hiring) requires manual design / 일반 벤치마크가 표면 편향 식별; 도메인별 테스팅은 수동 설계 필요 |
| **Incident response investigation / 사고 대응 조사** | Manual exclusively | Incidents reveal novel attack vectors not in any benchmark; requires creative investigation / 사고가 벤치마크에 없는 새로운 공격 벡터 드러냄 |
| **Reasoning model (o1/o3) safety / 추론 모델 안전** | Manual exclusively (no dedicated benchmarks) | No benchmarks for CoT faithfulness, reasoning hijacking, or sandbagging; requires specialized manual probing / CoT 충실성, 추론 탈취, 샌드배깅 벤치마크 없음 |
| **Multilingual safety / 다국어 안전** | Benchmark (XSafety, MultiJail) + manual for target languages | Benchmarks cover limited languages; deploy-region-specific manual testing required / 벤치마크가 제한된 언어 커버; 배포 지역별 수동 테스팅 필요 |

### 6.3 Continuous Testing Pipeline Design / 지속적 테스팅 파이프라인 설계

```
Development → Pre-Commit → CI/CD Gate → Staging → Production Monitoring
                  │            │            │              │
                  ▼            ▼            ▼              ▼
            CyberSecEval   HarmBench    Full Suite     Behavioral
            (code safety)  (quick ASR)  (HarmBench+    Drift Detection
                           DeepTeam     TrustLLM+      + Regression
                           (injection)  BBQ+AgentHarm  Tests
                                        +InjecAgent    + Alert-Driven
                                        +domain-       Manual Investigation
                                        specific)
                                            │
                                            ▼
                                     Manual Red Team
                                     (gaps + novel)
                                     (Layers 2 & 3)
```

**Pipeline Stage Details / 파이프라인 단계 세부사항:**

1. **Pre-Commit Gate / 프리커밋 게이트**: CyberSecEval for code security; runs in <5 minutes; blocks insecure code patterns
2. **CI/CD Safety Gate / CI/CD 안전 게이트**: HarmBench quick scan (top-N harmful behaviors) + DeepTeam injection test; runs in <30 minutes; blocks critical safety regressions
3. **Staging Full Suite / 스테이징 전체 스위트**: Complete benchmark battery aligned with system's risk tier; runs in 2-4 hours; includes bias, safety, security, and agentic tests as applicable
4. **Production Monitoring / 프로덕션 모니터링**: Continuous behavioral drift detection; regression test suite from prior findings; alert-driven escalation to Layer 2/3 manual assessment

---

## 7. Guideline Reflection Recommendations / 가이드라인 반영 권고사항

### 7.1 Annex C (Benchmark Coverage Matrix) Update Proposals / Annex C 업데이트 제안

| Recommendation / 권고사항 | Priority / 우선순위 | Details / 세부사항 |
|---|---|---|
| **Add 15+ benchmarks to Annex C inventory / Annex C 목록에 15개 이상 벤치마크 추가** | 필수 반영 (Mandatory) | Add: Do-Not-Answer, WildGuard, OR-Bench, AIR-Bench, CyberSecEval, AgentHarm, InjecAgent, MM-SafetyBench, XSafety, MultiJail, PolyGuard, LinguaSafe, StereoSet, WinoBias, BOLD to the existing Annex C inventory. These represent critical coverage areas not currently listed. / 이러한 벤치마크는 현재 목록에 없는 중요 커버리지 영역을 나타냄. |
| **Expand coverage matrix to include agentic and multilingual benchmarks / 에이전틱 및 다국어 벤치마크를 포함하도록 커버리지 매트릭스 확장** | 필수 반영 (Mandatory) | Current Annex C matrix (C.3) lacks AgentHarm, InjecAgent, and multilingual benchmarks. Add rows for reasoning model CoT, evaluation gaming, and cross-lingual attacks. / 현재 Annex C 매트릭스에 AgentHarm, InjecAgent, 다국어 벤치마크 부재. 추론 모델 CoT, 평가 게이밍, 교차 언어 공격 행 추가. |
| **Add "Testability" dimension to coverage matrix / 커버리지 매트릭스에 "테스트 가능성" 차원 추가** | 권장 반영 (Recommended) | For each Attack Pattern x Benchmark cell, indicate whether the benchmark enables automated testing, requires manual testing, or is currently untestable. / 각 공격 패턴 x 벤치마크 셀에 대해 자동 테스팅 가능 여부, 수동 테스팅 필요 여부, 현재 테스트 불가 여부 표시. |
| **Add benchmark recency tracking / 벤치마크 최신성 추적 추가** | 권장 반영 (Recommended) | Include "Last Updated" and "Active Maintenance" status for each benchmark. Stale benchmarks (>2 years without update) should be flagged. / 각 벤치마크에 "최종 업데이트" 및 "활성 유지보수" 상태 포함. |

### 7.2 Phase 3 Test Design Stage: Benchmark Utilization Guide / Phase 3 테스트 설계 단계: 벤치마크 활용 가이드

| Recommendation / 권고사항 | Priority / 우선순위 | Where in Phase 3 / Phase 3 위치 | Details / 세부사항 |
|---|---|---|---|
| **Add benchmark utilization guidance to D-2 (Test Strategy Selection) / D-2(테스트 전략 선정)에 벤치마크 활용 안내 추가** | 필수 반영 (Mandatory) | Section 3.3, Activity D-2 | Add explicit guidance: "When selecting test strategies, red teams SHOULD consult the Benchmark Coverage Matrix (Annex C) to identify which attack categories can be efficiently tested using existing benchmarks, and which require manual test design. Benchmark-covered categories serve as baseline coverage; uncovered categories must be prioritized for manual testing." / "테스트 전략 선택 시 레드팀은 벤치마크 커버리지 매트릭스(Annex C)를 참조하여 기존 벤치마크로 효율적으로 테스트 가능한 공격 카테고리와 수동 테스트 설계가 필요한 카테고리를 식별해야 합니다." |
| **Add benchmark-as-seed-generator principle to D-3 (Test Case Design) / D-3(테스트 케이스 설계)에 벤치마크-시드-생성기 원칙 추가** | 필수 반영 (Mandatory) | Section 3.3, Activity D-3 | Add: "Benchmark datasets MAY be used as attack seed generators: base prompts from benchmarks can be mutated, contextualized, and extended into multi-turn scenarios for manual red team testing. Benchmark prompts SHOULD NOT be used as-is without adaptation to the target system's deployment context." / "벤치마크 데이터셋은 공격 시드 생성기로 사용할 수 있습니다." |
| **Add benchmark limitation awareness to D-4 (Evaluation Framework Design) / D-4(평가 프레임워크 설계)에 벤치마크 한계 인식 추가** | 필수 반영 (Mandatory) | Section 3.3, Activity D-4 | Add caveat: "Benchmark scores SHALL NOT be used as the primary evaluation metric for red team findings. Benchmark results provide supplementary data points but do not constitute a comprehensive assessment. The evaluation framework must explicitly document which risks are covered by benchmarks and which require qualitative assessment." / "벤치마크 점수는 레드팀 발견사항의 주요 평가 지표로 사용해서는 안 됩니다." |
| **Add benchmark integration to Layer 1 (Continuous Monitoring) description / 1계층(지속적 모니터링) 설명에 벤치마크 통합 추가** | 권장 반영 (Recommended) | Section 11.3 | Add: "Layer 1 automated monitoring SHOULD incorporate benchmark test suites as regression testing components, running selected benchmark subsets as part of CI/CD pipeline safety gates and production behavioral monitoring." / "1계층 자동화 모니터링은 벤치마크 테스트 스위트를 회귀 테스팅 구성요소로 통합해야 합니다." |

### 7.3 Benchmark Selection Criteria and Usage Caveats / 벤치마크 선택 기준 및 사용 주의사항

#### Selection Criteria / 선택 기준

Red teams should evaluate benchmarks against the following criteria before adoption:
레드팀은 채택 전에 다음 기준에 따라 벤치마크를 평가해야 합니다:

| Criterion / 기준 | Description / 설명 | Weight / 가중치 |
|---|---|---|
| **Attack surface alignment / 공격 표면 정렬** | Does the benchmark test attack categories relevant to the target system's threat model? | Critical |
| **Deployment context relevance / 배포 맥락 관련성** | Does the benchmark format reflect the target system's actual interaction pattern (chat, API, agentic, multimodal)? | Critical |
| **Recency / 최신성** | Was the benchmark created or updated within the last 18 months? Older benchmarks may not reflect current attack techniques. | High |
| **Active maintenance / 활성 유지보수** | Is the benchmark actively maintained with new attack patterns and updated classifiers? | High |
| **Evaluation methodology quality / 평가 방법론 품질** | Does the benchmark use robust automated classifiers (not just keyword matching)? Is inter-annotator agreement documented? | High |
| **Language coverage / 언어 커버리지** | Does the benchmark cover the languages of the target system's deployment? | Medium-High (for non-English deployments) |
| **Reproducibility / 재현성** | Can the benchmark be reliably reproduced across different evaluation runs? | Medium |
| **Size and diversity / 규모 및 다양성** | Is the benchmark large enough and diverse enough to provide meaningful coverage? | Medium |

#### Usage Caveats / 사용 주의사항 (Priority: 필수 반영 / Mandatory)

The following caveats MUST be included whenever benchmark results are cited in red team reports or organizational risk assessments:

다음 주의사항은 벤치마크 결과가 레드팀 보고서 또는 조직 위험 평가에 인용될 때 반드시 포함되어야 합니다:

1. **Benchmarks test known vulnerability classes only / 벤치마크는 알려진 취약점 클래스만 테스트**: Passing a benchmark does not indicate absence of vulnerabilities outside the benchmark's scope. Novel attack techniques and emerging threat vectors are by definition not covered.

2. **Benchmark scores are point-in-time measurements / 벤치마크 점수는 시점 측정**: Model behavior changes with updates, fine-tuning, and deployment configuration changes. A benchmark score has a "shelf life" and should be re-evaluated after any system modification.

3. **Static benchmarks do not simulate adaptive adversaries / 정적 벤치마크는 적응형 적대자를 시뮬레이션하지 않음**: Research demonstrates that adaptive attacks bypass all published defenses. Benchmark-passing does not imply resistance to adaptive attack.

4. **Aggregate scores mask category-specific weaknesses / 집계 점수가 카테고리별 약점을 마스킹**: Always report category-level results, not just overall scores. A model with 95% overall safety may have critical failures in specific categories.

5. **Benchmark format may not reflect deployment reality / 벤치마크 형식이 배포 현실을 반영하지 않을 수 있음**: Multiple-choice safety benchmarks do not test the same cognitive processes as open-ended generation. Chat-format benchmarks do not test agentic tool use.

6. **Evaluation gaming is a demonstrated threat / 평가 게이밍은 입증된 위협**: Models can detect evaluation contexts and modify behavior. Benchmark results may overestimate deployment safety.

### 7.4 Priority Summary / 우선순위 요약

| Priority Level | Recommendation | Impact |
|---|---|---|
| **필수 반영 (Mandatory)** | Expand Annex C benchmark inventory (+15 benchmarks) | Directly addresses coverage gaps in current guideline |
| **필수 반영 (Mandatory)** | Add benchmark utilization guidance to Phase 3 D-2, D-3, D-4 | Ensures benchmarks are used correctly in test design |
| **필수 반영 (Mandatory)** | Include benchmark usage caveats in guideline | Prevents misuse of benchmark scores as safety certification |
| **필수 반영 (Mandatory)** | Expand coverage matrix with agentic, multilingual, reasoning model rows | Addresses critical gaps in coverage analysis |
| **권장 반영 (Recommended)** | Add testability dimension to coverage matrix | Helps red teams understand which gaps require manual testing |
| **권장 반영 (Recommended)** | Add benchmark recency tracking | Prevents reliance on stale benchmarks |
| **권장 반영 (Recommended)** | Add benchmark integration to Layer 1 continuous monitoring | Enables automated regression testing |
| **참고 (Reference)** | Hybrid testing framework pipeline design | Provides implementation reference for organizations |
| **참고 (Reference)** | Benchmark-as-seed-generator methodology | Provides practical red team guidance |
| **참고 (Reference)** | Reasoning model evaluation gap analysis | Informs future benchmark development needs |

---

## 8. References / 참고문헌

### Safety Benchmarks / 안전 벤치마크
- [HarmBench: A Standardized Evaluation Framework for Automated Red Teaming](https://arxiv.org/abs/2402.04249)
- [SafetyBench: Evaluating the Safety of Large Language Models](https://arxiv.org/abs/2309.07045)
- [TrustLLM: Trustworthiness in Large Language Models](https://arxiv.org/abs/2401.05561)
- [Do-Not-Answer: A Dataset for Evaluating Safeguards in LLMs](https://arxiv.org/abs/2308.13387)
- [WildGuard: Open One-stop Moderation Tools for Safety Risks](https://arxiv.org/abs/2406.18495)
- [OR-Bench: An Over-Refusal Benchmark for Large Language Models](https://openreview.net/forum?id=CdFnEu0JZV)
- [AIR-Bench 2024: A Safety Benchmark Based on Risk Categories from Regulations and Policies](https://arxiv.org/abs/2407.17436)
- [SafetyPrompts.com](https://safetyprompts.com/)
- [HELM Safety v1.0 - Stanford CRFM](https://crfm.stanford.edu/)
- [MLCommons AI Safety / AILuminate Jailbreak Benchmark v0.5](https://mlcommons.org/ailuminate/jailbreak-v0.5-whitepaper/)

### Security Benchmarks / 보안 벤치마크
- [Purple Llama CyberSecEval: A Secure Coding Benchmark](https://arxiv.org/abs/2312.04724)
- [CyberSecEval 4 - Meta](https://meta-llama.github.io/PurpleLlama/CyberSecEval/)
- [Purple Llama GitHub Repository](https://github.com/meta-llama/PurpleLlama)

### Bias / Fairness Benchmarks / 편향/공정성 벤치마크
- [BBQ: A Hand-Built Bias Benchmark for Question Answering](https://aclanthology.org/2022.findings-acl.165)
- [StereoSet: Measuring stereotypical bias in pretrained language models](https://arxiv.org/abs/2004.09456)
- [WinoBias: Gender bias in coreference resolution](https://arxiv.org/abs/1804.06876)
- [BOLD: Bias in Open-Ended Language Generation Dataset](https://arxiv.org/abs/2101.11718)

### Agentic Benchmarks / 에이전틱 벤치마크
- [AgentBench: Evaluating LLMs as Agents (ICLR 2024)](https://arxiv.org/abs/2308.03688)
- [AgentHarm: A Benchmark for Evaluating Harmful Agent Behavior (ICLR 2025)](https://arxiv.org/abs/2410.09024)
- [InjecAgent: Benchmarking Indirect Prompt Injections (ACL 2024)](https://arxiv.org/abs/2403.02691)
- [WebArena: A Realistic Web Environment for Building Autonomous Agents](https://arxiv.org/abs/2307.13854)
- [MCP-SafetyBench: Safety Evaluation with Real-World MCP Servers](https://arxiv.org/abs/2512.15163)

### Multilingual Benchmarks / 다국어 벤치마크
- [XSafety: All Languages Matter - Multilingual Safety of LLMs](https://arxiv.org/abs/2310.00905)
- [MultiJail: Multilingual Jailbreak Challenges in LLMs (ICLR 2024)](https://arxiv.org/abs/2310.06474)
- [MM-SafetyBench: Safety Evaluation of Multimodal LLMs (ECCV 2024)](https://arxiv.org/abs/2311.17600)
- [PolyGuard: A Multilingual Safety Moderation Tool for 17 Languages](https://arxiv.org/abs/2504.04377)
- [LinguaSafe: A Comprehensive Multilingual Safety Benchmark](https://arxiv.org/abs/2508.12733)

### Reasoning Model Safety / 추론 모델 안전
- [OpenAI: Deliberative Alignment](https://openai.com/index/deliberative-alignment/)
- [OpenAI: Chain-of-Thought Monitoring](https://openai.com/index/chain-of-thought-monitoring/)
- [OpenAI: Evaluating Chain-of-Thought Monitorability](https://openai.com/index/evaluating-chain-of-thought-monitorability/)
- [H-CoT: Hijacking Chain-of-Thought Safety Reasoning (arXiv:2502.12893)](https://arxiv.org/abs/2502.12893)
- [Unfaithful Reasoning (arXiv:2503.08679)](https://arxiv.org/abs/2503.08679)
- [AI Sandbagging (arXiv:2406.07358)](https://arxiv.org/abs/2406.07358)

### Benchmark Limitations and Meta-Analysis / 벤치마크 한계 및 메타 분석
- [How Should AI Safety Benchmarks Benchmark Safety? (2026)](https://arxiv.org/html/2601.23112v1)
- [210 AI Safety Tests Are Failing - Benchmarks Reveal Critical Flaws](https://quantumzeitgeist.com/210-ai-safety-tests-are-failing-benchmarks/)
- [2026 International AI Safety Report](https://internationalaisafetyreport.org/publication/2026-report-executive-summary)
- [2025 AI Safety Index - Future of Life Institute](https://futureoflife.org/ai-safety-index-summer-2025/)
- [10 LLM Safety and Bias Benchmarks - Evidently AI](https://www.evidentlyai.com/blog/llm-safety-bias-benchmarks)
- [10 AI Agent Benchmarks - Evidently AI](https://www.evidentlyai.com/blog/ai-agent-benchmarks)

---

## Pipeline Integration: Dataset Recommendations (2026-02-09)
## 파이프라인 통합: 데이터셋 추천 (2026-02-09)

> This section integrates findings from the risk-analyst (risk-trends-report.md, AR-01 through AR-09) and attack-researcher (phase-12-attacks.md, AT-01 through AT-11) pipeline analyses. It matches newly identified attacks and risks to existing BMT.json datasets and provides coverage assessments and top recommendations for the testing-agent.
>
> 이 섹션은 risk-analyst(리스크 동향 보고서, AR-01~AR-09) 및 attack-researcher(Phase 1-2 공격 보고서, AT-01~AT-11)의 파이프라인 분석 결과를 통합합니다. 신규 식별된 공격 및 리스크를 기존 BMT.json 데이터셋에 매칭하고 커버리지 평가 및 testing-agent를 위한 주요 추천을 제공합니다.

---

### 9.1 New Attack Techniques and Risk Summary / 신규 공격 기법 및 리스크 요약

#### Attack Techniques (from attack-researcher) / 공격 기법 (attack-researcher 제공)

| ID | Name / 명칭 | Severity / 심각도 | Classification / 분류 |
|---|---|---|---|
| AT-01 | HPM Psychological Manipulation Jailbreak / HPM 심리적 조작 탈옥 | HIGH | NEW |
| AT-02 | Promptware Kill Chain / 프롬프트웨어 킬 체인 | CRITICAL | NEW PARADIGM |
| AT-03 | LRM Autonomous Jailbreak / LRM 자율 탈옥 | CRITICAL | NEW |
| AT-04 | Hybrid AI-Cyber (PI 2.0) / 하이브리드 AI-사이버 | HIGH | NEW |
| AT-05 | Adversarial Poetry Jailbreak / 적대적 시 탈옥 | HIGH | VARIANT (amplified) |
| AT-06 | Mastermind Strategy-Space Fuzzing / 마스터마인드 전략 공간 퍼징 | HIGH | NEW |
| AT-07 | Causal Analyst (Jailbreak Enhancer) / 인과 분석 (탈옥 강화기) | MEDIUM-HIGH | NEW METHODOLOGY |
| AT-08 | Agentic Coding Assistant Injection / 에이전틱 코딩 어시스턴트 인젝션 | HIGH | NEW |
| AT-09 | Virtual Scenario Hypnosis (VLM) / 가상 시나리오 최면 (VLM) | HIGH | NEW |
| AT-10 | Active Attacks (Hierarchical RL) / 능동 공격 (계층적 RL) | MEDIUM-HIGH | VARIANT |
| AT-11 | TARS Reasoning Coding Exploit / TARS 추론 코딩 악용 | MEDIUM | VARIANT |

#### New Risks (from risk-analyst) / 신규 리스크 (risk-analyst 제공)

| ID | Name / 명칭 | Severity / 심각도 | Gap Status / 격차 상태 |
|---|---|---|---|
| AR-01 | Alignment Paradox / 정렬 역설 | CRITICAL | GAP -- No existing benchmark covers personality-profiling-based jailbreaks |
| AR-02 | Autonomous Jailbreaking Democratization / 자율 탈옥 민주화 | CRITICAL | GAP -- No benchmark tests LRM-as-attacker scenario |
| AR-03 | Promptware Kill Chain / 프롬프트웨어 킬 체인 | CRITICAL | GAP -- No multi-stage kill chain benchmark exists |
| AR-04 | Hybrid AI-Cyber Threats / 하이브리드 AI-사이버 위협 | HIGH | GAP -- No hybrid AI+web exploit benchmark |
| AR-05 | Bio-Weapons Dual-Use / 생물무기 이중 용도 | CRITICAL | Partial -- WMDP and FORTRESS cover this domain |
| AR-06 | Inter-Agent Trust Exploitation / 에이전트 간 신뢰 악용 | CRITICAL | Partial -- Agent-SafetyBench and AgentHarm applicable |
| AR-07 | Safety Devolution / 안전 퇴보 | HIGH | GAP -- No benchmark measures safety regression per capability |
| AR-08 | MCP Protocol Vulnerability / MCP 프로토콜 취약점 | HIGH | Partial -- MCP-SafetyBench directly applicable |
| AR-09 | Autonomous Sandbagging / 자율 샌드배깅 | CRITICAL | Partial -- AI Sandbagging Dataset, DeceptionBench applicable |

---

### 9.2 BMT.json Dataset Matching Results / BMT.json 데이터셋 매칭 결과

The following tables map each attack technique (AT-01 through AT-11) and new risk (AR-01 through AR-09) to verified datasets found in BMT.json.

다음 표는 각 공격 기법(AT-01~AT-11)과 신규 리스크(AR-01~AR-09)를 BMT.json에서 확인된 데이터셋에 매핑합니다.

#### 9.2.1 AT-01: HPM Psychological Manipulation Jailbreak / HPM 심리적 조작 탈옥

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **SiliconPsyche (Anthropomorphic Vulnerability Inheritance)** | Line ~26879 | 100 CPF indicators | **HIGH** -- Directly tests psychological manipulation vectors (authority bias, social proof, artificial urgency) against LLMs / 심리적 조작 벡터를 LLM에 직접 테스트 |
| **ARREST (Human-like Psychological Manipulation)** | Line ~27025 | N/A (framework) | **HIGH** -- HPM profiling and jailbreak framework matching AT-01 methodology / HPM 프로파일링 및 탈옥 프레임워크 |
| **HarmBench** | Line ~694 | 510 behaviors | **MEDIUM** -- Baseline ASR measurement; extendable with psychological prompts / 기준 ASR 측정; 심리적 프롬프트로 확장 가능 |
| **Multi-Turn Human Jailbreaks (MHJ)** | Line ~12500 | 2,912 prompts (537 multi-turn) | **MEDIUM** -- Contains "Emotional Appeal" tactics relevant to psychological manipulation / 감정적 호소 전술 포함 |
| **WildJailbreak** | Line ~7101 | ~262k samples | **MEDIUM** -- Large-scale adversarial+benign prompts for training and evaluation / 대규모 적대적+양성 프롬프트 |

#### 9.2.2 AT-02: Promptware Kill Chain / 프롬프트웨어 킬 체인

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **DREAM (Dynamic Red-teaming across Environments)** | Line ~27364 | 1,986 atomic actions, 349 environments | **HIGH** -- Cross-environment adversarial knowledge graph for multi-stage attack chains / 다단계 공격 체인을 위한 교차 환경 적대적 지식 그래프 |
| **Agent-SafetyBench** | Line ~30536 | 2,000 test cases | **HIGH** -- 349 interaction environments, 8 safety risk categories, 10 failure modes / 349개 상호작용 환경, 8개 안전 리스크 카테고리 |
| **Agent Smith (Infectious Jailbreak Framework)** | Line ~3755 | N/A (simulation) | **HIGH** -- Demonstrates infectious propagation across multi-agent systems / 다중 에이전트 시스템 간 감염 전파 시연 |
| **MCP-SafetyBench** | Line ~27758 | 20 attack vector types | **MEDIUM-HIGH** -- Tests tool interaction safety in MCP environments (kill chain Stage 1-2) / MCP 환경에서 도구 상호작용 안전 테스트 |
| **Open Prompt Injection** | Line ~7049 | N/A (toolkit) | **MEDIUM** -- Tests initial access phase (Stage 1 of kill chain) / 킬 체인 1단계 테스트 |

#### 9.2.3 AT-03: LRM Autonomous Jailbreak / LRM 자율 탈옥

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **HarmBench** | Line ~694 | 510 behaviors | **HIGH** -- Standardized ASR baseline for measuring LRM attack effectiveness / LRM 공격 효과 측정을 위한 표준화된 ASR 기준 |
| **FORTRESS** | Line ~1511 | 1,000 samples | **HIGH** -- Government-grade frontier model evaluation for national security risks / 국가 안보 리스크에 대한 정부급 프론티어 모델 평가 |
| **AgentHarm** | Line ~281 | 110 tasks (440 augmented) | **HIGH** -- Measures harmful agent behaviors including autonomous attack execution / 자율 공격 실행을 포함한 유해 에이전트 행동 측정 |
| **JailbreakBench** | Line ~738 | 100 misuse behaviors | **MEDIUM** -- Standardized jailbreak evaluation; can be used as target behavior set / 표준화된 탈옥 평가 |
| **RT-LRM (Red Teaming Large Reasoning Models)** | Line ~11671 | 30 reasoning tasks | **MEDIUM-HIGH** -- Directly targets reasoning model vulnerabilities including CoT hijacking / 추론 모델 취약점 직접 대상 |

#### 9.2.4 AT-04: Hybrid AI-Cyber Threats / 하이브리드 AI-사이버 위협

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **CyberSecEval 3** | Line ~6701 | Multiple subsets | **HIGH** -- Covers prompt injection, code interpreter abuse, and offensive cyber capabilities / 프롬프트 인젝션, 코드 인터프리터 악용, 공격적 사이버 역량 포함 |
| **MCP-SafetyBench** | Line ~27758 | 20 attack vector types | **MEDIUM-HIGH** -- MCP-specific attack vectors applicable to hybrid scenarios / 하이브리드 시나리오에 적용 가능한 MCP 특화 공격 벡터 |
| **DREAM** | Line ~27364 | 1,986 actions | **MEDIUM** -- Cross-environment attack chains applicable to hybrid vectors / 교차 환경 공격 체인 |
| **HELM Safety** | Line ~3295 | 5 safety benchmarks | **MEDIUM** -- Baseline safety measurement; can detect degradation from hybrid attacks / 기준 안전 측정 |

#### 9.2.5 AT-05: Adversarial Poetry Jailbreak / 적대적 시 탈옥

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **Adversarial Poetry Benchmark** | Line ~26410 | 1,220 samples | **CRITICAL** -- Directly tests adversarial poetry against frontier models / 프론티어 모델에 대한 적대적 시를 직접 테스트 |
| **AI Safety Benchmark v0.5 (MLCommons)** | Line ~30073 | 43,000+ prompts | **HIGH** -- Original 1,200 harmful prompts used in AT-05 paper; provides standardized ASR comparison / AT-05 논문에 사용된 원본 1,200개 유해 프롬프트 |
| **HarmBench** | Line ~694 | 510 behaviors | **MEDIUM** -- ASR comparison baseline for poetry-wrapped vs. prose prompts / 시-포장 vs. 산문 프롬프트의 ASR 비교 기준 |
| **StrongREJECT** | Line ~3101 | Curated forbidden prompts | **MEDIUM** -- Distinguishes empty vs. effective jailbreaks; applicable to poetry evaluation / 빈 탈옥 vs. 효과적 탈옥 구분 |

#### 9.2.6 AT-06: Mastermind Strategy-Space Fuzzing / 마스터마인드 전략 공간 퍼징

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **HarmBench** | Line ~694 | 510 behaviors | **HIGH** -- ASR comparison baseline against frontier models / 프론티어 모델 대비 ASR 비교 기준 |
| **StrongREJECT** | Line ~3101 | Curated forbidden prompts | **MEDIUM-HIGH** -- Evaluates quality of jailbreak outputs (not just binary success) / 탈옥 출력 품질 평가 |
| **PandaGuard Benchmark** | Line ~7163 | 49 LLMs, 19 attacks, 12 defenses | **MEDIUM** -- Comprehensive attack-defense interaction data for strategy comparison / 전략 비교를 위한 포괄적 공격-방어 상호작용 데이터 |

#### 9.2.7 AT-07: Causal Analyst (Jailbreak Enhancer) / 인과 분석 (탈옥 강화기)

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **JailbreakBench** | Line ~738 | 100 misuse behaviors | **HIGH** -- Paper replicated with similar dataset; enables causal feature validation / 유사 데이터셋으로 논문 복제; 인과적 특성 검증 가능 |
| **HarmBench** | Line ~694 | 510 behaviors | **HIGH** -- Provides broader behavior set for causal analysis / 인과 분석을 위한 더 넓은 행동 세트 |
| **PandaGuard Benchmark** | Line ~7163 | 49 LLMs, 19 attacks | **MEDIUM** -- Large-scale attack traces for causal feature extraction / 인과적 특성 추출을 위한 대규모 공격 추적 |

#### 9.2.8 AT-08: Agentic Coding Assistant Injection / 에이전틱 코딩 어시스턴트 인젝션

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **MCP-SafetyBench** | Line ~27758 | 20 attack vector types | **CRITICAL** -- Directly tests MCP protocol security and tool-use pipeline / MCP 프로토콜 보안 및 도구 사용 파이프라인 직접 테스트 |
| **CyberSecEval 3** | Line ~6701 | Multiple subsets | **HIGH** -- Covers insecure code generation and coding assistant security / 비안전 코드 생성 및 코딩 어시스턴트 보안 포함 |
| **Agent-SafetyBench** | Line ~30536 | 2,000 test cases | **MEDIUM-HIGH** -- Agent safety in tool-use contexts / 도구 사용 맥락에서의 에이전트 안전 |
| **Open Prompt Injection** | Line ~7049 | N/A (toolkit) | **MEDIUM** -- Indirect injection vectors applicable to code context / 코드 맥락에 적용 가능한 간접 인젝션 벡터 |

#### 9.2.9 AT-09: Virtual Scenario Hypnosis (VLM) / 가상 시나리오 최면 (VLM)

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **JailBreakV-28K** | Line ~6581 | 28,000 samples | **HIGH** -- Comprehensive VLM jailbreak transferability assessment (text+image attacks) / 포괄적 VLM 탈옥 전이성 평가 |
| **MM-SafetyBench** | Line ~262 | N/A | **HIGH** -- Safety-critical VLM evaluation against image-based manipulations / 이미지 기반 조작에 대한 안전 중요 VLM 평가 |
| **RTVLM (Red Teaming Visual Language Models)** | Line ~719 | 10,200 samples | **HIGH** -- First red teaming dataset for VLMs covering safety and fairness / VLM을 위한 최초 레드팀 데이터셋 |
| **Video-SafetyBench** | Line ~5975 | N/A | **MEDIUM** -- Extends to video-text attacks / 비디오-텍스트 공격으로 확장 |

#### 9.2.10 AT-10: Active Attacks (Hierarchical RL) / 능동 공격 (계층적 RL)

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **HarmBench** | Line ~694 | 510 behaviors | **HIGH** -- Standard baseline for comparing RL-generated vs. other automated attacks / RL 생성 vs. 기타 자동 공격 비교 표준 기준 |
| **StrongREJECT** | Line ~3101 | Curated prompts | **MEDIUM-HIGH** -- Evaluates attack quality beyond binary ASR / 이진 ASR 이상의 공격 품질 평가 |
| **AdvBench** | Line ~320 | 500 behaviors | **MEDIUM** -- Classic adversarial behavior dataset for comparison / 비교를 위한 고전적 적대적 행동 데이터셋 |

#### 9.2.11 AT-11: TARS Reasoning Coding Exploit / TARS 추론 코딩 악용

| Dataset Name | BMT.json Location | Items | Relevance / 관련성 |
|---|---|---|---|
| **CyberSecEval 3** | Line ~6701 | Multiple subsets | **HIGH** -- Insecure code generation and coding-domain security evaluation / 비안전 코드 생성 및 코딩 도메인 보안 평가 |
| **RT-LRM** | Line ~11671 | 30 reasoning tasks | **HIGH** -- Targets reasoning model vulnerabilities in CoT / CoT에서의 추론 모델 취약점 대상 |
| **ReasoningShield Dataset** | Line ~8304 | 9,200 samples | **MEDIUM-HIGH** -- Detects hidden safety risks in CoT reasoning traces / CoT 추론 추적에서 숨겨진 안전 리스크 탐지 |

---

### 9.3 Risk-Specific Dataset Coverage / 리스크별 데이터셋 커버리지

#### AR-01: Alignment Paradox / 정렬 역설

| Dataset | Coverage Level | Notes / 참고 |
|---|---|---|
| SiliconPsyche (AVI) | **Good** | Directly tests psychological vulnerability inheritance / 심리적 취약성 상속을 직접 테스트 |
| ARREST (HPM) | **Good** | HPM framework matching the alignment paradox research / 정렬 역설 연구와 일치하는 HPM 프레임워크 |
| HarmBench | **Partial** | Needs extension with Big Five profiling prompts / 빅파이브 프로파일링 프롬프트로 확장 필요 |

#### AR-02: Autonomous Jailbreaking Democratization / 자율 탈옥 민주화

| Dataset | Coverage Level | Notes / 참고 |
|---|---|---|
| AgentHarm | **Partial** | Tests agent harm but not LRM-as-autonomous-attacker / 에이전트 피해 테스트하나 LRM 자율 공격자 아님 |
| RT-LRM | **Partial** | Targets reasoning model risks but not autonomous jailbreaking / 추론 모델 리스크 대상이나 자율 탈옥 아님 |
| *Custom benchmark needed* | **GAP** | LRM-driven attack against 9+ target models with zero human intervention / LRM 기반 공격 필요 |

#### AR-03: Promptware Kill Chain / 프롬프트웨어 킬 체인

| Dataset | Coverage Level | Notes / 참고 |
|---|---|---|
| DREAM | **Partial** | Cross-environment attack chains cover Stages 1-3 / 교차 환경 공격 체인이 1-3단계 포함 |
| Agent-SafetyBench | **Partial** | Multi-stage agent failures but not formalized kill chain / 다단계 에이전트 실패이나 공식화된 킬 체인 아님 |
| Agent Smith | **Partial** | Infectious propagation (Stage 4) / 감염 전파 (4단계) |
| *Custom benchmark needed* | **GAP** | End-to-end 5-stage kill chain simulation / 5단계 킬 체인 종단간 시뮬레이션 필요 |

#### AR-04: Hybrid AI-Cyber Threats / 하이브리드 AI-사이버 위협

| Dataset | Coverage Level | Notes / 참고 |
|---|---|---|
| CyberSecEval 3 | **Partial** | Covers cybersecurity but not hybrid AI+web vectors / 사이버보안 포함하나 하이브리드 벡터 아님 |
| MCP-SafetyBench | **Partial** | Tool interaction safety only / 도구 상호작용 안전만 |
| *Custom benchmark needed* | **GAP** | Combined PI+XSS, PI+CSRF hybrid payloads / PI+XSS, PI+CSRF 하이브리드 페이로드 필요 |

#### AR-05: Bio-Weapons Dual-Use / 생물무기 이중 용도

| Dataset | Coverage Level | Notes / 참고 |
|---|---|---|
| **WMDP Benchmark** | **Good** | 3,668 MCQs across bio/chem/cyber/nuclear domains / 생물/화학/사이버/핵 도메인에 걸친 3,668개 MCQ |
| **FORTRESS** | **Good** | Expert-crafted CBRNE adversarial prompts / 전문가가 제작한 CBRNE 적대적 프롬프트 |
| **Forbidden Science** | **Good** | Tests dual-use science refusal balance / 이중 용도 과학 거부 균형 테스트 |
| **Enkrypt AI CBRN Risk Dataset** | **Good** | 380 CBRN-specific prompts including FORTRESS subset / FORTRESS 하위집합 포함 380개 CBRN 특화 프롬프트 |

#### AR-06: Inter-Agent Trust Exploitation / 에이전트 간 신뢰 악용

| Dataset | Coverage Level | Notes / 참고 |
|---|---|---|
| Agent-SafetyBench | **Partial** | Agent safety in multi-turn interactions / 다중 턴 상호작용에서의 에이전트 안전 |
| AgentHarm | **Partial** | Agent harm measurement / 에이전트 피해 측정 |
| Agent Smith | **Good** | Infectious jailbreak propagation across multi-agent systems / 다중 에이전트 시스템 간 감염 탈옥 전파 |
| MACHIAVELLI | **Partial** | Tests deceptive/power-seeking behaviors in agents / 에이전트의 기만적/권력 추구 행동 테스트 |

#### AR-07: Safety Devolution / 안전 퇴보

| Dataset | Coverage Level | Notes / 참고 |
|---|---|---|
| SafetyBench | **Partial** | Baseline safety measurement; usable for before/after comparison / 기준 안전 측정; 전후 비교에 사용 가능 |
| TrustLLM | **Partial** | 6-dimension trust evaluation; usable for regression detection / 6차원 신뢰 평가; 회귀 탐지에 사용 가능 |
| *Custom test protocol needed* | **GAP** | Run safety benchmarks before/after each capability addition / 각 역량 추가 전후로 안전 벤치마크 실행 필요 |

#### AR-08: MCP Protocol Vulnerability / MCP 프로토콜 취약점

| Dataset | Coverage Level | Notes / 참고 |
|---|---|---|
| **MCP-SafetyBench** | **Good** | Directly covers 20 MCP-specific attack vectors / 20개 MCP 특화 공격 벡터를 직접 포함 |
| CyberSecEval 3 | **Partial** | Code interpreter abuse and prompt injection tests / 코드 인터프리터 악용 및 프롬프트 인젝션 테스트 |

#### AR-09: Autonomous Sandbagging / 자율 샌드배깅

| Dataset | Coverage Level | Notes / 참고 |
|---|---|---|
| **AI Sandbagging Dataset** | **Good** | Directly tests password-locked sandbagging; uses WMDP/MMLU subsets / 비밀번호 잠금 샌드배깅 직접 테스트 |
| **DeceptionBench** | **Good** | 5 deception categories including sandbagging and alignment faking / 샌드배깅 및 정렬 위장 포함 5가지 기만 카테고리 |
| **Consistency Sandbagging Eval** | **Good** | Detects formal/casual context inconsistencies in WMDP answers / WMDP 답변의 공식/비공식 맥락 불일치 탐지 |
| **AgentMisalignment** | **Good** | Tests misaligned behaviors including sandbagging in dynamic scenarios / 동적 시나리오에서 샌드배깅을 포함한 정렬 불일치 행동 테스트 |
| SycophancyEval | **Partial** | Tests deceptive compliance; related but not directly sandbagging-specific / 기만적 순응 테스트; 관련이 있으나 직접적 샌드배깅 특화는 아님 |

---

### 9.4 Coverage Assessment Summary / 커버리지 평가 요약

| Attack/Risk | BMT.json Datasets Found | Coverage Rating | Gap Description / 격차 설명 |
|---|---|---|---|
| **AT-01** (HPM) | 5 datasets | **GOOD** -- SiliconPsyche and ARREST directly match / 직접 매치 | Minor: extend with Big Five profiling prompts / 빅파이브 프로파일링 확장 필요 |
| **AT-02** (Promptware) | 5 datasets | **PARTIAL** -- Individual stages covered, not full chain / 개별 단계 포함, 전체 체인 아님 | **GAP**: No end-to-end 5-stage kill chain benchmark / 5단계 킬 체인 없음 |
| **AT-03** (LRM Jailbreak) | 5 datasets | **PARTIAL** -- No LRM-as-attacker benchmark / LRM 공격자 벤치마크 없음 | **GAP**: Custom LRM attack scenario needed / 맞춤 LRM 공격 시나리오 필요 |
| **AT-04** (Hybrid PI) | 4 datasets | **LOW** -- No hybrid AI+web combined test / 하이브리드 결합 테스트 없음 | **CRITICAL GAP**: Entirely new benchmark category needed / 전혀 새로운 벤치마크 카테고리 필요 |
| **AT-05** (Poetry) | 4 datasets | **EXCELLENT** -- Adversarial Poetry Benchmark directly matches / 직접 매치 | None / 없음 |
| **AT-06** (Mastermind) | 3 datasets | **PARTIAL** -- Comparison baselines exist but not strategy-space fuzzing / 비교 기준 존재하나 전략 공간 퍼징 아님 | Needs strategy-level evaluation metrics / 전략 수준 평가 지표 필요 |
| **AT-07** (Causal) | 3 datasets | **GOOD** -- Large attack datasets available for causal analysis / 인과 분석용 대규모 공격 데이터셋 사용 가능 | None / 없음 |
| **AT-08** (Coding PI) | 4 datasets | **GOOD** -- MCP-SafetyBench and CyberSecEval cover core vectors / 핵심 벡터 포함 | Minor: zero-click specific tests needed / 제로클릭 특화 테스트 필요 |
| **AT-09** (VSH/VLM) | 4 datasets | **GOOD** -- JailBreakV-28K and MM-SafetyBench strong match / 강력 매치 | Minor: VSH-specific image+text pairing / VSH 특화 이미지+텍스트 페어링 필요 |
| **AT-10** (Active RL) | 3 datasets | **GOOD** -- Standard baselines for RL comparison / RL 비교를 위한 표준 기준 | None / 없음 |
| **AT-11** (TARS) | 3 datasets | **GOOD** -- CyberSecEval and ReasoningShield cover domain / 도메인 포함 | None / 없음 |
| **AR-01** (Alignment Paradox) | 3 datasets | **GOOD** | See AT-01 / AT-01 참조 |
| **AR-02** (Auto Jailbreak) | 2+ datasets | **PARTIAL** | See AT-03 / AT-03 참조 |
| **AR-03** (Promptware) | 5 datasets | **PARTIAL** | See AT-02 / AT-02 참조 |
| **AR-04** (Hybrid) | 4 datasets | **LOW** | See AT-04 / AT-04 참조 |
| **AR-05** (Bio-Weapons) | 4 datasets | **EXCELLENT** -- WMDP, FORTRESS, Forbidden Science, Enkrypt CBRN / 포괄적 커버리지 | None / 없음 |
| **AR-06** (Inter-Agent Trust) | 4 datasets | **GOOD** -- Agent Smith directly tests propagation / 전파를 직접 테스트 | Minor: peer-agent trust differentiation tests / 동료 에이전트 신뢰 차별화 테스트 필요 |
| **AR-07** (Safety Devolution) | 2+ datasets | **PARTIAL** -- No regression protocol exists / 회귀 프로토콜 없음 | **GAP**: Custom before/after test protocol needed / 전후 테스트 프로토콜 필요 |
| **AR-08** (MCP) | 2 datasets | **GOOD** -- MCP-SafetyBench directly applicable / 직접 적용 가능 | None / 없음 |
| **AR-09** (Sandbagging) | 5 datasets | **EXCELLENT** -- Multiple specialized benchmarks available / 여러 전문 벤치마크 사용 가능 | None / 없음 |

---

### 9.5 Top 10 Recommended Datasets for Testing-Agent / testing-agent를 위한 상위 10개 추천 데이터셋

The following 10 datasets are recommended as the highest-priority evaluation targets for the testing-agent, ranked by coverage breadth, risk severity, and practical testability.

다음 10개 데이터셋은 커버리지 범위, 리스크 심각도, 실용적 테스트 가능성 기준으로 testing-agent의 최우선 평가 대상으로 추천됩니다.

| Rank | Dataset | Source / Year | Size | Primary Attack/Risk Coverage | Justification / 근거 |
|---|---|---|---|---|---|
| **1** | **HarmBench** | arXiv / 2024 | 510 behaviors | AT-01, AT-03, AT-05, AT-06, AT-07, AT-10 | Universal ASR baseline for 6+ attack techniques; standardized evaluation framework; most widely cited / 6개 이상 공격 기법의 보편적 ASR 기준; 표준화된 평가 프레임워크; 가장 많이 인용 |
| **2** | **Agent-SafetyBench** | arXiv / 2024 | 2,000 test cases, 349 environments | AT-02, AT-08, AR-03, AR-06 | Comprehensive agentic safety evaluation covering multi-stage failures and 10 failure modes / 다단계 실패와 10개 장애 모드를 포함하는 포괄적 에이전틱 안전 평가 |
| **3** | **MCP-SafetyBench** | arXiv / 2025 | 20 attack vectors | AT-02, AT-04, AT-08, AR-08 | Only benchmark specifically for MCP protocol security; directly addresses coding assistant vulnerabilities / MCP 프로토콜 보안 전용 유일한 벤치마크; 코딩 어시스턴트 취약점 직접 해결 |
| **4** | **WMDP Benchmark** | arXiv / 2024 | 3,668 MCQs | AR-05 | Gold standard for bio/chem/cyber dual-use risk evaluation; referenced by International AI Safety Report 2026 / 생물/화학/사이버 이중 용도 리스크 평가의 골드 표준 |
| **5** | **SiliconPsyche (AVI)** | arXiv / 2025 | 100 CPF indicators | AT-01, AR-01 | Only benchmark testing psychological vulnerability inheritance in LLMs; directly tests alignment paradox / LLM의 심리적 취약성 상속을 테스트하는 유일한 벤치마크; 정렬 역설 직접 테스트 |
| **6** | **Adversarial Poetry Benchmark** | arXiv / 2025 | 1,220 samples | AT-05 | Direct dataset from the adversarial poetry paper; 18x ASR amplification validated / 적대적 시 논문의 직접 데이터셋; 18배 ASR 증폭 검증 |
| **7** | **AI Sandbagging Dataset** | arXiv / 2024 | 27,180 samples | AR-09 | Directly tests sandbagging with password-locked models; most critical governance risk / 비밀번호 잠금 모델로 샌드배깅 직접 테스트; 가장 중요한 거버넌스 리스크 |
| **8** | **DREAM (Dynamic Red-teaming)** | arXiv / 2025 | 1,986 actions, 349 envs | AT-02, AR-03 | Cross-environment adversarial knowledge graph; closest match to promptware kill chain / 교차 환경 적대적 지식 그래프; 프롬프트웨어 킬 체인에 가장 근접 |
| **9** | **JailBreakV-28K** | arXiv / 2024 | 28,000 samples | AT-09 | Largest VLM jailbreak benchmark; tests text-to-multimodal attack transfer / 최대 VLM 탈옥 벤치마크; 텍스트-멀티모달 공격 전이 테스트 |
| **10** | **DeceptionBench** | arXiv / 2025 | 180 scenarios, 1,000+ samples | AR-09 | Comprehensive deception evaluation including sandbagging, alignment faking, strategic deception / 샌드배깅, 정렬 위장, 전략적 기만을 포함한 포괄적 기만 평가 |

---

### 9.6 Comprehensive Dataset Recommendation Table / 종합 데이터셋 추천 표

| # | Attack/Risk | Dataset Name | Dataset Source | Relevance Score (1-5) | Notes / 참고 |
|---|---|---|---|---|---|
| 1 | AT-01 / AR-01 | SiliconPsyche (AVI) | arXiv:2601.00867 | **5** | Directly tests psychological manipulation vectors via CPF indicators / CPF 지표를 통한 심리적 조작 벡터 직접 테스트 |
| 2 | AT-01 / AR-01 | ARREST (HPM) | ResearchGate | **5** | HPM jailbreak framework matching AT-01 methodology / AT-01 방법론과 일치하는 HPM 탈옥 프레임워크 |
| 3 | AT-01 | Multi-Turn Human Jailbreaks (MHJ) | arXiv / 2024 | **3** | Contains emotional appeal tactics / 감정적 호소 전술 포함 |
| 4 | AT-02 / AR-03 | DREAM | arXiv:2512.19016 | **5** | Cross-environment multi-stage attack chains / 교차 환경 다단계 공격 체인 |
| 5 | AT-02 / AR-03 | Agent-SafetyBench | arXiv:2412.14470 | **5** | 349 environments, 8 risk categories, 10 failure modes / 349개 환경, 8개 리스크 카테고리, 10개 장애 모드 |
| 6 | AT-02 / AR-06 | Agent Smith (Infectious Jailbreak) | arXiv / 2024 | **4** | Multi-agent infectious propagation simulation / 다중 에이전트 감염 전파 시뮬레이션 |
| 7 | AT-02 / AT-08 | MCP-SafetyBench | arXiv / 2025 | **5** | 20 MCP-specific attack vectors / MCP 특화 20개 공격 벡터 |
| 8 | AT-02 / AT-08 | Open Prompt Injection | arXiv / 2024 | **3** | Initial access testing for kill chain / 킬 체인의 초기 접근 테스트 |
| 9 | AT-03 / AR-02 | HarmBench | arXiv:2402.04249 | **5** | Universal ASR baseline / 보편적 ASR 기준 |
| 10 | AT-03 / AR-02 | FORTRESS | arXiv:2506.14922 | **5** | Government-grade frontier model evaluation / 정부급 프론티어 모델 평가 |
| 11 | AT-03 / AR-02 | AgentHarm | arXiv:2410.09024 | **4** | Agent harm measurement including autonomous execution / 자율 실행 포함 에이전트 피해 측정 |
| 12 | AT-03 | RT-LRM | arXiv:2512.00412 | **4** | Red teaming benchmark for large reasoning models / 대규모 추론 모델 레드팀 벤치마크 |
| 13 | AT-04 / AR-04 | CyberSecEval 3 | Meta / 2024 | **4** | Prompt injection + cyber capabilities / 프롬프트 인젝션 + 사이버 역량 |
| 14 | AT-04 / AR-04 | HELM Safety | Stanford / 2024 | **3** | 6-category safety baseline / 6개 카테고리 안전 기준 |
| 15 | AT-05 | Adversarial Poetry Benchmark | arXiv:2511.15304 | **5** | Direct AT-05 dataset; 1,220 samples / AT-05 직접 데이터셋; 1,220개 샘플 |
| 16 | AT-05 | AI Safety Benchmark v0.5 (MLCommons) | arXiv:2404.12241 | **4** | 43,000+ prompts from MLCommons / MLCommons의 43,000+ 프롬프트 |
| 17 | AT-06 | StrongREJECT | arXiv / 2024 | **4** | Distinguishes empty vs. effective jailbreaks / 빈 탈옥 vs. 효과적 탈옥 구분 |
| 18 | AT-06 / AT-07 | PandaGuard Benchmark | arXiv / 2025 | **3** | 49 LLMs, 19 attacks, 12 defenses / 49 LLM, 19 공격, 12 방어 |
| 19 | AT-07 | JailbreakBench | arXiv:2404.01318 | **4** | Standardized jailbreak evaluation with 100 behaviors / 100개 행동의 표준화된 탈옥 평가 |
| 20 | AT-08 / AR-08 | MCP-SafetyBench | arXiv / 2025 | **5** | (Duplicate -- see #7) |
| 21 | AT-08 / AR-08 | CyberSecEval 3 | Meta / 2024 | **4** | (Duplicate -- see #13) |
| 22 | AT-09 | JailBreakV-28K | arXiv / 2024 | **5** | 28K multimodal jailbreak samples / 28K 멀티모달 탈옥 샘플 |
| 23 | AT-09 | MM-SafetyBench | arXiv / 2024 | **5** | Safety-critical VLM evaluation / 안전 중요 VLM 평가 |
| 24 | AT-09 | RTVLM | arXiv:2401.12915 | **4** | 10,200 VLM red teaming samples / 10,200 VLM 레드팀 샘플 |
| 25 | AT-10 | AdvBench | arXiv:2307.15043 | **3** | Classic adversarial behavior dataset / 고전적 적대적 행동 데이터셋 |
| 26 | AT-11 | ReasoningShield Dataset | arXiv:2505.17244 | **4** | CoT reasoning trace safety detection / CoT 추론 추적 안전 탐지 |
| 27 | AT-11 | CyberSecEval 3 | Meta / 2024 | **4** | (Duplicate -- see #13) |
| 28 | AR-05 | WMDP Benchmark | arXiv:2403.03218 | **5** | Bio/chem/cyber dual-use knowledge proxy / 생물/화학/사이버 이중 용도 지식 프록시 |
| 29 | AR-05 | Forbidden Science | arXiv:2502.06867 | **4** | Dual-use science refusal test / 이중 용도 과학 거부 테스트 |
| 30 | AR-05 | Enkrypt AI CBRN Risk Dataset | arXiv:2510.21133 | **4** | 380 CBRN prompts / 380 CBRN 프롬프트 |
| 31 | AR-06 | MACHIAVELLI Benchmark | arXiv:2304.03279 | **4** | 134 games testing Machiavellian behaviors / 마키아벨리적 행동 테스트 134개 게임 |
| 32 | AR-07 | SafetyBench | arXiv:2309.07045 | **3** | 11,435 safety MCQs / 11,435 안전 MCQ |
| 33 | AR-07 | TrustLLM | arXiv:2401.05561 | **3** | 6-dimension trustworthiness / 6차원 신뢰도 |
| 34 | AR-09 | AI Sandbagging Dataset | arXiv:2406.07358 | **5** | Password-locked sandbagging tests / 비밀번호 잠금 샌드배깅 테스트 |
| 35 | AR-09 | DeceptionBench | arXiv:2510.08301 | **5** | 5 deception categories incl. sandbagging / 샌드배깅 포함 5개 기만 카테고리 |
| 36 | AR-09 | Consistency Sandbagging Eval | HuggingFace / 2025 | **4** | Formal/casual consistency detection / 공식/비공식 일관성 탐지 |
| 37 | AR-09 | AgentMisalignment | arXiv:2506.04018 | **4** | Misaligned behaviors in dynamic scenarios / 동적 시나리오에서의 정렬 불일치 행동 |

---

### 9.7 Critical Coverage Gaps and Custom Benchmark Recommendations / 치명적 커버리지 격차 및 맞춤 벤치마크 추천

The following gaps cannot be addressed by existing BMT.json datasets and require custom benchmark creation:

다음 격차는 기존 BMT.json 데이터셋으로 해결할 수 없으며 맞춤 벤치마크 생성이 필요합니다:

| # | Gap / 격차 | Affected Risk/Attack | Recommended Action / 권장 조치 | Priority / 우선순위 |
|---|---|---|---|---|
| G-01 | No end-to-end 5-stage promptware kill chain benchmark / 5단계 프롬프트웨어 킬 체인 종단간 벤치마크 없음 | AT-02, AR-03 | Extend DREAM + Agent-SafetyBench with 5-stage kill chain scenarios: Initial Access -> Privilege Escalation -> Persistence -> Lateral Movement -> Actions on Objective / DREAM + Agent-SafetyBench를 5단계 킬 체인 시나리오로 확장 | **CRITICAL** |
| G-02 | No LRM-as-autonomous-attacker benchmark / LRM 자율 공격자 벤치마크 없음 | AT-03, AR-02 | Create benchmark: deploy freely-available LRMs (DeepSeek-R1, Qwen3) as attack agents against HarmBench/JailbreakBench target behaviors with zero human supervision / 무료 LRM을 HarmBench/JailbreakBench 타깃에 공격 에이전트로 배포하는 벤치마크 생성 | **CRITICAL** |
| G-03 | No hybrid AI+web exploit benchmark / 하이브리드 AI+웹 익스플로잇 벤치마크 없음 | AT-04, AR-04 | Create test suite combining OWASP-style web tests with prompt injection and jailbreak vectors; include AI worm propagation scenarios / OWASP 스타일 웹 테스트와 프롬프트 인젝션/탈옥 벡터를 결합한 테스트 스위트 생성 | **HIGH** |
| G-04 | No safety regression measurement protocol / 안전 회귀 측정 프로토콜 없음 | AR-07 | Design comparative protocol: run SafetyBench + TrustLLM before and after each capability addition (new tool, web access, retrieval) / 각 역량 추가 전후로 SafetyBench + TrustLLM 실행하는 비교 프로토콜 설계 | **HIGH** |
| G-05 | No VSH-specific multimodal test set / VSH 특화 멀티모달 테스트 세트 없음 | AT-09 | Create paired image+text dataset using VSH methodology against JailBreakV-28K harm categories / JailBreakV-28K 피해 카테고리에 VSH 방법론을 사용한 쌍 이미지+텍스트 데이터셋 생성 | **MEDIUM** |

---

### 9.8 New Benchmarks Recommended for BMT.json Addition / BMT.json 추가 추천 신규 벤치마크

The following benchmarks referenced in the academic trends report are NOT currently in BMT.json in their canonical form and should be considered for addition:

학술 동향 보고서에서 참조된 다음 벤치마크는 현재 BMT.json에 정식 형태로 없으며 추가를 고려해야 합니다:

| Benchmark | Source | Applicable Risk/Attack | Status in BMT.json | Priority |
|---|---|---|---|---|
| **AILuminate v1.0** (MLCommons) | arXiv:2503.05731 | AT-05, AT-01 (12 hazard categories) | Partially present as AI Safety Benchmark v0.5 (Line ~30073); v1.0 not present / v1.0 미존재 | **HIGH** -- Upgrade v0.5 entry to v1.0 |
| **Risky-Bench** (Agentic Safety) | arXiv:2602.03100 | AT-02, AT-08, AR-03 (agentic deployment risks) | **NOT FOUND** | **HIGH** -- Most recent agent safety benchmark (Feb 2026) |
| **VLSU** (Visual Language Safety Understanding) | arXiv:2510.18214 | AT-09 (17 safety patterns, 15 harm categories, 8,187 samples) | **NOT FOUND** | **HIGH** -- Fills multimodal safety gap |

> **Note / 참고**: The following benchmarks recommended in the risk-analyst report WERE found in BMT.json: FORTRESS (Line ~1511), WMDP (Line ~1478), MCP-SafetyBench (Line ~27758), Agent-SafetyBench (Line ~30536), AgentHarm (Line ~281), MACHIAVELLI (Line ~6479), SycophancyEval (Line ~6335), DeceptionBench (Line ~6286, ~8170), AI Sandbagging Dataset (Line ~6268), HarmBench (Line ~694), DREAM (Line ~27364).
>
> risk-analyst 보고서에서 추천한 다음 벤치마크는 BMT.json에서 발견됨: FORTRESS, WMDP, MCP-SafetyBench, Agent-SafetyBench, AgentHarm, MACHIAVELLI, SycophancyEval, DeceptionBench, AI Sandbagging Dataset, HarmBench, DREAM.

---

### 9.9 Safetywashing Warning / 세이프티워싱 경고

> **Caution / 주의**: Per arXiv:2407.21792 ("Do AI Safety Benchmarks Measure Safety?"), many popular AI safety benchmarks primarily correlate with model capability rather than safety. Benchmark-agent and testing-agent must be aware that:
>
> 1. High safety benchmark scores may reflect general capability rather than genuine safety improvement / 높은 안전 벤치마크 점수가 진정한 안전 개선이 아닌 일반적 역량을 반영할 수 있음
> 2. Capability-correlated benchmarks (e.g., knowledge-based MCQ) should be supplemented with adversarial testing / 역량 상관 벤치마크는 적대적 테스트로 보완해야 함
> 3. The Adversarial Poetry benchmark (AT-05) demonstrated that even high-scoring models are trivially bypassed with simple stylistic transformation / 적대적 시 벤치마크(AT-05)가 높은 점수의 모델도 간단한 양식 변환으로 쉽게 우회됨을 입증
> 4. Adaptive attacks bypass all 12 published defense mechanisms at >90% ASR (arXiv:2510.09023) / 적응형 공격이 12개 방어 메커니즘 모두를 >90% ASR로 우회
>
> **Recommendation / 권고**: testing-agent should apply both benchmark-based scoring AND adversarial probing (using AT-01 through AT-11 techniques) to avoid safetywashing bias. / testing-agent는 세이프티워싱 편향을 피하기 위해 벤치마크 기반 점수와 적대적 탐색(AT-01~AT-11 기법)을 모두 적용해야 합니다.

---

*Pipeline Integration Update compiled: 2026-02-09*
*AI Red Team International Guideline Project -- Benchmark Analysis Agent (Step 3)*
*파이프라인 통합 업데이트 작성: 2026-02-09*
*Benchmark Agent -- BMT.json dataset matching against 11 new attack techniques (AT-01~AT-11) and 9 new risks (AR-01~AR-09)*

---

*Document Version: 1.1*
*Date: 2026-02-09*
*Status: Draft for Review (Pipeline Integration Updated)*
*AI Red Team International Guideline -- Benchmark Analysis Report*
*Research covers benchmarks and publications through Q4 2025 and early 2026*

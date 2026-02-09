# index.html 업데이트 기록 (Update History)

## v1.4 - 2026-02-09
**변경 에이전트**: html-v14 팀 (frag-part2, frag-part8, frag-part9, integrator)
**변경 내용**: 에이전트 협업 파이프라인 테스트 결과 전체 반영
- Part II 업데이트: 8개 신규 공격 기법 추가 (AT-01~AT-08)
  - AT-01: Human-like Psychological Manipulation (HPM) Jailbreak
  - AT-02: Promptware Kill Chain (Multi-Step Prompt Injection Malware)
  - AT-03: Large Reasoning Models as Autonomous Jailbreak Agents
  - AT-04: Prompt Injection 2.0 (Hybrid AI-Cyber Threats)
  - AT-05: Adversarial Poetry Jailbreak
  - AT-06: Mastermind (Strategy-Space Fuzzing)
  - AT-07: Physical AI Safety Testing
  - AT-08: Agentic AI Deception
- Part VIII 업데이트: 파이프라인 통합 신규 연구 발견 및 신규 리스크 카테고리 (NR-01~06)
  - 8.4: Pipeline Integration: New Research Findings
  - 8.5: Pipeline Integration: New Risk Categories
  - 8.6: Risk-Attack Cross-Reference
  - 8.7: Updated Guideline Reflection Recommendations
- Part IX 업데이트: 파이프라인 통합 테스트 시나리오 및 데이터셋 평가
  - 9.7: Pipeline Integration: New Test Scenarios (AT-01~08 대응)
  - 9.8: Dataset Feasibility Assessment (BMT.json 데이터셋 평가)
  - 9.9: Benchmark-Attack Coverage Matrix
  - 9.10: Priority Testing Roadmap (3-Phase)
- Executive Summary에 v1.4 파이프라인 검증 결과 반영
- 사이드바 네비게이션에 신규 섹션 링크 추가
- 표지 버전 v1.4, 날짜 2026-02-09로 업데이트
**파이프라인 흐름**: academic-researcher → risk-analyst + attack-researcher (병렬) → benchmark-agent → testing-agent
**파일 크기**: ~280KB → ~352KB

## v1.3 - 2026-02-09
**변경 에이전트**: html-part6 (integration)
**변경 내용**: Part VI~IX 4개 파트 통합 및 최종 편집
- Part VI: Standards Alignment / 표준 정합성 분석 (42119-7 비교, 29119 연계, 63항목 정합성 대시보드 33%)
- Part VII: Reference Document Analysis / 참고 문서 분석 (Japan AISI, OWASP GenAI, CSA Agentic AI -- 19개 수정 제안)
- Part VIII: Research & Risk Trends / 연구 및 리스크 동향 (35편 논문, 9+ 사고, 10+ 관할권 규제, Annex D 5개 트리거 모두 충족)
- Part IX: Test Scenarios & Validation / 테스트 시나리오 및 검증 (10 시나리오, 12 테스트 케이스, 커버리지 매트릭스, 5/6 단계 Feasible)
- 사이드바 네비게이션에 Part VI~IX 링크 추가
- Executive Summary에 Part VI~IX 요약 추가
- 표지 버전 v1.3, 날짜 2026-02-09로 업데이트
**파일 크기**: 148KB → ~280KB

## v1.2 - 2026-02-09 10:48
**변경 에이전트**: benchmark-agent
**변경 내용**: Annex C-2 벤치마크 데이터셋 분석 섹션 추가
- BMT.json (228+ 벤치마크 데이터셋) 분석 결과 반영
- C-2.1: 18개 위험 카테고리별 데이터셋 매핑 테이블 추가
- C-2.2: 10개 카테고리별 Red Team Testing 활용 방안 (접이식 섹션)
- C-2.3: 커버리지 분석 (5 Well-Covered / 5 Moderate / 7 Critical Gaps)
- C-2.4: 5계층 권장 테스팅 파이프라인
- 사이드바 네비게이션에 Annex C-2 링크 추가
**파일 크기**: 74KB → 148KB

## v1.1 - 2026-02-09 09:48
**변경 에이전트**: terminology-architect
**변경 내용**: Part V Meta-Review 실제 콘텐츠 반영
- 5.1: Meta-Review 결과 요약 테이블 (10개 평가 항목, Severity 뱃지)
- 5.2: Critical Failures 2건 상세 (MR-03 벤더 편향, MR-05 한계 미기술)
- 5.3: High-Priority Issues 3건 (체크리스트화, 누락 영역, 실행 가능성)
- 5.4: 가이드라인 강점 6개 항목
- 5.5: 개선 권고사항 요약 10건
- 5.6: 가이드라인 한계 선언문 8개 한계 항목 (MR-05 대응)
**파일 크기**: ~74KB

## v1.0 - 2026-02-09 09:48
**변경 에이전트**: terminology-architect
**변경 내용**: 최초 HTML 생성
- 표지, Executive Summary, Part I~IV, 참고문헌
- 다크/라이트 모드 토글, 반응형 레이아웃, 사이드바 내비게이션
- IntersectionObserver 기반 현재 섹션 하이라이트
- 접이식 섹션, 진행률 바, Severity 뱃지
- 인쇄 친화적 CSS
- Part V는 placeholder로 생성
**파일 크기**: ~74KB

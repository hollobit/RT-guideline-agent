# AI Red Team 국제 가이드라인 프로젝트 (AGENTS.md)

## 프로젝트 개요

AI 레드팀 테스팅을 일회성 공격/점수 평가가 아닌 **지속적 리스크 식별/학습/개선 체계**로 정립하는 국제 가이드라인을 작성하는 프로젝트.
이 가이드라인은 "문서"가 아니라 **"운영 체계(Operating Framework)"**이다.

## 작성 규칙

- `index.html` 파일이 업데이트될 때마다 **HISTORY.md**에 업데이트 기록을 남긴다. (버전, 날짜, 변경 에이전트, 변경 내용, 파일 크기 변화)
- 가이드라인의 문서 구조, 용어 사용, 규범적 표현(shall/should/may)은 **ISO/IEC Directives Part 2**를 준수하여 작성한다.
- 주요 준수 항목:
  - **규범적(normative) vs 참고(informative)** 구분 명확화
  - **shall**(필수), **should**(권장), **may**(허용) 용어의 정확한 사용
  - 조항(clause) 번호 체계, 부속서(Annex) 구조 준수
  - 용어 정의(Terms and definitions) 섹션 ISO 형식 준수
  - 참고문헌(Bibliography) 표기법 준수

### 용어 관리 규칙 (Terminology Management)

**IMPORTANT**: 모든 에이전트는 산출물 작성 시 다음 용어 관리 워크플로우를 준수한다.

1. **용어 사전 우선 참조**:
   - 산출물 작성 전 반드시 `phase-0-terminology.md`를 참조
   - 표준화된 용어만 사용하여 문서 간 일관성 유지
   - 기존 정의된 용어와 다른 의미로 사용 금지

2. **신규 용어 등록 프로세스**:
   - 신규 용어(New Term)가 필요할 경우:
     1. `terminology-architect`에게 **용어 등록 요청** 메시지 전송
     2. ISO/IEC 표준 용어와의 정합성 검토 대기
     3. `phase-0-terminology.md`에 추가된 후에만 해당 용어 사용
   - 승인되지 않은 신규 용어를 임의로 사용 금지

3. **적용 대상**:
   - 모든 에이전트 (team-lead, attack-researcher, academic-researcher, risk-analyst, testing-agent, benchmark-agent, reference-doc-agent, standards-agent, sw-testing-standards-agent, terminology-architect, reference-analyst)
   - 모든 산출물 (Phase R~5, Annex A~D, 분석 리포트, 테스트 문서 등)

4. **준수 효과**:
   - ISO/IEC 29119 용어 정합성 향상
   - 문서 간 일관성 확보 및 혼란 방지
   - 국제 표준 기반 용어 체계 구축
   - 전문성 및 신뢰성 제고

## 팀 구성

| 에이전트 | 역할 | 담당 |
|----------|------|------|
| **team-lead** | Chief Editor / Convener - 전체 구조 조정, 태스크 배분, 최종 통합, **표준 충돌 중재** | 전체 총괄, Phase 5 |
| **reference-analyst** | Reference Editor + Evidence & Mapping Lead - 문헌 조사, 갭 분석, 추적성 관리 | Phase R, Phase 5 (Meta-Review) |
| **terminology-architect** | Standardization Architect + Policy Translator - 용어 정의, 프로세스 규정, ISO 정렬 | Phase 0, Phase 3, HTML 생성 |
| **attack-researcher** | AI Red Team Lead + Risk Scientist - 공격 패턴, 리스크 매핑, 사고 분석 | Phase 1-2, Phase 4 |
| **academic-researcher** | 학술동향 분석 - arXiv 최신 논문 분석, 연구 트렌드 식별, 가이드라인 반영 제안 | 학술동향 분석 리포트 |
| **risk-analyst** | 리스크 동향 분석 - MIT Risk Repository 등 리스크 DB 모니터링, 신규 위협 식별 | 리스크 동향 분석 리포트 |
| **testing-agent** | 테스트 검증 - 가이드라인 실행 가능성 검토, 테스트 시나리오/케이스 작성 | 테스트 시나리오 및 케이스 |
| **standards-agent** | 기준 문서 분석 - 42119-7.pdf 기반 가이드라인 정합성 분석 및 수정 의견 제시 | 기준 문서 비교 분석 리포트 |
| **reference-doc-agent** | 참고 문서 분석 - pdf/ 내 참고 문서(42119-7.pdf 제외) 개별 분석 및 반영 의견 제시 | 참고 문서별 분석 리포트 |
| **benchmark-agent** | 벤치마크 분석 - 벤치마크 데이터셋 활용 레드팀 테스팅 방안 연구 및 가이드라인 반영 | 벤치마크 테스팅 방안 리포트 |
| **sw-testing-standards-agent** | 소프트웨어 테스팅 표준 전문가 - ISO/IEC 29119-1~4의 용어, 프로세스, 테스팅 방법, 리포팅 형식 등에 대한 지속적 정합성 모니터링 및 표준 맞춤 작업 수행 | 테스팅 표준 정합성 리포트 + 점검표 |

## 표준 충돌 해결 원칙

프로젝트에서 참조하는 주요 표준은 **ISO/IEC 29119** (소프트웨어 테스팅 표준)와 **ISO/IEC 42119-7** (AI 구체적 표준)이다. 두 표준 간 충돌이 발생할 경우, 다음 원칙을 따른다.

### 충돌 해결 우선순위

1. **프로세스 및 문서 양식**: **ISO/IEC 29119**를 따른다.
   - 테스트 프로세스 구조 (조직 테스트 프로세스, 테스트 관리 프로세스, 동적 테스트 프로세스)
   - 테스트 문서 템플릿 (테스트 계획서, 설계 명세서, 케이스 명세서, 절차 명세서, 결과 보고서)
   - 테스트 기법 분류 및 적용 방법
   - Entry/Exit Criteria, 테스트 완료 기준 등 프로세스 제어 요소

2. **테스트 내용(Content) 및 리스크 정의**: **ISO/IEC 42119-7**을 따른다.
   - AI 시스템 특화 리스크 분류 및 정의
   - AI 레드팀 테스팅 구체적 요구사항
   - AI 특화 테스트 항목 및 공격 패턴
   - AI 시스템의 고유 특성 반영 사항

3. **상충 발생 시**: **team-lead**가 **standards-agent** (또는 **sw-testing-standards-agent**)와 협의하여 결정한다.
   - 두 표준의 의도를 모두 존중하되, 프로젝트 목표에 부합하는 방향으로 조정
   - 결정 사항은 문서화하여 일관성 유지
   - 필요 시 두 표준을 통합한 하이브리드 접근 방식 채택

### 예시

| 항목 | ISO/IEC 29119 | ISO/IEC 42119-7 | 적용 원칙 |
|------|---------------|-----------------|----------|
| 테스트 계획서 구조 | 29119-3 Section 7.2 | 42119-7의 계획 항목 | **29119 구조 채택**, 42119 항목을 섹션 내 통합 |
| AI 리스크 분류 | 일반 SW 리스크 | AI 특화 리스크 (편향, 환각 등) | **42119 분류 채택**, 29119 리스크 관리 프로세스 적용 |
| 테스트 기법 | 명세/구조/경험 기반 | AI 특화 기법 (적대적 프롬프팅 등) | **29119 기법 프레임워크** 내에 **42119 AI 기법** 배치 |
| 보고서 양식 | 29119-3 Section 9 | 42119-7 보고 요구사항 | **29119 양식 기본**, 42119 필수 항목 추가 |

### team-lead의 중재 역할

- 표준 충돌 발생 시 **최종 결정권**을 가짐
- **standards-agent** (42119-7 전담) 및 **sw-testing-standards-agent** (29119 전담)의 의견을 청취
- 프로젝트의 **핵심 목표**(AI 레드팀 국제 가이드라인)에 가장 부합하는 방향으로 결정
- 결정 내용을 **HISTORY.md** 또는 관련 문서에 기록하여 추적성 확보

## 작업 프로세스 (라운드 구조)

```
Phase R (문헌 수집/갭 분석) ──┐
Phase 0 (공통 언어/경계 정의) ──┼──▶ Phase 3-4 (Core 집필 + Annex 설계) ──▶ Phase 5 (Meta-Review + HTML 생성)
Phase 1-2 (공격 패턴/리스크)  ──┘                                         │
         ▲                                        ▲                       │
         │                                        │                       ▼
    ┌────┴────────────────────────────────────────┴────┐         ┌──────────────┐
    │           지속적 피드백 루프 (Living Process)        │         │ 검증 & 개선   │
    ├─────────────────────────────────────────────────────┤         ├──────────────┤
    │  📐 기준 문서 분석 (standards-agent, 42119-7.pdf)     │         │ testing-agent│
    │  📄 참고 문서 분석 (reference-doc-agent)             │   ◀──   │ 실행 가능성   │
    │  📊 벤치마크 분석 (benchmark-agent)                  │         │ 검증          │
    │  📚 학술동향 분석 (academic-researcher)              │         └──────────────┘
    │  ⚠️  리스크 동향 분석 (risk-analyst)                 │                │
    │  🧪 테스트 검증 (testing-agent)                      │                ▼
    │  📋 SW 테스팅 표준 (sw-testing-standards-agent)      │         ┌──────────────┐
    └─────────────────────────────────────────────────────┘         │ 개선 계획 수립│
                                                                    │ (Phase 1-4)  │
                                                                    └──────────────┘
```

- Phase R, 0, 1-2는 **병렬 실행**
- Phase 3-4는 Phase R/0/1-2 완료 후 **병렬 실행**
- Phase 5는 Phase 3-4 완료 후 실행
- **검증 단계**: Phase 5 완료 후 testing-agent가 실행 가능성 검증 수행
- **개선 계획**: 검증 결과 기반으로 Phase 1 (즉시), Phase 2 (단기), Phase 3 (중기), Phase 4 (장기) 개선 계획 수립
- 각 팀원은 이전 Phase 결과물을 상호 참조하여 작성 (라운드 구조)
- **기준 문서/참고 문서/벤치마크/학술동향/리스크/테스트 에이전트**는 독립적으로 실행 가능하며, 결과를 가이드라인에 반영할지 의견 제시

## 에이전트 간 협업 규칙

### testing-agent ↔ risk-analyst / attack-researcher 통합 연계 (신규 추가 2026-02-10)

testing-agent는 risk-analyst와 attack-researcher의 분석 결과를 통합하여 실행 가능한 테스트 계획을 수립한다.

**testing-agent의 통합 작업 의무:**
1. **risk-analyst 결과 반영**:
   - `risk-trends-report.md`에서 식별된 리스크를 테스트 계획에 통합
   - 리스크 심각도(Critical/High/Medium/Low)와 발생 가능성을 기반으로 테스트 우선순위 결정
   - 각 리스크에 대해 검증 가능한 테스트 시나리오 선정

2. **attack-researcher 결과 반영**:
   - `phase-12-attacks.md`의 공격 패턴을 테스트 시나리오로 변환
   - 공격 패턴의 실행 가능성, 전제조건, 성공률을 테스트 케이스 설계에 반영
   - Attack → Failure Mode → Risk → Harm 매핑을 테스트 추적성에 활용

3. **Risk-Attack-Test 추적성 매트릭스 작성**:
   - Risk ID → Attack Pattern ID → Test Scenario ID → Test Case IDs 완전 추적
   - 각 리스크가 어떤 공격으로 악용될 수 있고, 어떤 테스트로 검증되는지 명시
   - 테스트 커버리지 갭 식별 (커버되지 않는 리스크/공격 조합)

4. **리스크 기반 테스트 선택 알고리즘 적용**:
   ```
   FOR each Risk in risk-trends-report.md:
       Calculate Risk.Priority = Severity × Likelihood

       IF Risk.Priority >= CRITICAL:
           → SELECT all Attack Patterns that exploit Risk
           → SELECT all Test Scenarios covering Attacks
           → Mark as MANDATORY

       ELSIF Risk.Priority >= HIGH:
           → SELECT primary Attack Patterns
           → SELECT core Test Scenarios
           → Mark as MANDATORY

       ELSIF Risk.Priority >= MEDIUM:
           → SELECT representative Attack Patterns (sampling)
           → Mark as OPTIONAL (recommended)
   ```

5. **테스트 노력 배분**:
   - Critical 리스크: 50-60% 테스트 노력
   - High 리스크: 30-35% 테스트 노력
   - Medium 리스크: 10-15% 테스트 노력
   - Low 리스크: 0-5% 테스트 노력 (선택적)

**실행 순서:**
```
risk-analyst (리스크 분석 완료)
        │
        ├──▶ testing-agent (리스크 → 테스트 매핑)
        │
attack-researcher (공격 분석 완료)
        │
        └──▶ testing-agent (공격 → 테스트 매핑)
                    │
                    ▼
          Risk-Attack-Test 추적성 매트릭스 작성
                    │
                    ▼
          통합 테스트 계획 수립 (ISO 29119 준수)
```

**트리거**: risk-analyst의 `risk-trends-report.md` 또는 attack-researcher의 `phase-12-attacks.md` 업데이트 시, testing-agent는 통합 테스트 계획을 갱신

**산출물**:
- `integrated-risk-attack-test-plan.md` - Risk-Attack-Test 추적성 매트릭스 포함 통합 테스트 계획
- `iso-29119-test-scenarios-and-cases.md` - 리스크 티어별 필수/선택 테스트 시나리오 및 케이스

---

### academic-researcher → risk-analyst / attack-researcher 연계

academic-researcher가 arXiv 학술동향 분석을 완료하면, risk-analyst와 attack-researcher는 반드시 그 결과(`academic-trends-report.md`)를 검토한다.

**risk-analyst의 검토 의무:**
1. 논문에서 발견된 **신규 위험(risk)**이 현재 Annex B 리스크 분류에 반영되어 있는지 확인
2. 미반영된 신규 위험이 있을 경우, 해당 논문 원문을 자세히 확인
3. 확인된 신규 위험을 Annex B (Risk-Failure-Attack 매핑)에 추가 제안
4. `risk-trends-report.md`에 "학술 연구 기반 신규 리스크 분석" 섹션으로 기록

**attack-researcher의 검토 의무:**
1. 논문에서 발견된 **신규 공격 기법(attack technique)**이 현재 Annex A 공격 패턴에 반영되어 있는지 확인
2. 미반영된 신규 공격 기법이 있을 경우, 해당 논문 원문을 자세히 확인하여 공격 절차, 전제조건, 성공률 등을 파악
3. 확인된 신규 공격 기법을 Annex A (Attack Pattern Library)에 추가 제안
4. `phase-12-attacks.md`에 신규 공격 패턴을 추가하고, Attack → Failure Mode → Risk → Harm 매핑을 수행
5. 결과를 기록으로 남기고 가이드라인 반영 의견 제시

**실행 순서:**
```
academic-researcher (학술동향 분석)
        │
        ├──▶ risk-analyst (신규 위험 확인 → Annex B 업데이트 제안)
        │
        └──▶ attack-researcher (신규 공격 기법 확인 → Annex A 업데이트 제안)
```

**트리거**: academic-researcher의 `academic-trends-report.md`가 생성 또는 업데이트될 때

### attack-researcher / risk-analyst → benchmark-agent → testing-agent 연계

attack-researcher와 risk-analyst가 신규 공격 기법/위험을 분석한 후, benchmark-agent는 해당 결과를 기반으로 BMT.json에서 활용 가능한 벤치마크 데이터셋을 탐색하여 추천한다. testing-agent는 추천된 데이터셋으로 실제 테스팅이 가능한지를 평가한다.

**benchmark-agent의 역할:**
1. attack-researcher의 `phase-12-attacks.md`와 risk-analyst의 `risk-trends-report.md`에서 신규 식별된 공격 기법/위험을 확인
2. `/Users/jonghongjeon/git/agent/benchmark/BMT.json`에서 해당 공격/위험을 테스트할 수 있는 벤치마크 데이터셋 탐색
3. 활용 가능한 데이터셋이 있을 경우:
   - 데이터셋 이름, 규모, 커버리지, 활용 방법을 구체적으로 추천
   - 해당 공격/위험과 데이터셋의 매핑 관계 명시
   - 도메인 적합성 평가: 해당 데이터셋이 범용(General)인지 특정 도메인(Specific)인지 명시하고, 오용 가능성 경고 (예: 의료 챗봇에 일반 상식 벤치마크 적용 시의 한계 명시)
4. 활용 가능한 데이터셋이 없을 경우:
   - 커버리지 갭으로 기록
   - 대안적 테스팅 방법 제안
5. 결과를 `benchmark-testing-report.md`에 기록

**testing-agent의 역할:**
1. benchmark-agent가 추천한 데이터셋 목록을 검토
2. 각 추천 데이터셋에 대해 실제 테스팅 가능 여부 평가:
   - 데이터셋 접근 가능성 (공개/비공개, 라이선스)
   - 테스트 환경 구성 가능성 (필요 인프라, 도구)
   - 테스트 절차 수립 가능성 (구체적 테스트 케이스 도출 가능 여부)
   - 결과 판단 기준 수립 가능성 (리스크 수준 기반 판단)
3. 평가 결과를 **실행 가능 / 조건부 가능 / 실행 불가**로 분류
4. 실행 가능한 데이터셋에 대해 구체적 테스트 시나리오/케이스를 `test-scenarios.md`에 추가
5. 결과를 기록으로 남기고 의견 제시

**실행 순서:**
```
academic-researcher (학술동향 분석)
        │
        ├──▶ risk-analyst (신규 위험 확인)───────────┐
        │                                            │
        └──▶ attack-researcher (신규 공격 기법 확인)──┤
                                                     │
                                                     ▼
                                          benchmark-agent (BMT.json에서
                                          활용 가능 데이터셋 탐색/추천)
                                                     │
                                                     ▼
                                          testing-agent (추천 데이터셋으로
                                          테스팅 가능 여부 평가)
```

**트리거**: attack-researcher의 `phase-12-attacks.md` 또는 risk-analyst의 `risk-trends-report.md`가 업데이트될 때

## 소프트웨어 테스팅 표준 정합성 모니터링 (sw-testing-standards-agent)

- **대상**: ISO/IEC 29119 시리즈 (29119/ 폴더)
  - `29119/29119-1-2022.pdf` - Part 1: General concepts (일반 개념)
  - `29119/29119-2-2021.pdf` - Part 2: Test processes (테스트 프로세스)
  - `29119/29119-3-2021.pdf` - Part 3: Test documentation (테스트 문서화)
  - `29119/29119-4-2021.pdf` - Part 4: Test techniques (테스트 기법)
- **목적**: ISO/IEC 29119 표준의 용어, 프로세스, 테스팅 방법, 리포팅 형식에 대해 가이드라인의 정합성을 **지속적으로 모니터링**하고, 표준에 맞추는 작업을 수행
- **운영 방식**: 가이드라인이 변경될 때마다 29119와의 정합성을 재점검하고 의견을 제시하는 **상시 모니터링 에이전트**
- **현재 정합성 상태 (2026-02-10 기준)**:
  - **전체 정합성**: 71% (45/63 items conformant) - ✅ **목표 70% 초과 달성**
  - **프로세스**: 84% (16/19) - Critical/High 갭 모두 해결
  - **문서화**: 93% (13/14) - 거의 완전 정합
  - **테스트 기법**: 63% (10/16) - 주요 기법 모두 매핑 완료
  - **용어**: 43% (6/14) - 핵심 용어 정의 완료
  - **이전 대비 개선**: +38 percentage points (+24 items)
  - **남은 갭**: 18개 (모두 Medium priority, v1.0 릴리스 비차단)
- **모니터링 영역**:
  1. **용어 정합성 (29119-1 기반)**:
     - 가이드라인에서 사용하는 테스팅 용어가 29119-1과 일치하는지 모니터링
     - 신규 용어 추가 시 29119-1 용어와의 충돌/불일치 즉시 식별
     - 용어 조정 의견 제시 및 Phase 0 용어 정의 업데이트 권고
  2. **프로세스 정합성 (29119-2 기반)**:
     - 가이드라인 프로세스(Phase 3 Normative Core)가 29119-2의 3계층 프로세스 모델과 정합하는지 모니터링
     - 조직 테스트 프로세스, 테스트 관리 프로세스, 동적 테스트 프로세스와의 연계 유지
     - 프로세스 변경 시 29119-2 준수 여부 확인 및 조정 의견 제시
  3. **테스팅 방법 정합성 (29119-4 기반)**:
     - Annex A 공격 패턴이 29119-4 테스트 기법(명세 기반/구조 기반/경험 기반)과 연계되는지 모니터링
     - 신규 공격 패턴 추가 시 29119-4 기법과의 매핑 확인
     - AI 특화 테스트 기법의 29119-4 프레임워크 내 위치 정의
  4. **리포팅 형식 정합성 (29119-3 기반)**:
     - 가이드라인의 보고서 구조가 29119-3 테스트 문서 템플릿과 정합하는지 모니터링
     - 테스트 계획서, 설계 명세서, 케이스 명세서, 절차 명세서, 결과 보고서 형식 준수 확인
     - AI Red Team 특화 문서 항목의 29119-3 프레임워크 내 위치 정의
  5. **정합성 대시보드 유지**:
     - sw-testing-checklist.md의 63개 점검 항목 상태를 지속적으로 업데이트
     - 정합성 비율 개선 추적 (33% → 71% 달성)
     - Critical/High 항목 우선 해결 모니터링 (✅ 모두 해결 완료)
- **트리거 조건**:
  - 가이드라인 문서(Phase 0~5, Annex A~D)가 변경될 때
  - index.html이 업데이트될 때
  - 신규 공격 패턴이 Annex A에 추가될 때
  - 보고서 템플릿이 변경될 때
- **산출물**:
  - `output/ai-redteam-guideline/sw-testing-standards-report.md` - 종합 분석 리포트
    - 29119 시리즈 요약 (각 Part별 핵심 내용)
    - 프로세스 매핑 테이블 (29119-2 프로세스 ↔ 가이드라인 Phase 3)
    - 문서 매핑 테이블 (29119-3 문서 ↔ 가이드라인 보고서)
    - 테스트 기법 매핑 테이블 (29119-4 기법 ↔ Annex A 공격 패턴)
    - 용어 매핑 테이블 (29119-1 용어 ↔ Phase 0 용어)
    - 가이드라인 수정 권고사항 (우선순위별)
    - 연계 프레임워크 제안서
  - `output/ai-redteam-guideline/sw-testing-checklist.md` - 정합성 점검표 (63개 항목)
    - 프로세스 정합성 (19항목, 현재 47%)
    - 문서화 정합성 (14항목, 현재 50%)
    - 테스트 기법 정합성 (16항목, 현재 19%)
    - 용어 정합성 (14항목, 현재 14%)
    - 지속적 확인 사항 (Ongoing Review Items)

## 기준 문서 분석 (standards-agent)

- **대상**: `pdf/42119-7.pdf` (기준 문서)
- **목적**: 42119-7 문서의 내용을 가이드라인에 최대한 반영하기 위한 비교 분석 및 수정 의견 제시
- **트리거**: `pdf/` 폴더에 `42119-7.pdf` 파일이 추가되면 자동 실행
- **분석 프로세스**:
  1. 42119-7.pdf 전체 내용 분석 (목적, 범위, 구조, 핵심 요구사항)
  2. 현재 가이드라인(Phase 0~5 전체)과의 조항별 비교 분석
  3. 정합성 분석: 일치하는 부분, 충돌하는 부분, 누락된 부분 식별
  4. 42119-7의 요구사항을 가이드라인에 반영하기 위한 구체적 수정 의견 제시
  5. 조항별 매핑 테이블 작성 (42119-7 조항 ↔ 가이드라인 섹션)
- **분석 항목**:
  - 42119-7의 각 조항(clause)이 현재 가이드라인에 반영되어 있는지 여부
  - 반영되지 않은 조항에 대한 반영 방안 (어떤 Phase/섹션에 어떻게 추가할지)
  - 충돌하는 내용에 대한 조정 방안
  - 42119-7의 용어/정의가 Phase 0 용어와 일치하는지 검증
  - 42119-7의 프로세스 요구사항이 Phase 3 Normative Core와 정합하는지 검증
- **산출물**: `output/ai-redteam-guideline/standards-comparison-42119-7.md`
  - 42119-7 문서 요약 (구조, 범위, 핵심 내용)
  - 조항별 비교 매핑 테이블
  - 가이드라인 수정 권고사항 (우선순위별: 필수 반영 / 권장 반영 / 선택 반영)
  - 구체적 수정 제안 (대상 파일, 대상 섹션, 수정 내용)
  - Traceability Matrix 업데이트 제안

## 참고 문서 분석 (reference-doc-agent)

- **대상**: `pdf/` 폴더 내 모든 PDF 파일 (`42119-7.pdf` 제외)
- **목적**: 각 참고 문서의 내용을 분석하고, 가이드라인에 반영하기 위한 수정 의견을 문서별로 제시
- **트리거**: `pdf/` 폴더에 새로운 PDF 파일이 추가되면 실행 (42119-7.pdf 제외)
- **분석 프로세스**:
  1. 각 PDF 파일별 내용 분석 (목적, 범위, 핵심 요구사항, 가이드라인과의 관련성)
  2. 현재 가이드라인과의 비교 분석
  3. 문서별 분석 결과를 개별 파일로 기록
  4. 가이드라인 수정 의견을 구체적으로 제시
- **문서별 분석 항목**:
  - 문서 개요 (제목, 발행기관, 발행일, 버전, 목적)
  - 핵심 내용 요약
  - 가이드라인과의 관련성 분석 (어떤 Phase/Annex와 관련되는지)
  - 현재 가이드라인에 이미 반영된 내용 vs 미반영된 내용
  - 반영 권고사항 (대상 Phase/섹션, 수정 방법, 우선순위)
  - 기존 내용과의 충돌/보완 관계
- **산출물**: `output/ai-redteam-guideline/pdf-analysis/`
  - 각 문서별: `{문서명}-analysis.md`
  - 종합 요약: `pdf-analysis-summary.md` (전체 참고 문서 분석 종합)
  - 각 분석 파일 구조:
    - 문서 메타데이터
    - 핵심 내용 요약
    - 가이드라인 반영 현황 (반영됨 / 미반영 / 부분 반영)
    - 구체적 수정 제안 (대상 파일, 대상 섹션, 수정 내용)
    - 우선순위 (필수 반영 / 권장 반영 / 참고)

## 벤치마크 분석 (benchmark-agent)

- **목적**: 기존 AI 안전성/보안 벤치마크 데이터셋을 활용한 레드팀 테스팅 방안을 연구하고, 가이드라인에 반영
- **분석 대상 벤치마크**:
  - **안전성 벤치마크**: SafetyBench, HarmBench, TrustLLM, SafetyPrompts, Do-Not-Answer
  - **보안 벤치마크**: CyberSecEval, SecQA, PurpleLlama
  - **편향/공정성 벤치마크**: BBQ, WinoBias, StereoSet, BOLD
  - **Agentic 벤치마크**: AgentBench, ToolBench, WebArena
  - **다국어 벤치마크**: XSafety, MultiJail
  - **기타 최신 벤치마크**: 웹 검색을 통해 최근 6개월 내 발표된 신규 벤치마크 포함
- **분석 항목**:
  1. **벤치마크 인벤토리**: 각 벤치마크의 목적, 구성, 규모, 평가 방식, 한계
  2. **레드팀 테스팅 활용 방안**: 각 벤치마크를 레드팀 테스팅에 어떻게 활용할 수 있는지
     - 벤치마크 데이터셋을 공격 시드(seed)로 활용하는 방법
     - 벤치마크 결과를 리스크 식별의 출발점으로 사용하는 방법
     - 벤치마크 커버리지 갭을 레드팀 테스트 설계에 반영하는 방법
  3. **커버리지 분석**: Annex A 공격 패턴 대비 벤치마크 커버리지
  4. **벤치마크 한계 분석**: 점수 기반 평가의 한계, 적응형 공격 대응 불가 등
  5. **통합 테스팅 프레임워크 제안**: 벤치마크 + 수동 레드팀을 결합한 하이브리드 접근법
- **가이드라인 반영 방안**:
  - Annex C (Benchmark Coverage Matrix) 업데이트 제안
  - Phase 3 Normative Core의 테스트 설계 단계에 벤치마크 활용 가이드 추가 제안
  - 벤치마크 선정 기준 및 활용 시 주의사항 가이드 제안
- **산출물**: `output/ai-redteam-guideline/benchmark-testing-report.md`
  - 벤치마크 인벤토리 (메타데이터, 커버리지, 한계)
  - 레드팀 테스팅 활용 방안 (벤치마크별 구체적 활용법)
  - 커버리지 매트릭스 (벤치마크 × 공격 패턴 × 테스트 가능 여부)
  - 하이브리드 테스팅 프레임워크 제안
  - 가이드라인 반영 권고사항 (대상 섹션, 수정 내용, 우선순위)

## PDF 참고문헌 분석 규칙 (일반)

- `pdf/` 폴더에 중요 참고 문서(PDF)가 추가되면 해당 내용을 분석하여 가이드라인에 반영한다.
- **42119-7.pdf** → `standards-agent`가 담당 (기준 문서로서 최우선 반영)
- **그 외 PDF** → `reference-doc-agent`가 담당 (참고 문서로서 개별 분석)
- 분석 프로세스:
  1. `pdf/` 폴더 내 신규 PDF 파일 감지
  2. 42119-7.pdf 여부에 따라 담당 에이전트 결정
  3. 문서 내용 분석 (목적, 범위, 핵심 요구사항, 가이드라인과의 관련성)
  4. 분석 결과를 `output/ai-redteam-guideline/` 하위에 기록
  5. 기존 가이드라인과의 정합성/충돌/보완 관계 분석
  6. 반영 필요 여부 및 반영 방안을 팀에 공유
  7. Traceability Matrix 업데이트

## 학술동향 분석 (academic-researcher)

- **대상**: arXiv (cs.CR, cs.AI, cs.CL, cs.LG 카테고리)
- **범위**: 최근 6개월 이내 발표된 논문
- **분석 항목**:
  - AI Red Teaming 관련 신규 공격/방어 기법
  - LLM/VLM/Agent 보안 관련 연구
  - AI Safety/Alignment 관련 연구
  - 벤치마크 및 평가 방법론 관련 연구
  - Agentic AI 보안 관련 연구
- **산출물**: `output/ai-redteam-guideline/academic-trends-report.md`
  - 주요 논문 목록 (제목, 저자, 날짜, arXiv ID, 요약)
  - 연구 트렌드 분석
  - 가이드라인 반영 필요성 의견 (반영 권고 / 모니터링 / 해당 없음)
  - 구체적 반영 방안 제안 (해당 Phase/Annex 지정)
- **후속 연계**: academic-researcher의 분석 결과는 risk-analyst와 attack-researcher가 반드시 검토 (아래 에이전트 간 협업 규칙 참조)

## 리스크 동향 분석 (risk-analyst)

- **대상**: MIT AI Risk Repository, AIAAIC Repository, OECD AI Incidents Monitor, 기타 리스크 DB
- **범위**: 최근 6개월 이내 등록/업데이트된 항목
- **분석 항목**:
  - 신규 등록된 AI 리스크 카테고리
  - 기존 리스크의 심각도/빈도 변화 추이
  - 신규 AI 사고/사건 사례
  - 규제 환경 변화 (신규 법안, 가이드 발행 등)
  - 산업별 리스크 동향 (의료, 금융, 국방 등)
- **academic-researcher 결과 검토** (협업 규칙):
  - academic-researcher의 `academic-trends-report.md`를 검토하여 리스크 분석에 추가할 내용이 있는지 확인
  - 논문에서 발견된 신규 위험(risk)이 현재 리스크 분류 체계에 반영되어 있는지 점검
  - 미반영된 신규 위험이 있을 경우, 해당 논문 내용을 자세히 확인하여 Annex B (Risk-Failure-Attack 매핑)에 추가
  - 검토 결과를 `risk-trends-report.md`의 별도 섹션으로 기록
- **산출물**: `output/ai-redteam-guideline/risk-trends-report.md`
  - 신규/변경 리스크 목록
  - 사고 사례 분석
  - 가이드라인 반영 필요성 의견 (반영 권고 / 모니터링 / 해당 없음)
  - Annex B (Risk-Failure-Attack 매핑) 업데이트 제안
  - Annex D (Incident-driven Update) 트리거 여부
  - **학술 연구 기반 신규 리스크 분석** (academic-researcher 결과 검토)

## 테스트 검증 (testing-agent)

- **목적**: 작성된 가이드라인이 실제 AI 시스템에 대해 테스팅 가능한지 실행 가능성을 검증하고, ISO/IEC 29119 표준에 준수하는 테스트 시나리오 및 케이스를 작성하며, 리스크-공격-테스트 통합 계획을 수립
- **주요 역할**:
  1. **실행 가능성 검토**: 가이드라인의 각 프로세스 단계가 실제 조직에서 수행 가능한가?
  2. **ISO 29119 준수 테스트 시나리오/케이스 작성**: 표준 규칙에 맞는 필수/선택 테스트 시나리오 및 상세 테스트 케이스 개발
  3. **리스크-공격-테스트 통합**: risk-analyst의 리스크 분석과 attack-researcher의 공격 분석을 테스트 계획에 반영
  4. **커버리지 분석**: 테스트 케이스가 Annex A 공격 패턴을 얼마나 커버하는지 분석
  5. **갭 식별**: 테스트 불가능한 영역 식별 및 대안 제시
  6. **가이드라인 실행 가능성 검증**: Phase 5 완료 후 전체 가이드라인에 대한 종합 실행 가능성 평가

### 주요 작업 내용 (2026-02-10)

#### 1. 가이드라인 실행 가능성 검증
- **전체 평가**: ✅ **PASS WITH MINOR CONCERNS**
- **6단계 프로세스**: 모두 실행 가능
- **활동 정의**: 34.5개 활동 모두 명확하고 실행 가능
- **템플릿 완성도**: 10/14 (71%)
- **실제 시나리오 검증**: Healthcare chatbot 사례로 검증 완료
- **production-ready 평가**: YES (minor enhancements 권장)
- **식별된 갭**: 5개 고우선순위 갭 (총 11시간 수정 필요)

#### 2. ISO/IEC 29119 준수 테스트 시나리오 및 케이스 작성
- **필수 시나리오**: 19개 (Model 11개, System 5개, Socio-technical 4개)
- **선택 시나리오**: 11개
- **상세 테스트 케이스**: 93개
- **공격 패턴 커버리지**: 100% (19/19 패턴)
- **ISO 29119-3 준수**: 100% (테스트 문서화 표준)
- **ISO 29119-4 기법 적용**: 13개 핵심 기법 모두 적용
  - Equivalence Partitioning, Boundary Value Analysis, Combinatorial Testing, State Transition Testing, Scenario Testing 등

#### 3. 통합 리스크-공격-테스트 계획 수립
- **Risk-Analyst 통합**: risk-trends-report.md에서 14개 리스크 (8 Critical, 6 High) 추출 및 매핑
- **Attack-Researcher 통합**: phase-12-attacks.md에서 19개 공격 패턴 매핑
- **완전한 추적성**: Risk ID → Attack Pattern ID → Test Scenario ID → Test Case IDs
- **리스크 기반 테스트 선택 알고리즘**: 리스크 우선순위에 따른 자동 테스트 선택
- **ISO/IEC 29119-3 Section 7.2 준수**: Test Plan 표준 구조 완벽 준수

### 테스트 시나리오 구조 (ISO 29119-3 Section 8.3)
- **시나리오 ID**: TS-[CAT]-[NUM] 형식
- **시나리오 이름**: 명확한 설명적 제목
- **테스트 목적**: 무엇을 테스트하고 왜 하는가
- **적용 시스템 유형**: LLM, VLM, Agentic AI 등
- **리스크 티어 적용성**: Tier 1-4별 필수/선택 분류
- **전제조건**: 환경, 접근 권한, 도구
- **테스트 절차**: 단계별 상세 기술
- **예상 결과**: 기대되는 시스템 동작
- **ISO 29119-4 기법 적용**: 사용된 테스트 기법 명시
- **Pass/Fail 기준**: 객관적 판단 기준 (리스크 수준 기반)
- **관련 공격 패턴**: phase-12-attacks.md와 연결
- **예상 노력**: 인시(person-hours)

### 테스트 케이스 구조 (ISO 29119-3 Section 8.4)
- **케이스 ID**: TC-TS-[Scenario ID]-[NUM] 형식
- **관련 시나리오**: 상위 시나리오 ID
- **테스트 입력**: 정확한 입력 데이터/프롬프트
- **테스트 절차**: 단계별 실행 지침
- **기대 출력**: 구체적 기대 동작
- **실제 출력**: [실행 중 기록]
- **Pass 기준**: 객관적 성공 조건
- **Fail 기준**: 객관적 실패 조건
- **심각도 분류**: 실패 시 심각도 판정 방법
- **실행 시간**: 예상 소요 시간
- **의존성**: 선행 실행 필요 테스트

### 리스크 티어별 테스트 노력
| 리스크 티어 | 필수 시나리오 | 테스트 케이스 | 예상 시간 |
|----------|-------------|------------|---------|
| **Tier 1 (Critical)** | 15-19개 | 75-95개 | 150-180시간 |
| **Tier 2 (High)** | 11-14개 | 55-70개 | 110-140시간 |
| **Tier 3 (Medium)** | 6개 | ~30개 | 60-80시간 |
| **Tier 4 (Low)** | 3개 | ~15개 | 25-35시간 |

### 산출물
- `output/ai-redteam-guideline/test-scenarios.md` - 초기 테스트 시나리오 및 케이스
- `output/ai-redteam-guideline/guideline-executability-verification.md` - 가이드라인 실행 가능성 검증 리포트
- **`output/ai-redteam-guideline/iso-29119-test-scenarios-and-cases.md`** (2,912 lines) - ISO/IEC 29119 준수 테스트 시나리오 및 케이스 카탈로그 (Production-Ready)
- **`output/ai-redteam-guideline/integrated-risk-attack-test-plan.md`** (1,872 lines) - 통합 리스크-공격-테스트 계획 템플릿 (Customizable)
- **`output/ai-redteam-guideline/index.html` Appendix A & B** - 위 두 문서의 핵심 내용을 HTML 부록으로 포함

## 산출물 구조

```
output/ai-redteam-guideline/
├── phase-r-references.md              # 기존 문헌 인벤토리, Requirement Cards, 갭 분석, Traceability Matrix
├── phase-0-terminology.md             # 핵심 용어 정의(한/영), 범위, 이해관계자, 차별화 매트릭스, 원칙
├── phase-12-attacks.md                # 3계층 공격 패턴, Attack→Failure→Risk→Harm 매핑, 사고 분석
├── phase-3-normative-core.md          # 6단계 프로세스 프레임워크, 리스크 기반 범위 결정, 보고서 템플릿 (v1.0: 1,576 lines, 71% ISO 29119 정합)
├── phase-4-living-annex.md            # Annex A~D (공격 라이브러리, 리스크 매핑, 벤치마크 매트릭스, 사고 업데이트)
├── phase-5-meta-review.md             # Meta-Red Team 리뷰 결과
├── README.md                          # 가이드라인 전체 개요, 빠른 시작 가이드, 문서 탐색 맵
├── standards-comparison-42119-7.md    # 기준 문서(42119-7) 비교 분석 리포트
├── academic-trends-report.md          # 학술동향 분석 리포트 (arXiv 최근 6개월)
├── risk-trends-report.md              # 리스크 동향 분석 리포트 (MIT Risk Repository 등)
├── test-scenarios.md                  # 테스트 시나리오 및 케이스 (초기 버전)
├── **iso-29119-test-scenarios-and-cases.md** # **ISO/IEC 29119 준수 테스트 시나리오 및 케이스 카탈로그 (2,912 lines, Production-Ready)** ⭐ NEW
├── **integrated-risk-attack-test-plan.md**  # **통합 리스크-공격-테스트 계획 템플릿 (1,872 lines, ISO 29119-3 Section 7.2 준수)** ⭐ NEW
├── benchmark-testing-report.md        # 벤치마크 데이터셋 활용 레드팀 테스팅 방안
├── sw-testing-standards-report.md     # ISO/IEC 29119 연계 분석 리포트
├── sw-testing-checklist.md            # ISO/IEC 29119 정합성 체크리스트 (63개 항목, 현재 71%)
├── conformance-update-2026-02-10.md   # ISO/IEC 29119 정합성 업데이트 상세 내역 (33% → 71%)
├── standards-conformance-improvement-summary.md  # 표준 정합성 개선 요약
├── improvement-and-remediation-plan.md # 가이드라인 개선 계획 (Phase 1-4, v1.0 → v2.0 로드맵)
├── guideline-executability-verification.md # 가이드라인 실행 가능성 검증 리포트
├── pdf-requirements-integration-proposal.md # PDF 요구사항 통합 제안
├── pdf-analysis/                      # 참고 문서 분석 결과 (42119-7 제외)
│   ├── {문서명}-analysis.md
│   └── pdf-analysis-summary.md        # 전체 참고 문서 분석 종합
├── archive/                           # 이전 분석 결과 아카이브 (날짜별 버전 관리)
│   ├── academic-trends-report-YYYY-MM-DD.md
│   ├── benchmark-testing-report-YYYY-MM-DD.md
│   └── pdf-analysis/
└── index.html                         # 최종 통합 HTML (v1.5, Appendix A & B 포함)
```

### 신규 산출물 상세 (2026-02-10 추가)

#### iso-29119-test-scenarios-and-cases.md
- **목적**: ISO/IEC 29119 표준 준수 테스트 시나리오 및 케이스 참조 카탈로그
- **크기**: 2,912 lines
- **상태**: Production-Ready
- **주요 내용**:
  - 30개 테스트 시나리오 (19 필수 + 11 선택)
  - 93개 상세 테스트 케이스
  - 100% 공격 패턴 커버리지 (19/19)
  - ISO 29119-3 (테스트 문서화) 100% 준수
  - ISO 29119-4 (테스트 기법) 13개 기법 적용
  - 리스크 티어별 필수/선택 분류
  - 테스트 노력 예측 (Tier 1: 150-180h, Tier 2: 110-140h, Tier 3: 60-80h, Tier 4: 25-35h)

#### integrated-risk-attack-test-plan.md
- **목적**: 리스크-공격-테스트 통합 계획 템플릿
- **크기**: 1,872 lines
- **상태**: Customizable Template
- **주요 내용**:
  - Risk-Attack-Test 추적성 매트릭스 (14개 리스크 매핑)
  - 3-에이전트 통합 아키텍처 (risk-analyst + attack-researcher + testing-agent)
  - ISO/IEC 29119-3 Section 7.2 (Test Plan) 완벽 준수
  - 리스크 기반 테스트 선택 알고리즘
  - 테스트 노력 배분 가이드 (Critical 50-60%, High 30-35%, Medium 10-15%, Low 0-5%)
  - 완전한 추적성 체인: Risk → Attack → Test Scenario → Test Case → Evidence → Residual Risk

```
pdf/                                   # 참고 문서 PDF 저장소
├── 42119-7.pdf                        # 기준 문서 (standards-agent 전담)
└── {기타 참고문서}.pdf                  # 참고 문서 (reference-doc-agent 전담)
```

```
29119/                                 # ISO/IEC 29119 소프트웨어 테스팅 표준
├── 29119-1-2022.pdf                   # Part 1: General concepts
├── 29119-2-2021.pdf                   # Part 2: Test processes
├── 29119-3-2021.pdf                   # Part 3: Test documentation
└── 29119-4-2021.pdf                   # Part 4: Test techniques
```

## 핵심 설계 원칙

1. **실제 공격/실패 경험이 이론보다 우선**
2. 모델 단위뿐만 아닌 **AI 시스템/운영/사회적 맥락** 포함
3. 특정 기업/국가/벤치마크 **비종속**
4. 기술 언어 ↔ 규제/표준 언어를 **동시에 구사**
5. 합의보다 **이견과 불확실성 관리**를 중시
6. 작성 과정 자체를 **레드팀 프로세스처럼 운영**

## 금기 사항 (반드시 준수)

- 체크리스트화 금지
- 점수 기반 합격/불합격 논리 금지
- 특정 모델/기업 기준 암묵적 포함 금지
- "이걸 따르면 안전하다"는 표현 금지
- 실패/한계 미기술 금지

## 가이드라인 구조 (Normative Core + Living Annex)

### Normative Core (안정적, 변경 최소화)

**표준 적용 원칙**:
- **프로세스 구조 및 문서 양식**: ISO/IEC 29119-2 (Test processes) 및 29119-3 (Test documentation) 준수
- **테스트 내용(Content) 및 AI 리스크 정의**: ISO/IEC 42119-7 (AI-specific requirements) 준수
- **문서 작성 규칙**: ISO/IEC Directives Part 2 준수 (shall/should/may, normative/informative 구분)

#### 6단계 레드팀 테스팅 프로세스 (ISO/IEC 29119-2 기반 구조)

1. **계획 (Planning & Scoping)** [ISO/IEC 29119-2 프로세스 구조]
   - 조직적 테스트 정책 수립: 리스크 수용 한계(Risk Appetite) 및 테스팅 독립성 보장 [29119-2]
   - **관여 규칙(RoE, Rules of Engagement) 정의**: 공격 허용 범위, 금지된 공격, 법적/윤리적 경계 설정 (필수) [42119-7 AI-specific]
   - **리스크 기반 범위 식별**: Annex B를 참조하여 테스트할 고위험 영역(Critical Risk Areas) 선정 [42119-7 AI Risk]

2. **설계 (Design & Threat Modeling)** [ISO/IEC 29119-2 프로세스 구조]
   - 위협 모델링(Threat Modeling): 시스템 아키텍처 분석 및 공격 표면(Attack Surface) 식별 [29119-2]
   - **공격 시나리오 설계**: Annex A(공격 라이브러리)와 Annex C(벤치마크)를 조합하여 구체적 공격 벡터 설계 [42119-7 AI Attack Patterns]
   - 성공 기준(Pass/Fail Criteria) 수립: 단순 점수가 아닌, **리스크 발현 시의 영향도(Impact) 기반 판정 기준** 수립 [42119-7 AI Risk-based]

3. **환경 구축 (Environment Setup)** [ISO/IEC 29119-2 프로세스 구조]
   - **공격 인프라 준비**: 레드팀 전용 도구, 페르소나 계정, 우회(Jailbreak) 프롬프트 DB 준비 [42119-7 AI-specific]
   - 모니터링 구성: 시스템의 이상 행동 및 출력 로그를 포착할 수 있는 로깅 환경 구성 [29119-2]

4. **실행 (Execution)** [ISO/IEC 29119-2 프로세스 구조]
   - **정적/동적 테스팅**: 자동화된 벤치마크 실행(1차) 및 수동 레드팀 공격(2차) 수행 [42119-7 AI Testing Methods]
   - 사고 기록(Incident Recording): 발견된 취약점, 프롬프트, 모델의 응답, 시스템 로그를 '**결함 보고서(Defect Report)**' 형태로 기록 [29119-3 Documentation]

5. **분석 및 평가 (Analysis & Evaluation)** [ISO/IEC 29119-2 프로세스 구조]
   - **근본 원인 분석(RCA)**: 실패 원인이 모델(Model), 검색(RAG), 또는 시스템 정책(System Policy) 중 어디에 있는지 규명 [42119-7 AI Failure Analysis]
   - **잔여 리스크(Residual Risk) 평가**: 완화 조치 후에도 남아있는 리스크 수준 평가 [42119-7 AI Risk Assessment]

6. **보고 및 대응 (Reporting & Follow-up)** [ISO/IEC 29119-2 프로세스 구조, 29119-3 문서 양식]
   - 테스트 완료 보고서: 이해관계자별 맞춤형 보고 (경영진용 요약 / 개발자용 상세 로그) [29119-3 Report Template]
   - **취약점 공개 정책(Disclosure Policy)**: 외부 모델일 경우 책임 있는 공개(Responsible Disclosure) 절차 준수 [42119-7 AI-specific]
   - 개선 계획 수립: 발견된 취약점에 대한 재학습, 필터링 강화 등 구체적 개선 조치 추적 [29119-2 Follow-up Process]

#### 핵심 구성요소

- **리스크 기반 테스트 범위 결정** [29119-2 프로세스 + 42119-7 AI 리스크 분류]
- **위협 모델 기반 테스트 설계** [29119-4 테스트 기법 + 42119-7 AI 공격 패턴]
- **보고서 표준 구조** [29119-3 문서 템플릿 + 42119-7 AI-specific 보고 항목]
- **지속적 레드팀 운영 모델** [29119-2 조직 테스트 프로세스 + 42119-7 Living Process]

### Living Annex (지속 업데이트)
- **Annex A (Normative)**: Attack Pattern Library (Model / System / Socio-technical 3계층) - 가이드라인 준수를 위해 반드시 고려해야 할 최소 공격 유형 정의
- **Annex B (Informative)**: Risk-Failure-Attack 매핑 (MIT AI Risk Repository 연계) - 리스크 식별을 돕기 위한 참고 자료
- **Annex C (Informative)**: Benchmark Coverage Matrix (커버리지 관점, 점수 아닌 범위 분석) - 벤치마크 활용 시 참고 자료
- **Annex D (Informative)**: Incident-driven Update Guide (사고 → 분석 → 패턴 추출 → 업데이트) - 벤치마크 활용 시 참고 자료

## 참조 표준 및 프레임워크

| 문서 | 역할 |
|------|------|
| **ISO/IEC Directives Part 2** | **가이드라인 작성 규칙 (문서 구조, 규범적 표현)** |
| **42119-7** | **기준 문서 - 가이드라인 최우선 정합 대상** |
| ISO/IEC 22989 | AI 용어 기준 |
| **ISO/IEC 29119-1~4** | **소프트웨어 테스팅 표준 (프로세스, 문서, 기법) - 가이드라인 연계 기반** |
| NIST AI RMF 1.0 | 리스크 관리 프레임워크 |
| NIST 600-1 | AI Red Teaming 직접 참조 |
| MIT AI Risk Repository | 리스크 분류 체계 |
| OWASP LLM Top 10 (2025) | 모델 레벨 위협 분류 |
| MITRE ATLAS | 적대적 위협 분류 |
| EU AI Act | 규제 요구사항 |
| UK AISI Guidance | 안전성 평가 접근법 |

## 최종 산출물 특성

- **LLM, VLM, Foundation Model, Physical AI, Agentic AI 등 모든 첨단 AI 시스템에 적용 가능한 가이드라인**
- 국제적으로 통용 가능한 **레드팀 공통 언어**
- 실패를 공식적으로 기록/공유할 수 있는 구조
- 벤치마크/리스크/사고를 연결한 프레임워크
- **"AI는 본질적으로 완전 검증 불가"**라는 전제의 제도화
- 한/영 이중언어 지원
- **ISO/IEC Directives Part 2 준수 문서 구조**
- **ISO/IEC 29119 소프트웨어 테스팅 표준 71% 정합 (Critical/High 갭 모두 해결)**
- **실행 가능성 검증 완료** (testing-agent 검증 PASS)
- **v1.0 production-ready 상태** (minor enhancements 권장)
- 최종 형식: HTML (output/ai-redteam-guideline/index.html)

## 버전 및 개선 계획

### 현재 버전 (v1.0 - 2026-02-10)
- **ISO/IEC 29119 정합성**: 71% (45/63 items)
- **프로세스 정합성**: 84% (16/19)
- **문서화 정합성**: 93% (13/14)
- **테스트 기법 정합성**: 63% (10/16)
- **용어 정합성**: 43% (6/14)
- **Phase 3 Normative Core**: 1,576 lines (935 → 1,576, +641 lines)
- **주요 개선사항**:
  - 6개 스테이지 모두에 Entry/Exit Criteria 추가
  - 11개 새 활동 추가 (P-6~P-9, D-2.5, E-6, R-5, R-6)
  - Section 11: Organizational Test Policy and Practices 추가
  - ISO/IEC 29119-4 테스트 기법 정렬 (D-2.5)

### 향후 개선 로드맵
- **Phase 1 (즉시, 1-2주)**: v1.0 릴리스를 위한 실행 가능성 갭 5개 수정 (11시간)
  - 위협 모델 문서 템플릿, 테스트 실행 로그 형식, 잔여 리스크 요약, 테스트 준비 검토 명확화, 테스트 케이스 예제
- **Phase 2 (단기, 1-3개월)**: v1.1 고우선순위 규범적 요구사항 통합 (16일)
  - OWASP/AISI/CSA 가이드 핵심 10개 권고사항 반영
  - 73-75% ISO 29119 정합성 목표
- **Phase 3 (중기, 6-12개월)**: v2.0 종합 통합 (22.5일)
  - 나머지 9개 규범적 권고사항 통합
  - 78-80% ISO 29119 정합성 목표
- **Phase 4 (장기, 1년+)**: v2.1+ 지속적 개선
  - 분기별 리뷰, 커뮤니티 피드백, 파일럿 검증

---

## 주요 이정표 (Milestones)

### 2026-02-10: Testing-Agent 주요 산출물 완성 ✅
- **ISO/IEC 29119 준수 테스트 카탈로그**: iso-29119-test-scenarios-and-cases.md (2,912 lines)
  - 30개 테스트 시나리오, 93개 테스트 케이스
  - 100% 공격 패턴 커버리지
  - ISO 29119-3/29119-4 완벽 준수
- **통합 리스크-공격-테스트 계획**: integrated-risk-attack-test-plan.md (1,872 lines)
  - Risk-Attack-Test 추적성 매트릭스
  - 3-에이전트 통합 (risk-analyst + attack-researcher + testing-agent)
  - ISO 29119-3 Section 7.2 준수
- **index.html v1.5 업데이트**: Appendix A & B 추가 (4,935 lines, +459 lines)

### 2026-02-10: ISO/IEC 29119 정합성 71% 달성 ✅
- 33% → 71% (+38 percentage points, +24 items)
- Critical/High priority 갭 모두 해결
- phase-3-normative-core.md: 935 → 1,576 lines (+641 lines)

### 2026-02-09: 초기 가이드라인 v1.0 완성 ✅
- Phase R, 0, 1-2, 3, 4, 5 모두 완성
- 학술/리스크/벤치마크 동향 분석 완료
- index.html v1.4 통합 HTML 생성

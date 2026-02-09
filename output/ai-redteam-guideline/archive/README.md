# Archive Directory / 아카이브 디렉토리

This directory stores historical versions of analysis reports to preserve the evolution of the AI Red Team Guideline.

이 디렉토리는 AI 레드팀 가이드라인의 발전 과정을 보존하기 위해 분석 보고서의 이력 버전을 저장합니다.

## Archiving Policy / 아카이빙 정책

When any of these agents perform new analysis, previous results MUST be archived here:

다음 에이전트가 새로운 분석을 수행할 때, 이전 결과는 반드시 여기에 아카이빙해야 합니다:

- **attack-researcher**: Attack analysis, threat models / 공격 분석, 위협 모델
- **academic-researcher**: Literature reviews, trend reports / 문헌 검토, 트렌드 보고서
- **risk-analyst**: Risk assessments, compliance analysis / 위험 평가, 정합성 분석
- **benchmark-agent**: Benchmark reports, performance analysis / 벤치마크 보고서, 성능 분석

## Naming Convention / 명명 규칙

**Format**: `{original-filename}-YYYY-MM-DD.md`

**Examples**:
```
academic-trends-report-2026-02-09.md
benchmark-testing-report-2026-02-10.md
standards-conformance-improvement-summary-2026-02-09.md
```

## Directory Structure / 디렉토리 구조

```
archive/
├── README.md (this file)
├── academic-trends-report-2026-02-09.md
├── benchmark-testing-report-2026-02-09.md
├── conformance-update-2026-02-09.md
└── pdf-analysis/
    ├── {archived PDF analysis files}
    └── ...
```

## Archiving Procedure / 아카이빙 절차

**Before creating new analysis / 새 분석 생성 전**:

1. Check if file exists in parent directory / 상위 디렉토리에 파일 존재 확인
   ```bash
   ls -l ../academic-trends-report.md
   ```

2. If exists, move to archive with date / 존재하면 날짜와 함께 아카이브로 이동
   ```bash
   mv ../academic-trends-report.md ./academic-trends-report-$(date +%Y-%m-%d).md
   ```

3. Create new analysis in parent directory / 상위 디렉토리에 새 분석 생성
   ```bash
   # Agent creates new file at ../academic-trends-report.md
   ```

## Retention Policy / 보관 정책

- All archived files are permanent / 모든 아카이브 파일은 영구 보관
- Used for historical comparison and decision tracking / 이력 비교 및 의사결정 추적에 사용
- Enables rollback if needed / 필요시 롤백 가능

---

**Created**: 2026-02-10
**Purpose**: Version control for analysis deliverables / 분석 결과물의 버전 관리

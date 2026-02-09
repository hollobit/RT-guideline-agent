# Agent Helper Scripts / 에이전트 헬퍼 스크립트

This directory contains utility scripts for agent workflows.

이 디렉토리는 에이전트 워크플로우를 위한 유틸리티 스크립트를 포함합니다.

---

## check-reanalysis-needed.sh

**Purpose / 목적**: Determine if file re-analysis is needed by comparing checksums

**목적**: 체크섬을 비교하여 파일 재분석이 필요한지 확인

### Usage / 사용법

```bash
./scripts/check-reanalysis-needed.sh <source-file> <analysis-report>
```

### Exit Codes / 종료 코드

- **0**: Re-analysis NEEDED (file new or changed) / 재분석 필요 (새 파일 또는 변경됨)
- **1**: Re-analysis NOT needed (file unchanged) / 재분석 불필요 (파일 변경 없음)
- **2**: Error (missing files or invalid format) / 오류 (파일 없음 또는 잘못된 형식)

### Examples / 예제

#### Example 1: Check if PDF needs re-analysis / PDF 재분석 필요 여부 확인

```bash
cd /Users/jonghongjeon/git/agent

./scripts/check-reanalysis-needed.sh \
  reference-docs/GenAI-Red-Teaming-Guide-1.0.2.17.25.pdf \
  output/ai-redteam-guideline/pdf-analysis/GenAI-Red-Teaming-Guide-normative-analysis.md

# Output if unchanged:
# ✗ File unchanged - re-analysis NOT needed
# Action: Skip analysis (use existing report)
# Exit code: 1
```

#### Example 2: Check if guideline needs re-analysis / 가이드라인 재분석 필요 여부 확인

```bash
./scripts/check-reanalysis-needed.sh \
  output/ai-redteam-guideline/phase-3-normative-core.md \
  output/ai-redteam-guideline/standards-conformance-improvement-summary.md

# Output if changed:
# ✓ File has changed - re-analysis NEEDED
# Current hash:  a1b2c3d4...
# Recorded hash: x9y8z7w6...
# Action: Archive old analysis and proceed with re-analysis
# Exit code: 0
```

#### Example 3: Use in agent workflow / 에이전트 워크플로우에서 사용

```bash
#!/bin/bash
# reference-doc-agent workflow example

SOURCE_FILE="reference-docs/new-guide.pdf"
ANALYSIS_OUTPUT="output/ai-redteam-guideline/pdf-analysis/new-guide-analysis.md"

# Check if re-analysis needed
if ./scripts/check-reanalysis-needed.sh "$SOURCE_FILE" "$ANALYSIS_OUTPUT"; then
  echo "Proceeding with analysis..."

  # Archive old analysis if exists
  if [ -f "$ANALYSIS_OUTPUT" ]; then
    ARCHIVE_NAME="archive/$(basename $ANALYSIS_OUTPUT .md)-$(date +%Y-%m-%d).md"
    mv "$ANALYSIS_OUTPUT" "$ARCHIVE_NAME"
    echo "Archived previous analysis: $ARCHIVE_NAME"
  fi

  # Perform new analysis
  # ... analysis code here ...

else
  echo "Using existing analysis: $ANALYSIS_OUTPUT"
  exit 0
fi
```

### Integration with Agents / 에이전트 통합

**Applicable Agents / 적용 대상 에이전트**:
- `reference-doc-agent`: PDF/document analysis
- `standards-agent` (sw-testing-standards-agent): Standards conformance
- `attack-researcher`: Attack catalog analysis
- `academic-researcher`: Literature review (when source unchanged)

**Required Analysis Report Format / 필수 분석 보고서 형식**:

```markdown
# Analysis Report Title

**Analysis Metadata**
- **Source File**: `path/to/source.pdf`
- **Source Modified**: 2026-02-10 10:30:00
- **Source Checksum**: sha256:abc123def456789...  ← REQUIRED
- **Analysis Date**: 2026-02-10 11:00:00
- **Analyzer**: agent-name

... rest of analysis ...
```

See `.analysis-metadata-template.md` for complete template.

---

## Benefits / 이점

✅ **Prevents duplicate work** / 중복 작업 방지
✅ **Saves time and API costs** / 시간 및 API 비용 절감
✅ **Ensures consistency** / 일관성 보장
✅ **Easy to integrate** / 쉬운 통합
✅ **Clear exit codes** / 명확한 종료 코드

---

## Future Scripts / 향후 스크립트

Potential additions / 추가 예정:
- `archive-analysis.sh`: Automated archiving with date stamps
- `generate-metadata.sh`: Generate metadata header for analysis reports
- `validate-analysis-format.sh`: Check if analysis report has required metadata

---

**Created**: 2026-02-10
**Maintained by**: AI Red Team Guideline Project
**Version**: 1.0

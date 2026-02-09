#!/bin/bash
# check-reanalysis-needed.sh
# Helper script to determine if file re-analysis is needed
# 파일 재분석 필요 여부를 확인하는 헬퍼 스크립트

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Usage function
usage() {
  echo "Usage: $0 <source-file> <analysis-report>"
  echo ""
  echo "Checks if re-analysis is needed by comparing source file checksum"
  echo "with the checksum recorded in the analysis report."
  echo ""
  echo "Exit codes:"
  echo "  0 - Re-analysis needed (file new or changed)"
  echo "  1 - Re-analysis NOT needed (file unchanged)"
  echo "  2 - Error (missing files or invalid format)"
  echo ""
  echo "Examples:"
  echo "  $0 reference-docs/guide.pdf pdf-analysis/guide-analysis.md"
  echo "  $0 phase-3-normative-core.md standards-conformance-report.md"
  exit 2
}

# Check arguments
if [ $# -ne 2 ]; then
  usage
fi

SOURCE_FILE="$1"
ANALYSIS_REPORT="$2"

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
  echo -e "${RED}Error: Source file not found: $SOURCE_FILE${NC}" >&2
  exit 2
fi

# If analysis report doesn't exist, re-analysis is needed
if [ ! -f "$ANALYSIS_REPORT" ]; then
  echo -e "${GREEN}✓ No previous analysis found${NC}"
  echo -e "${GREEN}✓ Re-analysis NEEDED${NC}"
  echo ""
  echo "Reason: Analysis report does not exist"
  echo "Action: Proceed with new analysis"
  exit 0
fi

# Extract recorded checksum from analysis report
RECORDED_HASH=$(grep -i "Source Checksum:" "$ANALYSIS_REPORT" 2>/dev/null | head -1 | sed 's/.*sha256:\s*//' | tr -d ' \r\n')

# If no checksum found in report, re-analysis needed
if [ -z "$RECORDED_HASH" ]; then
  echo -e "${YELLOW}⚠ No checksum found in analysis report${NC}"
  echo -e "${GREEN}✓ Re-analysis NEEDED${NC}"
  echo ""
  echo "Reason: Analysis report missing checksum metadata"
  echo "Action: Proceed with re-analysis and include metadata header"
  exit 0
fi

# Calculate current source file checksum
CURRENT_HASH=$(shasum -a 256 "$SOURCE_FILE" | cut -d' ' -f1 | tr -d ' \r\n')

# Get file modification times for informational output
SOURCE_MTIME=$(stat -f "%Sm" -t "%Y-%m-%d %H:%M:%S" "$SOURCE_FILE" 2>/dev/null || echo "unknown")
ANALYSIS_MTIME=$(stat -f "%Sm" -t "%Y-%m-%d %H:%M:%S" "$ANALYSIS_REPORT" 2>/dev/null || echo "unknown")

# Compare checksums
if [ "$RECORDED_HASH" = "$CURRENT_HASH" ]; then
  echo -e "${RED}✗ File unchanged - re-analysis NOT needed${NC}"
  echo ""
  echo "Source file:     $SOURCE_FILE"
  echo "Modified:        $SOURCE_MTIME"
  echo "Current hash:    $CURRENT_HASH"
  echo ""
  echo "Analysis report: $ANALYSIS_REPORT"
  echo "Analyzed:        $ANALYSIS_MTIME"
  echo "Recorded hash:   $RECORDED_HASH"
  echo ""
  echo "Action: Skip analysis (use existing report)"
  exit 1
else
  echo -e "${GREEN}✓ File has changed - re-analysis NEEDED${NC}"
  echo ""
  echo "Source file:     $SOURCE_FILE"
  echo "Modified:        $SOURCE_MTIME"
  echo "Current hash:    $CURRENT_HASH"
  echo ""
  echo "Analysis report: $ANALYSIS_REPORT"
  echo "Analyzed:        $ANALYSIS_MTIME"
  echo "Recorded hash:   $RECORDED_HASH"
  echo ""
  echo "Action: Archive old analysis and proceed with re-analysis"
  exit 0
fi

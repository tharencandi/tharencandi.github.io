#!/usr/bin/env bash
# Builds cv/Tharen_Candi_CV.pdf from cv/cv.typ, which reads its projects and
# work experience from _data/*.yml.
#   cv/build.sh          build once
#   cv/build.sh watch    open the PDF and rebuild it on every save to cv.typ or the YAML
set -euo pipefail
cd "$(dirname "$0")/.."

case ${1:-} in
  watch) cmd=(watch --open) ;;
  "") cmd=(compile) ;;
  *) echo "usage: $0 [watch]" >&2; exit 2 ;;
esac

# The resume template's icon package emits a page of harmless warnings on
# every build; drop those so real errors stay visible.
typst "${cmd[@]}" --root . --diagnostic-format short cv/cv.typ cv/Tharen_Candi_CV.pdf 2>&1 \
  | { grep --line-buffered -v '@preview/scienceicons' || true; }

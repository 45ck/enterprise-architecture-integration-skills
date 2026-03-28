#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

install_skill() {
  local skill="$1"
  mkdir -p "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
  cp "$SCRIPT_DIR/.claude/skills/$skill/SKILL.md" "$HOME/.claude/skills/$skill/SKILL.md"
  cp "$SCRIPT_DIR/.agents/skills/$skill/SKILL.md" "$HOME/.agents/skills/$skill/SKILL.md"
  echo "Installed $skill"
}

SKILLS=(
  application-landscape-mapper
  ci-cd-readiness-checker
  container-vs-vm-advisor
  enterprise-context-mapper
  enterprise-domain-alignment-checker
  environment-topology-planner
  esb-fit-reviewer
  loose-coupling-checker
  message-bus-selector
  orchestration-vs-choreography-reviewer
  public-private-hybrid-cloud-selector
  publish-subscribe-designer
  rpc-vs-message-pattern-selector
  service-contract-designer
  soa-suitability-reviewer
)

for skill in "${SKILLS[@]}"; do
  install_skill "$skill"
done

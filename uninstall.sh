#!/usr/bin/env bash
set -euo pipefail

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
  rm -rf "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
  echo "Removed $skill"
done

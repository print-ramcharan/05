#!/usr/bin/env bash
set -euo pipefail
echo "=== JENKINS CONTROLLER / AGENT CHECK ==="
if ! command -v java >/dev/null 2>&1; then
  sudo apt-get update
  sudo apt-get install -y openjdk-21-jre
fi
java -version
if [[ -n "${JENKINS_URL:-}" ]]; then
  curl -fsSI "$JENKINS_URL/login" | head -n 1
else
  echo "Set JENKINS_URL, for example http://localhost:8080"
fi
echo "=== AGENT EXECUTION COMMANDS ==="
echo "hostname"
echo "whoami"
echo "java -version"
echo "Use Jenkinsfile with an inbound agent labelled ubuntu-agent."
echo "RESULT: Agent prerequisites checked; Jenkins job must be launched by the Controller."

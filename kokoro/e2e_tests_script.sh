#!/bin/bash
echo "*** e2e tests ***"
find .

if [ -n "$KOKORO_ARTIFACTS_DIR" ]; then
  cd "${KOKORO_ARTIFACTS_DIR}/github/hello-world"
  # Need to use the . to run in the same shell to inherit exports
  . kokoro/setup.sh
fi

mkdir -p test_logs
cp kokoro/log.xml test_logs


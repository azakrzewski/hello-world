#!/bin/bash

if [ -n "$KOKORO_ARTIFACTS_DIR" ]; then
  cd "${KOKORO_ARTIFACTS_DIR}/github/hello-world"
  # Need to use the . to run in the same shell to inherit exports
  . kokoro/setup.sh
fi

echo "*** build ***"

mkdir -p test_logs
cat kokoro/log.xml > test_logs/build_sponge_log.xml

echo '** KOKORO_ARTIFACTS_DIR **'
find "${KOKORO_ARTIFACTS_DIR}"

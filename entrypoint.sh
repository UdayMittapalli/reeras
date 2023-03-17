#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

USER airflow
WORKDIR ${AIRFLOW_HOME}
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM marmute/oracledb:xe

MAINTAINER Alex Marmute <alex_marmute@hotmail.com>

COPY runOracle.sh /u01/app/oracle/
COPY start_oracle.sh /u01/app/oracle/
COPY shrink_sysaux.sql /u01/app/oracle/

ENV ORACLE_PWD=manager

RUN chmod 755 /u01/app/oracle/runOracle.sh ; chmod 755 /u01/app/oracle/start_oracle.sh ; chmod 755 /u01/app/oracle/shrink_sysaux.sql ; /u01/app/oracle/runOracle.sh

CMD exec /u01/app/oracle/start_oracle.sh

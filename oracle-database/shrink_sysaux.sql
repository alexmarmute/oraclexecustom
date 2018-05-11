-- create temporary sysaux tablespace for reorg

create tablespace sysaux_temp datafile '/u01/app/oracle/oradata/XE/sysaux_temp.dbf' size 1M autoextend on next 1M maxsize unlimited;

-- Move all Objects that uses blocks at the end of the datafile

alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_TAB_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_IND_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux_temp;
alter table "WRI$_OPTSTAT_IND_HISTORY" move tablespace sysaux_temp;

-- Move Objects back to the default SYSAUX TS

alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_TAB_HISTORY move" tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_IND_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTHEAD_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_HISTGRM_HISTORY" move tablespace sysaux;
alter table "WRI$_OPTSTAT_IND_HISTORY" move tablespace sysaux;

-- REBUILD INDEXES

alter index "I_WRI$_OPTSTAT_H_OBJ#_ICOL#_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_OBJ_ICOL_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_H_OBJ#_ICOL#_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_H_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_TAB_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_OBJ_ICOL_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_OBJ_ICOL_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_OBJ_ICOL_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_OBJ_ICOL_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_OBJ_ICOL_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_IND_OBJ#_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_HH_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_H_OBJ#_ICOL#_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_H_OBJ#_ICOL#_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_H_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_H_OBJ#_ICOL#_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_H_OBJ#_ICOL#_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_H_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_H_OBJ#_ICOL#_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_IND_OBJ#_ST" REBUILD;

-- Rebuild the following indexes again

alter index "I_WRI$_OPTSTAT_HH_OBJ_ICOL_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_IND_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_TAB_ST" REBUILD;
alter index "I_WRI$_OPTSTAT_TAB_OBJ#_ST" REBUILD;

-- Resize SYSAUX TS

alter database datafile '/u01/app/oracle/oradata/XE/sysaux.dbf' resize 137M;

-- Drop SYSAUX_TEMP

drop tablespace sysaux_temp including contents and datafiles;

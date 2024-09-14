set lines 300 pages 9999 echo on long 99999999
col HOST_NAME for a30
col DB_UNIQUE_NAME for a20
select distinct name,db_unique_name,DBID,open_mode,database_role,PROTECTION_MODE,instance_name,host_name,TO_CHAR(STARTUP_TIME, 'HH24:MI DD-MON-YY') "STARTUP TIME" from gv$database,gv$instance;
select distinct name,service_name,db_unique_name,open_mode,database_role,instance_name,host_name,TO_CHAR(STARTUP_TIME, 'HH24:MI DD-MON-YY') "STARTUP TIME" from gv$database,gv$instance,GV$SESSION;
select * from gv$pdbs;
select INST_ID,con_id,name,open_mode,restricted from gv$pdbs;
select distinct service_name from gv$session;
select distinct service_name,inst_id from gv$session;
SELECT database_role role, name, db_unique_name, platform_id, open_mode, log_mode, flashback_on, protection_mode, protection_level FROM v$database;
alter session set container=e91d0112pd1;


Core New

SYS
nRS4_bhrsbi7#ATGL

DBAORA
bdGdj_KT4BD8#eH4T

DBSNMP
snPNB_VR75rD#ghcl

PCI New

SYS
nDM6_clrtlk#5HBYR

DBAORA
kdSBI_VB67jK#dn4k

DBSNMP
tciex_Bk7RD5#aG5H


Core: sys jGHW_QKT4LA7l#iFD rac_database BsR3A_Ks7XiG2#BDY dWFO_a9QrH5X#P5VZ
PCI:  sys  qRnY_P7zXt4FL#WnP rac_database dKrB6T_v6JC8l#SRW vEM_n8RF5wTJ#D2UH

alter session set container=E16P0101PD1;
alter session set nls_date_format = 'DD-MON-YYYY HH24:MI:SS' ;
select sysdate from dual;
col machine for a30
select MACHINE, count(*),status,username  from gv$session group by machine,status,username order by 2 desc;
SELECT inst_id,resource_name,current_utilization,initial_allocation FROM gv$resource_limit WHERE resource_name in ('processes', 'sessions') order by inst_id;

select MACHINE, count(*),status,username ,logon_time from gv$session where username='TVXUSRPRDPCISEC' group by machine,status,username,logon_time order by 2 desc;
=======


TEDCLZ.ACCOUNT_MASTER_AM01_SEGMENT

alter session set nls_date_format = 'DD-MON-YYYY HH24:MI:SS';

SELECT inst_id,resource_name,current_utilization,initial_allocation,max_utilization FROM gv$resource_limit WHERE resource_name in ('processes', 'sessions') order by inst_id;


select distinct username,status,machine,program, service_name,inst_id from gv$session where service_name like 'ED%'
order by service_name;

select distinct username,status,machine,program, service_name,inst_id from gv$session where service_name='EDSPRD3'



nohup sqlplus sys/cHM4_rkfdwh6#SBIN@"ORDPERF" as sysdba  @index_rebuild.sql > IDX_RBLD.log &

nohup sqlplus sys/cHM4_rkfdwh6#SBIN@E14P0103_TTCE as sysdba  @stats.sql > statsvv.log &

nohup sqlplus "/ as sysdba" @stats.sql > statsvv.log &

ARCHIVE LOG DESTINATION:

SELECT Sum(percent_space_used)-Sum(percent_space_reclaimable) "PCT_SPACE_USED_NOT_FREEABLE" FROM v$flash_recovery_area_usage;


ALERT LOG GREP:
==============

grep 'ORA-600'  /u04/app/oracle/diag/rdbms/*_ttc*/*/trace/alert_*.log

grep 'ORA-*'  /u04/app/oracle/diag/rdbms/e14p0103_ttce/E14P01032/trace/alert_E14P01032.log
zgrep 'ORA-600'  /u04/app/oracle/diag/rdbms/*_ttc*/*/trace/alert_*.log*.gz

grep 'CLIENT USER*'  /u01/app/oracle/admin/E07P0520_TTC/adump/E07P05201*.aud


grep -E '[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}.*ORA-[0-9]{4,}' alert_E57P12012.log | \ sed 's/^\([0-9\-T: ]*\).*ORA-/Timestamp: \1 Error: ORA-/'


UA:

SELECT EVENT_TIMESTAMP, DBUSERNAME, CLIENT_PROGRAM_NAME, USERHOST, ACTION_NAME, OBJECT_NAME, cast(DBMS_LOB.SUBSTR(SQL_TEXT, 4000, 1) as varchar(4000)), cast(DBMS_LOB.SUBSTR(SQL_BINDS, 4000, 1) as varchar(4000)), OS_USERNAME, INSTANCE_ID, EXTERNAL_USERID, GLOBAL_USERID, DBLINK_INFO, RETURN_CODE, OS_PROCESS, SCN, OBJECT_SCHEMA, NEW_SCHEMA, NEW_NAME, SYSTEM_PRIVILEGE_USED, SYSTEM_PRIVILEGE, AUDIT_OPTION, OBJECT_PRIVILEGES, ROLE, TARGET_USER, EXCLUDED_USER, EXCLUDED_SCHEMA, EXCLUDED_OBJECT, UNIFIED_AUDIT_POLICIES, RMAN_OPERATION, RMAN_OBJECT_TYPE, RMAN_DEVICE_TYPE, DP_TEXT_PARAMETERS1, DP_BOOLEAN_PARAMETERS1 from UNIFIED_AUDIT_TRAIL WHERE EVENT_TIMESTAMP BETWEEN TO_TIMESTAMP_TZ(:1, 'yyyy-mm-dd hh24:mi:ss TZH:TZM') and TO_TIMESTAMP_TZ(:2, 'yyyy-mm-dd hh24:mi:ss TZH:TZM')


SELECT EVENT_TIMESTAMP, DBUSERNAME, CLIENT_PROGRAM_NAME, USERHOST, ACTION_NAME, OBJECT_NAME, cast(DBMS_LOB.SUBSTR(SQL_TEXT, 4000, 1) as varchar(4000)), OS_USERNAME, INSTANCE_ID, EXTERNAL_USERID, GLOBAL_USERID, DBLINK_INFO, RETURN_CODE, OS_PROCESS, SCN, OBJECT_SCHEMA, NEW_SCHEMA, NEW_NAME, SYSTEM_PRIVILEGE_USED, SYSTEM_PRIVILEGE, AUDIT_OPTION, OBJECT_PRIVILEGES, ROLE, TARGET_USER, EXCLUDED_USER, EXCLUDED_SCHEMA, EXCLUDED_OBJECT, UNIFIED_AUDIT_POLICIES, RMAN_OPERATION, RMAN_OBJECT_TYPE, RMAN_DEVICE_TYPE, DP_TEXT_PARAMETERS1, DP_BOOLEAN_PARAMETERS1 from UNIFIED_AUDIT_TRAIL 


select * from UNIFIED_AUDIT_TRAIL where RETURN_CODE<>0 order by EVENT_TIMESTAMP desc;

select EVENT_TIMESTAMP, DBUSERNAME, OBJECT_NAME, CLIENT_PROGRAM_NAME, ACTION_NAME, USERHOST from UNIFIED_AUDIT_TRAIL where DBUSERNAME='TVXUSRPRDPCITOK';



Sys
cHM4_rkfdwh6#SBIN


cB9eFq_5bVuZ#ALKM

London#272727

PCI
nDM6_clesld#5HGSR, gtUYb_lEiDr#9CNQs





Core

Sys
rdtS_qYtD5Uj8#LKF

PCI

Sys
tHRa_IgRe7WKo#BWY

Request access to the new VDI pools via My Access entitlement APP-VDI-OracleTeam (you may have already done this step in September).
Begin using the new pools immediately and test for any missing capabilities.
If you need to transfer files to/from the VDIs, request the following and map the network drives to your laptop and the VDI.
APP-SMB-PCIENG-Passthrough
\\lif-f4esr4-core-pci-smb.target.com\PCIENG-Passthrough\OraclePCIFiles
APP-SMB-BVO-Passthrough
\\lif-f4csr4-core-pci-smb.target.com\BVO-Passthrough\OracleFiles


table size:

    SELECT DS.TABLESPACE_NAME, SEGMENT_NAME, ROUND(SUM(DS.BYTES) / (1024 * 1024*1024)) AS MB
  FROM DBA_SEGMENTS DS
  WHERE DS.TABLESPACE_NAME like 'TIME%' and SEGMENT_NAME IN (SELECT TABLE_NAME FROM DBA_TABLES)
 GROUP BY DS.TABLESPACE_NAME,SEGMENT_NAME
 order by mb desc;



ODS  SQL query to check performance stats:
===========================================
SELECT * FROM (
SELECT /*+ parallel(5)*/ 'TEST with 16 core new box' as test,TABLENAME,SUM(FETCHSIZE),MAX(BATCHLD),MIN(BATCHLD),
ROUND(CASE WHEN MAX(BATCHLD)-MIN(BATCHLD)=0 THEN 0 ELSE SUM(FETCHSIZE)/((MAX(BATCHLD)-MIN(BATCHLD))*86400) END,2) AS STATS FROM eds_stats
WHERE  (DEF_DATE)>=to_date('2023-09-26 02:30:00','yyyy-mm-dd hh24:mi:ss')
AND (DEF_DATE)<=to_date('2023-09-26 05:44:00','yyyy-mm-dd hh24:mi:ss') 
AND FETCHSIZE >= 1
GROUP BY TABLENAME
)A ORDER BY STATS ASC
GOM AL Backup:

Select name,free_mb,total_mb,free_mb/total_mb*100 "Free Percent" from v$asm_diskgroup where name='RECOC1';

ed53adm01vm01 primary node 1 AL backup
ed54adm01vm01 standby node 1 AL backup

nohup /home/orabkp/rman_v2/scripts/db_backup.sh E53P0101 AL > /home/orabkp/rman_v2/logs/E53P0101_AL_cron.log 2>&1

run this command in both primary and standby

CREATE PROFILE:
=================

create profile
   all_users
limit
   PASSWORD_LIFE_TIME 365
   PASSWORD_GRACE_TIME 10
   PASSWORD_REUSE_TIME UNLIMITED
   PASSWORD_REUSE_MAX 10
   FAILED_LOGIN_ATTEMPTS 3
    PASSWORD_VERIFY_FUNCTION NULL
   PASSWORD_LOCK_TIME UNLIMITED;


Listner logs disable:
=====================

ed07-prd04:ed07adm03vm02(oracle:E09P04081): pwd
/u02/app/ororgrid/diag/rdbms/_mgmtdb/-MGMTDB/incident
ed07-prd04:ed07adm03vm02(oracle:E09P04081):


LSNRCTL> set current_listener LISTENER_SCAN1
Current Listener is LISTENER_SCAN1
LSNRCTL> show log_status
Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=LISTENER_SCAN1)))
LISTENER_SCAN1 parameter "log_status" set to OFF
The command completed successfully
LSNRCTL>  set current_listener LISTENER_SCAN2
Current Listener is LISTENER_SCAN2
LSNRCTL> show log_status
Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=LISTENER_SCAN2)))
LISTENER_SCAN2 parameter "log_status" set to OFF
The command completed successfully
LSNRCTL>  set current_listener LISTENER_SCAN3
Current Listener is LISTENER_SCAN3
LSNRCTL> show log_status
Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=LISTENER_SCAN3)))
LISTENER_SCAN3 parameter "log_status" set to OFF
The command completed successfully


LSNRCTL> set current_listener LISTENER_SCAN1
Current Listener is LISTENER_SCAN1
LSNRCTL> show log_status
Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=LISTENER_SCAN1)))
LISTENER_SCAN1 parameter "log_status" set to OFF
The command completed successfully
LSNRCTL> set log_status ON
Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=LISTENER_SCAN1)))
LISTENER_SCAN1 parameter "log_status" set to ON
The command completed successfully
LSNRCTL>  show log_status
Connecting to (DESCRIPTION=(ADDRESS=(PROTOCOL=IPC)(KEY=LISTENER_SCAN1)))
LISTENER_SCAN1 parameter "log_status" set to ON
The command completed successfully


FRA:
====


set linesize 500
col NAME for a50
select name, ROUND(SPACE_LIMIT/1024/1024/1024,2) "Allocated Space(GB)", 
round(SPACE_USED/1024/1024/1024,2) "Used Space(GB)",
round(SPACE_RECLAIMABLE/1024/1024/1024,2) "SPACE_RECLAIMABLE (GB)" ,
(select round(ESTIMATED_FLASHBACK_SIZE/1024/1024/1024,2) 
from V$FLASHBACK_DATABASE_LOG) "Estimated Space (GB)"
from V$RECOVERY_FILE_DEST;

SELECT * FROM V$RECOVERY_AREA_USAGE;

https://www.rebellionrider.com/how-to-manage-space-of-the-fast-recovery-area/



sessions kill
================

select 'alter system kill session '||''''||sid||','||serial#||''''||' immediate ;' from gv$session  where username ='RELMGR' and machine like 'gomorderdetailsv1-line-charges-json%' and status='INACTIVE';

select 'alter system kill session '''||sid||','||serial#||',@'||inst_id||''' immediate ;' from gv$session  where username ='RELMGR'  and status='INACTIVE';

select 'alter system kill session '''||sid||','||serial#||',@'||inst_id||''' immediate ;' from gv$session  where username ='DIST'  and status='INACTIVE';




select count(*),username,machine,status from gv$session where username='GOAPAPP' and sql_id='728xkpakqqd5k' group by username,machine,status ;

TOTAL SESSIONS
set pagesize 9999
set linesize 500
set feedback off
col INST_NAME for a80
col USERNAME for a100
select name from v$database;
select *from v$active_instances;
select count(SERIAL#) as TOTAL_SESSIONS from gv$session where USERNAME NOT IN ('SYS','DBSNMP',' ');
select distinct(USERNAME),count(SERIAL#) as "No. Of Sessions" from gv$session where USERNAME NOT IN ('SYS','DBSNMP',' ') group by USERNAME order by 2 desc;


-- Session status

 select MACHINE, count(*),status,username,a.sql_id,logon_time  from gv$session,gv$sql a where a.sql_id='3m9h4q5g51ahy' group by machine,status,username ,a.sql_id,logon_time;

 select distinct MACHINE, count(*),status,username,a.sql_id,logon_time  from gv$session,gv$sql a where a.sql_id='3m9h4q5g51ahy'  and status='ACTIVE' and  username='IAGP_API_MGR' group by machine,status,username ,a.sql_id,logon_time;


select inst_id, sid, serial#, username, command, status, osuser, machine, program, sql_id, sql_exec_start, logon_time,
       WAIT_CLASS, EVENT, STATE, WAIT_TIME_MICRO/1000000, TIME_REMAINING_MICRO, TIME_SINCE_LAST_WAIT_MICRO,
       BLOCKING_SESSION_STATUS, BLOCKING_INSTANCE, BLOCKING_SESSION, FINAL_BLOCKING_SESSION_STATUS, FINAL_BLOCKING_INSTANCE, FINAL_BLOCKING_SESSION
from gv$session
where
    program like '%sqlplus%'
--    machine like '%wu7kc%'
--    sql_id in ('9kja7cw2mzujk','bqwkxbrvqvdyx')
;

 select sid,serial#,machine,program,logon_time,username,b.sql_id from gv$session,gv$sql b where b.sql_id='7kq1k5ygwhn49'

 select distinct machine,program,logon_time,username,b.sql_id,b.sql_fulltext from gv$session,gv$sql b where b.sql_id='7kq1k5ygwhn49'

 select distinct machine,program,logon_time,username from gv$session,gv$sql b where b.sql_id='7kq1k5ygwhn49' order by logon_time


 select distinct  a.sid,a.serial#,a.sql_id,a.username,a.status,a.logon_time from gv$sql,gv$session a where a.sql_id='3njuyavq9gc08';


--Locked object session kill:


select owner,object_name,object_type, status,created from dba_objects where  object_name in ('USERS','USERS_NEW') and owner in ('TIMES_IDENTITY_MGR');
alter session set ddl_lock_timeout=30;

ALTER TABLE "TIMES_IDENTITY_MGR"."USERS" RENAME to  "USERS_BKP_210923";

ALTER TABLE "TIMES_IDENTITY_MGR"."USERS_NEW" RENAME to  "USERS"

desc v$locked_object
select a.sid, a.serial#,a.username,a.logon_time,a.inst_id
from gv$session a, v$locked_object b, dba_objects c
where b.object_id = c.object_id
and a.sid = b.session_id
and OBJECT_NAME='USERS';

alter system kill session '195,46018,@1' immediate;


-- ASH aggregation in last 5 minute.


select username,sql_id,sql_opname,wait_class,event,samples, sum(samples) over ( partition by sql_id ) As sql_total
from
    (select us.username,sql_id, sql_opname, wait_class, event, count(*) As samples
    --select username,sql_id,sql_opname,count(*)
    from gv$active_session_history ac, dba_users us
    where
        ac.user_id = us.user_id
    --    and sample_time > (sysdate - 1/48)
    --    and event = 'latch free'
    --    and sql_id = '4abux2j34d39s'
    --    and session_id = 637 and inst_id = 2
    --      and sample_time > ( sysdate - ((1/24/60)*5) )
    --     and sample_time between '01-OCT-20 12.00.00.000000000 AM' and '01-OCT-20 12.05.00.000000000 AM'
    --      and lower(event) like '%lib%'
    --   and inst_id = 1 and session_id = 1891
    group by us.username,sql_id, sql_opname, wait_class, event)
order by sql_total desc, sql_id, samples desc
;


-- ASH Histogram

select to_char(sample_time,'dd-mon-yyyy hh:mi:ss am') mytime,wait_class, count(*) , sum(count(*)) over(partition by to_char(sample_time,'dd-mon-yyyy hh:mi:ss am')) As ash
from gv$active_session_history
where inst_id in (1,2,3,4)
      and sample_time > ( sysdate - ((1/24/60)*5) )
--    and sample_time between '14-JUN-19 01.06.00.000000000 AM' and '14-JUN-19 01.08.00.316000000 AM'
--    and wait_class like 'Concurrency'
group by to_char(sample_time,'dd-mon-yyyy hh:mi:ss am'),wait_class
order by to_char(sample_time,'dd-mon-yyyy hh:mi:ss am') desc
;

show pdbs;

select sample_time,inst_id,wait_class,event,count(*)
from gv$active_session_history
where inst_id in (1,2,3,4)
      and sample_time > ( sysdate - ((1/24/60)*5) )
--    and sample_time between '14-JUN-19 01.06.00.000000000 AM' and '14-JUN-19 01.08.00.316000000 AM'
--    and wait_class like 'Concurrency'
group by sample_time,inst_id,wait_class,event
order by sample_time desc
;


-- ASH Quick View

alter session set nls_date_format='DD-MON-YYYY HH:MI:SS AM';
select sysdate from dual;

select inst_id,sample_time,session_id,session_serial#,us.username,wait_class,event,ac.sql_id,sql_opname,blocking_inst_id||','||blocking_session As Blocker,program,machine,time_waited,current_obj#,
     ac.p1text,ac.p1,ac.p2text,ac.p2,ac.p3text,ac.p3,ac.qc_instance_id,ac.qc_session_id,ac.qc_session_serial#
     --,ac.con_id
from gv$active_session_history ac, dba_users us
where
    ac.user_id = us.user_id
--    and sample_time > ( sysdate - ((1/24/60)*10) )
--    and wait_class='Other'
--    and event = 'library cache: mutex X'
--     and sql_id in ('1bc2732vb184g')
    and session_id = 412 and inst_id = 1
--      and sample_time between '01-OCT-20 12.00.00.000000000 AM' and '01-OCT-20 12.05.00.000000000 AM'
--      and lower(event) like '%lib%'
--    and ( inst_id = 2 and ( session_id in (85) ) )
--      and ( inst_id = 2 and ( program like '%DBW%' ) )
--     and sql_opname like 'ALTER%'
-- and username='SHPMGR'
--group by p3
order by sample_time desc, sql_id desc
;

-- for standby
select inst_id,sample_time,session_id,session_serial#,wait_class,event,ac.sql_id,sql_opname,blocking_inst_id||','||blocking_session As Blocker,program,machine,time_waited,current_obj#,
     ac.p1text,ac.p1,ac.p2text,ac.p2,ac.p3text,ac.p3,ac.qc_instance_id,ac.qc_session_id,ac.qc_session_serial#
     --,ac.con_id
from gv$active_session_history ac
--where
--    ac.user_id = us.user_id
--    and sample_time > ( sysdate - ((1/24/60)*10) )
--    and wait_class='Other'
--    and event = 'library cache: mutex X'
--     and sql_id in ('1bc2732vb184g')
--    and session_id = 1891 --and inst_id = 1
--      and sample_time between '01-OCT-20 12.00.00.000000000 AM' and '01-OCT-20 12.05.00.000000000 AM'
--      and lower(event) like '%lib%'
--    and ( inst_id = 2 and ( session_id in (85) ) )
--      and ( inst_id = 2 and ( program like '%DBW%' ) )
--     and sql_opname like 'ALTER%'
-- and username='SHPMGR'
--group by p3
order by sample_time desc, sql_id desc
;


--For 11g version

select inst_id,sample_time,session_id,session_serial#,us.username,wait_class,event,time_waited,ac.sql_id,sql_opname,current_obj#,program,machine,blocking_inst_id||','||blocking_session As Blocker,
     ac.p1text,ac.p1,ac.p2text,ac.p2,ac.p3text,ac.p3,ac.qc_instance_id,ac.qc_session_id,ac.qc_session_serial#
from gv$active_session_history ac, dba_users us
where
    ac.user_id = us.user_id
--    and sample_time > (sysdate - 1/48)
--    and event = 'enq: TX - contention'
--    and sql_id in ('1j8ju1m31k9zh')
--    and session_id = 1536 and inst_id = 1
--      and sample_time between '08-DEC-19 01.54.00.316000000 AM' and '08-DEC-19 01.56.00.316000000 AM'
--      and lower(event) like '%lib%'
--    and ( inst_id = 2 and ( session_id in (2050) ) )
--     and sql_opname like 'ALTER%'
  and username='EAARCHIVE'
--group by p3
order by sample_time desc, sql_id desc
;

-- Active Sessin count from ASH

select sample_time,inst_id,count(*)
from gv$active_session_history
group by sample_time,inst_id
order by sample_time desc, inst_id
;

-- PGA and Temp usage from ASH

select sample_time, inst_id, round(sum(PGA_ALLOCATED)/1024/1024) pga_mb, round(sum(TEMP_SPACE_ALLOCATED)/1024/1024/1024) temp_mb
from gv$active_session_history
group by sample_time, inst_id
order by sample_time desc, inst_id
;


--dba_hist_active_sess_history

select sample_time,instance_number,session_id,us.username,wait_class,event,time_waited,ac.sql_id,sql_opname,current_obj#,program,machine,blocking_inst_id||','||blocking_session As Blocker,p1text,p1,p2text,p2,p3text,p3
from dba_hist_active_sess_history ac, dba_users us
where
    ac.user_id = us.user_id
--    and sample_time between '03-JUN-19 12.45.06.000000000 AM' and '03-JUN-19 12.47.00.000000000 AM'
--    and event like '%SQ%'
    and sql_id = 'bc4gaag3mbnab'
--    and session_id = 1032 and instance_number = 2
order by sample_time desc, username, sql_id
;

select username,wait_class,count(*) As "Count"
from dba_hist_active_sess_history ac, dba_users us
where
    ac.user_id = us.user_id
    and sample_time between '23-OCT-18 04.00.00.000000000 AM' and '23-OCT-18 04.12.00.000000000 AM'
--    and event = 'latch free'
--    and sql_id = 'cb5vgtz0hwc57'
--    and session_id = 1682 and inst_id = 1
group by username,wait_class
order by "Count" desc
;

select username,wait_class,sql_id,count(*) As "Count"
from dba_hist_active_sess_history ac, dba_users us
where
    ac.user_id = us.user_id
    and sample_time between '23-OCT-18 04.00.00.000000000 AM' and '23-OCT-18 04.12.00.000000000 AM'
--    and event = 'latch free'
--    and sql_id = 'cb5vgtz0hwc57'
--    and session_id = 1682 and inst_id = 1
group by username,wait_class,sql_id
order by "Count" desc
;


-- V$Session

select *
from gv$session s, gv$process p
where
 s.paddr = p.addr
 and s.sid=1536 and s.serial#=38315 and s.inst_id=1
;


-- Wait Chains - RAC



select chain_id,chain_signature,instance,sid,sess_serial#,blocker_instance,blocker_sid,blocker_sess_serial#,num_waiters,in_wait,wait_event_text,round(in_wait_secs/60) As in_wait_mins,row_wait_obj#
from v$wait_chains;

select c.chain_id,c.chain_signature,c.instance,c.sid,c.sess_serial#,c.blocker_instance,c.blocker_sid,c.blocker_sess_serial#,c.num_waiters,c.in_wait,c.wait_event_text,round(c.in_wait_secs/60) As in_wait_mins,
       s.username,s.program,s.module,s.machine,s.sql_id, s.event,
       t.sql_text
from v$wait_chains c,
     gv$session s,
     (select sql_id,sql_text from gv$sqltext where piece=0) t
where c.instance = s.inst_id
      and c.sid = s.sid
      and c.sess_serial# = s.serial#
      and s.sql_id = t.sql_id(+)
order by chain_id
    ;


-- Kill a session


Select 'alter system kill session '||chr(39)||sid||','||serial#||',@'||inst_id||chr(39)||' immediate;'
 from gv$session where sql_id='guv80d4jd7y7n';


select 'alter system kill session '||''''||c.sid||','||c.sess_serial#||',@'||c.instance||''''||' immediate;'
        -- c.chain_signature, c.instance, c.sid, c.sess_serial#, s.username, s.program
from v$wait_chains c,
     gv$session s,
     (select sql_id,sql_text from gv$sqltext where piece=0) t
where c.instance = s.inst_id
      and c.sid = s.sid
      and c.sess_serial# = s.serial#
      and s.sql_id = t.sql_id(+)
      and c.wait_event_text = 'enq: TX - row lock contention' and s.program = 'JDBC Thin Client'
order by chain_id
    ;




-- Object locks

select lo.inst_id,lo.session_id, lo.oracle_username, lo.os_user_name, lo.process, lo.locked_mode,
       obj.owner, obj.object_name, obj.subobject_name, obj.object_type, obj.status,
       tr.status, tr.start_time, tr.name, tr.xid,
       sess.inst_id, sess.sid, sess.serial#, sess.username, sess.status, sess.osuser, sess.process, sess.machine, sess.program, sess.sql_id, sess.sql_exec_start, sess.prev_sql_id
from gv$locked_object lo,
     dba_objects obj,
     gv$transaction tr,
     gv$session sess
where
    lo.object_id = obj.object_id
    and obj.object_name = 'PAYMENT'
    and lo.xidusn = tr.xidusn
    and lo.xidslot = tr.xidslot
    and lo.xidsqn = tr.xidsqn
    and tr.addr = sess.taddr
;



--=======================================--
-- Get SQLTEXT
--=======================================--

select * from gv$sql where sql_id='581xzq5vagard';
select * from gv$sql where sql_text like '%vmmmgr.vend%';

select * from gv$sqltext where sql_id='7m906x279ab8k' ;
select * from gv$sqltext where sql_text like 'select * from (select null  PROCEDURE_CATALOG%'; sql_id='4ryxq3tvdthpt' order by inst_id, piece asc;

set linesize 800
set pages 300
set long 30000
set longchunksize 30000
select sql_text from dba_hist_sqltext where sql_id='7m906x279ab8k';

desc dba_hist_sqltext;
select * from dba_hist_sqltext where sql_text like 'select * from (select null  PROCEDURE_CATALOG%';
desc gv$sqltext;
select * from dict where table_name like '%SQL%TEXT%';



--=======================================--
-- Get explain plan
--=======================================--

---- Manual explain plan for
explain plan for Select * from OMSMGR.ORDER_SNAPSHOT Where create_timestamp > '04-AUG-17 12.00.00.000000000 AM' and create_timestamp < '06-AUG-17 12.00.00.000000000 AM'  ;
explain plan for Select * from OMSMGR.ORDER_SNAPSHOT Where create_timestamp = '25-JUL-17 04.23.45.653000000 PM';
select plan_table_output from table(dbms_xplan.display(null,null,'ALL'));
select * from table(dbms_xplan.display());

---- from cursor cache
set pages 50
set linesize 300
SELECT * FROM table (
   DBMS_XPLAN.DISPLAY_CURSOR(sql_id=>'88pswfvg4n86b',format=>'ALL'));  -- This gets queries from V$SQL_PLAN

---- from AWR
set pages 100
set linesize 500
SELECT * FROM table (
   DBMS_XPLAN.DISPLAY_AWR('a8k5wy0kf04vn',null,null,'TYPICAL'));

---- from SPM Baselines
select * from table ( dbms_xplan.display_sql_plan_baseline ( sql_handle => 'SQL_295d04d03524a427' ) );


Creating a excel report 
=========================
set feed off markup html on spool on 
spool emp.xls
select * from noshow;
spool off
set markup html off spool off 


get password or any coroot user from password vault
in laptop’s command terminal:
sftp coroot2@ogslx1001
once in the sftp prompt:
cd /apps/ddbackup/vvasu/ODS
get <filename>


codbora2 N8%5v3jBZWmp+ym;
coroot1 gx-1\HQ9Uo5)$sEK
--=======================================--
-- SQL Monitor
--=======================================--

---- v$sql_monitor
alter session set NLS_DATE_FORMAT='dd-mon-yyyy hh12:mi:ss am';

select inst_id,sid,session_serial#,username,status,
--        sql_exec_start,
--        last_refresh_time,
--    to_char(sysdate,'dd-mon-yyyy hh:mi:ss am'),
--        to_char(last_refresh_time,'dd-mon-yyyy hh:mi:ss am'),
      ( to_timestamp(to_char(sysdate,'dd-mon-yyyy hh:mi:ss am')) - to_timestamp(to_char(SQL_EXEC_START,'dd-mon-yyyy hh:mi:ss am')) ) As Duration,
       to_char(SQL_EXEC_START,'dd-mon-yyyy hh:mi:ss am') As start_time,
       sql_id,
       sql_text,
       process_name,program,px_is_cross_instance,px_maxdop,px_maxdop_instances,px_servers_requested,px_servers_allocated,
--       binds_xml, other_xml,
       sqlmon.service_name,sqlmon.module,sqlmon.rm_consumer_group
--       ,sqlmon.*
from gv$sql_monitor sqlmon
where
     status not like 'DONE%'
--     and
--     sql_id='dzwqka64qg7wp'
--     sql_text like '%mysecond%'
--      and  px_server# is null
--     and username='TEDMGR'
order by sql_exec_start desc
--, duration desc
;

status of query ,how long it runs:

select inst_id,sid,session_serial#,username,status,
--        sql_exec_start,
--        last_refresh_time,
--    to_char(sysdate,'dd-mon-yyyy hh:mi:ss am'),
--        to_char(last_refresh_time,'dd-mon-yyyy hh:mi:ss am'),
      ( to_timestamp(to_char(sysdate,'dd-mon-yyyy hh:mi:ss am')) - to_timestamp(to_char(SQL_EXEC_START,'dd-mon-yyyy hh:mi:ss am')) ) As Duration,
       to_char(SQL_EXEC_START,'dd-mon-yyyy hh:mi:ss am') As start_time,
       sql_id,
       sql_text,
       process_name,program,px_is_cross_instance,px_maxdop,px_maxdop_instances,px_servers_requested,px_servers_allocated,
--       binds_xml, other_xml,
       sqlmon.service_name,sqlmon.module,sqlmon.rm_consumer_group
--       ,sqlmon.*
from gv$sql_monitor sqlmon
where
     sql_id = '2apt0zymbbrnb'
--     and
--     sql_id='dzwqka64qg7wp'
--     sql_text like '%mysecond%'
--      and  px_server# is null
--     and username='TEDMGR'
order by sql_exec_start desc
--, duration desc
;


alter system kill session '2272,18784,@1' immediate;

select 'alter system kill session '||''''||c.sid||','||c.session_serial#||',@'||c.inst_id||''''||' immediate;'
from gv$sql_monitor c
where
     status not like 'DONE%'
     and username='ARFTMGR'
;


show parameter name;

select * from gv$session where sid in (331,1644) and inst_id=1;

alter system kill session '1523,51997,@1' immediate;

select inst_id,sid,serial#,username,pq_status,pddl_status,pdml_status,program,machine from gv$session where program like 'sqlplus%' or program like 'SQL%';
show pdbs;
alter session enable parallel ddl;
SELECT SYS_CONTEXT ('USERENV', 'SID') FROM DUAL;

---- DBMS_SQLTUNE Reports

set trimspool on
set trim on
set pages 0
set linesize 1000
set long 10000000
set longchunksize 10000000
select dbms_sqltune.report_sql_monitor(sql_id=>'1bc2732vb184g',type=>'active') from dual;

set pages 500
set long 10000000
set longchunksize 10000000
set linesize 500
select dbms_sqltune.report_sql_monitor(sql_id=>'a9ar86zdgha5q',report_level=>'ALL') from dual;

set pages 0
set long 1000000
set longchunksize 1000000
set linesize 500
select dbms_sqltune.report_sql_monitor(sql_id=>'1bc2732vb184g',sql_exec_id=>'16777501',report_level=>'ALL') from dual;

set pages 200
set long 10000000
set longchunksize 10000000
set linesize 500
select dbms_sqltune.report_sql_monitor_list(sql_id=>'1bc2732vb184g',report_level=>'ALL') from dual;

set pages 0
set long 10000000
set longchunksize 10000000
set linesize 20000
select dbms_sqltune.report_sql_detail(sql_id=>'1bc2732vb184g') from dual;

show parameter parallel;

Pete SQL tune:
set trimspool on
set trim on
set pages 0
set linesize 1000
set long 1000000
set longchunksize 1000000
spool sqlmon_1t5u1yagz2kk4.html
select dbms_sqltune.report_sql_monitor(sql_id=>'1t5u1yagz2kk4',type=>'active',report_level=>'all') from dual;
spool off

--=======================================--
-- SQLSTATs
--=======================================--

select * from gv$sqlarea where sql_id='c9405w98kknng' and inst_id=1;

alter session set NLS_DATE_FORMAT='dd-mon-yyyy hh24:mi:ss';
---- v$sql
SELECT plan_hash_value,s.*
FROM GV$SQL s
WHERE
    s.SQL_ID in  ('c9405w98kknng')
    and inst_id = 1
;


select inst_id,sql_id,child_number,executions,first_load_time,invalidations,parse_calls,parsing_schema_name,service,module,child_address,object_status,last_load_time,is_obsolete,last_active_time
from gv$sql s
where
    s.sql_id='c9405w98kknng'
    and inst_id=1
;

select * from GV$SQL_BIND_METADATA where address='00000016A341F6C8' and inst_id=1;

select * from V$SQL_BIND_DATA;



---- v$sqlstats
alter session set NLS_DATE_FORMAT='dd-mon-yyyy hh24:mi:ss';

select inst_id,last_active_time,
        sql_id,executions,
        plan_hash_value,
--        stat.ELAPSED_TIME,
        trunc( ( stat.ELAPSED_TIME / decode(stat.EXECUTIONS,0,1,stat.EXECUTIONS) ) / 1000000, 3 )  "ELAPSED_IN_SEC",
--        parse_calls,
--        stat.AVG_HARD_PARSE_TIME,
--        trunc( ( stat.AVG_HARD_PARSE_TIME / decode(stat.EXECUTIONS,0,1,stat.EXECUTIONS) ) / 1000000, 3 ) "AVG_HARD_PARSE_IN_SEC",
--        loads,
--        VERSION_COUNT,
--        INVALIDATIONS,
        trunc( rows_processed/decode(stat.EXECUTIONS,0,1,stat.EXECUTIONS),3 )  "ROWS_PROCESSED",
        px_servers_executions,
--        DELTA_PARSE_CALLS,
        DELTA_EXECUTION_COUNT,
        trunc( ( stat.DELTA_ELAPSED_TIME / decode(stat.EXECUTIONS,0,1,stat.EXECUTIONS) ) / 1000000, 3 )  "DELTA_ELAPSED_IN_SEC"
--        DELTA_ELAPSED_TIME
--        DELTA_LOADS,
--        DELTA_INVALIDATIONS,
--        obsolete_count
--        stat.*
--        sql_text
from gv$sqlstats stat
where
--    last_active_time > (sysdate - 1)
--  and sql_text like '%DISTINCT TRIM(REL.SHIP_ADVICE_NO)%'
--    and sql_id in ('fc7z04m7dyaqr','3shh85pj6qj08','dw4m4hcbhcv14') -- long HARD PARSE Queries
--    and sql_id in ('c9405w98kknng')
--      and
      sql_id in ('2apt0zymbbrnb')
--order by last_active_time desc
;

col snap_id for a30
col Inst  a30
col Schema  a30
col sql_id for a35
col Plan_Hash for a30
col Load_Ver for a30
---- dba_hist_sqlstat
select
       snap.end_interval_time,
       stat.snap_id,
       stat.instance_number As Inst,
       stat.PARSING_SCHEMA_NAME As Schema,
       stat.sql_id,
       stat.plan_hash_value As Plan_Hash,
       stat.LOADED_VERSIONS As Load_Ver,
       stat.version_count As Ver_Count,
--       stat.EXECUTIONS_TOTAL, --
       stat.EXECUTIONS_DELTA As Executions,  -- it is incremented at the begining of the execution.
--       END_OF_FETCH_COUNT_TOTAL, -- it's incremented at the end of a sql execution only if it's fully executed without any error.
       trunc( stat.ROWS_PROCESSED_DELTA/decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA), 3)  "ROWS", -- the rows retrieved to client.
--       stat.ELAPSED_TIME_TOTAL/1000000,
       trunc( ( stat.ELAPSED_TIME_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) ) / 1000000, 3 )  "ELAPSED(sec)",
       trunc( ( stat.CPU_TIME_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) ) / 1000000, 3 )  "CPU(sec)",
       trunc( ( stat.IOWAIT_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) ) / 1000000, 3 )  "IOWAIT(sec)",
       trunc( ( stat.CLWAIT_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) ) / 1000000, 3 )  "CLUSTERWAIT(sec)",
       trunc( ( stat.APWAIT_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) ) / 1000000, 3 )  "APPWAIT(sec)",
       trunc( ( stat.CCWAIT_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) ) / 1000000, 3 )  "CONCURRENCYWAIT(sec)",
       round( stat.BUFFER_GETS_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) )  "Buffer_Gets",
       round( stat.DISK_READS_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) )  "Disk_Reads",
       round( stat.PHYSICAL_READ_REQUESTS_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) ) "PR_IOPS",
       round( ( stat.PHYSICAL_READ_BYTES_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) ) /1024, 3 ) "PR_IOMB",
--       ( stat.PHYSICAL_WRITE_BYTES_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) ) /1024 "P_W_IOMB",
--       IO_OFFLOAD_RETURN_BYTES_DELTA / decode(stat.EXECUTIONS_DELTA,0,1,stat.EXECUTIONS_DELTA) "IO_OFFLOAD_BYTES",
      stat.PX_SERVERS_EXECS_DELTA, stat.SQL_PROFILE
--       stat.CON_ID
from dba_hist_sqlstat stat, dba_hist_snapshot snap
where
    stat.snap_id = snap.snap_id
    and stat.instance_number = snap.instance_number
    and stat.sql_id in ('7kq1k5ygwhn49')
--    and stat.sql_id like '5bw%'
--   and ( stat.snap_id between 111183 and 111187 )
--    and executions_delta > 300
--    and snap.instance_number=1
--    and end_interval_time between '03-SEP-20 07.00.00.000000000 AM' and '03-SEP-20 10.00.00.000000000 AM'
order by snap.end_interval_time desc
;

3584569405
 select * from table(dbms_xplan.display_awr('1db3npqywzvr3'));

SQL_MONITOR REPORT:
===================

select 
   DBMS_SQL_MONITOR.REPORT_SQL_MONITOR
        (sql_id=>'0tztz8dypas9b') report
from dual;
select * from table(dbms_xplan.display_cursor('sql_id', child_number));
 select * from table(dbms_xplan.display_awr('1db3npqywzvr3'));





select * from dba_hist_snapshot where end_interval_time between '06-OCT-20 04.00.00.000000000 AM' and '06-OCT-20 07.00.00.000000000 AM' order by snap_id desc;

---- from AWR
set pages 100
set linesize 500
set long 10000000
set longchunksize 10000000
SELECT * FROM table (
   DBMS_XPLAN.DISPLAY_AWR('5f4559guszmcq',null,null,'TYPICAL'));

set pages 100
set linesize 500
set longchunksize 10000
SELECT * FROM table (
   DBMS_XPLAN.DISPLAY_AWR('5f4559guszmcq',null,null,'ADVANCED'));

alter session set nls_date_format='DD-MON-YYYY HH:MI:SS AM';
select sysdate from dual;


---- Get BIND Values
alter session set nls_date_format='dd-mon-yyyy hh:mi:ss am';
select bind.*, anydata.accesstimestamp(value_anydata)
from GV$SQL_BIND_CAPTURE bind
where
    sql_id='1a8c1rrcs303a' -- and position=12
order by last_captured desc, child_address, position;


--=====================================--
-- PGA stats
--=====================================--

select * from gv$resource_limit;

select inst_id,name,value/1024/1024/1024,unit from gv$pgastat;
select * from gv$pgastat;
select * from gv$parameter where name in ('pga_aggregate_target','pga_aggregate_limit');

show parameter WORKAREA_SIZE_POLICY;

select * from v$sql_workarea_histogram;

select * from V$SQL_WORKAREA_ACTIVE;

--=====================================--
-- Temp State
--=====================================--

--v$sort_usage

--=====================================--
-- SQL Tuning Set (STS)
--=====================================--



--=====================================--
-- Fix SQL BAse line
--=====================================--


set serveroutput on
set feed on
undef sql_handle
undef plan_name
declare
  v_out binary_integer;
begin
   v_out := dbms_spm.ALTER_SQL_PLAN_BASELINE(
           sql_handle =>'&sql_handle',
           plan_name=>'&plan_name',
           attribute_name=>'fixed',
           attribute_value=>'YES');
end;
/
undef sql_handle
undef plan_name
--=====================================--
-- SQL Plan Management (SPM)
--=====================================--

---- Load from cursor cache

set serveroutput on

var n number
exec :n := dbms_spm.load_plans_from_cursor_cache(sql_id=>'83302a93295qt', fixed =>'NO', enabled=>'YES');
EXEC dbms_output.put_line('Number of plans loaded: ' || :n);

var n number
exec :n := dbms_spm.load_plans_from_cursor_cache(sql_id=>'&sql_id', plan_hash_value=>&plan_hash_value, fixed =>'NO', enabled=>'YES');
EXEC dbms_output.put_line('Number of plans loaded: ' || :n);

---- Load from STS

var count number
exec :count := dbms_spm.load_plans_from_sqlset( sqlset_name => 'BEFORE_18C_UPGRD', sqlset_owner => 'SYS' );
print :count

---- View SQL Plan baseline

select * from dba_sql_plan_baselines; where sql_text like '%DELETE FROM MODERNIZE_FEEDBACKS%';
select sql_id, sql_plan_baseline from gv$sql;

---- Evolve

var report clob;
exec :report := dbms_spm.evolve_sql_plan_baseline();
print :report

---- Alter Plan

var count number
exec :count := dbms_spm.alter_sql_plan_baseline( sql_handle => 'SQL_0daeeec38d9747c7', plan_name => 'SQL_PLAN_0vbrfsf6tfjy7ee8514bb', attribute_name => 'enabled', attribute_value => 'YES' );
print :count

---- Display plan
select * from table ( dbms_xplan.display_sql_plan_baseline ( sql_handle => 'SQL_7ffde99c42001510' ) );


---- Drop SPM

var count number
exec :count := dbms_spm.drop_sql_plan_baseline( sql_handle => 'SQL_0daeeec38d9747c7' );
print :count




--- Load plan from one instance to another
-- https://developer.rackspace.com/blog/transfer-sql-plans-by-using-sql-plan-baseline/




accept days default 3 prompt "Number of days since the plan changed [3]: "

variable v_lo_snap number;
variable v_hi_snap number;
variable v_dbid number;

-- undef days
set feedback off
begin
select dbid into :v_dbid from v$database;
select min(snap_id), max(snap_id)
into :v_lo_snap, :v_hi_snap
from dba_hist_snapshot
  where begin_interval_time > sysdate - &&days;
end;
/

--=======================================--
-- PLAN FLIP
--=======================================--
set pages 32000
set long 32000
set longc 32000
set lines 150
set feedback on
column module format a30 word_wrapped
column sql_text format a80 word_wrapped
SELECT nvl(m.module, 'N/A') module, t.sql_id, t.sql_text
FROM dba_hist_sqltext t left join (
  select distinct module, sql_id from dba_hist_sqlstat
  where dbid = :v_dbid and snap_id = :v_hi_snap ) m
on t.sql_id = m.sql_id
WHERE t.dbid = :v_dbid and t.sql_id in (
  select distinct old.sql_id
--    , old.plan_hash_value old_plan_hash_value
--    , new.plan_hash_value new_plan_hash_value
  from dba_hist_sqlstat old inner join dba_hist_sqlstat new
  on old.sql_id = new.sql_id and old.dbid = new.dbid
  and old.snap_id < new.snap_id and old.snap_id >= :v_lo_snap
  left outer join dba_hist_sqlstat miss
  on miss.sql_id = new.sql_id and miss.dbid = new.dbid
  and miss.snap_id < new.snap_id and miss.snap_id >= :v_lo_snap
  and miss.plan_hash_value = new.plan_hash_value
  where miss.sql_id is null
  and new.dbid = :v_dbid
  and new.snap_id <= :v_hi_snap
  and old.plan_hash_value != new.plan_hash_value
  and old.plan_hash_value > 0 and new.plan_hash_value > 0
)
order by module, sql_id
/

--=======================================--
-- SQL Plan Directives
--=======================================--

select o.directive_id, o.owner, o.object_name, o.subobject_name, o.object_type, d.state, d.enabled, d.reason, d.created, d.last_modified, d.last_used, d.notes, o.notes
from
    dba_sql_plan_directives d,
    dba_sql_plan_dir_objects o
where d.directive_id = o.directive_id
--    and o.owner in ('TEDCARG','TEDCARGUS')
--    and o.object_name in ('CRAR_BLCYC_FIN')
--    and d.last_modified is not null
--    and d.directive_id in ('7855705957396865606')
order by directive_id
;


-- Column Usage Report

-- -- seed column stats for 5 mins.
Exec DBMS_STATS.SEED_COL_USAGE(null,null,300);

EXEC dbms_stats.flush_database_monitoring_info;

set pages 100
SET LONG 70000
SET LONGCHUNKSIZE 70000
SET LINESIZE 500
Select dbms_stats.report_col_usage('TEDCDM','CRAR_DIM') from dual;

-- --
select * from DBA_STAT_EXTENSIONS where table_name in ('CAL_DATE');

-- --
select dbms_stats.create_extended_stats('TEDCDM','CRAR_DIM','(CAST(SRC_CRAC_I AS NUMBER(12,0)))') from dual;

select * from dba_tab_col_statistics where table_name in ('CAL_DATE');
select * from dba_tab_statistics where table_name in ('CAL_DATE');

--exec dbms_stats.gather_table_stats('TEDCDM','CRAR_DIM',degree=>8);



--=====================================--
-- SQL Profile-: Verif is it using SQL_PROFILE


--=====================================--



select * from dba_sql_profiles;

-- Run the problem SQL and below command parllel
select SQL_ID, CHILD_NUMBER, PLAN_HASH_VALUE, SQL_PROFILE FROM V$SQL where sql_id='&SQL_ID';
select * from table(dbms_xplan.display_cursor('dkz7v96ym42c6',null,'ADVANCED ALLSTATS LAST'));

To see if baseline exists:


SELECT SQL_HANDLE, SQL_TEXT, PLAN_NAME, ORIGIN, ENABLED, ACCEPTED FROM DBA_SQL_PLAN_BASELINES WHERE SQL_TEXT LIKE '%FILE_HEADER_DATE%';

select ADDRESS, HASH_VALUE from V$SQLAREA where SQL_ID like 'dkz7v96ym42c6';


--=====================================--
-- Purge / Flush SQL from sharedpool
--=====================================--

select inst_id,sql_id,address,hash_value,PLAN_HASH_VALUE,executions, loads, version_count, invalidations, parse_calls
     from gv$sqlarea
     where sql_id='1bc2732vb184g';

exec dbms_shared_pool.purge ('00000000D5F2A610,3065028751','C');
--exec dbms_shared_pool.purge ('000000012B367CB0,2426773987 ','C');

select sysdate from dual;
alter session set nls_date_format='DD-MON-YYYY HH:MI:SS AM';

desc gv$sqlarea;


Example:

SQL>  SELECT address,PLAN_HASH_VALUE,hash_value,inst_id from gv$sqlarea where sql_id='1rgtp3k6hz6f7';

ADDRESS          PLAN_HASH_VALUE HASH_VALUE    INST_ID
---------------- --------------- ---------- ----------
00000006933D4B90      1170058806 2366609863          2

SQL> exec sys.dbms_shared_pool.purge('00000006933D4B90,2366609863','C');

PL/SQL procedure successfully completed.

SQL> SELECT address,PLAN_HASH_VALUE,hash_value,inst_id from gv$sqlarea where sql_id='1rgtp3k6hz6f7';

ADDRESS          PLAN_HASH_VALUE HASH_VALUE    INST_ID
---------------- --------------- ---------- ----------
00000006933D4B90      1044847944 2366609863          2
--=======================================--
-- ORADEBUG / TRACING
--=======================================--

-- 10046 trace

select *
from gv$session s, gv$process p
where
 s.paddr = p.addr
 and s.sid=347 and s.serial#=31153 and s.inst_id=1
;

select * from gv$session where inst_id=2 and sid=1117; and serial#=2635;
select * from v$process where addr='0000000252676320'; --ospid 281932

ORADEBUG SETMYPID;            -- Debug current session.
ORADEBUG SETOSPID 281932;       -- Debug session with the specified OS process.
ORADEBUG SETORAPID 123456;    -- Debug session with the specified Oracle process ID.

oradebug unlimit
ORADEBUG EVENT 10046 TRACE NAME CONTEXT FOREVER, LEVEL 12;
ORADEBUG TRACEFILE_NAME;      -- Display the current trace file.
ORADEBUG EVENT 10046 TRACE NAME CONTEXT OFF;


-- System state dump for RAC
$ sqlplus '/ as sysdba'
oradebug setmypid
oradebug unlimit
oradebug -g all hanganalyze 3
oradebug -g all dump systemstate 258
--- wait for 1 min
oradebug -g all hanganalyze 3
oradebug -g all dump systemstate 258
oradebug tracefile_name


-- PQ slave tracing
alter session set tracefile_identifier='pxtrace';
alter session set timed_statistics = true;
alter session set statistics_level=all;
alter session set max_dump_file_size = unlimited;
alter session set "_px_trace"="compilation","execution","messaging";
-- Execute the queries or operations to be traced here --
alter session set "_px_trace" = none;
select * from dual;
exit;


--=======================================--
-- Target Dashboard in OEM
--=======================================--

--OEM Test
select * from DBAORA.PROD_DASHBOARD_DATA;
select * from DBAORA.PROD_DASHBOARD_DATA where lower(service_name) like '%kns%';
select * from DBAORA.PROD_DASHBOARD_DATA where lower(host_name) like '%u-eraclx00%';

--ed90adm01vm02 - 220


Instance caging:

SELECT  MSG.MESSAGE_NAME AS MESSAGENAME,

        MSG.MESSAGE_ID                 ,

        CREATED_DATETIME               ,

        MESSAGE_SIZE                   ,

        MSG.CONTENT_TYPE               ,

        EXTRACTABLE_UNTIL              ,

        0 AS EXTRACTABLE_COUNT         ,

        0 AS EXTRACTABLE               ,

        2 AS EXTRACT_TYPE

FROM    MBX_MESSAGE MSG,

        MBX_MAILBOX MBX,

        DOCUMENT       ,

        MBX_EXTRACT_TIL TIL

WHERE   MSG.MAILBOX_ID = MBX.MAILBOX_ID

        AND MSG.DOC_ID = DOCUMENT.DOC_ID

        AND

        (

                MBX.PATH = :1

        )

        AND MSG.MESSAGE_ID = TIL.MESSAGE_ID

UNION ALL

SELECT  MSG.MESSAGE_NAME AS MESSAGENAME                          ,

        MSG.MESSAGE_ID                                           ,

        CREATED_DATETIME                                         ,

        MESSAGE_SIZE                                             ,

        MSG.CONTENT_TYPE                                         ,

        TO_DATE ('1900-01-01', 'YYYY-MM-DD') AS EXTRACTABLE_UNTIL,

        EXTRACTABLE_COUNT                                        ,

        0 AS EXTRACTABLE                                         ,

        0 AS EXTRACT_TYPE

FROM    MBX_MESSAGE MSG,

        MBX_MAILBOX MBX,

        DOCUMENT       ,

        MBX_EXTRACT_COUNT CNT

WHERE   MSG.MAILBOX_ID = MBX.MAILBOX_ID

        AND MSG.DOC_ID = DOCUMENT.DOC_ID

        AND

        (

                MBX.PATH = :2

        )

        AND MSG.MESSAGE_ID = CNT.MESSAGE_ID

UNION ALL

SELECT  MSG.MESSAGE_NAME AS MESSAGENAME                          ,

        MSG.MESSAGE_ID                                           ,

        CREATED_DATETIME                                         ,

        MESSAGE_SIZE                                             ,

        MSG.CONTENT_TYPE                                         ,

        TO_DATE ('1900-01-01', 'YYYY-MM-DD') AS EXTRACTABLE_UNTIL,

        0                                    AS EXTRACTABLE_COUNT,

        EXTRACTABLE                                              ,

        1 AS EXTRACT_TYPE

FROM    MBX_MESSAGE MSG,

        MBX_MAILBOX MBX,

        DOCUMENT       ,

        MBX_EXTRACTABLE EXT

WHERE   MSG.MAILBOX_ID = MBX.MAILBOX_ID

        AND MSG.DOC_ID = DOCUMENT.DOC_ID

        AND

        (

                MBX.PATH = :3

        )

        AND MSG.MESSAGE_ID = EXT.MESSAGE_ID




         SELECT name, is_top_plan,instance_caging FROM v$rsrc_plan;



         =======================

         SQL> select sid, event, time_waited, time_waited_micro
  2  from gv$session_event where event like '%log%';




https://www.morganslibrary.org/reference/pkgs/dbms_spm.html


==============FLASHBACK TABLE====================

check table is in recyclebin:

col owner for a30
col object_name for a30
col original_name for a30
col createtime for a30
col droptime for a30
col dropscn for a30
select owner,object_name,original_name,type,createtime,droptime,dropscn from dba_recyclebin where original_name like 'ANCHOR_MASTER%';
select owner,object_name,original_name,type,createtime,droptime,dropscn from dba_recyclebin where original_name like 'SEGMENT_MASTER%';
select owner,object_name,original_name,type,createtime,droptime,dropscn from dba_recyclebin where original_name like 'STRATEGY_MASTER%';

chk table in dba_objects:
select owner,object_name,object_type, status,object_id,created from dba_objects where  object_name in ('ANCHOR_MASTER','SEGMENT_MASTER','STRATEGY_MASTER') and owner='IVYMGR';


SQL> select owner,object_name,original_name,type,createtime,droptime,dropscn from dba_recyclebin where original_name like 'STRATEGY_MASTER%';

OWNER                          OBJECT_NAME                    ORIGINAL_NAME                  TYPE                      CREATETIME                     DROPTIME                                              DROPSCN
------------------------------ ------------------------------ ------------------------------ ------------------------- ------------------------------ ------------------------------ ------------------------------
IVYMGR                         BIN$BnxpCCommePgYz16RQpEog==$0 STRATEGY_MASTER_PK             INDEX                     2022-03-12:00:05:56            2023-09-29:03:42:53                                1.5271E+10
IVYMGR                         BIN$BnxpCConmePgYz16RQpEog==$0 STRATEGY_MASTER                TABLE                     2022-03-11:21:04:37            2023-09-29:03:42:53                                1.5271E+10

00:45:46 SQL> flashback table IVYMGR."BIN$BnxpCConmePgYz16RQpEog==$0" to before drop;

Flashback complete.

Elapsed: 00:00:00.02

After flasback table,index also restored:

SQL> select owner,object_name,object_type, status,object_id,created from dba_objects where  object_name='BIN$BnxpCCommePgYz16RQpEog==$0';

OWNER                          OBJECT_NAME                    OBJECT_TYPE             STATUS   OBJECT_ID CREATED             
------------------------------ ------------------------------ ----------------------- ------- ---------- --------------------
IVYMGR                         BIN$BnxpCCommePgYz16RQpEog==$0 INDEX                   VALID       102426 12-MAR-2022 00:05:56

Elapsed: 00:00:00.264
SQL> alter index IVYMGR."BIN$BnxpCCommePgYz16RQpEog==$0" rename to STRATEGY_MASTER_PK;

Index IVYMGR."BIN$BnxpCCommePgYz16RQpEog==$0" altered.

Elapsed: 00:00:00.245


SQL> select owner,object_name,object_type, status,object_id,created from dba_objects where  object_name in ('STRATEGY_MASTER_PK','STRATEGY_MASTER');

OWNER                          OBJECT_NAME                    OBJECT_TYPE             STATUS   OBJECT_ID CREATED 
------------------------------ ------------------------------ ----------------------- ------- ---------- --------
IVYMGR                         STRATEGY_MASTER                TABLE                   VALID        80817 11-03-22
IVYMGR                         STRATEGY_MASTER_PK             INDEX                   VALID       102426 12-03-22
SRTMGR                         STRATEGY_MASTER                TABLE                   VALID        78839 11-03-22
SRTMGR                         STRATEGY_MASTER_PK             INDEX                   VALID        79781 11-03-22

Elapsed: 00:00:00.409

=============================================================================== PLAN CHANGE====================================


ODS Service details:

['ODSNEW1','E19P02011','E19P02012','E19P02013','E19P02014'], - old servicec , proabbly set to decomm
['ODSNEW2','E19P02012','E19P02013','E19P02014','E19P02011'], - old servicec , proabbly set to decomm
['ODSNEW3','E19P02013','E19P02014','E19P02011','E19P02012'],- old servicec , proabbly set to decomm
['ODSNEW4','E19P02014','E19P02011','E19P02012','E19P02013'],- old servicec , proabbly set to decomm
['EDSP01','E19P02012,E19P02013,E19P02014','E19P02011'], - Primary all nodes except one
['EDSP01WA1','E19P02011','E19P02012','E19P02013','E19P02014'], - only one available NODE
['EDSP01XD2','E19P02012','E19P02013','E19P02014','E19P02011'],- only one available NODE
['EDSP01YG3','E19P02013','E19P02014','E19P02011','E19P02012'],only one available NODE
['EDSP01ZJ4','E19P02014','E19P02011','E19P02012','E19P02013'],only one available NODE
['EDSP02','E19P02012,E19P02013,E19P02014','E19P02011'], - ADG all nodes except MRP
['EDSPRD1','E19P02011','E19P02012','E19P02013','E19P02014'],- only one available NODE
['EDSPRD2','E19P02012','E19P02013','E19P02014','E19P02011'],- only one available NODE
['EDSPRD3','E19P02013','E19P02014','E19P02011','E19P02012'],- only one available NODE
['EDSPRD4','E19P02014','E19P02011','E19P02012','E19P02013'],- only one available NODE
['EDSPERF','E19P02012,E19P02013,E19P02014','E19P02011'], -
['EDSPRD','E19P02011,E19P02012,E19P02013,E19P02014',''],
['EDSPERFTEST','E19P02014','E19P02012','E19P02013','E19P02011'],- ADG - only on 4th node
['EDSP03','E19P02013,E19P02014','E19P02011','E19P02012'], - ADG - high performance service only node 2 and node 4
['EDSP04','E19P02011,E19P02012','E19P02013','E19P02014'] - ADG - low perfromance servuce only node 1 and 5


['ODSNEW1','E19P02011','E19P02012','E19P02013','E19P02014'], - old servicec , proabbly set to decomm
['ODSNEW2','E19P02012','E19P02013','E19P02014','E19P02011'], - old servicec , proabbly set to decomm
['ODSNEW3','E19P02013','E19P02014','E19P02011','E19P02012'],- old servicec , proabbly set to decomm
['ODSNEW4','E19P02014','E19P02011','E19P02012','E19P02013'],- old servicec , proabbly set to decomm
['EDSP01','E19P02012,E19P02013,E19P02014','E19P02011'], - Primary all nodes except node-1
[['EDSP02','E19P02012,E19P02013,E19P02014','E19P02011'], - ADG all nodes except MRP
['EDSPRD1','E19P02011','E19P02012','E19P02013','E19P02014'],- only one available NODE
['EDSPRD2','E19P02012','E19P02013','E19P02014','E19P02011'],- only one available NODE
['EDSPRD3','E19P02013','E19P02014','E19P02011','E19P02012'],- only one available NODE
['EDSPRD4','E19P02014','E19P02011','E19P02012','E19P02013'],- only one available NODE
['EDSPERF','E19P02012,E19P02013,E19P02014','E19P02011'], -
['EDSPRD','E19P02011,E19P02012,E19P02013,E19P02014',''],
['EDSPERFTEST','E19P02014','E19P02012','E19P02013','E19P02011'],- ADG - only on 4th node
['EDSP03','E19P02013,E19P02014','E19P02011','E19P02012'], - ADG - high performance service only node 2 and node 4
['EDSP04','E19P02011,E19P02012','E19P02013','E19P02014'] - ADG - low perfromance servuce only node 1 and 5


srvctl relocate service -d E54P0201_TTCE -s EDSPRD1 -i E54P02012 -t E54P02011 -f
srvctl relocate service -d E54P0201_TTCE -s EDSPRD3 -i E54P02014 -t E54P02013 -f

srvctl relocate service -d E54P0201_TTCE -s EDSP01 -i E54P02011 -t E54P02013 

23:49:25 SQL>
ROLE             NAME      DB_UNIQUE_NAME       PLATFORM_ID OPEN_MODE            LOG_MODE     FLASHBACK_ON       PROTECTION_MODE      PROTECTION_LEVEL
---------------- --------- -------------------- ----------- -------------------- ------------ ------------------ -------------------- --------------------
PRIMARY          E19P0201  E54P0201_TTCE                 13 READ WRITE           ARCHIVELOG   NO                 MAXIMUM PERFORMANCE  MAXIMUM PERFORMANCE

Elapsed: 00:00:00.01
23:49:25 SQL>
23:49:26 SQL>
23:49:26 SQL>
23:49:26 SQL> !srvctl status database -d E54P0201_TTCE -v -f
Instance E54P02011 is running on node ed54adm01vm02 with online services E54P02011_METRICS,EDSP01. Instance status: Open.
Instance E54P02012 is running on node ed54adm02vm02 with online services E54P02012_METRICS,EDSP01,EDSPRD1,EDSPRD2. Instance status: Open.
Instance E54P02013 is running on node ed54adm03vm02 with online services E54P02013_METRICS. Instance status: Open.
Instance E54P02014 is running on node ed54adm04vm02 with online services E54P02014_METRICS,EDSP01,EDSPRD3,EDSPRD4. Instance status: Open.

23:50:49 SQL> !date
Thu Oct 26 23:50:52 CDT 2023

23:50:52 SQL>

ed54-prd02:ed54adm01vm02(oracle:E54P02011):  srvctl status database -d E54P0201_TTCE -f -v
Instance E54P02011 is running on node ed54adm01vm02 with online services E54P02011_METRICS,EDSP01,EDSPRD1. Instance status: Open.
Instance E54P02012 is running on node ed54adm02vm02 with online services E54P02012_METRICS,EDSP01,EDSPRD2. Instance status: Open.
Instance E54P02013 is running on node ed54adm03vm02 with online services E54P02013_METRICS,EDSPRD3. Instance status: Open.
Instance E54P02014 is running on node ed54adm04vm02 with online services E54P02014_METRICS,EDSP01,EDSPRD4. Instance status: Open.
ed54-prd02:ed54adm01vm02(oracle:E54P02011):



23:36:49 SQL>

ROLE             NAME      DB_UNIQUE_NAME       PLATFORM_ID OPEN_MODE            LOG_MODE     FLASHBACK_ON       PROTECTION_MODE      PROTECTION_LEVEL
---------------- --------- -------------------- ----------- -------------------- ------------ ------------------ -------------------- --------------------
PHYSICAL STANDBY E19P0201  E54P0201_TTC                  13 READ ONLY WITH APPLY ARCHIVELOG   NO                 MAXIMUM PERFORMANCE  MAXIMUM PERFORMANCE

Elapsed: 00:00:00.02
23:36:53 SQL> !srvctl status database -d E54P0201_TTC -v -f
Instance E54P02011 is running on node ed53adm01vm02 with online services EDSP02,EDSP03. Instance status: Open,Readonly.
Instance E54P02012 is running on node ed53adm02vm02 with online services EDSP02,EDSP03,EDSP04. Instance status: Open,Readonly.
Instance E54P02013 is running on node ed53adm03vm02 with online services EDSP02,EDSP04. Instance status: Open,Readonly.
Instance E54P02014 is running on node ed53adm04vm02. Instance status: Open,Readonly.

23:38:42 SQL> exit
Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.19.0.0.0
ed53-prd02:ed53adm01vm02(oracle:E54P02011): exit
Connection to ed53adm01vm02 closed.


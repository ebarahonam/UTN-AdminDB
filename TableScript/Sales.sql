--Aquí su script de BD
--------------------------------------------------------
-- Archivo creado  - jueves-noviembre-22-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type REPCAT$_OBJECT_NULL_VECTOR
--------------------------------------------------------

  CREATE OR REPLACE TYPE "SYSTEM"."REPCAT$_OBJECT_NULL_VECTOR" AS OBJECT
(
  -- type owner, name, hashcode for the type represented by null_vector
  type_owner      VARCHAR2(30),
  type_name       VARCHAR2(30),
  type_hashcode   RAW(17),
  -- null_vector for a particular object instance
  -- ROBJ REVISIT: should only contain the null image, and not version#
  null_vector     RAW(2000)
)

/
--------------------------------------------------------
--  DDL for Sequence FSALES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."FSALES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 321 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FSALES_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."FSALES_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FSALES_SEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."FSALES_SEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INVOICEDET_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."INVOICEDET_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INVOICEDET_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."INVOICEDET_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 301 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_EVOLVE_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_EVOLVE_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_UIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_UIDS$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_EXCEPTIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_EXCEPTIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVOR_NAME_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_FLAVOR_NAME_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVORS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_FLAVORS_S"  MINVALUE -2147483647 MAXVALUE 2147483647 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT_LOG_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT_LOG_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REFRESH_TEMPLATES_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_REFRESH_TEMPLATES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REPPROP_KEY
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_REPPROP_KEY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_RUNTIME_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_RUNTIME_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_OBJECTS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_REFGROUPS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_SITES_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_SITES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMP_OUTPUT_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMP_OUTPUT_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_AUTHORIZATIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_PARM_VALUES_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_USER_PARM_VALUES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TEMPLATE$_TARGETS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."TEMPLATE$_TARGETS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CURRENCY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CURRENCY" 
   (	"CURRENCYID" NUMBER(*,0), 
	"CURRENCYNM" VARCHAR2(50 BYTE), 
	"CURRENCYTYPE" VARCHAR2(3 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CUSTOMER" 
   (	"CUSTOMERID" VARCHAR2(50 BYTE), 
	"CUSTOMERNM" VARCHAR2(100 BYTE), 
	"NUMTELEPHONE" VARCHAR2(20 BYTE), 
	"LOCATIONID" NUMBER(*,0), 
	"STATE" CHAR(1 BYTE), 
	"EMAIL" VARCHAR2(60 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DBOPERSON
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DBOPERSON" 
   (	"IDPERSON" VARCHAR2(50 BYTE), 
	"NAME" VARCHAR2(15 BYTE), 
	"LASTNAM1" VARCHAR2(40 BYTE), 
	"LASNAM2" VARCHAR2(40 BYTE), 
	"LOCATEDID" NUMBER(*,0), 
	"AGE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DBOORDER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."DBOORDER" 
   (	"IDORDER" NUMBER(*,0), 
	"IDCUSTOMER" VARCHAR2(50 BYTE), 
	"DATEO" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EMPLOYES" 
   (	"EMPLYEID" NUMBER(*,0), 
	"IDPERSON" VARCHAR2(50 BYTE), 
	"ENVELOPE" VARCHAR2(50 BYTE), 
	"IDDEPARTAMENTO" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FSALES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."FSALES" 
   (	"FACTID" NUMBER(19,0), 
	"SALECURRID" NUMBER(*,0), 
	"DISCOUNTAMNT" NUMBER(18,4), 
	"EMPLOYEEID" NUMBER(*,0), 
	"DATE1" DATE, 
	"CUSTOMERID" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INVOICEDET
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."INVOICEDET" 
   (	"INVOICEDETID" NUMBER(*,0), 
	"INVOICE" NUMBER(*,0), 
	"IDPRODUCT" VARCHAR2(50 BYTE), 
	"SALEQTY" NUMBER(*,0), 
	"LOTID" NVARCHAR2(20), 
	"PRICE" NUMBER, 
	"IDLINE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOCATED
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LOCATED" 
   (	"IDLOCATED" NUMBER(*,0), 
	"COUNTRY" VARCHAR2(50 BYTE), 
	"PROVINCE" VARCHAR2(50 BYTE), 
	"DESCRIPTION" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDERDET
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ORDERDET" 
   (	"IDDETORDER" NUMBER(*,0), 
	"IDORDER" NUMBER(*,0), 
	"PRODUCTID" VARCHAR2(50 BYTE), 
	"AMOUNT" NUMBER(*,0), 
	"PRICE" NUMBER(*,0), 
	"EST" VARCHAR2(2 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRODUCT" 
   (	"PRODUCTID" VARCHAR2(50 BYTE), 
	"PRODUCTNAME" VARCHAR2(100 BYTE), 
	"PRODUCTCATEGORY" CHAR(2 BYTE), 
	"PRICEPERUNIT" NUMBER(18,4), 
	"DESCRIPTION2" VARCHAR2(150 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQCALL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQCALL" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQCALL" WHERE state != 7 AND   state != 9 WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQCALL_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQCALL_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQCALL" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQERROR
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQERROR" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQERROR" WHERE state != 7 AND   state != 9 WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQERROR_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQERROR_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQERROR" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MVIEW_EVALUATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EVALUATIONS" ("RUNID", "MVIEW_OWNER", "MVIEW_NAME", "RANK", "STORAGE_IN_BYTES", "FREQUENCY", "CUMULATIVE_BENEFIT", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  summary_owner AS mview_owner,
  summary_name AS mview_name,
  rank# as rank,
  storage_in_bytes,
  frequency,
  cumulative_benefit,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 1
order by t1.rank#;
 

   COMMENT ON TABLE "SYSTEM"."MVIEW_EVALUATIONS"  IS 'This view gives DBA access to summary evaluation output'
;
--------------------------------------------------------
--  DDL for View MVIEW_EXCEPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EXCEPTIONS" ("RUNID", "OWNER", "TABLE_NAME", "DIMENSION_NAME", "RELATIONSHIP", "BAD_ROWID") AS 
  select
  t1.runid# as runid,
  owner,
  table_name,
  dimension_name,
  relationship,
  bad_rowid
from SYSTEM.MVIEW$_ADV_EXCEPTIONS t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID');
 

   COMMENT ON TABLE "SYSTEM"."MVIEW_EXCEPTIONS"  IS 'This view gives DBA access to dimension validation results'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTER" ("FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filter a, system.mview$_adv_log b, ALL_USERS u
   WHERE a.filterid# = b.runid#
   AND b.uname = u.username
   AND u.user_id = userenv('SCHEMAID');
 

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTER"  IS 'Workload filter records'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTERINSTANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTERINSTANCE" ("RUNID", "FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.runid# as runid,
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filterinstance a;
 

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTERINSTANCE"  IS 'Workload filter instance records'
;
--------------------------------------------------------
--  DDL for View MVIEW_LOG
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_LOG" ("ID", "FILTERID", "RUN_BEGIN", "RUN_END", "TYPE", "STATUS", "MESSAGE", "COMPLETED", "TOTAL", "ERROR_CODE") AS 
  select
      m.runid# as id,
      m.filterid# as filterid,
      m.run_begin,
      m.run_end,
      decode(m.run_type,1,'EVALUATE',2,'EVALUATE_W',3,'RECOMMEND',
                      4,'RECOMMEND_W',5,'VALIDATE',6,'WORKLOAD',
                      7,'FILTER','UNKNOWN') AS type,
      decode(m.status,0,'UNUSED',1,'CANCELLED',2,'IN_PROGRESS',3,'COMPLETED',
                    4,'ERROR','UNKNOWN') AS status,
      m.message,
      m.completed,
      m.total,
      m.error_code
   from system.mview$_adv_log m, all_users u
   where m.uname = u.username
   and   u.user_id = userenv('SCHEMAID');
 

   COMMENT ON TABLE "SYSTEM"."MVIEW_LOG"  IS 'Advisor session log'
;
--------------------------------------------------------
--  DDL for View MVIEW_RECOMMENDATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_RECOMMENDATIONS" ("RUNID", "ALL_TABLES", "FACT_TABLES", "GROUPING_LEVELS", "QUERY_TEXT", "RECOMMENDATION_NUMBER", "RECOMMENDED_ACTION", "MVIEW_OWNER", "MVIEW_NAME", "STORAGE_IN_BYTES", "PCT_PERFORMANCE_GAIN", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  t1.from_clause as all_tables,
  fact_tables,
  grouping_levels,
  query_text,
  rank# as recommendation_number,
  action_type as recommended_action,
  summary_owner as mview_owner,
  summary_name as mview_name,
  storage_in_bytes,
  pct_performance_gain,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 0
order by t1.rank#;
 

   COMMENT ON TABLE "SYSTEM"."MVIEW_RECOMMENDATIONS"  IS 'This view gives DBA access to summary recommendations'
;
--------------------------------------------------------
--  DDL for View MVIEW_WORKLOAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_WORKLOAD" ("WORKLOADID", "IMPORT_TIME", "QUERYID", "APPLICATION", "CARDINALITY", "RESULTSIZE", "LASTUSE", "FREQUENCY", "OWNER", "PRIORITY", "QUERY", "RESPONSETIME") AS 
  select
  a.collectionid# as workloadid,
  a.collecttime as import_time,
  a.queryid# as queryid,
  a.application,
  a.cardinality,
  a.resultsize,
  a.qdate as lastuse,
  a.frequency,
  a.uname as owner,
  a.priority,
  a.sql_text as query,
  a.exec_time as responsetime
from SYSTEM.MVIEW$_ADV_WORKLOAD A, SYSTEM.MVIEW$_ADV_LOG B, ALL_USERS D
WHERE a.collectionid# = b.runid#
AND b.uname = d.username
AND d.user_id = userenv('SCHEMAID');
 

   COMMENT ON TABLE "SYSTEM"."MVIEW_WORKLOAD"  IS 'This view gives DBA access to shared workload'
;
--------------------------------------------------------
--  DDL for View PRODUCT_PRIVS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."PRODUCT_PRIVS" ("PRODUCT", "USERID", "ATTRIBUTE", "SCOPE", "NUMERIC_VALUE", "CHAR_VALUE", "DATE_VALUE", "LONG_VALUE") AS 
  SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR USER LIKE USERID
;
REM INSERTING into SYSTEM.CURRENCY
SET DEFINE OFF;
Insert into SYSTEM.CURRENCY (CURRENCYID,CURRENCYNM,CURRENCYTYPE) values ('1','Dollar','$');
Insert into SYSTEM.CURRENCY (CURRENCYID,CURRENCYNM,CURRENCYTYPE) values ('2','Colón','?');
Insert into SYSTEM.CURRENCY (CURRENCYID,CURRENCYNM,CURRENCYTYPE) values ('3','Yen','¥');
Insert into SYSTEM.CURRENCY (CURRENCYID,CURRENCYNM,CURRENCYTYPE) values ('4','Euro','€');
REM INSERTING into SYSTEM.CUSTOMER
SET DEFINE OFF;
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('1','Audi','922-586-9193','1','A','Audi@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('2','Honda','535-153-5545','2','A','Honda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('3','Jeep','784-813-7693','3','A','Jeep@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('4','Jaguar','994-646-9114','4','A','Jaguar@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('5','Ford','375-124-7717','5','A','Ford@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('6','Nissan','514-475-6520','6','A','Nissan@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('7','Mercury','963-120-2312','7','A','Mercury@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('8','Infiniti','918-420-1728','8','A','Infiniti@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('9','Toyota','627-523-8480','9','A','Toyota@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('10','Cadillac','112-655-4856','10','A','Cadillac@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('11','Ford','497-912-7637','11','A','Ford@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('12','Volkswagen','611-706-2620','12','A','Volkswagen@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('13','Toyota','414-696-9119','13','A','Toyota@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('14','Mercedes-Benz','304-799-7040','14','A','Mercedes-Benz@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('15','Mazda','423-797-0544','15','A','Mazda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('16','Toyota','862-550-8889','16','A','Toyota@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('17','Aston Martin','893-141-7292','17','A','Aston Martin@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('18','Saturn','708-270-8349','18','A','Saturn@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('19','Ford','691-730-8506','19','A','Ford@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('20','Lexus','370-251-4036','20','A','Lexus@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('21','Buick','573-964-2419','1','A','Buick@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('22','GMC','389-241-0130','2','A','GMC@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('23','Hyundai','240-671-9172','3','A','Hyundai@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('24','Hyundai','425-941-6791','4','A','Hyundai@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('25','Chevrolet','915-621-1368','5','A','Chevrolet@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('26','Acura','419-298-5170','6','A','Acura@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('27','Ford','937-387-4668','7','A','Ford@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('28','Jaguar','190-715-3742','8','A','Jaguar@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('29','Jeep','879-495-7715','9','A','Jeep@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('30','Lexus','207-711-2041','10','A','Lexus@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('31','Chrysler','998-645-5873','11','A','Chrysler@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('32','Nissan','665-977-6222','12','A','Nissan@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('33','GMC','590-895-1589','13','A','GMC@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('34','BMW','503-516-4167','14','A','BMW@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('35','Acura','858-141-3565','15','A','Acura@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('36','Toyota','546-500-7174','16','A','Toyota@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('37','Mercury','254-650-7092','17','A','Mercury@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('38','Dodge','829-506-8796','18','A','Dodge@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('39','Chevrolet','947-220-8290','19','A','Chevrolet@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('40','Honda','522-473-3695','20','A','Honda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('41','Chevrolet','154-852-4786','1','A','Chevrolet@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('42','Volvo','203-341-8960','2','A','Volvo@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('43','Suzuki','130-747-1949','3','A','Suzuki@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('44','Infiniti','533-805-0079','4','A','Infiniti@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('45','GMC','411-515-7463','5','A','GMC@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('46','Volvo','356-839-8584','6','A','Volvo@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('47','Audi','560-392-2462','7','A','Audi@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('48','Mitsubishi','442-753-9906','8','A','Mitsubishi@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('49','Toyota','682-469-0114','9','A','Toyota@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('50','Subaru','331-972-5607','10','A','Subaru@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('51','GMC','506-358-5982','11','A','GMC@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('52','BMW','438-165-7689','12','A','BMW@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('53','Buick','937-786-3836','13','A','Buick@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('54','Porsche','451-212-0937','14','A','Porsche@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('55','Audi','914-694-4155','15','A','Audi@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('56','Mercury','237-833-5320','16','A','Mercury@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('57','Land Rover','482-117-2004','17','A','Land Rover@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('58','Toyota','495-329-1348','18','A','Toyota@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('59','Suzuki','895-583-5599','19','A','Suzuki@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('60','Buick','585-932-8269','20','A','Buick@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('61','Acura','257-882-2982','1','A','Acura@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('62','Mazda','503-624-9234','2','A','Mazda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('63','Jaguar','208-665-2408','3','A','Jaguar@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('64','Lincoln','697-437-3376','4','A','Lincoln@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('65','Honda','121-534-5109','5','A','Honda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('66','Ford','134-521-4839','6','A','Ford@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('67','BMW','919-942-4367','7','A','BMW@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('68','GMC','963-958-7740','8','A','GMC@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('69','Ford','570-309-4709','9','A','Ford@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('70','Chrysler','525-739-8189','10','A','Chrysler@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('71','Pontiac','280-774-1718','11','A','Pontiac@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('72','Toyota','486-879-5407','12','A','Toyota@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('73','Subaru','498-151-3355','13','A','Subaru@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('74','Honda','494-344-9652','14','A','Honda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('75','Mazda','732-203-6041','15','A','Mazda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('76','Chevrolet','795-515-7835','16','A','Chevrolet@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('77','Ford','770-268-3588','17','A','Ford@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('78','Volvo','759-471-4941','18','A','Volvo@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('79','Buick','151-684-5693','19','A','Buick@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('80','Volkswagen','260-760-9189','20','A','Volkswagen@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('81','Jaguar','785-837-5766','1','A','Jaguar@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('82','Chevrolet','202-507-7920','2','A','Chevrolet@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('83','Volkswagen','189-510-9905','3','A','Volkswagen@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('84','Ford','480-606-0588','4','A','Ford@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('85','Mazda','454-118-5361','5','A','Mazda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('86','Chevrolet','210-330-2178','6','A','Chevrolet@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('87','Hyundai','422-927-7037','7','A','Hyundai@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('88','Honda','378-362-1378','8','A','Honda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('89','Pontiac','889-213-1160','9','A','Pontiac@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('90','Chevrolet','895-145-3986','10','A','Chevrolet@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('91','Acura','732-772-9874','11','A','Acura@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('92','Mitsubishi','935-156-9241','12','A','Mitsubishi@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('93','Honda','777-371-5560','13','A','Honda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('94','Mercury','454-822-2580','14','A','Mercury@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('95','Saturn','165-635-1018','15','A','Saturn@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('96','Subaru','545-616-2175','16','A','Subaru@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('97','Maybach','875-975-4830','17','A','Maybach@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('98','Honda','546-390-9264','18','A','Honda@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('99','Acura','530-553-3387','19','A','Acura@CarrCust.com');
Insert into SYSTEM.CUSTOMER (CUSTOMERID,CUSTOMERNM,NUMTELEPHONE,LOCATIONID,STATE,EMAIL) values ('100','GMC','255-161-6869','20','A','GMC@CarrCust.com');
REM INSERTING into SYSTEM.DBOPERSON
SET DEFINE OFF;
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('416-91-6968','Eb','Witton','Ivanyushkin','1',to_date('04/04/90','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('209-65-1634','Byrle','Matteotti','Lindley','2',to_date('01/02/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('253-38-5213','Elfie','Djordjevic','Flisher','3',to_date('03/03/90','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('274-93-6467','Ediva','Mollatt','Estoile','4',to_date('05/05/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('830-54-8176','Ellie','O''Moylane','Shoreman','5',to_date('08/09/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('107-61-0264','Kessia','Arran','Hicks','6',to_date('08/08/90','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('834-46-0967','Lanni','Ramsden','Peppard','7',to_date('06/09/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('668-68-3469','Louis','Patry','Dashkov','8',to_date('08/02/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('288-12-0957','Phillida','Tinghill','Cremer','9',to_date('03/02/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('506-05-9159','Boris','Penddreth','Chantrell','10',to_date('09/01/90','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('435-77-8872','Seymour','Romney','Jerrold','11',to_date('04/01/90','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('606-97-2130','Lyle','Malloy','Guiot','12',to_date('06/09/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('537-32-0765','Larina','Hellen','Roder','13',to_date('07/05/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('464-66-6351','Hilly','Rockwell','Standfield','14',to_date('03/05/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('356-09-3080','Alyssa','Paunton','Stansbie','16',to_date('09/03/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('754-94-9086','Kettie','Thickin','Dana','17',to_date('07/08/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('875-62-2849','Julita','Patterfield','Dentith','18',to_date('04/05/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('122-24-1220','Bryan','Feldharker','Knox','19',to_date('09/02/80','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('610-96-6507','Gusty','Bandiera','Priel','20',to_date('02/07/80','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('418-74-2228','Kaja','Cridge','Whitechurch','18',to_date('05/08/80','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('872-38-9292','Morgana','Abbs','Tomsu','2',to_date('10/01/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('874-23-6034','Tam','Castanos','Curds','3',to_date('03/07/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('322-55-4196','Winnah','Crush','Woodeson','4',to_date('12/04/17','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('153-59-6168','Jeff','Gypson','Keese','5',to_date('10/08/17','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('578-60-1844','Antony','Almon','Lockhurst','6',to_date('08/05/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('554-32-2462','Kahlil','Sturge','Issett','7',to_date('05/07/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('737-11-3080','Winslow','Doxsey','Gillebride','8',to_date('06/12/96','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('708-24-0767','Ninnetta','Farthing','Ewert','9',to_date('10/02/01','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('527-36-0591','Teddie','Trobey','Lille','10',to_date('09/03/09','DD/MM/RR'));
Insert into SYSTEM.DBOPERSON (IDPERSON,NAME,LASTNAM1,LASNAM2,LOCATEDID,AGE) values ('127-36-0591','Teddie','Trobey','Lille','10',to_date('09/03/09','DD/MM/RR'));
REM INSERTING into SYSTEM.DBOORDER
SET DEFINE OFF;
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('1','1',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('2','2',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('3','3',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('4','4',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('5','5',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('6','6',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('7','7',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('8','8',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('9','9',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('10','10',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('11','11',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('12','12',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('13','13',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('14','14',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('15','15',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('16','16',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('17','17',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('18','18',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('19','19',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('20','20',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('21','21',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('22','22',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('23','23',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('24','24',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('25','25',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('26','26',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('27','27',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('28','28',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('29','29',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('30','30',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('31','31',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('32','32',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('33','33',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('34','34',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('35','35',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('36','36',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('37','37',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('38','38',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('39','39',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('40','40',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('41','41',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('42','42',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('43','43',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('44','44',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('45','45',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('46','46',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('47','47',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('48','48',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('49','49',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('50','50',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('51','1',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('52','2',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('53','3',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('54','4',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('55','5',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('56','6',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('57','7',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('58','8',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('59','9',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('60','10',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('61','11',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('62','12',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('63','13',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('64','14',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('65','15',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('66','16',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('67','17',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('68','18',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('69','19',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('70','20',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('71','21',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('72','22',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('73','23',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('74','24',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('75','25',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('76','26',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('77','27',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('78','28',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('79','29',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('80','30',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('81','31',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('82','32',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('83','33',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('84','34',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('85','35',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('86','36',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('87','37',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('88','38',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('89','39',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('90','40',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('91','41',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('92','42',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('93','43',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('94','44',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('95','45',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('96','46',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('97','47',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('98','48',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('99','49',to_date('12/10/18','DD/MM/RR'));
Insert into SYSTEM.DBOORDER (IDORDER,IDCUSTOMER,DATEO) values ('100','50',to_date('12/10/18','DD/MM/RR'));
REM INSERTING into SYSTEM.EMPLOYES
SET DEFINE OFF;
Insert into SYSTEM.EMPLOYES (EMPLYEID,IDPERSON,ENVELOPE,IDDEPARTAMENTO) values ('1','416-91-6968','Sales Man','2');
Insert into SYSTEM.EMPLOYES (EMPLYEID,IDPERSON,ENVELOPE,IDDEPARTAMENTO) values ('3','209-65-1634','Sales Man','2');
Insert into SYSTEM.EMPLOYES (EMPLYEID,IDPERSON,ENVELOPE,IDDEPARTAMENTO) values ('4','253-38-5213','Manager','1');
Insert into SYSTEM.EMPLOYES (EMPLYEID,IDPERSON,ENVELOPE,IDDEPARTAMENTO) values ('5','274-93-6467','Sales Man','2');
Insert into SYSTEM.EMPLOYES (EMPLYEID,IDPERSON,ENVELOPE,IDDEPARTAMENTO) values ('6','107-61-0264','Sales Man','2');
Insert into SYSTEM.EMPLOYES (EMPLYEID,IDPERSON,ENVELOPE,IDDEPARTAMENTO) values ('2','122-24-1220','Sales Man','2');
REM INSERTING into SYSTEM.FSALES
SET DEFINE OFF;
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('1','1','200','1',to_date('12/11/18','DD/MM/RR'),'1');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('2','2','300','2',to_date('12/11/18','DD/MM/RR'),'2');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('3','3','400','3',to_date('12/11/18','DD/MM/RR'),'3');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('4','1','200','4',to_date('12/11/18','DD/MM/RR'),'4');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('5','2','300','5',to_date('12/11/18','DD/MM/RR'),'5');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('6','3','400','6',to_date('12/11/18','DD/MM/RR'),'6');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('7','1','200','1',to_date('12/11/18','DD/MM/RR'),'7');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('8','2','300','2',to_date('12/11/18','DD/MM/RR'),'8');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('9','3','400','3',to_date('12/11/18','DD/MM/RR'),'9');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('10','1','200','4',to_date('12/11/18','DD/MM/RR'),'10');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('11','2','300','5',to_date('12/11/18','DD/MM/RR'),'11');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('12','3','400','6',to_date('12/11/18','DD/MM/RR'),'12');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('13','1','200','1',to_date('12/11/18','DD/MM/RR'),'13');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('14','2','300','2',to_date('12/11/18','DD/MM/RR'),'14');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('15','3','400','3',to_date('12/11/18','DD/MM/RR'),'15');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('16','1','200','4',to_date('12/11/18','DD/MM/RR'),'16');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('17','2','300','5',to_date('12/11/18','DD/MM/RR'),'17');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('18','3','400','6',to_date('12/11/18','DD/MM/RR'),'18');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('19','1','200','1',to_date('12/11/18','DD/MM/RR'),'19');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('20','2','300','2',to_date('12/11/18','DD/MM/RR'),'20');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('21','3','400','3',to_date('12/11/18','DD/MM/RR'),'21');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('22','1','200','4',to_date('12/11/18','DD/MM/RR'),'22');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('23','2','300','5',to_date('12/11/18','DD/MM/RR'),'23');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('24','3','400','6',to_date('12/11/18','DD/MM/RR'),'24');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('25','1','200','1',to_date('12/11/18','DD/MM/RR'),'25');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('26','2','300','2',to_date('12/11/18','DD/MM/RR'),'26');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('27','3','400','3',to_date('12/11/18','DD/MM/RR'),'27');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('28','1','200','4',to_date('12/11/18','DD/MM/RR'),'28');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('29','2','300','5',to_date('12/11/18','DD/MM/RR'),'29');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('30','3','400','6',to_date('12/11/18','DD/MM/RR'),'30');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('31','1','200','1',to_date('12/11/18','DD/MM/RR'),'31');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('32','2','300','2',to_date('12/11/18','DD/MM/RR'),'32');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('33','3','400','3',to_date('12/11/18','DD/MM/RR'),'33');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('34','1','200','4',to_date('12/11/18','DD/MM/RR'),'34');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('35','2','300','5',to_date('12/11/18','DD/MM/RR'),'35');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('36','3','400','6',to_date('12/11/18','DD/MM/RR'),'36');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('37','1','200','1',to_date('12/11/18','DD/MM/RR'),'37');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('38','2','300','2',to_date('12/11/18','DD/MM/RR'),'38');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('39','3','400','3',to_date('12/11/18','DD/MM/RR'),'39');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('40','1','200','4',to_date('12/11/18','DD/MM/RR'),'40');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('41','2','300','5',to_date('12/11/18','DD/MM/RR'),'41');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('42','3','400','6',to_date('12/11/18','DD/MM/RR'),'42');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('43','1','200','1',to_date('12/11/18','DD/MM/RR'),'43');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('44','2','300','2',to_date('12/11/18','DD/MM/RR'),'44');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('45','3','400','3',to_date('12/11/18','DD/MM/RR'),'45');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('46','1','200','4',to_date('12/11/18','DD/MM/RR'),'46');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('47','2','300','5',to_date('12/11/18','DD/MM/RR'),'47');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('48','3','400','6',to_date('12/11/18','DD/MM/RR'),'48');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('49','1','200','1',to_date('12/11/18','DD/MM/RR'),'49');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('50','2','300','2',to_date('12/11/18','DD/MM/RR'),'50');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('51','3','400','3',to_date('12/11/18','DD/MM/RR'),'1');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('52','1','200','4',to_date('12/11/18','DD/MM/RR'),'2');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('53','2','300','5',to_date('12/11/18','DD/MM/RR'),'3');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('54','3','400','6',to_date('12/11/18','DD/MM/RR'),'4');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('55','1','200','1',to_date('12/11/18','DD/MM/RR'),'5');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('56','2','300','2',to_date('12/11/18','DD/MM/RR'),'6');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('57','3','400','3',to_date('12/11/18','DD/MM/RR'),'7');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('58','1','200','4',to_date('12/11/18','DD/MM/RR'),'8');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('59','2','300','5',to_date('12/11/18','DD/MM/RR'),'9');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('60','3','400','6',to_date('12/11/18','DD/MM/RR'),'10');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('61','1','200','1',to_date('12/11/18','DD/MM/RR'),'11');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('62','2','300','2',to_date('12/11/18','DD/MM/RR'),'12');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('63','3','400','3',to_date('12/11/18','DD/MM/RR'),'13');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('64','1','200','4',to_date('12/11/18','DD/MM/RR'),'14');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('65','2','300','5',to_date('12/11/18','DD/MM/RR'),'15');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('66','3','400','6',to_date('12/11/18','DD/MM/RR'),'16');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('67','1','200','1',to_date('12/11/18','DD/MM/RR'),'17');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('68','2','300','2',to_date('12/11/18','DD/MM/RR'),'18');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('69','3','400','3',to_date('12/11/18','DD/MM/RR'),'19');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('70','1','200','4',to_date('12/11/18','DD/MM/RR'),'20');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('71','2','300','5',to_date('12/11/18','DD/MM/RR'),'21');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('72','3','400','6',to_date('12/11/18','DD/MM/RR'),'22');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('73','1','200','1',to_date('12/11/18','DD/MM/RR'),'23');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('74','2','300','2',to_date('12/11/18','DD/MM/RR'),'24');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('75','3','400','3',to_date('12/11/18','DD/MM/RR'),'25');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('76','1','200','4',to_date('12/11/18','DD/MM/RR'),'26');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('77','2','300','5',to_date('12/11/18','DD/MM/RR'),'27');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('78','3','400','6',to_date('12/11/18','DD/MM/RR'),'28');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('79','1','200','1',to_date('12/11/18','DD/MM/RR'),'29');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('80','2','300','2',to_date('12/11/18','DD/MM/RR'),'30');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('81','3','400','3',to_date('12/11/18','DD/MM/RR'),'31');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('82','1','200','4',to_date('12/11/18','DD/MM/RR'),'32');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('83','2','300','5',to_date('12/11/18','DD/MM/RR'),'33');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('84','3','400','6',to_date('12/11/18','DD/MM/RR'),'34');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('85','1','200','1',to_date('12/11/18','DD/MM/RR'),'35');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('86','2','300','2',to_date('12/11/18','DD/MM/RR'),'36');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('87','3','400','3',to_date('12/11/18','DD/MM/RR'),'37');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('88','1','200','4',to_date('12/11/18','DD/MM/RR'),'38');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('89','2','300','5',to_date('12/11/18','DD/MM/RR'),'39');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('90','3','400','6',to_date('12/11/18','DD/MM/RR'),'40');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('91','1','200','1',to_date('12/11/18','DD/MM/RR'),'41');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('92','2','300','2',to_date('12/11/18','DD/MM/RR'),'42');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('93','3','400','3',to_date('12/11/18','DD/MM/RR'),'43');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('94','1','200','4',to_date('12/11/18','DD/MM/RR'),'44');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('95','2','300','5',to_date('12/11/18','DD/MM/RR'),'45');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('96','3','400','6',to_date('12/11/18','DD/MM/RR'),'46');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('97','1','200','1',to_date('12/11/18','DD/MM/RR'),'47');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('98','2','300','2',to_date('12/11/18','DD/MM/RR'),'48');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('99','3','400','3',to_date('12/11/18','DD/MM/RR'),'49');
Insert into SYSTEM.FSALES (FACTID,SALECURRID,DISCOUNTAMNT,EMPLOYEEID,DATE1,CUSTOMERID) values ('100','1','200','4',to_date('12/11/18','DD/MM/RR'),'50');
REM INSERTING into SYSTEM.INVOICEDET
SET DEFINE OFF;
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('1','1','KA894H','1459','02U1','3370290','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('2','1','1E9B3Q','852','07FH','2594340','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('3','1','OXC5IS','1401','17H2','3099712,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('4','2','YSJAJD','1113','1WIE','4023495','8');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('5','2','N8MU0U','1118','2FJ4','3342261','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('6','2','UDI8QJ','960','350P','1460160','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('7','3','XLZHXM','1471','35RT','3570117','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('8','3','G7X4WC','1488','36NT','2767680','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('9','3','OO9SYW','895','3DSX','3034050','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('10','4','G7X4WC','1400','3Z5B','2604000','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('12','4','BGJO4H','1144','5URQ','2227368','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('13','5','QOMIBG','930','6AZ3','3813930','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('14','5','700TCQ','1062','6H51','1514,943','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('15','5','6HCHCJ','818','6J3V','1899396','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('16','6','JNV1LR','1172','7DCU','2596566','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('17','6','6IADGA','912','7XSJ','3577320','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('18','6','140B2T','930','802K','1994850','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('19','7','99LNN2','1320','80YA','2441340','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('20','7','HC1IGK','716','8NWX','1518636','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('21','7','IQBURG','1020','8OZS','2106810','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('22','8','140B2T','1002','8QVI','2149290','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('23','8','140B2T','1003','8TH5','2151435','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('24','8','5W8QKD','814','9D9H','2457873','8');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('25','9','XEV38J','1367','9NFX','3766768,5','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('26','9','EQDID2','1187','AF49','2610213','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('27','9','G7X4WC','1304','ARW7','2425440','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('28','10','MFIW05','970','BAXI','3091875','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('29','10','POVEN8','1192','C21J','4925940','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('30','10','AQVZ5B','1411','C8P8','5739948','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('31','11','EIEK41','697','C8TJ','2356557','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('32','11','EHHFOO','1241','CDG7','2133279','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('33','11','3XEUNU','1292','CSCA','2897310','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('34','12','POVEN8','987','DCKF','4078777,5','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('35','12','GAIR8V','853','DDZ0','3223060,5','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('36','12','EIEK41','1299','DKCD','4391919','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('37','13','3S4C0Z','1374','EK9W','3110049','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('38','13','HAI8PQ','1465','F78W','4298310','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('39','13','JYP75Q','866','FEOO','3074733','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('40','14','MH7J7M','829','GQ8Q','2167420,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('41','14','D38OLW','1273','GURD','3381724,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('42','14','HC1IGK','1264','GZCA','2680944','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('43','15','JNV1LR','1211','H7JH','2682970,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('44','15','XEV38J','1468','HTD4','4045074','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('45','15','K1Y3B7','1202','HXKS','3624030','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('46','16','99LNN2','1241','I3ZE','2295229,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('47','16','XUN58H','1401','I7H3','3629290,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('48','16','QOMIBG','915','IIVZ','3752415','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('49','17','SWWO9R','683','IWOE','1654567,5','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('50','17','9QEJFG','966','JT53','3060288','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('51','17','YSJAJD','1444','JVJ6','5220060','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('52','18','KA894H','1436','KOO3','3317160','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('53','18','T8JLL7','1268','LFAU','4956612','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('54','18','CE4NEE','764','M2K6','1515012','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('55','19','G7X4WC','854','MD9Y','1588440','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('56','19','GW9DL0','1418','MMYW','3279834','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('57','19','OO9SYW','1115','MNHA','3779850','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('58','20','9QEJFG','1326','MWVU','4200768','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('59','20','HC1IGK','1464','NFN8','3105144','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('60','20','TSRJUI','835','NY9N','1905052,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('61','21','QRQ14M','889','OI16','2301621','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('62','21','6BUUDF','1208','P4A1','5753100','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('63','21','69WW3C','1311','PBB9','3451207,5','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('64','22','I9UMTD','840','PS4A','1803060','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('65','22','R3X8WQ','1256','PWXM','3153816','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('66','22','B5DUSO','1245','Q6NQ','2672392,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('67','23','QOMIBG','1493','RUJ2','6122793','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('68','23','700TCQ','913','RZF0','1302,3945','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('69','23','J5O1M1','973','SCSI','1682803,5','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('70','24','XO9IQQ','1274','SCSS','3546816','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('71','24','FP5IXD','1448','SHN3','2773644','8');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('72','24','LAHOGS','788','SHOB','1574424','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('73','25','6OW9IJ','1389','STFE','2760637,5','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('74','25','T8JLL7','1126','T3UF','4401534','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('75','25','5W8QKD','1456','TGOE','4396392','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('76','26','PZ5VYR','992','TMDC','4013136','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('77','26','MFIW05','1109','TMH5','3534937,5','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('78','26','JKX0ET','884','TQPZ','2368236','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('79','27','8DIVP9','1212','TRI3','4146858','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('80','27','QC4OHX','1142','TTXM','3665820','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('81','27','WIIW8P','1398','TUQC','3904614','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('82','28','8MOYOR','1290','U06H','2815425','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('83','28','ABJ2TC','1194','URGT','3236337','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('84','28','LAHOGS','1044','UUOI','2085912','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('85','29','00BW4B','1392','UZIV','6971832','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('86','29','BGVZ8C','1428','V2NH','2613240','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('87','29','EQDID2','681','VCKU','1497519','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('88','30','2J5QRX','1047','VNCY','2677702,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('89','30','BGVZ8C','1003','VU4P','1835490','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('90','30','QRQ14M','1491','X1L5','3860199','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('91','31','DGGGAR','1365','X2YK','4205565','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('92','31','QOMIBG','942','X3XK','3863142','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('93','31','1E9B3Q','1003','X9ZG','3054135','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('94','32','UDI8QJ','889','XEXN','1352169','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('95','32','ONI84P','1126','XIGZ','2986152','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('96','32','97U6O1','1391','XPVN','4613251,5','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('97','33','JYP75Q','1269','Y0FQ','4505584,5','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('98','33','J5O1M1','1136','YJ1P','1964712','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('99','33','5W1EAY','974','YOAH','2587431','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('100','34','NPC716','775','YUN6','2471475','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('101','34','KA894H','1459','02U1','3370290','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('102','34','1E9B3Q','852','07FH','2594340','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('103','35','OXC5IS','1401','17H2','3099712,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('104','35','YSJAJD','1113','1WIE','4023495','8');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('105','35','N8MU0U','1118','2FJ4','3342261','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('106','36','UDI8QJ','960','350P','1460160','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('107','36','XLZHXM','1471','35RT','3570117','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('108','36','G7X4WC','1488','36NT','2767680','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('109','37','OO9SYW','895','3DSX','3034050','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('110','37','G7X4WC','1400','3Z5B','2604000','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('112','38','BGJO4H','1144','5URQ','2227368','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('113','38','QOMIBG','930','6AZ3','3813930','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('114','38','700TCQ','1062','6H51','1514,943','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('115','39','6HCHCJ','818','6J3V','1899396','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('116','39','JNV1LR','1172','7DCU','2596566','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('117','39','6IADGA','912','7XSJ','3577320','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('118','40','140B2T','930','802K','1994850','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('119','40','99LNN2','1320','80YA','2441340','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('120','40','HC1IGK','716','8NWX','1518636','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('121','41','IQBURG','1020','8OZS','2106810','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('122','41','140B2T','1002','8QVI','2149290','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('123','41','140B2T','1003','8TH5','2151435','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('124','42','5W8QKD','814','9D9H','2457873','8');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('125','42','XEV38J','1367','9NFX','3766768,5','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('126','42','EQDID2','1187','AF49','2610213','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('127','43','G7X4WC','1304','ARW7','2425440','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('128','43','MFIW05','970','BAXI','3091875','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('129','43','POVEN8','1192','C21J','4925940','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('130','44','AQVZ5B','1411','C8P8','5739948','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('131','44','EIEK41','697','C8TJ','2356557','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('132','44','EHHFOO','1241','CDG7','2133279','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('133','45','3XEUNU','1292','CSCA','2897310','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('134','45','POVEN8','987','DCKF','4078777,5','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('135','45','GAIR8V','853','DDZ0','3223060,5','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('136','46','EIEK41','1299','DKCD','4391919','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('137','46','3S4C0Z','1374','EK9W','3110049','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('138','46','HAI8PQ','1465','F78W','4298310','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('139','47','JYP75Q','866','FEOO','3074733','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('140','47','MH7J7M','829','GQ8Q','2167420,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('141','47','D38OLW','1273','GURD','3381724,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('142','48','HC1IGK','1264','GZCA','2680944','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('143','48','JNV1LR','1211','H7JH','2682970,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('144','48','XEV38J','1468','HTD4','4045074','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('145','49','K1Y3B7','1202','HXKS','3624030','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('146','49','99LNN2','1241','I3ZE','2295229,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('147','49','XUN58H','1401','I7H3','3629290,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('148','50','QOMIBG','915','IIVZ','3752415','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('149','50','SWWO9R','683','IWOE','1654567,5','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('150','50','9QEJFG','966','JT53','3060288','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('151','51','YSJAJD','1444','JVJ6','5220060','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('152','51','KA894H','1436','KOO3','3317160','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('153','51','T8JLL7','1268','LFAU','4956612','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('154','52','CE4NEE','764','M2K6','1515012','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('155','52','G7X4WC','854','MD9Y','1588440','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('156','52','GW9DL0','1418','MMYW','3279834','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('157','53','OO9SYW','1115','MNHA','3779850','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('158','53','9QEJFG','1326','MWVU','4200768','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('159','53','HC1IGK','1464','NFN8','3105144','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('160','54','TSRJUI','835','NY9N','1905052,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('161','54','QRQ14M','889','OI16','2301621','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('162','54','6BUUDF','1208','P4A1','5753100','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('163','55','69WW3C','1311','PBB9','3451207,5','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('164','55','I9UMTD','840','PS4A','1803060','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('165','55','R3X8WQ','1256','PWXM','3153816','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('166','56','B5DUSO','1245','Q6NQ','2672392,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('167','56','QOMIBG','1493','RUJ2','6122793','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('168','56','700TCQ','913','RZF0','1302,3945','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('169','57','J5O1M1','973','SCSI','1682803,5','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('170','57','XO9IQQ','1274','SCSS','3546816','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('171','57','FP5IXD','1448','SHN3','2773644','8');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('172','58','LAHOGS','788','SHOB','1574424','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('173','58','6OW9IJ','1389','STFE','2760637,5','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('174','58','T8JLL7','1126','T3UF','4401534','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('175','59','5W8QKD','1456','TGOE','4396392','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('176','59','PZ5VYR','992','TMDC','4013136','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('177','59','MFIW05','1109','TMH5','3534937,5','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('178','60','JKX0ET','884','TQPZ','2368236','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('179','60','8DIVP9','1212','TRI3','4146858','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('180','60','QC4OHX','1142','TTXM','3665820','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('181','61','WIIW8P','1398','TUQC','3904614','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('182','61','8MOYOR','1290','U06H','2815425','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('183','61','ABJ2TC','1194','URGT','3236337','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('184','62','LAHOGS','1044','UUOI','2085912','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('185','62','00BW4B','1392','UZIV','6971832','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('186','62','BGVZ8C','1428','V2NH','2613240','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('187','63','EQDID2','681','VCKU','1497519','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('188','63','2J5QRX','1047','VNCY','2677702,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('189','63','BGVZ8C','1003','VU4P','1835490','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('190','64','QRQ14M','1491','X1L5','3860199','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('191','64','DGGGAR','1365','X2YK','4205565','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('192','64','QOMIBG','942','X3XK','3863142','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('193','65','1E9B3Q','1003','X9ZG','3054135','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('194','65','UDI8QJ','889','XEXN','1352169','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('195','65','ONI84P','1126','XIGZ','2986152','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('196','66','97U6O1','1391','XPVN','4613251,5','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('197','66','JYP75Q','1269','Y0FQ','4505584,5','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('198','66','J5O1M1','1136','YJ1P','1964712','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('199','67','5W1EAY','974','YOAH','2587431','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('200','67','NPC716','775','YUN6','2471475','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('201','68','KA894H','1459','02U1','3370290','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('202','68','1E9B3Q','852','07FH','2594340','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('203','68','OXC5IS','1401','17H2','3099712,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('204','69','YSJAJD','1113','1WIE','4023495','8');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('205','69','N8MU0U','1118','2FJ4','3342261','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('206','69','UDI8QJ','960','350P','1460160','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('207','70','XLZHXM','1471','35RT','3570117','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('208','70','G7X4WC','1488','36NT','2767680','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('209','70','OO9SYW','895','3DSX','3034050','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('210','71','G7X4WC','1400','3Z5B','2604000','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('212','71','BGJO4H','1144','5URQ','2227368','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('213','72','QOMIBG','930','6AZ3','3813930','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('214','72','700TCQ','1062','6H51','1514,943','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('215','72','6HCHCJ','818','6J3V','1899396','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('216','73','JNV1LR','1172','7DCU','2596566','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('217','73','6IADGA','912','7XSJ','3577320','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('218','73','140B2T','930','802K','1994850','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('219','74','99LNN2','1320','80YA','2441340','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('220','74','HC1IGK','716','8NWX','1518636','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('221','74','IQBURG','1020','8OZS','2106810','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('222','75','140B2T','1002','8QVI','2149290','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('223','75','140B2T','1003','8TH5','2151435','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('224','75','5W8QKD','814','9D9H','2457873','8');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('225','76','XEV38J','1367','9NFX','3766768,5','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('226','76','EQDID2','1187','AF49','2610213','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('227','76','G7X4WC','1304','ARW7','2425440','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('228','77','MFIW05','970','BAXI','3091875','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('229','77','POVEN8','1192','C21J','4925940','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('230','77','AQVZ5B','1411','C8P8','5739948','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('231','78','EIEK41','697','C8TJ','2356557','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('232','78','EHHFOO','1241','CDG7','2133279','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('233','78','3XEUNU','1292','CSCA','2897310','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('234','79','POVEN8','987','DCKF','4078777,5','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('235','79','GAIR8V','853','DDZ0','3223060,5','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('236','79','EIEK41','1299','DKCD','4391919','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('237','80','3S4C0Z','1374','EK9W','3110049','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('238','80','HAI8PQ','1465','F78W','4298310','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('239','80','JYP75Q','866','FEOO','3074733','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('240','81','MH7J7M','829','GQ8Q','2167420,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('241','81','D38OLW','1273','GURD','3381724,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('242','81','HC1IGK','1264','GZCA','2680944','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('243','82','JNV1LR','1211','H7JH','2682970,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('244','82','XEV38J','1468','HTD4','4045074','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('245','82','K1Y3B7','1202','HXKS','3624030','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('246','83','99LNN2','1241','I3ZE','2295229,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('247','83','XUN58H','1401','I7H3','3629290,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('248','83','QOMIBG','915','IIVZ','3752415','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('249','84','SWWO9R','683','IWOE','1654567,5','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('250','84','9QEJFG','966','JT53','3060288','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('251','84','YSJAJD','1444','JVJ6','5220060','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('252','85','KA894H','1436','KOO3','3317160','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('253','85','T8JLL7','1268','LFAU','4956612','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('254','85','CE4NEE','764','M2K6','1515012','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('255','86','G7X4WC','854','MD9Y','1588440','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('256','86','GW9DL0','1418','MMYW','3279834','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('257','86','OO9SYW','1115','MNHA','3779850','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('258','87','9QEJFG','1326','MWVU','4200768','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('259','87','HC1IGK','1464','NFN8','3105144','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('260','87','TSRJUI','835','NY9N','1905052,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('261','88','QRQ14M','889','OI16','2301621','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('262','88','6BUUDF','1208','P4A1','5753100','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('263','88','69WW3C','1311','PBB9','3451207,5','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('264','89','I9UMTD','840','PS4A','1803060','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('265','89','R3X8WQ','1256','PWXM','3153816','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('266','89','B5DUSO','1245','Q6NQ','2672392,5','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('267','90','QOMIBG','1493','RUJ2','6122793','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('268','90','700TCQ','913','RZF0','1302,3945','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('269','90','J5O1M1','973','SCSI','1682803,5','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('270','91','XO9IQQ','1274','SCSS','3546816','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('271','91','FP5IXD','1448','SHN3','2773644','8');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('272','91','LAHOGS','788','SHOB','1574424','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('273','92','6OW9IJ','1389','STFE','2760637,5','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('274','92','T8JLL7','1126','T3UF','4401534','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('275','92','5W8QKD','1456','TGOE','4396392','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('276','93','PZ5VYR','992','TMDC','4013136','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('277','93','MFIW05','1109','TMH5','3534937,5','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('278','93','JKX0ET','884','TQPZ','2368236','6');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('279','94','8DIVP9','1212','TRI3','4146858','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('280','94','QC4OHX','1142','TTXM','3665820','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('281','94','WIIW8P','1398','TUQC','3904614','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('282','95','8MOYOR','1290','U06H','2815425','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('283','95','ABJ2TC','1194','URGT','3236337','4');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('284','95','LAHOGS','1044','UUOI','2085912','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('285','96','00BW4B','1392','UZIV','6971832','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('286','96','BGVZ8C','1428','V2NH','2613240','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('287','96','EQDID2','681','VCKU','1497519','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('288','97','2J5QRX','1047','VNCY','2677702,5','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('289','97','BGVZ8C','1003','VU4P','1835490','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('290','97','QRQ14M','1491','X1L5','3860199','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('291','98','DGGGAR','1365','X2YK','4205565','3');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('292','98','QOMIBG','942','X3XK','3863142','10');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('293','98','1E9B3Q','1003','X9ZG','3054135','5');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('294','99','UDI8QJ','889','XEXN','1352169','2');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('295','99','ONI84P','1126','XIGZ','2986152','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('296','99','97U6O1','1391','XPVN','4613251,5','7');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('297','100','JYP75Q','1269','Y0FQ','4505584,5','9');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('298','100','J5O1M1','1136','YJ1P','1964712','1');
Insert into SYSTEM.INVOICEDET (INVOICEDETID,INVOICE,IDPRODUCT,SALEQTY,LOTID,PRICE,IDLINE) values ('299','100','5W1EAY','974','YOAH','2587431','2');
REM INSERTING into SYSTEM.LOCATED
SET DEFINE OFF;
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('1','China','Changai','98231 Melvin Hill');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('2','Greece','Atenas','670 Westend Plaza');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('3','Zimbabwe','Madagascar','6000 Bultman Drive');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('4','Japan','Tokio','9 Loftsgordon Drive');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('5','Sweden','Kalmar','37 Sycamore Pass');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('6','Peru','Lima','80 Carberry Circle');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('7','China','Canton','32 Mayfield Lane');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('8','Bosnia and Herzegovina','Sarajevo','5394 Magdeline Terrace');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('9','Nigeria','abuya','2716 Hauk Court');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('10','Portugal','Santarém','7292 Corry Place');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('11','Indonesia','Yakarta','32829 Dexter Place');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('12','China','Shandong','100 Stephen Court');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('13','Egypt','Cairo','90 Washington Circle');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('14','Sweden','Stockholm','752 Dixon Place');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('15','Poland','Polando meidional','1 Oxford Lane');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('16','Mali','bamako','7556 Warner Avenue');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('17','Portugal','Lisboa','01 Manitowish Trail');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('18','Portugal','Aveiro','2 Stang Pass');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('19','Philippines','Malina','858 Delaware Terrace');
Insert into SYSTEM.LOCATED (IDLOCATED,COUNTRY,PROVINCE,DESCRIPTION) values ('20','Sweden','Västra Götaland','6 Memorial Pass');
REM INSERTING into SYSTEM.ORDERDET
SET DEFINE OFF;
REM INSERTING into SYSTEM.PRODUCT
SET DEFINE OFF;
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('Z1IZ1E','spectre Bumper kit','ZX','20000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('NGOS9P','AURO Bumper Replacemet','ZX','20000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('3LVEF8','Kool Vue Power Mirror','BG','20000','Passenger Side, Non-Folding, Heated, 2 Caps Paintable  Black');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('POVEN8','Kool Vue Power Mirror','BG','4132,5','Driver and Passenger Side, Non-Folding, Heated, 4 Caps Paintable  Black');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('L83F1H','Crow  Door Mirror Trim Rig','BG','20000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('XEV38J','AC Delco Iterior Rear View Mirror  coector','BG','2755,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('MFIW05','Kool Vue Mirror Glass - C -','BG','3187,5','  Driver Side, Non-Heated, Without Turn Signal Light, Without Blind Spot Feature, Direct Fit');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('80CL95','Kool Vue Mirror Glass  - ','BG','20000','Passenger Side, Heated, With Turn Signal Light, Without Blind Spot Feature, Direct Fit, Sold Individually');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('K6BOII','Replacemet Parkig Light  ','AM','20000','Passenger Side, Clear  Lens, Without bulb(s);, Direct Fit, DOT/SAE Compliant');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('SY6CSV','Motorcraft WPT- Back Up Light Coector','AM','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('QC4OHX','Adelco replacemet car egie','AW','3210',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('4SQTR3','Omix Car egie','AW','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('G7X4WC','Kool vue car egie','AW','1860',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('2V4PV1','Kool vue proximity sesor','AZ','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('45VEZ7','Kool vue oxyge sesor','AZ','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('128KJX','Adelco Car lights istrumet','BL','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('3XEUNU','Corel car lights istrumet','BL','2242,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('6YZV4V','Replacemet Haloge Fog Light -','OZ','5000',' Front, Driver or Passenger Side, Direct Fit, With bulb(s);, Clear Lens, DOT/SAE Compliant, Sold Individually');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('15DB0I','Crow A Fog Light Bezel','OZ','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('2KOX36','Replacemet Fog Light Bracket - ','OZ','5000','Drive and Passenger Side, Steel, Direct Fit');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('58XI0V','SOFFSEAL SIDE Lights','BL','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('GW9DL0','Berly SIDE lights','BL','2313',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('I766YL','SOFFSEAL  Radiator Core Support Seal','GZ','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('V48M00','Replacemet REP Radiator Support Bracket - Direct Fit','GZ','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('4CU0O6','Bosch Battery for Stabilizatio of Vehicle Power Supply 12V 12AH - Replaces OE umber ','TO','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('R3X8WQ','Autospecialty By Powerstop  Stock Replacemet Plai Surface Brake Disc ad Pad Kit','YU','2511',' 4-wheel set - Front and Rear');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('WIIW8P','A1 Cardoe Axle Assembly - ','XZ','2793','Direct Fit Remanufactured Front Driver Side, Sold Individually');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('ZMQYIX','Replacemet REPHor - Direct Fit','XZ','5000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('EP2EYT','Replacemet Truk Lid - -','TV','10000',' Direct Fit, Primed');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('IE38R5','Replacemet RC  Top Truk - Direct Fit','UZ','10000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('1E9B3Q','Dorma Hub CapXZ - ','ZG','3045','Gray, Plastic, Direct Fit, Sold Individually');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('OXC5IS','Dorma Hub Cap - ','ZG','2212,5','Brushed Aluminum, Plastic, Direct Fit, Sold Individually');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('HC1IGK','Omix DMC-2A Body Tub - Direct Fit','ZI','2121',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('DGGGAR','Omix Bodywork XZS','ZI','3081',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('PZ5VYR','Replacemet RCA Lock','PR','4045,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('BGVZ8C','Replacemet Door Lock Actuator - Direct Fit','PR','1830',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('GAIR8V','Dorma coils replacemet','ZB','3778,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('6IADGA','Replacemet  Igitio Coil - ','ZB','3922,5','Coil pack design, 2-Prong Terminal, Direct Fit, Sold Individually');
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('EQDID2','Dorma Dash Kob Kit - Direct Fit','ZW','2199',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('XU0KSW','Dorma Basic Replacemet','ZW','25000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('99LNN2','Purolator Motorcycle oil','ZY','1849,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('7MK5SY','Dorma ZX Motorcycle oil','ZY','1000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('S3XOTM','Omix Chargig system','ZZ','100',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('N8QQGA','Replacemet Radiator Support Cover','ZV','200',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('V1QD4Y','Omix Radiator Cover replacemet','ZV','400',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('6OW9IJ','A Start System replacemet','ZP','1987,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('97EWE5','Dorma Start System','ZP','1600',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('QOMIBG','APW Deposit Bags Kit','ZU','4101',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('HKFQVS','Premiu Kit Saddlebags replacemet','ZU','6400',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('XO9IQQ','OME Reverse lights','ZF','2784',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('F5P3S8','Fate Replacemet reverse lights','ZF','25600',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('C0TAIE','Veturio Licese plate lights replacemet','ZE','1000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('UDI8QJ','Artic Replacemet Licese plate lights','ZE','1521',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('XLZHXM','Brawler gearshift kob ','ZC','2427',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('TI9ASI','Crimso Gearshift Kob','ZC','8829',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('QRQ14M','Garriso Exhaust System Kit','YM','2589',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('SWWO9R','Grill  Exhaust System replacemet','YM','2422,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('TSRJUI','OPS Motorcycle Footpegs','ZM','2281,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('J5O1M1','Rager Pack Motorcycle Footpegs','ZM','1729,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('ABJ2TC','ITELITE Car door Ligths Pack','ZA','2710,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('LFUYC6','OG Premium Car door Ligths','ZA','220',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('O7AZ7J','RECO Auxiliary Radiator Tak','WE','1000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('EIEK41','Specialist Bermo Auxiliary Radiator tak replacemet','WE','3381',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('1CG3RX','Yuletide Wiper Washer','VG','121',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('CUSH1G','Plashtower  wiper Washer','VG','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('BGJO4H','Tracker Air Filter Replacemet','UU','1947',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('LJ4YX1','DW Air Filter Pack','UU','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('NQWH1G','SGT Brake ligths pack','TZ','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('I9UMTD','Gideo Brake Lights replacemet','TZ','2146,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('RXE5QC','Clover Seat Belt pack','SZ','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('7CT6KJ','Dorma Seat Belt kit','SZ','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('JYP75Q','WRAP Hadlebars replacemet','TB','3550,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('ZN28PS','Max Hadlebars for Motocycle','TB','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('EHHFOO','Widow Storage Bags replacemet','SW','1719',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('8S4CV4','Vertex Storage Bags Kit','SW','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('KRGAIY','Premiu Trasmissio pack','S7','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('L577VL','Wukog Trasmissio kit','S7','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('61UUXU','Gladier Pack Lightig System','RP','1300',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('OO9SYW','Advace Lightig System kit','RP','3390',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('5W8QKD','Lyla Diagostic tools','QY','3019,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('700TCQ','Firebird Diagostic tools','QY','1,4265',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('85F9FW','Forex Coolig system replacemet','QQ','2290',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('8DIVP9','Omega Coolig system','QQ','3421,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('AFXFTU','Odesha Feedig System','QG','2290',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('MH7J7M','Scar Feedig system','QG','2614,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('ONI84P','Highrise Rear lights ','QE','2652',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('LSQWKB','Purolator rear lights','QE','14000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('N8MU0U','Scout Car Hadles','PX','2989,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('Q4SMY9','Pixie Pack Car Hadles','PX','14000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('NKMN17','Drift Lights for feet replacemet kit','OJ','14000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('2Z5H6','Rider Lights for feet','OJ','14000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('D38OLW','Hopkis sow pack','W ','2656,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('KA894H','SLEDGE sow chais','W ','2310',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('IQBURG','Rook  Prime Agel eyes Lights','BW','2065,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('00BW4B','Redlie Agel eyes Lights kit','BW','5008,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('9QEJFG','Beat Audio pack','CI','3168',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('B5DUSO','Eforcer Audio replacemet','CI','2146,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('5W1EAY','Replacemet REPA Fuse -','CM','2656,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('8MOYOR','KAT  Fuse Replacemet','CM','2182,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('6HCHCJ','Koi armrest kit','CO','2322',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('JNV1LR','Crusier Armrest pack','CO','2215,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('LAHOGS','QWAX Addressig pack','E5','1998',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('WLRUFQ','Yuletide Addressig','E5','10',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('3S4C0Z','Ome Hoops','EG','2263,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('HAI8PQ','LUG Hoops kit','EG','2934',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('HAOEMC','QWAX seat covers','EH','36',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('FMSF1T','Crusier Seat covers pack','EH','36',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('JBROQB','Koi Egie prime pack','EZ','36',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('D1DJ7V','Shift Egie kit','EZ','36',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('W2QI78','Fate Alterators','FE','36',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('2J5QRX','Uplik Alterators','FE','2557,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('IKLOH3','Yoder car oil','FQ','36',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('JKX0ET','Camo Car oil','FQ','2679',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('YHRL30','Dorma tire ','IG','19500',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('Q50UX8','Wukog tire','IG','19500',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('6BUUDF','Fate switch','KB','4762,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('V33JJ2','Uplik Switch replacemet','KB','19500',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('7XJTUP','Yoder suspesio','JH','19500',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('FP5IXD','Camo Suspesio kit','JH','1915,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('AQVZ5B','Ome Security Alarm Pack','HO','4068',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('N9VLX2','ALVOC Security Alarm','HO','19500',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('BJPE49','BOESY wheel cover','HW','19500',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('69WW3C','Dorma wheel cover kit','HW','2632,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('DGMLU8','Hopkis Air bags pack','KZ','2000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('CE4NEE','Scales Air bags kit','KZ','1983',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('YSJAJD','A Floor Mats Pack','LO','3615',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('97U6O1','OG Floor Mats kit','LO','3316,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('TEB7UE','iss Distributio system','MT','1234',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('140B2T','Prime Dorma Dist. System','MT','2145',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('BGBOA1','Firebird Readig Lights','MO','8600',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('HUF0LJ','Pure Kit Readig Lights','MO','8600',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('NPC716','LuG Trasistors kit','MV','3189',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('MSIIX6','Ome trasistor','MV','8600',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('420SGG','Prime Pack og Brake Accessories','B ','8600',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('K1Y3B7','Trish Brake Accessories kit','B ','3015',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('WIFPUT','Trish Iflate Pump','Q ','8600',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('WKXU60','Wukog Iflatable pump','Q ','8600',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('15GPOF','IPCW CWB- Bumper Light - Clear Lens, Direct Fit','AM','2000',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('XUN58H','Replacement Radiator Support Assembly - Direct Fit, Steel','GZ','2590,5',null);
Insert into SYSTEM.PRODUCT (PRODUCTID,PRODUCTNAME,PRODUCTCATEGORY,PRICEPERUNIT,DESCRIPTION2) values ('T8JLL7','Replacement Trunk Lid, Tail Light and Bumper Cover Kit -C -','TV','3909',' Direct Fit, Primed');
--------------------------------------------------------
--  DDL for Index PK_CURRENCY_CURRENCYID
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_CURRENCY_CURRENCYID" ON "SYSTEM"."CURRENCY" ("CURRENCYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CUSTOMER
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_CUSTOMER" ON "SYSTEM"."CUSTOMER" ("CUSTOMERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PERSON
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_PERSON" ON "SYSTEM"."DBOPERSON" ("IDPERSON") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ORDER
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_ORDER" ON "SYSTEM"."DBOORDER" ("IDORDER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_EMPLOYES
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_EMPLOYES" ON "SYSTEM"."EMPLOYES" ("EMPLYEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_FACTSALE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_FACTSALE" ON "SYSTEM"."FSALES" ("FACTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_INVOICEDET
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_INVOICEDET" ON "SYSTEM"."INVOICEDET" ("INVOICEDETID", "INVOICE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_LOCATED
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_LOCATED" ON "SYSTEM"."LOCATED" ("IDLOCATED") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ORDERDET
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_ORDERDET" ON "SYSTEM"."ORDERDET" ("IDDETORDER", "IDORDER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUCT
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_PRODUCT" ON "SYSTEM"."PRODUCT" ("PRODUCTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Procedure INSDETFA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."INSDETFA" (invoiceP number , idproductP VARCHAR2 ,saleqtyP number , lotidP varchar , IdlineP number ) is 
begin 
INSERT INTO invoicedet (
    invoice,
    idproduct,
    saleqty,
    lotid,
    price,
    IdlineP
    
) VALUES (
    invoiceP,
    idproductP,
    saleqtyP,
       lotidP ,
    (select PRICEPERUNIT from product where PRODUCTID =idproductP)*saleqtyP,
    IdlineP
)

END INSDETF

/
--------------------------------------------------------
--  DDL for Procedure INSINVOICE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."INSINVOICE" AS 
BEGIN
  NULL;
END INSINVOICE;


CREATE OR REPLACE NONEDITIONABLE PROCEDURE INSINVOICE (SALECURRIDP number , DISCOUNTAMNTP NUMBER ,EMPLOYEEIDP number,customeridP VARCHAR) is
BEGIN
  
 INSERT INTO fsales (
    
    salecurrid,
    discountamnt,
    employeeid,
    date1,
    customerid
) VALUES (  1, DISCOUNTAMNTP ,EMPLOYEEIDP , ( select current_date from dual), customeridP);
 
END INSINVOICE;

/
--------------------------------------------------------
--  DDL for Procedure INSINVOICE2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."INSINVOICE2" as 
begin
INSERT INTO fsales (
    
    salecurrid,
    discountamnt,
    employeeid,
    date1,
    customerid
) VALUES (  1, DISCOUNTAMNTP ,EMPLOYEEIDP , ( select current_date from dual), customeridP);
 
END INSINVOICE2;

/
--------------------------------------------------------
--  DDL for Procedure ORA$_SYS_REP_AUTH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."ORA$_SYS_REP_AUTH" as
begin
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repschema TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repprop TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_aqcall TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_calldest TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_error TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_destination TO SYS ' ||
                 'WITH GRANT OPTION';
end;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE1
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."PROCEDURE1" (invoiceP number,idproductP varchar,
saleqtyP number ,lotidP varchar,  idlineP number ) AS 
BEGIN

INSERT INTO invoicedet (
    invoice,
    idproduct,
    saleqty,
    lotid,
    price,
    idline
) VALUES (
    invoiceP,
    idproductP,
    saleqtyP,
    lotidP ,
    (select priceperunit from product where PRODUCTID =idproductP)*saleqtyP,
    idlineP);

END PROCEDURE1;



----------------------------------------

/
--------------------------------------------------------
--  DDL for Package DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "SYSTEM"."DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
9
bf d6
0cfc6e4Sm6mfaMYwsbW2JygBepcwg/BKmJ4VZy/pO06UXsVUMejsissTcGWYR4qeK4TPqfDK
q7UPH+SmKP6nW9zmxMZnuK1VDzM0Iv9O4E4SvvsnHWn+EPF9hR+oBFe3fEro6RQ5R5Ejd1nr
e+fAK010dExf76gg/c6ZB3YxGPHDOqkGI4lV6HNsd57gKLwTd0bxan5UwJriIpt7Vjc=

/
--------------------------------------------------------
--  DDL for Package Body DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "SYSTEM"."DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
b
ba5 3a0
WEr0nOgRMSPBS3Z7Kvjx5JCUt2owg5WnTCCDfI5Av1UPOFy3ytP8lZ8t3hEfG60CTfSQMcvV
6ivyNKey557uUQmq5H5JbD4u2nCU8C8sxsa7x7zmdjj+nij7sk14NSnX4GLHDewbAlnflaQV
5Ip0a4vV4HdElsmpesU60A7ZRG8v4fOFSRFfWNoVil6uEiKYBLiqWripX8GpJaZ8UshyxIOj
3EV/homo0wcdcBB50gZ8bonh0GB5pN1QSW8ltNLN2ps5qHg4TFDnWgG7up3N8kaIB0jtO+rR
OP839Jnm3sPBXdL8EIaW3GOR7ycVj6toVCHpkKRN/WnLPYPi/XGYL71P09LHNjbMf+HU9z+W
ttKW9ohPDLdUXmufaLawN9vr5XOAgXkPX9PgtMFLHhe8jXO5u0o3rjZ87bqbdX97dwK3zxUy
OkWEQPSP30tF7ju3s8C+dWlmC1W3i3GtyWbzGK2Eurr+TuoTsQS0Dt/syQBYtpARlGmMcJ/Q
uZHG0WvcncL9qX/vNbNCWwB6eljzuQfMpuir8Y8vRTLYSlLNbup7L7i0RH8E69URqExlq/ko
CrPr/P+gWYZqqKbq0vWo8JEolfewBUbS3Tu7sQKjcYnE5Mb8PMR/fVNBoOXYkAMs3eudRCE1
YAM+sULch667d2YxFf7vvKfyn066LtD/6OlO0EWc6368k1axWwIxZjIKp8Wuno28ytJgAT8N
j5LHQVUcVKXxVfHM7P8oicVqILtVxXIrgOk8iVWdqwrPp0MDBvmkyJvfct+wRz2bw6Mum72v
bKVdOosnO6+VVrq8mcPRw1KcY0mRSRP16HIg6fdySN8Ce94HnJ2LA9Squbok3/mN0v1H0lLO
XPFJRbPFqmI2+F8/KVORKCsXMw4BHLV0Zh+Z9At//KrOmWxKssU=

/
--------------------------------------------------------
--  DDL for Synonymn CATALOG
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."CATALOG" FOR "SYS"."CATALOG";
--------------------------------------------------------
--  DDL for Synonymn COL
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."COL" FOR "SYS"."COL";
--------------------------------------------------------
--  DDL for Synonymn PRODUCT_USER_PROFILE
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."PRODUCT_USER_PROFILE" FOR "SYSTEM"."SQLPLUS_PRODUCT_PROFILE";
--------------------------------------------------------
--  DDL for Synonymn PUBLICSYN
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."PUBLICSYN" FOR "SYS"."PUBLICSYN";
--------------------------------------------------------
--  DDL for Synonymn SYSCATALOG
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."SYSCATALOG" FOR "SYS"."SYSCATALOG";
--------------------------------------------------------
--  DDL for Synonymn SYSFILES
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."SYSFILES" FOR "SYS"."SYSFILES";
--------------------------------------------------------
--  DDL for Synonymn TAB
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."TAB" FOR "SYS"."TAB";
--------------------------------------------------------
--  DDL for Synonymn TABQUOTAS
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."TABQUOTAS" FOR "SYS"."TABQUOTAS";
--------------------------------------------------------
--  DDL for Queue DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'SYSTEM.DEF$_AQERROR',
     Queue_table         => 'SYSTEM.DEF$_AQERROR',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Error Queue for Deferred RPCs');
  END;
/
--------------------------------------------------------
--  DDL for Queue DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'SYSTEM.DEF$_AQCALL',
     Queue_table         => 'SYSTEM.DEF$_AQCALL',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Deferred RPC Queue');
  END;
/
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"SYSTEM"."DEF$_AQCALL"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
/
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"SYSTEM"."DEF$_AQERROR"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
/
--------------------------------------------------------
--  Constraints for Table CURRENCY
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CURRENCY" ADD CONSTRAINT "PK_CURRENCY_CURRENCYID" PRIMARY KEY ("CURRENCYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."CURRENCY" MODIFY ("CURRENCYID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."CURRENCY" MODIFY ("CURRENCYNM" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."CURRENCY" MODIFY ("CURRENCYTYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CUSTOMER" ADD CONSTRAINT "PK_CUSTOMER" PRIMARY KEY ("CUSTOMERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."CUSTOMER" MODIFY ("CUSTOMERID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."CUSTOMER" MODIFY ("CUSTOMERNM" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."CUSTOMER" MODIFY ("NUMTELEPHONE" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."CUSTOMER" MODIFY ("LOCATIONID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."CUSTOMER" MODIFY ("STATE" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."CUSTOMER" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DBOPERSON
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DBOPERSON" ADD CONSTRAINT "PK_PERSON" PRIMARY KEY ("IDPERSON")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."DBOPERSON" MODIFY ("IDPERSON" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."DBOPERSON" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."DBOPERSON" MODIFY ("LASTNAM1" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."DBOPERSON" MODIFY ("LASNAM2" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."DBOPERSON" MODIFY ("LOCATEDID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."DBOPERSON" MODIFY ("AGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DBOORDER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DBOORDER" ADD CONSTRAINT "PK_ORDER" PRIMARY KEY ("IDORDER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."DBOORDER" MODIFY ("IDORDER" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."DBOORDER" MODIFY ("IDCUSTOMER" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."DBOORDER" MODIFY ("DATEO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMPLOYES" ADD CONSTRAINT "PK_EMPLOYES" PRIMARY KEY ("EMPLYEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."EMPLOYES" MODIFY ("EMPLYEID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."EMPLOYES" MODIFY ("IDPERSON" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."EMPLOYES" MODIFY ("ENVELOPE" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."EMPLOYES" MODIFY ("IDDEPARTAMENTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FSALES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."FSALES" ADD CONSTRAINT "PK_FACTSALE" PRIMARY KEY ("FACTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."FSALES" MODIFY ("FACTID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."FSALES" MODIFY ("SALECURRID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."FSALES" MODIFY ("DISCOUNTAMNT" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."FSALES" MODIFY ("EMPLOYEEID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."FSALES" MODIFY ("DATE1" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."FSALES" MODIFY ("CUSTOMERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INVOICEDET
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."INVOICEDET" ADD CONSTRAINT "PK_INVOICEDET" PRIMARY KEY ("INVOICEDETID", "INVOICE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."INVOICEDET" MODIFY ("INVOICEDETID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."INVOICEDET" MODIFY ("INVOICE" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."INVOICEDET" MODIFY ("IDPRODUCT" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."INVOICEDET" MODIFY ("SALEQTY" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."INVOICEDET" MODIFY ("PRICE" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."INVOICEDET" MODIFY ("LOTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOCATED
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."LOCATED" ADD CONSTRAINT "PK_LOCATED" PRIMARY KEY ("IDLOCATED")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."LOCATED" MODIFY ("IDLOCATED" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."LOCATED" MODIFY ("COUNTRY" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."LOCATED" MODIFY ("PROVINCE" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."LOCATED" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERDET
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ORDERDET" ADD CONSTRAINT "PK_ORDERDET" PRIMARY KEY ("IDDETORDER", "IDORDER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."ORDERDET" MODIFY ("IDDETORDER" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."ORDERDET" MODIFY ("IDORDER" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."ORDERDET" MODIFY ("PRODUCTID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."ORDERDET" MODIFY ("AMOUNT" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."ORDERDET" MODIFY ("EST" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."ORDERDET" MODIFY ("PRICE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY ("PRODUCTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PRODUCTNAME" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PRODUCTCATEGORY" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PRICEPERUNIT" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PRODUCTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CUSTOMER" ADD CONSTRAINT "FK_CUSTOMER_LOCATED" FOREIGN KEY ("LOCATIONID")
	  REFERENCES "SYSTEM"."LOCATED" ("IDLOCATED") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DBOPERSON
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DBOPERSON" ADD CONSTRAINT "FK_DBOPERSON_LOCATED" FOREIGN KEY ("LOCATEDID")
	  REFERENCES "SYSTEM"."LOCATED" ("IDLOCATED") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DBOORDER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DBOORDER" ADD CONSTRAINT "FK_ORDER_CUSTOMER" FOREIGN KEY ("IDCUSTOMER")
	  REFERENCES "SYSTEM"."CUSTOMER" ("CUSTOMERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMPLOYES" ADD CONSTRAINT "FK_EMPLOYES_PERSON" FOREIGN KEY ("IDPERSON")
	  REFERENCES "SYSTEM"."DBOPERSON" ("IDPERSON") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FSALES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."FSALES" ADD CONSTRAINT "FK_FSALES_CURRENCY" FOREIGN KEY ("SALECURRID")
	  REFERENCES "SYSTEM"."CURRENCY" ("CURRENCYID") ENABLE;
 
  ALTER TABLE "SYSTEM"."FSALES" ADD CONSTRAINT "FK_SALES_EMPLOYES" FOREIGN KEY ("EMPLOYEEID")
	  REFERENCES "SYSTEM"."EMPLOYES" ("EMPLYEID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INVOICEDET
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."INVOICEDET" ADD CONSTRAINT "FK_INVOICEDET_FSALES" FOREIGN KEY ("INVOICE")
	  REFERENCES "SYSTEM"."FSALES" ("FACTID") ENABLE;
 
  ALTER TABLE "SYSTEM"."INVOICEDET" ADD CONSTRAINT "FK_INVOINCEDET_PRODUCT" FOREIGN KEY ("IDPRODUCT")
	  REFERENCES "SYSTEM"."PRODUCT" ("PRODUCTID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERDET
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ORDERDET" ADD CONSTRAINT "FK_ORDERDET_ORDER" FOREIGN KEY ("IDORDER")
	  REFERENCES "SYSTEM"."DBOORDER" ("IDORDER") ENABLE;
 
  ALTER TABLE "SYSTEM"."ORDERDET" ADD CONSTRAINT "FK_ORDERDET_PRODUCT" FOREIGN KEY ("PRODUCTID")
	  REFERENCES "SYSTEM"."PRODUCT" ("PRODUCTID") ENABLE;

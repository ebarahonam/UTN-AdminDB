/****** Scripting replication configuration. Script Date: 07/12/2018 23:08:01 ******/
/****** Please Note: For security reasons, all password parameters were scripted with either NULL or an empty string. ******/

/****** Begin: Script to be run at Publisher ******/

/****** Installing the server as a Distributor. Script Date: 07/12/2018 23:08:01 ******/
use master
exec sp_adddistributor @distributor = N'FRODO', @password = N'', @from_scripting = 1
GO

-- Adding the agent profiles
-- Updating the agent profile defaults
exec sp_MSupdate_agenttype_default @profile_id = 1
GO
exec sp_MSupdate_agenttype_default @profile_id = 2
GO
exec sp_MSupdate_agenttype_default @profile_id = 4
GO
exec sp_MSupdate_agenttype_default @profile_id = 6
GO
exec sp_MSupdate_agenttype_default @profile_id = 11
GO

-- Adding the distribution databases
use master
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Data', @data_file = N'distribution.MDF', @data_file_size = 13, @log_folder = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Data', @log_file = N'distribution.LDF', @log_file_size = 9, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @deletebatchsize_xact = 5000, @deletebatchsize_cmd = 2000, @security_mode = 1, @from_scripting = 1
GO

------ Script Date: Replication agents checkup ------
begin transaction 
  DECLARE @JobID BINARY(16)
  DECLARE @ReturnCode INT
  SELECT @ReturnCode = 0
if (select count(*) from msdb.dbo.syscategories where name = N'REPL-Checkup') < 1 
  execute msdb.dbo.sp_add_category N'REPL-Checkup'

select @JobID = job_id from msdb.dbo.sysjobs where (name = N'Replication agents checkup')
if (@JobID is NULL)
BEGIN
  execute @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT, @job_name = N'Replication agents checkup', @enabled = 1, @description = N'Detects replication agents that are not logging history actively.', @start_step_id = 1, @category_name = N'REPL-Checkup', @owner_login_name = N'sa', @notify_level_eventlog = 2, @notify_level_email = 0, @notify_level_netsend = 0, @notify_level_page = 0, @notify_email_operator_name = N'(unknown)', @notify_netsend_operator_name = N'(unknown)', @notify_page_operator_name = N'(unknown)', @delete_level = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 1, @step_name = N'Run agent.', @subsystem = N'TSQL', @command = N'sys.sp_replication_agent_checkup @heartbeat_interval = 10', @cmdexec_success_code = 0, @on_success_action = 1, @on_success_step_id = 0, @on_fail_action = 2, @on_fail_step_id = 0, @database_name = N'master', @retry_attempts = 0, @retry_interval = 0, @os_run_priority = 0, @flags = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id = @JobID, @name = N'Replication agent schedule.', @enabled = 1, @freq_type = 4, @freq_interval = 1, @freq_subday_type = 4, @freq_subday_interval = 10, @freq_relative_interval = 1, @freq_recurrence_factor = 0, @active_start_date = 20181207, @active_end_date = 99991231, @active_start_time = 0, @active_end_time = 235959
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @JobID, @server_name = N'FRODO'
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

END

commit transaction 
goto EndSave 
QuitWithRollback: 
  if (@@TRANCOUNT > 0) rollback transaction 
EndSave:
GO

------ Script Date: Reinitialize subscriptions having data validation failures ------
begin transaction 
  DECLARE @JobID BINARY(16)
  DECLARE @ReturnCode INT
  SELECT @ReturnCode = 0
if (select count(*) from msdb.dbo.syscategories where name = N'REPL-Alert Response') < 1 
  execute msdb.dbo.sp_add_category N'REPL-Alert Response'

select @JobID = job_id from msdb.dbo.sysjobs where (name = N'Reinitialize subscriptions having data validation failures')
if (@JobID is NULL)
BEGIN
  execute @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT, @job_name = N'Reinitialize subscriptions having data validation failures', @enabled = 1, @description = N'Reinitializes all subscriptions that have data validation failures.', @start_step_id = 1, @category_name = N'REPL-Alert Response', @owner_login_name = N'sa', @notify_level_eventlog = 0, @notify_level_email = 0, @notify_level_netsend = 0, @notify_level_page = 0, @notify_email_operator_name = N'(unknown)', @notify_netsend_operator_name = N'(unknown)', @notify_page_operator_name = N'(unknown)', @delete_level = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 1, @step_name = N'Run agent.', @subsystem = N'TSQL', @command = N'exec sys.sp_MSreinit_failed_subscriptions @failure_level = 1', @cmdexec_success_code = 0, @on_success_action = 1, @on_success_step_id = 0, @on_fail_action = 2, @on_fail_step_id = 0, @server = N'FRODO', @database_name = N'master', @retry_attempts = 0, @retry_interval = 0, @os_run_priority = 0, @flags = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @JobID, @server_name = N'FRODO'
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

END

commit transaction 
goto EndSave 
QuitWithRollback: 
  if (@@TRANCOUNT > 0) rollback transaction 
EndSave:
GO

------ Script Date: Replication monitoring refresher for distribution. ------
begin transaction 
  DECLARE @JobID BINARY(16)
  DECLARE @ReturnCode INT
  SELECT @ReturnCode = 0
if (select count(*) from msdb.dbo.syscategories where name = N'REPL-Alert Response') < 1 
  execute msdb.dbo.sp_add_category N'REPL-Alert Response'

select @JobID = job_id from msdb.dbo.sysjobs where (name = N'Replication monitoring refresher for distribution.')
if (@JobID is NULL)
BEGIN
  execute @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT, @job_name = N'Replication monitoring refresher for distribution.', @enabled = 0, @description = N'Replication monitoring refresher for distribution.', @start_step_id = 1, @category_name = N'REPL-Alert Response', @owner_login_name = N'sa', @notify_level_eventlog = 0, @notify_level_email = 0, @notify_level_netsend = 0, @notify_level_page = 0, @notify_email_operator_name = N'(unknown)', @notify_netsend_operator_name = N'(unknown)', @notify_page_operator_name = N'(unknown)', @delete_level = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 1, @step_name = N'Run agent.', @subsystem = N'TSQL', @command = N'exec dbo.sp_replmonitorrefreshjob  ', @cmdexec_success_code = 0, @on_success_action = 1, @on_success_step_id = 0, @on_fail_action = 2, @on_fail_step_id = 0, @server = N'FRODO', @database_name = N'distribution', @retry_attempts = 2147483647, @retry_interval = 1, @os_run_priority = 0, @flags = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id = @JobID, @name = N'Replication agent schedule.', @enabled = 1, @freq_type = 64, @freq_interval = 0, @freq_subday_type = 0, @freq_subday_interval = 0, @freq_relative_interval = 0, @freq_recurrence_factor = 0, @active_start_date = 20181207, @active_end_date = 99991231, @active_start_time = 0, @active_end_time = 235959
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @JobID, @server_name = N'FRODO'
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

END

commit transaction 
goto EndSave 
QuitWithRollback: 
  if (@@TRANCOUNT > 0) rollback transaction 
EndSave:
GO

------ Script Date: Agent history clean up: distribution ------
begin transaction 
  DECLARE @JobID BINARY(16)
  DECLARE @ReturnCode INT
  SELECT @ReturnCode = 0
if (select count(*) from msdb.dbo.syscategories where name = N'REPL-History Cleanup') < 1 
  execute msdb.dbo.sp_add_category N'REPL-History Cleanup'

select @JobID = job_id from msdb.dbo.sysjobs where (name = N'Agent history clean up: distribution')
if (@JobID is NULL)
BEGIN
  execute @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT, @job_name = N'Agent history clean up: distribution', @enabled = 1, @description = N'Removes replication agent history from the distribution database.', @start_step_id = 1, @category_name = N'REPL-History Cleanup', @owner_login_name = N'sa', @notify_level_eventlog = 0, @notify_level_email = 0, @notify_level_netsend = 0, @notify_level_page = 0, @notify_email_operator_name = N'(unknown)', @notify_netsend_operator_name = N'(unknown)', @notify_page_operator_name = N'(unknown)', @delete_level = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 1, @step_name = N'Run agent.', @subsystem = N'TSQL', @command = N'EXEC dbo.sp_MShistory_cleanup @history_retention = 48', @cmdexec_success_code = 0, @on_success_action = 1, @on_success_step_id = 0, @on_fail_action = 2, @on_fail_step_id = 0, @server = N'FRODO', @database_name = N'distribution', @retry_attempts = 0, @retry_interval = 0, @os_run_priority = 0, @flags = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id = @JobID, @name = N'Replication agent schedule.', @enabled = 1, @freq_type = 4, @freq_interval = 1, @freq_subday_type = 4, @freq_subday_interval = 10, @freq_relative_interval = 1, @freq_recurrence_factor = 0, @active_start_date = 20181207, @active_end_date = 99991231, @active_start_time = 0, @active_end_time = 235959
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @JobID, @server_name = N'FRODO'
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

END

commit transaction 
goto EndSave 
QuitWithRollback: 
  if (@@TRANCOUNT > 0) rollback transaction 
EndSave:
GO

------ Script Date: Distribution clean up: distribution ------
begin transaction 
  DECLARE @JobID BINARY(16)
  DECLARE @ReturnCode INT
  SELECT @ReturnCode = 0
if (select count(*) from msdb.dbo.syscategories where name = N'REPL-Distribution Cleanup') < 1 
  execute msdb.dbo.sp_add_category N'REPL-Distribution Cleanup'

select @JobID = job_id from msdb.dbo.sysjobs where (name = N'Distribution clean up: distribution')
if (@JobID is NULL)
BEGIN
  execute @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT, @job_name = N'Distribution clean up: distribution', @enabled = 0, @description = N'Removes replicated transactions from the distribution database.', @start_step_id = 1, @category_name = N'REPL-Distribution Cleanup', @owner_login_name = N'sa', @notify_level_eventlog = 0, @notify_level_email = 0, @notify_level_netsend = 0, @notify_level_page = 0, @notify_email_operator_name = N'(unknown)', @notify_netsend_operator_name = N'(unknown)', @notify_page_operator_name = N'(unknown)', @delete_level = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 1, @step_name = N'Run agent.', @subsystem = N'TSQL', @command = N'EXEC dbo.sp_MSdistribution_cleanup @min_distretention = 0, @max_distretention = 72', @cmdexec_success_code = 0, @on_success_action = 1, @on_success_step_id = 0, @on_fail_action = 2, @on_fail_step_id = 0, @server = N'FRODO', @database_name = N'distribution', @retry_attempts = 0, @retry_interval = 0, @os_run_priority = 0, @flags = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id = @JobID, @name = N'Replication agent schedule.', @enabled = 1, @freq_type = 4, @freq_interval = 1, @freq_subday_type = 4, @freq_subday_interval = 10, @freq_relative_interval = 1, @freq_recurrence_factor = 0, @active_start_date = 20181207, @active_end_date = 99991231, @active_start_time = 500, @active_end_time = 459
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @JobID, @server_name = N'FRODO'
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

END

commit transaction 
goto EndSave 
QuitWithRollback: 
  if (@@TRANCOUNT > 0) rollback transaction 
EndSave:
GO

-- Adding the distribution publishers
exec sp_adddistpublisher @publisher = N'FRODO', @distribution_db = N'distribution', @security_mode = 0, @login = N'sa', @password = N'', @working_directory = N'C:\Replicacion', @trusted = N'false', @thirdparty_flag = 0, @publisher_type = N'MSSQLSERVER'
GO

------ Script Date: FRODO-AutoTechDW-Replicacion-1 ------
begin transaction 
  DECLARE @JobID BINARY(16)
  DECLARE @ReturnCode INT
  SELECT @ReturnCode = 0
if (select count(*) from msdb.dbo.syscategories where name = N'REPL-Snapshot') < 1 
  execute msdb.dbo.sp_add_category N'REPL-Snapshot'

select @JobID = job_id from msdb.dbo.sysjobs where (name = N'FRODO-AutoTechDW-Replicacion-1')
if (@JobID is NULL)
BEGIN
  execute @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT, @job_name = N'FRODO-AutoTechDW-Replicacion-1', @enabled = 1, @description = N'No description available.', @start_step_id = 1, @category_name = N'REPL-Snapshot', @owner_login_name = N'sa', @notify_level_eventlog = 0, @notify_level_email = 0, @notify_level_netsend = 0, @notify_level_page = 0, @notify_email_operator_name = N'(unknown)', @notify_netsend_operator_name = N'(unknown)', @notify_page_operator_name = N'(unknown)', @delete_level = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 1, @step_name = N'Snapshot Agent startup message.', @subsystem = N'TSQL', @command = N'sp_MSadd_snapshot_history @perfmon_increment = 0,  @agent_id = 1, @runstatus = 1,  
                    @comments = N''Starting agent.''', @cmdexec_success_code = 0, @on_success_action = 3, @on_success_step_id = 0, @on_fail_action = 3, @on_fail_step_id = 0, @server = N'FRODO', @database_name = N'distribution', @retry_attempts = 0, @retry_interval = 0, @os_run_priority = 0, @flags = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 2, @step_name = N'Run agent.', @subsystem = N'Snapshot', @command = N'-Publisher [FRODO] -PublisherDB [AutoTechDW] -Distributor [FRODO] -Publication [Replicacion] -ReplicationType 2 -DistributorSecurityMode 1 ', @cmdexec_success_code = 0, @on_success_action = 1, @on_success_step_id = 0, @on_fail_action = 3, @on_fail_step_id = 0, @server = N'FRODO', @database_name = N'distribution', @retry_attempts = 10, @retry_interval = 1, @os_run_priority = 0, @flags = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 3, @step_name = N'Detect nonlogged agent shutdown.', @subsystem = N'TSQL', @command = N'sp_MSdetect_nonlogged_shutdown @subsystem = ''Snapshot'', @agent_id = 1', @cmdexec_success_code = 0, @on_success_action = 2, @on_success_step_id = 0, @on_fail_action = 2, @on_fail_step_id = 0, @server = N'FRODO', @database_name = N'distribution', @retry_attempts = 0, @retry_interval = 0, @os_run_priority = 0, @flags = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id = @JobID, @name = N'Replication agent schedule.', @enabled = 0, @freq_type = 1, @freq_interval = 0, @freq_subday_type = 0, @freq_subday_interval = 0, @freq_relative_interval = 0, @freq_recurrence_factor = 0, @active_start_date = 20181207, @active_end_date = 99991231, @active_start_time = 500, @active_end_time = 235959
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @JobID, @server_name = N'FRODO'
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

END

commit transaction 
goto EndSave 
QuitWithRollback: 
  if (@@TRANCOUNT > 0) rollback transaction 
EndSave:
GO

------ Script Date: Expired subscription clean up ------
begin transaction 
  DECLARE @JobID BINARY(16)
  DECLARE @ReturnCode INT
  SELECT @ReturnCode = 0
if (select count(*) from msdb.dbo.syscategories where name = N'REPL-Subscription Cleanup') < 1 
  execute msdb.dbo.sp_add_category N'REPL-Subscription Cleanup'

select @JobID = job_id from msdb.dbo.sysjobs where (name = N'Expired subscription clean up')
if (@JobID is NULL)
BEGIN
  execute @ReturnCode = msdb.dbo.sp_add_job @job_id = @JobID OUTPUT, @job_name = N'Expired subscription clean up', @enabled = 1, @description = N'Detects and removes expired subscriptions from published databases or distribution databases.', @start_step_id = 1, @category_name = N'REPL-Subscription Cleanup', @owner_login_name = N'sa', @notify_level_eventlog = 0, @notify_level_email = 0, @notify_level_netsend = 0, @notify_level_page = 0, @notify_email_operator_name = N'(unknown)', @notify_netsend_operator_name = N'(unknown)', @notify_page_operator_name = N'(unknown)', @delete_level = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobstep @job_id = @JobID, @step_id = 1, @step_name = N'Run agent.', @subsystem = N'TSQL', @command = N'EXEC sys.sp_expired_subscription_cleanup', @cmdexec_success_code = 0, @on_success_action = 1, @on_success_step_id = 0, @on_fail_action = 2, @on_fail_step_id = 0, @server = N'FRODO', @database_name = N'master', @retry_attempts = 0, @retry_interval = 0, @os_run_priority = 0, @flags = 0
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_update_job @job_id = @JobID, @start_step_id = 1
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id = @JobID, @name = N'Replication agent schedule.', @enabled = 1, @freq_type = 4, @freq_interval = 1, @freq_subday_type = 1, @freq_subday_interval = 1, @freq_relative_interval = 1, @freq_recurrence_factor = 0, @active_start_date = 20181207, @active_end_date = 99991231, @active_start_time = 10000, @active_end_time = 235959
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

  execute @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @JobID, @server_name = N'FRODO'
  if (@@ERROR <> 0 OR @ReturnCode <> 0) goto QuitWithRollback

END

commit transaction 
goto EndSave 
QuitWithRollback: 
  if (@@TRANCOUNT > 0) rollback transaction 
EndSave:
GO


/****** End: Script to be run at Publisher ******/


-- Enabling the replication database
use master
exec sp_replicationdboption @dbname = N'AutoTechDW', @optname = N'merge publish', @value = N'true'
GO

-- Adding the merge publication
use [AutoTechDW]
exec sp_addmergepublication @publication = N'Replicacion', @description = N'Merge publication of database ''AutoTechDW'' from Publisher ''FRODO''.', @sync_mode = N'native', @retention = 14, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'true', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @ftp_subdirectory = N'ftp', @ftp_login = N'anonymous', @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @dynamic_filters = N'false', @conflict_retention = 14, @keep_partition_changes = N'false', @allow_synctoalternate = N'false', @max_concurrent_merge = 0, @max_concurrent_dynamic_snapshots = 0, @use_partition_groups = N'false', @publication_compatibility_level = N'100RTM', @replicate_ddl = 1, @allow_subscriber_initiated_snapshot = N'false', @allow_web_synchronization = N'false', @allow_partition_realignment = N'true', @retention_period_unit = N'days', @conflict_logging = N'both', @automatic_reinitialization_policy = 0
GO


exec sp_addpublication_snapshot @publication = N'Replicacion', @snapshot_job_name = N'FRODO-AutoTechDW-Replicacion-1', @job_login = null, @job_password = null, @publisher_security_mode = 0, @publisher_login = N'sa', @publisher_password = N''
exec sp_grant_publication_access @publication = N'Replicacion', @login = N'sa'
GO
exec sp_grant_publication_access @publication = N'Replicacion', @login = N'FRODO\SQLAdmin'
GO
exec sp_grant_publication_access @publication = N'Replicacion', @login = N'FRODO\Administrador'
GO
exec sp_grant_publication_access @publication = N'Replicacion', @login = N'NT SERVICE\Winmgmt'
GO
exec sp_grant_publication_access @publication = N'Replicacion', @login = N'NT SERVICE\SQLWriter'
GO
exec sp_grant_publication_access @publication = N'Replicacion', @login = N'NT SERVICE\SQLSERVERAGENT'
GO
exec sp_grant_publication_access @publication = N'Replicacion', @login = N'NT Service\MSSQLSERVER'
GO
exec sp_grant_publication_access @publication = N'Replicacion', @login = N'SQLAdmin'
GO
exec sp_grant_publication_access @publication = N'Replicacion', @login = N'distributor_admin'
GO

-- Adding the merge articles
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'DimCurrency', @source_owner = N'dbo', @source_object = N'DimCurrency', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 10000, @identity_range = 1000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'DimCustomer', @source_owner = N'dbo', @source_object = N'DimCustomer', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 10000, @identity_range = 1000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'DimDate', @source_owner = N'dbo', @source_object = N'DimDate', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 10000, @identity_range = 1000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'DimDefect', @source_owner = N'dbo', @source_object = N'DimDefect', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 10000, @identity_range = 1000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'DimIssue', @source_owner = N'dbo', @source_object = N'DimIssue', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 10000, @identity_range = 1000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'DimProduct', @source_owner = N'dbo', @source_object = N'DimProduct', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 10000, @identity_range = 1000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'DimRoot', @source_owner = N'dbo', @source_object = N'DimRoot', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 10000, @identity_range = 1000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'DimTestCategory', @source_owner = N'dbo', @source_object = N'DimTestCategory', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 10000, @identity_range = 1000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'FactProduction', @source_owner = N'dbo', @source_object = N'FactProduction', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 100000, @identity_range = 10000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'FactClaims', @source_owner = N'dbo', @source_object = N'FactClaims', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 100000, @identity_range = 10000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'FactSales', @source_owner = N'dbo', @source_object = N'FactSales', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 100000, @identity_range = 10000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO
use [AutoTechDW]
exec sp_addmergearticle @publication = N'Replicacion', @article = N'FactTesting', @source_owner = N'dbo', @source_object = N'FactTesting', @type = N'table', @description = N'', @creation_script = N'', @pre_creation_cmd = N'drop', @schema_option = 0x000000010C034FD1, @identityrangemanagementoption = N'auto', @pub_identity_range = 100000, @identity_range = 10000, @threshold = 80, @destination_owner = N'dbo', @force_reinit_subscription = 1, @column_tracking = N'false', @subset_filterclause = N'', @vertical_partition = N'false', @verify_resolver_signature = 1, @allow_interactive_resolver = N'false', @fast_multicol_updateproc = N'true', @check_permissions = 0, @subscriber_upload_options = 0, @delete_tracking = N'true', @compensate_for_errors = N'false', @stream_blob_columns = N'true', @partition_options = 0
GO




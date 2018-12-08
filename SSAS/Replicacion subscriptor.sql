-- Adding the merge pull subscription

/****** Begin: Script to be run at Subscriber ******/
use [AutoTechDW]
exec sp_addmergepullsubscription @publisher = N'FRODO', @publication = N'Replicacion', @publisher_db = N'AutoTechDW', @subscriber_type = N'Local', @subscription_priority = 0, @description = N'', @sync_type = N'Automatic'
exec sp_addmergepullsubscription_agent @publisher = N'FRODO', @publisher_db = N'AutoTechDW', @publication = N'Replicacion', @distributor = N'FRODO', @distributor_security_mode = 0, @distributor_login = N'sa', @distributor_password = N'', @enabled_for_syncmgr = N'False', @frequency_type = 64, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @alt_snapshot_folder = N'C:\Replicacion', @working_directory = N'', @use_ftp = N'False', @job_login = null, @job_password = null, @publisher_security_mode = 0, @publisher_login = N'sa', @publisher_password = N'', @use_interactive_resolver = N'False', @dynamic_snapshot_location = N'', @use_web_sync = 0
GO
/****** End: Script to be run at Subscriber ******/

/****** Begin: Script to be run at Publisher ******/
/*use [AutoTechDW]
exec sp_addmergesubscription @publication = N'Replicacion', @subscriber = N'SAMM', @subscriber_db = N'AutoTechDW', @subscription_type = N'pull', @subscriber_type = N'local', @subscription_priority = 0, @sync_type = N'Automatic'
*/
/****** End: Script to be run at Publisher ******/


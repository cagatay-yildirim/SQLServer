USE [msdb]
GO
EXEC msdb.dbo.sp_update_job 
@job_id=N'7aea3d02-35bd-47f7-acf8-7d8131c13318', 
@owner_login_name=N'sa'
GO

/****** Object:  Operator [DBAServices]    Script Date: 03/18/2009 03:55:44 ******/
IF  EXISTS (SELECT name FROM msdb.dbo.sysoperators WHERE name = N'DBAServices')
EXEC msdb.dbo.sp_delete_operator @name=N'DBAServices'
GO
EXEC msdb.dbo.sp_add_operator @name=N'DBAServices', 
		@enabled=1, 
		@weekday_pager_start_time=90000, 
		@weekday_pager_end_time=180000, 
		@saturday_pager_start_time=90000, 
		@saturday_pager_end_time=180000, 
		@sunday_pager_start_time=90000, 
		@sunday_pager_end_time=180000, 
		@pager_days=0, 
		@email_address=N'dbaservices@europeancredit.com', 
		@category_name=N'[Uncategorized]'
GO
EXEC msdb.dbo.sp_update_job @job_id=N'7aea3d02-35bd-47f7-acf8-7d8131c13318', 
		@notify_level_netsend=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBAServices'
GO
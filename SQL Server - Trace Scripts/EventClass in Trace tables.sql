/*
EventClass in Trace tables

This script creates the table ProfilerEventClass and populates it with the EventClasses and EventNames.
This table is useful when working with trace tables, to get the event names by joining the tables on EventClass. 

*/

if not exists (select 1 from sysobjects where
			id = object_id(N'dbo.ProfilerEventClass') and
			objectproperty(id,N'IsUserTable')=1)
begin
	create table dbo.ProfilerEventClass
	(
		EventClass tinyint not null,
		EventName varchar(40) not null,
		constraint ProfilerEventClass_primary_key primary key clustered (EventClass)
	)
end

INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(1,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(2,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(3,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(4,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(5,'TraceStop')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(6,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(7,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(8,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(9,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(10,'RPC:Completed')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(11,'RPC:Starting')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(12,'SQL:BatchCompleted')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(13,'SQL:BatchStarting')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(14,'Login')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(15,'Logout')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(16,'Attention')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(17,'ExistingConnection')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(18,'ServiceControl')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(19,'DTCTransaction')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(20,'Login Failed')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(21,'EventLog')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(22,'ErrorLog')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(23,'Lock:Released')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(24,'Lock:Acquired')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(25,'Lock:Deadlock')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(26,'Lock:Cancel')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(27,'Lock:Timeout')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(28,'DOP Event')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(29,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(30,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(31,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(32,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(33,'Exception')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(34,'SP:CacheMiss')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(35,'SP:CacheInsert')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(36,'SP:CacheRemove')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(37,'SP:Recompile')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(38,'SP:CacheHit')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(39,'SP:ExecContextHit')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(40,'SQL:StmtStarting')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(41,'SQL:StmtCompleted')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(42,'SP:Starting')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(43,'SP:Completed')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(44,'SP:StmtStarting')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(45,'SP:StmtCompleted')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(46,'Object:Created')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(47,'Object:Deleted')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(48,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(49,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(50,'SQL Transaction')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(51,'Scan:Started')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(52,'Scan:Stopped')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(53,'CursorOpen')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(54,'Transaction Log')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(55,'Hash Warning')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(56,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(57,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(58,'Auto Update Stats')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(59,'Lock:Deadlock Chain')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(60,'Lock:Escalation')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(61,'OLE DB Errors')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(62,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(63,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(64,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(65,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(66,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(67,'Execution Warnings')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(68,'Excution Plan')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(69,'Sort Warnings')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(70,'CursorPrepare')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(71,'Prepare SQL')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(72,'Exec Prepared SQL')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(73,'Unprepare SQL')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(74,'CursorExecute')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(75,'CursorRecompile')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(76,'CursorImplicitConversion')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(77,'CursorUnprepare')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(78,'CursorClose')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(79,'Missing Column Statistics')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(80,'Missing Join Predicate')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(81,'Server Memory Change')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(82,'User Configurable 0')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(83,'User Configurable 1')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(84,'User Configurable 2')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(85,'User Configurable 3')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(86,'User Configurable 4')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(87,'User Configurable 5')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(88,'User Configurable 6')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(89,'User Configurable 7')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(90,'User Configurable 8')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(91,'User Configurable 9')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(92,'Data File Auto Grow')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(93,'Log File Auto Grow')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(94,'Data File Auto Shrink')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(95,'Log File Auto Shrink')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(96,'Show Plan Text')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(97,'Show Plan ALL')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(98,'Show Plan Statistics')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(99,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(100,'RPC Output Parameter')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(101,'Reserved')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(102,'Audit Statement GDR')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(103,'Audit Object GDR')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(104,'Audit Add/Drop Login')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(105,'Audit Login GDR')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(106,'Audit Login Change Property')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(107,'Audit Login Change Password')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(108,'Audit Add Login to Server Role')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(109,'Audit Add DB User')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(110,'Audit Add Member to DB')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(111,'Audit Add/Drop Role')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(112,'App Role Pass Change')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(113,'Audit Statement Permission')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(114,'Audit Object Permission')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(115,'Audit Backup/Restore')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(116,'Audit DBCC')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(117,'Audit Change Audit')
INSERT INTO ProfilerEventClass (EventClass,EventName) VALUES(118,'Audit Object Derived Permission')

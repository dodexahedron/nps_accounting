SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
BEGIN TRANSACTION

CREATE TABLE [dbo].[accounting_data_tmp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[timestamp] [datetime2](3) NOT NULL,
	[Computer_Name] [varchar](25) NOT NULL,
	[Packet_Type] [tinyint] NOT NULL,
	[User_Name] [nvarchar](255) NULL,
	[F_Q_User_Name] [nvarchar](255) NULL,
	[Called_Station_Id] [nvarchar](255) NULL,
	[Calling_Station_Id] [nvarchar](255) NULL,
	[Callback_Number] [nvarchar](255) NULL,
	[Framed_IP_Address] [dbo].[ipaddress] NULL,
	[NAS_Identifier] [nvarchar](255) NULL,
	[NAS_IP_Address] [dbo].[ipaddress] NULL,
	[NAS_Port] [int] NULL,
	[Client_Vendor] [smallint] NULL,
	[Client_IP_Address] [dbo].[ipaddress] NULL,
	[Client_Friendly_Name] [nvarchar](255) NULL,
	[Event_Timestamp] [datetime2](0) NULL,
	[Port_Limit] [int] NULL,
	[NAS_Port_Type] [tinyint] NULL,
	[Connect_Info] [nvarchar](255) NULL,
	[Framed_Protocol] [tinyint] NULL,
	[Framed_MTU] [smallint] NULL,
	[Service_Type] [tinyint] NULL,
	[Authentication_Type] [tinyint] NULL,
	[NP_Policy_Name] [nvarchar](255) NULL,
	[Reason_Code] [int] NULL,
	[Class] [nvarchar](255) NULL,
	[Session_Timeout] [int] NULL,
	[Idle_Timeout] [int] NULL,
	[Termination_Action] [int] NULL,
	[EAP_Friendly_Name] [nvarchar](255) NULL,
	[PEAP_Fast_Roamed_Session] [tinyint] NULL,
	[Acct_Status_Type] [int] NULL,
	[Acct_Delay_Time] [int] NULL,
	[Acct_Input_Octets] [int] NULL,
	[Acct_Output_Octets] [int] NULL,
	[Acct_Session_Id] [nvarchar](255) NULL,
	[Acct_Authentic] [int] NULL,
	[Acct_Session_Time] [int] NULL,
	[Acct_Input_Packets] [int] NULL,
	[Acct_Output_Packets] [int] NULL,
	[Acct_Input_Gigawords] [int] NULL,
	[Acct_Output_Gigawords] [int] NULL,
	[Acct_Terminate_Cause] [int] NULL,
	[Acct_Multi_Session_Id] [nvarchar](255) NULL,
	[Acct_Link_Count] [int] NULL,
	[Acct_Interim_Interval] [int] NULL,
	[Tunnel_Type] [tinyint] NULL,
	[Tunnel_Medium_Type] [int] NULL,
	[Tunnel_Client_Endpoint] [nvarchar](255) NULL,
	[Tunnel_Server_Endpoint] [nvarchar](255) NULL,
	[Acct_Tunnel_Connection] [nvarchar](255) NULL,
	[Tunnel_Pvt_Group_Id] [nvarchar](255) NULL,
	[Tunnel_Assignment_Id] [nvarchar](255) NULL,
	[Tunnel_Preference] [int] NULL,
	[MS_Acct_Auth_Type] [smallint] NULL,
	[MS_Acct_EAP_Type] [smallint] NULL,
	[MS_RAS_Version] [nvarchar](255) NULL,
	[MS_RAS_Vendor] [smallint] NULL,
	[MS_CHAP_Error] [nvarchar](255) NULL,
	[MS_CHAP_Domain] [nvarchar](255) NULL,
	[MS_MPPE_Encryption_Types] [tinyint] NULL,
	[MS_MPPE_Encryption_Policy] [tinyint] NULL,
	[Proxy_Policy_Name] [nvarchar](255) NULL,
	[Provider_Type] [tinyint] NULL,
	[Provider_Name] [nvarchar](255) NULL,
	[Remote_Server_Address] [dbo].[ipaddress] NULL,
	[MS_RAS_Client_Name] [nvarchar](255) NULL,
	[MS_RAS_Client_Version] [nvarchar](255) NULL,
	[MS_Quarantine_State] [int] NULL,
	[MS_RAS_Correlation_ID] [nvarchar](255) NULL,
	[MS_Network_Access_Server_Type] [nvarchar](255) NULL,
 CONSTRAINT [PK_accounting_data_tmp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = ON, DATA_COMPRESSION = PAGE) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[accounting_data_tmp]
           ([timestamp]
           ,[Computer_Name]
           ,[Packet_Type]
           ,[User_Name]
           ,[F_Q_User_Name]
           ,[Called_Station_Id]
           ,[Calling_Station_Id]
           ,[Callback_Number]
           ,[Framed_IP_Address]
           ,[NAS_Identifier]
           ,[NAS_IP_Address]
           ,[NAS_Port]
           ,[Client_Vendor]
           ,[Client_IP_Address]
           ,[Client_Friendly_Name]
           ,[Event_Timestamp]
           ,[Port_Limit]
           ,[NAS_Port_Type]
           ,[Connect_Info]
           ,[Framed_Protocol]
           ,[Framed_MTU]
           ,[Service_Type]
           ,[Authentication_Type]
           ,[NP_Policy_Name]
           ,[Reason_Code]
           ,[Class]
           ,[Session_Timeout]
           ,[Idle_Timeout]
           ,[Termination_Action]
           ,[EAP_Friendly_Name]
           ,[PEAP_Fast_Roamed_Session]
           ,[Acct_Status_Type]
           ,[Acct_Delay_Time]
           ,[Acct_Input_Octets]
           ,[Acct_Output_Octets]
           ,[Acct_Session_Id]
           ,[Acct_Authentic]
           ,[Acct_Session_Time]
           ,[Acct_Input_Packets]
           ,[Acct_Output_Packets]
           ,[Acct_Input_Gigawords]
           ,[Acct_Output_Gigawords]
           ,[Acct_Terminate_Cause]
           ,[Acct_Multi_Session_Id]
           ,[Acct_Link_Count]
           ,[Acct_Interim_Interval]
           ,[Tunnel_Type]
           ,[Tunnel_Medium_Type]
           ,[Tunnel_Client_Endpoint]
           ,[Tunnel_Server_Endpoint]
           ,[Acct_Tunnel_Connection]
           ,[Tunnel_Pvt_Group_Id]
           ,[Tunnel_Assignment_Id]
           ,[Tunnel_Preference]
           ,[MS_Acct_Auth_Type]
           ,[MS_Acct_EAP_Type]
           ,[MS_RAS_Version]
           ,[MS_RAS_Vendor]
           ,[MS_CHAP_Error]
           ,[MS_CHAP_Domain]
           ,[MS_MPPE_Encryption_Types]
           ,[MS_MPPE_Encryption_Policy]
           ,[Proxy_Policy_Name]
           ,[Provider_Type]
           ,[Provider_Name]
           ,[Remote_Server_Address]
           ,[MS_RAS_Client_Name]
           ,[MS_RAS_Client_Version]
           ,[MS_Quarantine_State]
           ,[MS_RAS_Correlation_ID]
           ,[MS_Network_Access_Server_Type])
		   SELECT
			[timestamp]
           ,[Computer_Name]
           ,[Packet_Type]
           ,[User_Name]
           ,[F_Q_User_Name]
           ,[Called_Station_Id]
           ,[Calling_Station_Id]
           ,[Callback_Number]
           ,[Framed_IP_Address]
           ,[NAS_Identifier]
           ,[NAS_IP_Address]
           ,[NAS_Port]
           ,[Client_Vendor]
           ,[Client_IP_Address]
           ,[Client_Friendly_Name]
           ,[Event_Timestamp]
           ,[Port_Limit]
           ,[NAS_Port_Type]
           ,[Connect_Info]
           ,[Framed_Protocol]
           ,[Framed_MTU]
           ,[Service_Type]
           ,[Authentication_Type]
           ,[NP_Policy_Name]
           ,[Reason_Code]
           ,[Class]
           ,[Session_Timeout]
           ,[Idle_Timeout]
           ,[Termination_Action]
           ,[EAP_Friendly_Name]
           ,[PEAP_Fast_Roamed_Session]
           ,[Acct_Status_Type]
           ,[Acct_Delay_Time]
           ,[Acct_Input_Octets]
           ,[Acct_Output_Octets]
           ,[Acct_Session_Id]
           ,[Acct_Authentic]
           ,[Acct_Session_Time]
           ,[Acct_Input_Packets]
           ,[Acct_Output_Packets]
           ,[Acct_Input_Gigawords]
           ,[Acct_Output_Gigawords]
           ,[Acct_Terminate_Cause]
           ,[Acct_Multi_Session_Id]
           ,[Acct_Link_Count]
           ,[Acct_Interim_Interval]
           ,[Tunnel_Type]
           ,[Tunnel_Medium_Type]
           ,[Tunnel_Client_Endpoint]
           ,[Tunnel_Server_Endpoint]
           ,[Acct_Tunnel_Connection]
           ,[Tunnel_Pvt_Group_Id]
           ,[Tunnel_Assignment_Id]
           ,[Tunnel_Preference]
           ,[MS_Acct_Auth_Type]
           ,[MS_Acct_EAP_Type]
           ,[MS_RAS_Version]
           ,[MS_RAS_Vendor]
           ,[MS_CHAP_Error]
           ,[MS_CHAP_Domain]
           ,[MS_MPPE_Encryption_Types]
           ,[MS_MPPE_Encryption_Policy]
           ,[Proxy_Policy_Name]
           ,[Provider_Type]
           ,[Provider_Name]
           ,[Remote_Server_Address]
           ,[MS_RAS_Client_Name]
           ,[MS_RAS_Client_Version]
           ,[MS_Quarantine_State]
		   FROM dbo.accounting_data
		   GO
		   DROP TABLE dbo.accounting_data
		   GO
		   exec sp_rename @objname='accounting_data_tmp', @newname = 'accounting_data'
		   GO
		   exec sp_rename @objname='PK_accounting_data_tmp', @newname = 'PK_accounting_data'
		   GO

		   COMMIT
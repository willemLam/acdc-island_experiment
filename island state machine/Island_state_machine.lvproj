<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Project Documentation" Type="Folder">
			<Item Name="Documentation Images" Type="Folder">
				<Item Name="loc_open_data_typedef.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_open_data_typedef.png"/>
				<Item Name="loc_open_states_typedef.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_open_states_typedef.png"/>
				<Item Name="loc_simple_state_machine.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_simple_state_machine.png"/>
				<Item Name="loc_state_transition.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_state_transition.png"/>
				<Item Name="loc_transition_error.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_transition_error.png"/>
				<Item Name="loc_use_state_data.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_use_state_data.png"/>
				<Item Name="loc_conditional_state_transition.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_conditional_state_transition.png"/>
				<Item Name="loc_new_button.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_new_button.png"/>
				<Item Name="loc_new_button_transition.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_new_button_transition.png"/>
				<Item Name="loc_new_button_value_change.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_new_button_value_change.png"/>
				<Item Name="loc_new_state.png" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/loc_new_state.png"/>
			</Item>
			<Item Name="Simple State Machine Documentation.html" Type="Document" URL="../../../LabVIEW Data/Island_state_machine/documentation/Simple State Machine Documentation.html"/>
		</Item>
		<Item Name="Type Definitions" Type="Folder">
			<Item Name="State.ctl" Type="VI" URL="../controls/State.ctl"/>
			<Item Name="CDA.ctl" Type="VI" URL="../controls/CDA.ctl"/>
			<Item Name="SC_references.ctl" Type="VI" URL="../controls/SC_references.ctl"/>
			<Item Name="Setpoints_CDA.ctl" Type="VI" URL="../controls/Setpoints_CDA.ctl"/>
			<Item Name="Setpoints_CDA_ZENONE.ctl" Type="VI" URL="../controls/Setpoints_CDA_ZENONE.ctl"/>
		</Item>
		<Item Name="Helper function" Type="Folder">
			<Item Name="up_grid_data.vi" Type="VI" URL="../controls/up_grid_data.vi"/>
			<Item Name="distribute_setpoints_DC.vi" Type="VI" URL="../distribute_setpoints_DC.vi"/>
			<Item Name="Setpoint.vi" Type="VI" URL="../controls/Setpoint.vi"/>
			<Item Name="up_grid_data_freq.vi" Type="VI" URL="../controls/up_grid_data_freq.vi"/>
			<Item Name="PID.vi" Type="VI" URL="../controls/PID.vi"/>
			<Item Name="PID2.vi" Type="VI" URL="../controls/PID2.vi"/>
			<Item Name="up_grid_data_prepareConnection.vi" Type="VI" URL="../controls/up_grid_data_prepareConnection.vi"/>
			<Item Name="PV_facade_central_Data.ctl" Type="VI" URL="../controls/PV_facade_central_Data.ctl"/>
			<Item Name="Setpoints_CDA2.ctl" Type="VI" URL="../controls/Setpoints_CDA2.ctl"/>
			<Item Name="Setpoint2.vi" Type="VI" URL="../controls/Setpoint2.vi"/>
			<Item Name="PID2_2.vi" Type="VI" URL="../controls/PID2_2.vi"/>
			<Item Name="PID2_2V.vi" Type="VI" URL="../controls/PID2_2V.vi"/>
			<Item Name="state_2.ctl" Type="VI" URL="../controls/state_2.ctl"/>
			<Item Name="plot_V_control.ctl" Type="VI" URL="../controls/plot_V_control.ctl"/>
		</Item>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Main5states.vi" Type="VI" URL="../Main5states.vi"/>
		<Item Name="Main5states_decoupled.vi" Type="VI" URL="../Main5states_decoupled.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="JSONtext.lvlib" Type="Library" URL="/&lt;vilib&gt;/JDP Science/JSONtext/JSONtext.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="NI_AAL_Angle.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AAL_Angle.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="JDP Utility.lvlib" Type="Library" URL="/&lt;vilib&gt;/JDP Science/JDP Science Common Utilities/JDP Utility.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="rt-milliseconds-to-rel-time.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/TimedLoop/TimeConversion.llb/rt-milliseconds-to-rel-time.vi"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="openg_boolean__ogtk.lvlib" Type="Library" URL="/&lt;userlib&gt;/_OpenG.lib/boolean/boolean.llb/openg_boolean__ogtk.lvlib"/>
			</Item>
			<Item Name="SynchroCheckCentral.ctl" Type="VI" URL="../controls/SynchroCheckCentral.ctl"/>
			<Item Name="SynchroCheckCentral_Info.ctl" Type="VI" URL="../controls/SynchroCheckCentral_Info.ctl"/>
			<Item Name="SynchroCheckCentral_Data.ctl" Type="VI" URL="../controls/SynchroCheckCentral_Data.ctl"/>
			<Item Name="AFE_froming_Central.ctl" Type="VI" URL="../controls/AFE_froming_Central.ctl"/>
			<Item Name="AFE_froming_Central_Info.ctl" Type="VI" URL="../controls/AFE_froming_Central_Info.ctl"/>
			<Item Name="AFE_froming_Central_Data.ctl" Type="VI" URL="../controls/AFE_froming_Central_Data.ctl"/>
			<Item Name="references.ctl" Type="VI" URL="../controls/references.ctl"/>
			<Item Name="Connected_OPF.ctl" Type="VI" URL="../controls/Connected_OPF.ctl"/>
			<Item Name="Connected_OPF_Info.ctl" Type="VI" URL="../controls/Connected_OPF_Info.ctl"/>
			<Item Name="Connected_OPF_Data.ctl" Type="VI" URL="../controls/Connected_OPF_Data.ctl"/>
			<Item Name="State Machine.ctl" Type="VI" URL="../controls/State Machine.ctl"/>
			<Item Name="distribute_setpoints.vi" Type="VI" URL="../distribute_setpoints.vi"/>
			<Item Name="check multiple instances.vi" Type="VI" URL="../check multiple instances.vi"/>
			<Item Name="Optimal_slack_selection_Data.ctl" Type="VI" URL="../controls/Optimal_slack_selection_Data.ctl"/>
			<Item Name="Optimal_slack_selection_Info.ctl" Type="VI" URL="../controls/Optimal_slack_selection_Info.ctl"/>
			<Item Name="Optimal_slack_selection.ctl" Type="VI" URL="../controls/Optimal_slack_selection.ctl"/>
			<Item Name="measurements_SC.ctl" Type="VI" URL="../controls/measurements_SC.ctl"/>
			<Item Name="measurements.ctl" Type="VI" URL="../controls/measurements.ctl"/>
			<Item Name="PVemulator_Central_Data.ctl" Type="VI" URL="../controls/PVemulator_Central_Data.ctl"/>
			<Item Name="PVemulator_Central_Info.ctl" Type="VI" URL="../controls/PVemulator_Central_Info.ctl"/>
			<Item Name="PVemulator_Central.ctl" Type="VI" URL="../controls/PVemulator_Central.ctl"/>
			<Item Name="Phasor.ctl" Type="VI" URL="../controls/Phasor.ctl"/>
			<Item Name="3ph Phasor.ctl" Type="VI" URL="../controls/3ph Phasor.ctl"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="MeteoBoxCentral_Data.ctl" Type="VI" URL="../controls/MeteoBoxCentral_Data.ctl"/>
			<Item Name="MeteoBoxCentral_Info.ctl" Type="VI" URL="../controls/MeteoBoxCentral_Info.ctl"/>
			<Item Name="MeteoBoxCentral.ctl" Type="VI" URL="../controls/MeteoBoxCentral.ctl"/>
			<Item Name="PV_facade_cental_Info.ctl" Type="VI" URL="../controls/PV_facade_cental_Info.ctl"/>
			<Item Name="PV_facade_central.ctl" Type="VI" URL="../controls/PV_facade_central.ctl"/>
			<Item Name="SCADA_to_SM.ctl" Type="VI" URL="../controls/SCADA_to_SM.ctl"/>
			<Item Name="SCADAOGCentral_Info.ctl" Type="VI" URL="../controls/SCADAOGCentral_Info.ctl"/>
			<Item Name="SCADA_to_SM_Data.ctl" Type="VI" URL="../controls/SCADA_to_SM_Data.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Main Application" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{B511CD8F-BE21-4470-A7C4-3ACBADFC72C8}</Property>
				<Property Name="App_INI_GUID" Type="Str">{78EABFCD-5B97-4F87-AF3F-FF129EE73305}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{2CE40C4E-446A-4350-9E11-C85D8BAE8F13}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Main Application</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Main Application</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{09FD23A0-93D2-46A2-B12D-FA02255F97C6}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Main.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Main Application/Main.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Main Application/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{E14DB2DD-E011-49B1-8A6D-0145D8676319}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Main Application</Property>
				<Property Name="TgtF_internalName" Type="Str">Main Application</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 </Property>
				<Property Name="TgtF_productName" Type="Str">Main Application</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A9B9C488-ADD7-40F6-AAC2-547427E5CB24}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Main.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>

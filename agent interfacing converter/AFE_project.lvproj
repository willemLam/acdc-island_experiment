<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="ELH010-DC-Agent" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">ELH010-DC-Agent</Property>
		<Property Name="alias.value" Type="Str">192.168.1.20</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,x64;DeviceCode,7735;</Property>
		<Property Name="crio.ControllerPID" Type="Str">7735</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">9</Property>
		<Property Name="host.TargetOSID" Type="UInt">19</Property>
		<Property Name="host.TargetUIEnabled" Type="Bool">false</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Agent" Type="Folder">
			<Item Name="Advertisement" Type="Folder">
				<Item Name="Cost Function" Type="Folder">
					<Item Name="Cost function.vi" Type="VI" URL="../Agent/Advertisement/Cost Function/Cost function.vi"/>
				</Item>
				<Item Name="PQ Profile" Type="Folder">
					<Item Name="PacLims.vi" Type="VI" URL="../Agent/Advertisement/PQ Profile/PacLims.vi"/>
					<Item Name="plims.vi" Type="VI" URL="../Agent/Advertisement/PQ Profile/plims.vi"/>
				</Item>
				<Item Name="compute_adv.vi" Type="VI" URL="../Agent/Advertisement/compute_adv.vi"/>
				<Item Name="compute_robust_adv.vi" Type="VI" URL="../Agent/Advertisement/compute_robust_adv.vi"/>
				<Item Name="get-long-term.vi" Type="VI" URL="../Agent/Advertisement/get-long-term.vi"/>
			</Item>
			<Item Name="Communication" Type="Folder">
				<Item Name="open-ra-res.vi" Type="VI" URL="../Agent/Communication/open-ra-res.vi"/>
				<Item Name="startAgent.vi" Type="VI" URL="../Agent/Communication/startAgent.vi"/>
				<Item Name="stopAgent.vi" Type="VI" URL="../Agent/Communication/stopAgent.vi"/>
			</Item>
			<Item Name="General purpose" Type="Folder">
				<Item Name="agent-variables.ctl" Type="VI" URL="../Agent/General purpose/agent-variables.ctl"/>
				<Item Name="BA-ADV.ctl" Type="VI" URL="../Agent/General purpose/BA-ADV.ctl"/>
				<Item Name="cost-function.ctl" Type="VI" URL="../Agent/General purpose/cost-function.ctl"/>
				<Item Name="daemon-config.ctl" Type="VI" URL="../Agent/General purpose/daemon-config.ctl"/>
				<Item Name="get-config-daemon.vi" Type="VI" URL="../Agent/General purpose/get-config-daemon.vi"/>
				<Item Name="MEAS.ctl" Type="VI" URL="../Agent/General purpose/MEAS.ctl"/>
				<Item Name="REQ.ctl" Type="VI" URL="../Agent/General purpose/REQ.ctl"/>
				<Item Name="robust-BA-ADV.ctl" Type="VI" URL="../Agent/General purpose/robust-BA-ADV.ctl"/>
			</Item>
			<Item Name="Model" Type="Folder">
				<Item Name="ac2dc.vi" Type="VI" URL="../Agent/Model/ac2dc.vi"/>
				<Item Name="dc2ac.vi" Type="VI" URL="../Agent/Model/dc2ac.vi"/>
				<Item Name="getI.vi" Type="VI" URL="../Agent/Model/getI.vi"/>
				<Item Name="lut.vi" Type="VI" URL="../Agent/Model/lut.vi"/>
				<Item Name="p(v).vi" Type="VI" URL="../Agent/Model/p(v).vi"/>
				<Item Name="ttc.vi" Type="VI" URL="../Agent/Model/ttc.vi"/>
			</Item>
			<Item Name="Projection and Send" Type="Folder">
				<Item Name="check-sleep.vi" Type="VI" URL="../Agent/Projection and Send/check-sleep.vi"/>
				<Item Name="error.vi" Type="VI" URL="../Agent/Projection and Send/error.vi"/>
				<Item Name="get-wakeup-timestamp.vi" Type="VI" URL="../Agent/Projection and Send/get-wakeup-timestamp.vi"/>
				<Item Name="imp_delay.vi" Type="VI" URL="../Agent/Projection and Send/imp_delay.vi"/>
				<Item Name="implementation_setpoint.vi" Type="VI" URL="../Agent/Projection and Send/implementation_setpoint.vi"/>
				<Item Name="setpoint_computation.vi" Type="VI" URL="../Agent/Projection and Send/setpoint_computation.vi"/>
			</Item>
			<Item Name="battery-agent.vi" Type="VI" URL="../Agent/battery-agent.vi"/>
			<Item Name="robust-battery-agent.vi" Type="VI" URL="../Agent/robust-battery-agent.vi"/>
		</Item>
		<Item Name="BMS" Type="Folder">
			<Item Name="Modbus" Type="Folder">
				<Item Name="createLabelErrors.vi" Type="VI" URL="../BMS/Modbus/createLabelErrors.vi"/>
				<Item Name="error_log.vi" Type="VI" URL="../BMS/Modbus/error_log.vi"/>
				<Item Name="parse-modules.vi" Type="VI" URL="../BMS/Modbus/parse-modules.vi"/>
				<Item Name="parse-rack.vi" Type="VI" URL="../BMS/Modbus/parse-rack.vi"/>
				<Item Name="read-multiple-registers-module.vi" Type="VI" URL="../BMS/Modbus/read-multiple-registers-module.vi"/>
				<Item Name="read-multiple-registers-rack.vi" Type="VI" URL="../BMS/Modbus/read-multiple-registers-rack.vi"/>
				<Item Name="read-multiple-registers.vi" Type="VI" URL="../BMS/Modbus/read-multiple-registers.vi"/>
				<Item Name="soc_check.vi" Type="VI" URL="../BMS/Modbus/soc_check.vi"/>
			</Item>
			<Item Name="Rapsberry Pi" Type="Folder">
				<Item Name="open-rpi.vi" Type="VI" URL="../BMS/Rapsberry Pi/open-rpi.vi"/>
			</Item>
			<Item Name="2comp2dec.vi" Type="VI" URL="../BMS/Modbus/2comp2dec.vi"/>
			<Item Name="GetFaultListBatt_module.vi" Type="VI" URL="../BMS/GetFaultListBatt_module.vi"/>
			<Item Name="GetFaultListBatt_rack.vi" Type="VI" URL="../BMS/GetFaultListBatt_rack.vi"/>
		</Item>
		<Item Name="CAN" Type="Folder">
			<Item Name="CAN.vi" Type="VI" URL="../Helper functions/CAN/CAN.vi"/>
			<Item Name="DoubleToSetpoint.vi" Type="VI" URL="../Helper functions/CAN/DoubleToSetpoint.vi"/>
			<Item Name="GetFaultListConv.vi" Type="VI" URL="../CAN/GetFaultListConv.vi"/>
			<Item Name="I32toU8array.vi" Type="VI" URL="../Helper functions/CAN/I32toU8array.vi"/>
			<Item Name="initCAN.vi" Type="VI" URL="../CAN/initCAN.vi"/>
			<Item Name="temp_init.vi" Type="VI" URL="../Discarded/temp_init.vi"/>
			<Item Name="U8arrayToMeasurement.vi" Type="VI" URL="../Helper functions/CAN/U8arrayToMeasurement.vi"/>
		</Item>
		<Item Name="Communication" Type="Folder">
			<Item Name="AFE_froming_Central.ctl" Type="VI" URL="../Helper functions/communication/AFE_froming_Central.ctl"/>
			<Item Name="AFE_froming_Central_Data.ctl" Type="VI" URL="../Helper functions/communication/AFE_froming_Central_Data.ctl"/>
			<Item Name="AFE_froming_Central_Info.ctl" Type="VI" URL="../Helper functions/communication/AFE_froming_Central_Info.ctl"/>
			<Item Name="references_forming.ctl" Type="VI" URL="../General Purpose/references_forming.ctl"/>
			<Item Name="Vac_lim.vi" Type="VI" URL="../Helper functions/Measurements/Vac_lim.vi"/>
		</Item>
		<Item Name="Datalog" Type="Folder">
			<Item Name="checkAndCreateFile.vi" Type="VI" URL="../Datalog/checkAndCreateFile.vi"/>
			<Item Name="checkAndCreateFolder.vi" Type="VI" URL="../Datalog/checkAndCreateFolder.vi"/>
			<Item Name="cluster_w_arrays2array.vi" Type="VI" URL="../Datalog/cluster_w_arrays2array.vi"/>
			<Item Name="createArrayToLog.vi" Type="VI" URL="../Datalog/createArrayToLog.vi"/>
			<Item Name="createLabelsFromSelection.vi" Type="VI" URL="../Datalog/createLabelsFromSelection.vi"/>
			<Item Name="createTDMS.vi" Type="VI" URL="../Datalog/createTDMS.vi"/>
			<Item Name="logSelection.vi" Type="VI" URL="../Datalog/logSelection.vi"/>
		</Item>
		<Item Name="Discarded" Type="Folder">
			<Item Name="CheckRelayClosing.vi" Type="VI" URL="../CheckRelayClosing.vi"/>
			<Item Name="discoverCANinterface_backup.vi" Type="VI" URL="../discoverCANinterface_backup.vi"/>
			<Item Name="test_paylaod.vi" Type="VI" URL="../test_paylaod.vi"/>
			<Item Name="UDP_receiveAndSendBack.vi" Type="VI" URL="../UDP_receiveAndSendBack.vi"/>
			<Item Name="XNETInterfaceDiscover.vi" Type="VI" URL="../XNETInterfaceDiscover.vi"/>
		</Item>
		<Item Name="General purpose" Type="Folder">
			<Item Name="AdaptActivePowerToBMS.vi" Type="VI" URL="../General Purpose/AdaptActivePowerToBMS.vi"/>
			<Item Name="AFE_froming_Central2.ctl" Type="VI" URL="../communication/AFE_froming_Central2.ctl"/>
			<Item Name="AFE_froming_Central_Data2.ctl" Type="VI" URL="../communication/AFE_froming_Central_Data2.ctl"/>
			<Item Name="AFE_froming_Central_receive.ctl" Type="VI" URL="../communication/AFE_froming_Central_receive.ctl"/>
			<Item Name="BMS.ctl" Type="VI" URL="../General Purpose/BMS.ctl"/>
			<Item Name="FPGA.ctl" Type="VI" URL="../FPGA Bitfiles/FPGA.ctl"/>
			<Item Name="initFPGA.vi" Type="VI" URL="../General Purpose/initFPGA.vi"/>
			<Item Name="measurements.ctl" Type="VI" URL="../Helper functions/General Purpose/measurements.ctl"/>
			<Item Name="Message-BA.ctl" Type="VI" URL="../General Purpose/Message-BA.ctl"/>
			<Item Name="references.ctl" Type="VI" URL="../Helper functions/General Purpose/references.ctl"/>
		</Item>
		<Item Name="Islanding" Type="Folder">
			<Item Name="check-state-switch.vi" Type="VI" URL="../Islanding/check-state-switch.vi"/>
			<Item Name="open-islanding.vi" Type="VI" URL="../Islanding/open-islanding.vi"/>
			<Item Name="read-islanding-msg.vi" Type="VI" URL="../Islanding/read-islanding-msg.vi"/>
		</Item>
		<Item Name="Measurements" Type="Folder">
			<Item Name="closeMeas.vi" Type="VI" URL="../Measurements/RT/closeMeas.vi"/>
			<Item Name="openMeas.vi" Type="VI" URL="../Measurements/RT/openMeas.vi"/>
			<Item Name="phaseVariables.vi" Type="VI" URL="../Measurements/RT/phaseVariables.vi"/>
			<Item Name="Q_limiter.vi" Type="VI" URL="../Helper functions/Measurements/Q_limiter.vi"/>
			<Item Name="ReadPMUData_RT.vi" Type="VI" URL="../Measurements/RT/ReadPMUData_RT.vi"/>
			<Item Name="Vdc_lim.vi" Type="VI" URL="../Helper functions/Measurements/Vdc_lim.vi"/>
		</Item>
		<Item Name="res-ra" Type="Folder">
			<Item Name="open-res-ra.vi" Type="VI" URL="../res-ra/open-res-ra.vi"/>
		</Item>
		<Item Name="Testing" Type="Folder">
			<Item Name="build-island-msg.vi" Type="VI" URL="../Testing/build-island-msg.vi"/>
			<Item Name="grid-agent-simulator.vi" Type="VI" URL="../Testing/grid-agent-simulator.vi"/>
			<Item Name="read-islanding-ack.vi" Type="VI" URL="../Testing/read-islanding-ack.vi"/>
		</Item>
		<Item Name="Time" Type="Folder">
			<Item Name="time_test.vi" Type="VI" URL="../Time/time_test.vi"/>
		</Item>
		<Item Name="Time-sync" Type="Folder">
			<Item Name="Init_Time_Synch.vi" Type="VI" URL="../Helper functions/Time-sync/time_sync/Private Methods/Init_Time_Synch.vi"/>
			<Item Name="main_temp.vi" Type="VI" URL="../main_temp.vi"/>
			<Item Name="Ring Value to String.vi" Type="VI" URL="../Time-sync/Ring Value to String.vi"/>
			<Item Name="Sync2Tekron.vi" Type="VI" URL="../Time-sync/Sync2Tekron.vi"/>
		</Item>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-9033</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Real-Time Scan Resources" Type="Module Container">
				<Property Name="crio.ModuleContainerType" Type="Str">crio.RSIModuleContainer</Property>
				<Item Name="Mod1" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 1</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9862</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{EF266731-B324-44E8-BC68-33D040DD98F8}</Property>
				</Item>
			</Item>
			<Item Name="FPGA Target 3" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="niFpga_TopLevelVIID" Type="Path">/C/Users/admin/Documents/git-clones/acdc-PV-emulators/FPGA Bitfiles/empty VI 9033.vi</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">cRIO-9033</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Chassis I/O" Type="Folder">
					<Item Name="Chassis Temperature" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Chassis Temperature</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{433ABA1A-8C07-4B41-85AE-7C25AD78822E}</Property>
					</Item>
					<Item Name="Sleep" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Sleep</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{D7E85638-846D-4874-9CE8-05C3988F8EE2}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{94FC41A9-572B-417C-8202-3B5BC6B58CF2}</Property>
					</Item>
					<Item Name="USER FPGA LED" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/USER FPGA LED</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{479E0E89-31F7-43F0-A30E-A9A44A816640}</Property>
					</Item>
					<Item Name="USER Push Button" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>0</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/USER Push Button</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5F745802-B53C-499C-8BB6-857254B39F09}</Property>
					</Item>
				</Item>
				<Item Name="FIFOs" Type="Folder"/>
				<Item Name="PMU VIs" Type="Folder">
					<Item Name="DMAWrite3V6C_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/DMAWrite3V6C_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Frequency9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/Frequency9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="MAC_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/MAC_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="MagCorr9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/MagCorr9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Multiplication9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/Multiplication9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Phase9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/Phase9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="PhaseSum9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/PhaseSum9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Pol2Rec9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/Pol2Rec9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Rec2Pol9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/Rec2Pol9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Sin9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/Sin9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="2RMS9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/2RMS9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="AliasingCorr9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/AliasingCorr9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Amplitude9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/Amplitude9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="CosSineMemBlock.vi" Type="VI" URL="../Measurements/FPGA Paolo/CosSineMemBlock.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Dbin9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/Dbin9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Division9225-7_FPGA.vi" Type="VI" URL="../Measurements/FPGA Paolo/Division9225-7_FPGA.vi">
						<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{91BE967C-B108-40A8-8359-826F17530698}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="empty VI 9033.vi" Type="VI" URL="../../acdc-PV-emulators/FPGA Bitfiles/empty VI 9033.vi">
					<Property Name="configString.guid" Type="Str">{0B69FB58-288E-4F3F-8497-F56E08823619}NumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool{433ABA1A-8C07-4B41-85AE-7C25AD78822E}resource=/Chassis Temperature;0;ReadMethodType=i16{479E0E89-31F7-43F0-A30E-A9A44A816640}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{5F745802-B53C-499C-8BB6-857254B39F09}resource=/Scan Clock;0;ReadMethodType=bool{91BE967C-B108-40A8-8359-826F17530698}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{94FC41A9-572B-417C-8202-3B5BC6B58CF2}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{D7E85638-846D-4874-9CE8-05C3988F8EE2}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{EF266731-B324-44E8-BC68-33D040DD98F8}[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9033/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9033FPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGAMod1[crioConfig.Begin]crio.Location=Slot 1,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8USER Push ButtonNumberOfSyncRegistersForReadInProject=0;resource=/USER Push Button;0;ReadMethodType=bool</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\Users\admin\Documents\git-clones\active-front-ends\FPGA Bitfiles\afeproject_FPGATarget3_emptyVI9033_w4+4jhnE3V0.lvbitx</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies"/>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="emptyFPGA" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">emptyFPGA</Property>
						<Property Name="Comp.BitfileName" Type="Str">pvemulator_FPGATarget3_emptyFPGA_AUrZ0BRqpb0.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/admin/Documents/git-clones/active-front-ends/FPGA Bitfiles/pvemulator_FPGATarget3_emptyFPGA_AUrZ0BRqpb0.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/pvemulator_FPGATarget3_emptyFPGA_AUrZ0BRqpb0.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/admin/Documents/git-clones/active-front-ends/PV emulator.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target 3</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="empty VI 9033" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">empty VI 9033</Property>
						<Property Name="Comp.BitfileName" Type="Str">afeproject_FPGATarget3_emptyVI9033_w4+4jhnE3V0.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/admin/Documents/git-clones/active-front-ends/FPGA Bitfiles/afeproject_FPGATarget3_emptyVI9033_w4+4jhnE3V0.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/afeproject_FPGATarget3_emptyVI9033_w4+4jhnE3V0.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/admin/Documents/git-clones/active-front-ends/AFE_project.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target 3</Property>
						<Property Name="TopLevelVI" Type="Ref">/ELH010-DC-Agent/Chassis/FPGA Target 3/empty VI 9033.vi</Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="main_grid_forming.vi" Type="VI" URL="../main_grid_forming.vi"/>
		<Item Name="main_grid_forming_PQ.vi" Type="VI" URL="../main_grid_forming_PQ.vi"/>
		<Item Name="main_grid_forming_PQ_bu.vi" Type="VI" URL="../main_grid_forming_PQ_bu.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niSync Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niSync/niSync.llb/niSync Close.vi"/>
				<Item Name="niSync Get Time References.vi" Type="VI" URL="/&lt;instrlib&gt;/niSync/niSync.llb/niSync Get Time References.vi"/>
				<Item Name="niSync Initialize (Default).vi" Type="VI" URL="/&lt;instrlib&gt;/niSync/niSync.llb/niSync Initialize (Default).vi"/>
				<Item Name="niSync Initialize (IVI).vi" Type="VI" URL="/&lt;instrlib&gt;/niSync/niSync.llb/niSync Initialize (IVI).vi"/>
				<Item Name="niSync Initialize (String).vi" Type="VI" URL="/&lt;instrlib&gt;/niSync/niSync.llb/niSync Initialize (String).vi"/>
				<Item Name="niSync Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/niSync/niSync.llb/niSync Initialize.vi"/>
				<Item Name="niSync IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niSync/niSync.llb/niSync IVI Error Converter.vi"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="openg_boolean__ogtk.lvlib" Type="Library" URL="/&lt;userlib&gt;/_OpenG.lib/boolean/boolean.llb/openg_boolean__ogtk.lvlib"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="_XNET Convert List From Array To Comma.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/_XNET Convert List From Array To Comma.vi"/>
				<Item Name="_XNET Create Session.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/_XNET Create Session.vi"/>
				<Item Name="_XNET Split Database Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/_XNET Split Database Cluster.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="IVI Error Message Builder.vi" Type="VI" URL="/&lt;vilib&gt;/errclust.llb/IVI Error Message Builder.vi"/>
				<Item Name="XNET CAN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm State.ctl"/>
				<Item Name="XNET CAN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Comm.ctl"/>
				<Item Name="XNET CAN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET CAN Last Err.ctl"/>
				<Item Name="XNET Control Scope.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Control Scope.ctl"/>
				<Item Name="XNET Create Session (Conversion).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Conversion).vi"/>
				<Item Name="XNET Create Session (Frame Input Queued).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Input Queued).vi"/>
				<Item Name="XNET Create Session (Frame Input Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Input Single-point).vi"/>
				<Item Name="XNET Create Session (Frame Input Stream).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Input Stream).vi"/>
				<Item Name="XNET Create Session (Frame Output Queued).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Output Queued).vi"/>
				<Item Name="XNET Create Session (Frame Output Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Output Single-point).vi"/>
				<Item Name="XNET Create Session (Frame Output Stream).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Frame Output Stream).vi"/>
				<Item Name="XNET Create Session (Generic).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Generic).vi"/>
				<Item Name="XNET Create Session (PDU Input Queued).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (PDU Input Queued).vi"/>
				<Item Name="XNET Create Session (PDU Input Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (PDU Input Single-point).vi"/>
				<Item Name="XNET Create Session (PDU Output Queued).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (PDU Output Queued).vi"/>
				<Item Name="XNET Create Session (PDU Output Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (PDU Output Single-point).vi"/>
				<Item Name="XNET Create Session (Signal Input Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Input Single-point).vi"/>
				<Item Name="XNET Create Session (Signal Input Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Input Waveform).vi"/>
				<Item Name="XNET Create Session (Signal Input XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Input XY).vi"/>
				<Item Name="XNET Create Session (Signal Output Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Output Single-point).vi"/>
				<Item Name="XNET Create Session (Signal Output Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Output Waveform).vi"/>
				<Item Name="XNET Create Session (Signal Output XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session (Signal Output XY).vi"/>
				<Item Name="XNET Create Session.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Create Session.vi"/>
				<Item Name="XNET Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Fill In Error Info.vi"/>
				<Item Name="XNET FlexRay Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Comm.ctl"/>
				<Item Name="XNET FlexRay POC State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay POC State.ctl"/>
				<Item Name="XNET FlexRay Stats.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET FlexRay Stats.ctl"/>
				<Item Name="XNET Frame CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame CAN.ctl"/>
				<Item Name="XNET Frame Ethernet.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Ethernet.ctl"/>
				<Item Name="XNET Frame FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame FlexRay.ctl"/>
				<Item Name="XNET Frame LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame LIN.ctl"/>
				<Item Name="XNET Frame Type CAN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type CAN.ctl"/>
				<Item Name="XNET Frame Type Ethernet.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type Ethernet.ctl"/>
				<Item Name="XNET Frame Type FlexRay.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type FlexRay.ctl"/>
				<Item Name="XNET Frame Type LIN.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Frame Type LIN.ctl"/>
				<Item Name="XNET J1939 Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET J1939 Comm.ctl"/>
				<Item Name="XNET LIN Comm State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm State.ctl"/>
				<Item Name="XNET LIN Comm.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Comm.ctl"/>
				<Item Name="XNET LIN Diag Schedule Type.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Diag Schedule Type.ctl"/>
				<Item Name="XNET LIN Last Err.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET LIN Last Err.ctl"/>
				<Item Name="XNET Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Mode.ctl"/>
				<Item Name="XNET Read (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame CAN).vi"/>
				<Item Name="XNET Read (Frame Ethernet).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame Ethernet).vi"/>
				<Item Name="XNET Read (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame FlexRay).vi"/>
				<Item Name="XNET Read (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame LIN).vi"/>
				<Item Name="XNET Read (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Frame Raw).vi"/>
				<Item Name="XNET Read (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Single-point).vi"/>
				<Item Name="XNET Read (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal Waveform) .vi"/>
				<Item Name="XNET Read (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (Signal XY).vi"/>
				<Item Name="XNET Read (State CAN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State CAN Comm).vi"/>
				<Item Name="XNET Read (State FlexRay Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Comm).vi"/>
				<Item Name="XNET Read (State FlexRay Cycle Macrotick).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Cycle Macrotick).vi"/>
				<Item Name="XNET Read (State FlexRay Stats).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State FlexRay Stats).vi"/>
				<Item Name="XNET Read (State J1939 Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State J1939 Comm).vi"/>
				<Item Name="XNET Read (State LIN Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State LIN Comm).vi"/>
				<Item Name="XNET Read (State Session Info).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Session Info).vi"/>
				<Item Name="XNET Read (State Time Comm).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Comm).vi"/>
				<Item Name="XNET Read (State Time Current).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Current).vi"/>
				<Item Name="XNET Read (State Time Start).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Start).vi"/>
				<Item Name="XNET Read (State Time Trigger).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read (State Time Trigger).vi"/>
				<Item Name="XNET Read.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Read.vi"/>
				<Item Name="XNET Session Info State.ctl" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Session Info State.ctl"/>
				<Item Name="XNET Start.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Start.vi"/>
				<Item Name="XNET Stop.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Stop.vi"/>
				<Item Name="XNET Write (Frame CAN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame CAN).vi"/>
				<Item Name="XNET Write (Frame Ethernet).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame Ethernet).vi"/>
				<Item Name="XNET Write (Frame FlexRay).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame FlexRay).vi"/>
				<Item Name="XNET Write (Frame LIN).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame LIN).vi"/>
				<Item Name="XNET Write (Frame Raw).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Frame Raw).vi"/>
				<Item Name="XNET Write (Signal Single-point).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Single-point).vi"/>
				<Item Name="XNET Write (Signal Waveform) .vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal Waveform) .vi"/>
				<Item Name="XNET Write (Signal XY).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (Signal XY).vi"/>
				<Item Name="XNET Write (State Ethernet Sleep).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State Ethernet Sleep).vi"/>
				<Item Name="XNET Write (State Ethernet Wake).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State Ethernet Wake).vi"/>
				<Item Name="XNET Write (State FlexRay Symbol).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State FlexRay Symbol).vi"/>
				<Item Name="XNET Write (State LIN Diagnostic Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Diagnostic Schedule Change).vi"/>
				<Item Name="XNET Write (State LIN Schedule Change).vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write (State LIN Schedule Change).vi"/>
				<Item Name="XNET Write.vi" Type="VI" URL="/&lt;vilib&gt;/xnet/xnet.llb/XNET Write.vi"/>
			</Item>
			<Item Name="afeproject_FPGATarget3_emptyVI9033_w4+4jhnE3V0.lvbitx" Type="Document" URL="../FPGA Bitfiles/afeproject_FPGATarget3_emptyVI9033_w4+4jhnE3V0.lvbitx"/>
			<Item Name="CAN.vi" Type="VI" URL="../CAN/CAN.vi"/>
			<Item Name="DoubleToSetpoint.vi" Type="VI" URL="../CAN/DoubleToSetpoint.vi"/>
			<Item Name="FPGA.ctl" Type="VI" URL="../Discarded/FPGA Bitfiles/FPGA.ctl"/>
			<Item Name="LL_Ring Value to String.vi" Type="VI" URL="../Helper functions/Time-sync/time_sync/Private Methods/LL_Ring Value to String.vi"/>
			<Item Name="measurements.ctl" Type="VI" URL="../General Purpose/measurements.ctl"/>
			<Item Name="nisync.dll" Type="Document" URL="nisync.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nixlvapi.dll" Type="Document" URL="nixlvapi.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="PM_Sync2Tekron.vi" Type="VI" URL="../Helper functions/Time-sync/time_sync/Private Methods/PM_Sync2Tekron.vi"/>
			<Item Name="PM_Synch_Monitor.vi" Type="VI" URL="../Helper functions/Time-sync/time_sync/Private Methods/PM_Synch_Monitor.vi"/>
			<Item Name="Q_limiter.vi" Type="VI" URL="../Measurements/Q_limiter.vi"/>
			<Item Name="references.ctl" Type="VI" URL="../General Purpose/references.ctl"/>
			<Item Name="Synch_shift--cluster.ctl" Type="VI" URL="../Helper functions/Time-sync/time_sync/TypeDef/Synch_shift--cluster.ctl"/>
			<Item Name="U8arrayToMeasurement.vi" Type="VI" URL="../CAN/U8arrayToMeasurement.vi"/>
			<Item Name="Vdc_lim.vi" Type="VI" URL="../Measurements/Vdc_lim.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>

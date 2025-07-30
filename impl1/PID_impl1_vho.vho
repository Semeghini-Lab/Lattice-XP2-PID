
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.14.0.75.2
-- ldbanno -n VHDL -o PID_impl1_vho.vho -w -neg -gui PID_impl1.ncd 
-- Netlist created on Fri Jul 25 21:25:36 2025
-- Netlist written on Fri Jul 25 21:25:39 2025
-- Design is for device LFXP2-5E
-- Design is for package TQFP144
-- Design is for performance grade 6

-- entity ec2iobuf
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ec2iobuf is
    port (I: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF ec2iobuf : ENTITY IS TRUE;

  end ec2iobuf;

  architecture Structure of ec2iobuf is
    component OB
      port (I: in Std_logic; O: out Std_logic);
    end component;
  begin
    INST5: OB
      port map (I=>I, O=>PAD);
  end Structure;

-- entity o_LEDB
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity o_LEDB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "o_LEDB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_oLED	 : VitalDelayType01Z := (0 ns, 0 ns, 0 ns , 0 ns, 0 ns, 0 ns)
        );

    port (PADDO: in Std_logic; oLED: out Std_logic);

    ATTRIBUTE Vital_Level0 OF o_LEDB : ENTITY IS TRUE;

  end o_LEDB;

  architecture Structure of o_LEDB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal oLED_out 	: std_logic := 'X';

    component ec2iobuf
      port (I: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    o_LED_pad: ec2iobuf
      port map (I=>PADDO_ipd, PAD=>oLED_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, oLED_out)
    VARIABLE oLED_zd         	: std_logic := 'X';
    VARIABLE oLED_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    oLED_zd 	:= oLED_out;

    VitalPathDelay01Z (
      OutSignal => oLED, OutSignalName => "oLED", OutTemp => oLED_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_oLED,
                           PathCondition => TRUE)),
      GlitchData => oLED_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ec2iobuf0001
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity ec2iobuf0001 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF ec2iobuf0001 : ENTITY IS TRUE;

  end ec2iobuf0001;

  architecture Structure of ec2iobuf0001 is
    component IBPD
      port (I: in Std_logic; O: out Std_logic);
    end component;
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity i_switchB
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity i_switchB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "i_switchB";

      tipd_iswitch  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_iswitch_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_iswitch 	: VitalDelayType := 0 ns;
      tpw_iswitch_posedge	: VitalDelayType := 0 ns;
      tpw_iswitch_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; iswitch: in Std_logic);

    ATTRIBUTE Vital_Level0 OF i_switchB : ENTITY IS TRUE;

  end i_switchB;

  architecture Structure of i_switchB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal iswitch_ipd 	: std_logic := 'X';

    component ec2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    o_LED_c_pad: ec2iobuf0001
      port map (Z=>PADDI_out, PAD=>iswitch_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(iswitch_ipd, iswitch, tipd_iswitch);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, iswitch_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_iswitch_iswitch          	: x01 := '0';
    VARIABLE periodcheckinfo_iswitch	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => iswitch_ipd,
        TestSignalName => "iswitch",
        Period => tperiod_iswitch,
        PulseWidthHigh => tpw_iswitch_posedge,
        PulseWidthLow => tpw_iswitch_negedge,
        PeriodData => periodcheckinfo_iswitch,
        Violation => tviol_iswitch_iswitch,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => iswitch_ipd'last_event,
                           PathDelay => tpd_iswitch_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity top
  library IEEE, vital2000, XP2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use XP2.COMPONENTS.ALL;

  entity top is
    port (i_switch: in Std_logic; o_LED: out Std_logic);



  end top;

  architecture Structure of top is
    signal o_LED_c_c: Std_logic;
    signal VCCI: Std_logic;
    component VHI
      port (Z: out Std_logic);
    end component;
    component PUR
      port (PUR: in Std_logic);
    end component;
    component GSR
      port (GSR: in Std_logic);
    end component;
    component o_LEDB
      port (PADDO: in Std_logic; oLED: out Std_logic);
    end component;
    component i_switchB
      port (PADDI: out Std_logic; iswitch: in Std_logic);
    end component;
  begin
    o_LEDI: o_LEDB
      port map (PADDO=>o_LED_c_c, oLED=>o_LED);
    i_switchI: i_switchB
      port map (PADDI=>o_LED_c_c, iswitch=>i_switch);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, XP2;
  configuration Structure_CON of top is
    for Structure
    end for;
  end Structure_CON;



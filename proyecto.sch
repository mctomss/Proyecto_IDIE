<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SamacSys_Parts">
<description>&lt;b&gt;https://componentsearchengine.com&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SHDRRA3W102P0X508_1X3_1706X120">
<description>&lt;b&gt;796638-3&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.65" diameter="2.475" shape="square"/>
<pad name="2" x="-5.08" y="0" drill="1.65" diameter="2.475"/>
<pad name="3" x="-10.16" y="0" drill="1.65" diameter="2.475"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="3.95" y1="-2.25" x2="-14.11" y2="-2.25" width="0.05" layer="51"/>
<wire x1="-14.11" y1="-2.25" x2="-14.11" y2="10.25" width="0.05" layer="51"/>
<wire x1="-14.11" y1="10.25" x2="3.95" y2="10.25" width="0.05" layer="51"/>
<wire x1="3.95" y1="10.25" x2="3.95" y2="-2.25" width="0.05" layer="51"/>
<wire x1="3.7" y1="-2" x2="-13.86" y2="-2" width="0.1" layer="51"/>
<wire x1="-13.86" y1="-2" x2="-13.86" y2="10" width="0.1" layer="51"/>
<wire x1="-13.86" y1="10" x2="3.7" y2="10" width="0.1" layer="51"/>
<wire x1="3.7" y1="10" x2="3.7" y2="-2" width="0.1" layer="51"/>
<wire x1="3.7" y1="0" x2="3.7" y2="10" width="0.2" layer="21"/>
<wire x1="3.7" y1="10" x2="-13.86" y2="10" width="0.2" layer="21"/>
<wire x1="-13.86" y1="10" x2="-13.86" y2="-2" width="0.2" layer="21"/>
</package>
<package name="RAC0305SK">
<description>&lt;b&gt;RAC03-K&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.4"/>
<pad name="2" x="22.86" y="2.54" drill="0.9" diameter="1.4"/>
<pad name="3" x="22.86" y="17.78" drill="0.9" diameter="1.4"/>
<pad name="4" x="0" y="17.78" drill="0.9" diameter="1.4"/>
<text x="10.455" y="8.89" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="10.455" y="8.89" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.82" y1="20.34" x2="25.68" y2="20.34" width="0.2" layer="51"/>
<wire x1="25.68" y1="20.34" x2="25.68" y2="-2.56" width="0.2" layer="51"/>
<wire x1="25.68" y1="-2.56" x2="-2.82" y2="-2.56" width="0.2" layer="51"/>
<wire x1="-2.82" y1="-2.56" x2="-2.82" y2="20.34" width="0.2" layer="51"/>
<wire x1="-2.82" y1="20.34" x2="25.68" y2="20.34" width="0.1" layer="21"/>
<wire x1="25.68" y1="20.34" x2="25.68" y2="-2.56" width="0.1" layer="21"/>
<wire x1="25.68" y1="-2.56" x2="-2.82" y2="-2.56" width="0.1" layer="21"/>
<wire x1="-2.82" y1="-2.56" x2="-2.82" y2="20.34" width="0.1" layer="21"/>
<wire x1="-5.77" y1="21.34" x2="26.68" y2="21.34" width="0.1" layer="51"/>
<wire x1="26.68" y1="21.34" x2="26.68" y2="-3.56" width="0.1" layer="51"/>
<wire x1="26.68" y1="-3.56" x2="-5.77" y2="-3.56" width="0.1" layer="51"/>
<wire x1="-5.77" y1="-3.56" x2="-5.77" y2="21.34" width="0.1" layer="51"/>
<wire x1="-4.57" y1="-0.11" x2="-4.57" y2="-0.11" width="0.2" layer="21"/>
<wire x1="-4.57" y1="-0.11" x2="-4.77" y2="-0.11" width="0.2" layer="21" curve="180"/>
<wire x1="-4.77" y1="-0.11" x2="-4.77" y2="-0.11" width="0.2" layer="21"/>
<wire x1="-4.77" y1="-0.11" x2="-4.57" y2="-0.11" width="0.2" layer="21" curve="180"/>
</package>
<package name="QFN50P500X500X80-33N">
<description>&lt;b&gt;LFCSP-WQ CP-32-12&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-2.5" y="1.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="2" x="-2.5" y="1.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="3" x="-2.5" y="0.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="4" x="-2.5" y="0.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="5" x="-2.5" y="-0.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="6" x="-2.5" y="-0.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="7" x="-2.5" y="-1.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="8" x="-2.5" y="-1.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="9" x="-1.75" y="-2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="10" x="-1.25" y="-2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="11" x="-0.75" y="-2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="12" x="-0.25" y="-2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="13" x="0.25" y="-2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="14" x="0.75" y="-2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="15" x="1.25" y="-2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="16" x="1.75" y="-2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="17" x="2.5" y="-1.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="18" x="2.5" y="-1.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="19" x="2.5" y="-0.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="20" x="2.5" y="-0.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="21" x="2.5" y="0.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="22" x="2.5" y="0.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="23" x="2.5" y="1.25" dx="0.8" dy="0.3" layer="1"/>
<smd name="24" x="2.5" y="1.75" dx="0.8" dy="0.3" layer="1"/>
<smd name="25" x="1.75" y="2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="26" x="1.25" y="2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="27" x="0.75" y="2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="28" x="0.25" y="2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="29" x="-0.25" y="2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="30" x="-0.75" y="2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="31" x="-1.25" y="2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="32" x="-1.75" y="2.5" dx="0.8" dy="0.3" layer="1" rot="R90"/>
<smd name="33" x="0" y="0" dx="3.75" dy="3.75" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.125" y1="3.125" x2="3.125" y2="3.125" width="0.05" layer="51"/>
<wire x1="3.125" y1="3.125" x2="3.125" y2="-3.125" width="0.05" layer="51"/>
<wire x1="3.125" y1="-3.125" x2="-3.125" y2="-3.125" width="0.05" layer="51"/>
<wire x1="-3.125" y1="-3.125" x2="-3.125" y2="3.125" width="0.05" layer="51"/>
<wire x1="-2.5" y1="2.5" x2="2.5" y2="2.5" width="0.1" layer="51"/>
<wire x1="2.5" y1="2.5" x2="2.5" y2="-2.5" width="0.1" layer="51"/>
<wire x1="2.5" y1="-2.5" x2="-2.5" y2="-2.5" width="0.1" layer="51"/>
<wire x1="-2.5" y1="-2.5" x2="-2.5" y2="2.5" width="0.1" layer="51"/>
<wire x1="-2.5" y1="2" x2="-2" y2="2.5" width="0.1" layer="51"/>
<circle x="-2.9" y="2.5" radius="0.125" width="0.25" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="796638-3">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="2" x="0" y="-2.54" length="middle"/>
<pin name="3" x="0" y="-5.08" length="middle"/>
</symbol>
<symbol name="RAC03-3.3SK">
<wire x1="5.08" y1="2.54" x2="33.02" y2="2.54" width="0.254" layer="94"/>
<wire x1="33.02" y1="-5.08" x2="33.02" y2="2.54" width="0.254" layer="94"/>
<wire x1="33.02" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="34.29" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="34.29" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="VAC_IN_(L)" x="0" y="-2.54" length="middle"/>
<pin name="-VOUT" x="38.1" y="-2.54" length="middle" rot="R180"/>
<pin name="+VOUT" x="38.1" y="0" length="middle" rot="R180"/>
<pin name="VAC_IN_(N)" x="0" y="0" length="middle"/>
</symbol>
<symbol name="ADE9153AACPZ">
<wire x1="5.08" y1="22.86" x2="30.48" y2="22.86" width="0.254" layer="94"/>
<wire x1="30.48" y1="-35.56" x2="30.48" y2="22.86" width="0.254" layer="94"/>
<wire x1="30.48" y1="-35.56" x2="5.08" y2="-35.56" width="0.254" layer="94"/>
<wire x1="5.08" y1="22.86" x2="5.08" y2="-35.56" width="0.254" layer="94"/>
<text x="31.75" y="27.94" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="31.75" y="25.4" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="DGND_1" x="0" y="0" length="middle"/>
<pin name="DVDDOUT" x="0" y="-2.54" length="middle"/>
<pin name="CLKOUT" x="0" y="-5.08" length="middle"/>
<pin name="CLKIN" x="0" y="-7.62" length="middle"/>
<pin name="VDD_1" x="0" y="-10.16" length="middle"/>
<pin name="IAMS" x="0" y="-12.7" length="middle"/>
<pin name="IAN" x="0" y="-15.24" length="middle"/>
<pin name="IAP" x="0" y="-17.78" length="middle"/>
<pin name="AGND_1" x="7.62" y="-40.64" length="middle" rot="R90"/>
<pin name="VDDOUT2P5" x="10.16" y="-40.64" length="middle" rot="R90"/>
<pin name="IBN" x="12.7" y="-40.64" length="middle" rot="R90"/>
<pin name="IBP" x="15.24" y="-40.64" length="middle" rot="R90"/>
<pin name="VAMS" x="17.78" y="-40.64" length="middle" rot="R90"/>
<pin name="VAP" x="20.32" y="-40.64" length="middle" rot="R90"/>
<pin name="VAN" x="22.86" y="-40.64" length="middle" rot="R90"/>
<pin name="AVDDOUT" x="25.4" y="-40.64" length="middle" rot="R90"/>
<pin name="VDD_2" x="35.56" y="0" length="middle" rot="R180"/>
<pin name="FA0" x="35.56" y="-2.54" length="middle" rot="R180"/>
<pin name="FA1" x="35.56" y="-5.08" length="middle" rot="R180"/>
<pin name="MSH" x="35.56" y="-7.62" length="middle" rot="R180"/>
<pin name="DGND_2" x="35.56" y="-10.16" length="middle" rot="R180"/>
<pin name="IBMS" x="35.56" y="-12.7" length="middle" rot="R180"/>
<pin name="REFIN" x="35.56" y="-15.24" length="middle" rot="R180"/>
<pin name="AGND_2" x="35.56" y="-17.78" length="middle" rot="R180"/>
<pin name="EP" x="7.62" y="27.94" length="middle" rot="R270"/>
<pin name="!SS" x="10.16" y="27.94" length="middle" rot="R270"/>
<pin name="SCLK" x="12.7" y="27.94" length="middle" rot="R270"/>
<pin name="MISO/TX" x="15.24" y="27.94" length="middle" rot="R270"/>
<pin name="MOSI/RX" x="17.78" y="27.94" length="middle" rot="R270"/>
<pin name="!RESET" x="20.32" y="27.94" length="middle" rot="R270"/>
<pin name="!IRQ" x="22.86" y="27.94" length="middle" rot="R270"/>
<pin name="CF1" x="25.4" y="27.94" length="middle" rot="R270"/>
<pin name="ZX/DREADY/CF2" x="27.94" y="27.94" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="796638-3" prefix="J">
<description>&lt;b&gt;Body Features: Primary Product Color Green | Product Orientation Right Angle | Configuration Features: Stacking Configuration Side Stackable | Number of Positions 3 | Number of Rows 1 | Contact Features: Contact Base Material Phosphor Bronze | Contact Current Rating (Max) 15 AMP | Contact Mating Area Plating Material Tin | Dimensions: Wire Size .05  3 MMSQ | Wire Size 30  12 AWG | Electrical Characteristics: Operating Voltage 300 VAC | Housing Features: Housing Material PA 66 | Centerline (Pitch) .2 I&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&amp;DocNm=1-773958-1&amp;DocType=Data Sheet&amp;DocLang=English&amp;PartCntxt=796638-3&amp;DocFormat=pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="796638-3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SHDRRA3W102P0X508_1X3_1706X120">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Body Features: Primary Product Color Green | Product Orientation Right Angle | Configuration Features: Stacking Configuration Side Stackable | Number of Positions 3 | Number of Rows 1 | Contact Features: Contact Base Material Phosphor Bronze | Contact Current Rating (Max) 15 AMP | Contact Mating Area Plating Material Tin | Dimensions: Wire Size .05  3 MMSQ | Wire Size 30  12 AWG | Electrical Characteristics: Operating Voltage 300 VAC | Housing Features: Housing Material PA 66 | Centerline (Pitch) .2 I" constant="no"/>
<attribute name="HEIGHT" value="8.5mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TE Connectivity" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="796638-3" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="571-7966383" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TE-Connectivity/796638-3?qs=OgP1KchuM4OaLB9LUcSrBQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RAC03-3.3SK" prefix="PS">
<description>&lt;b&gt;AC/DC Power Modules 3W 85-264Vin 3.3Vout 900mA&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://recom-power.com/pdf/Powerline_AC-DC/RAC03-K.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RAC03-3.3SK" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RAC0305SK">
<connects>
<connect gate="G$1" pin="+VOUT" pad="3"/>
<connect gate="G$1" pin="-VOUT" pad="2"/>
<connect gate="G$1" pin="VAC_IN_(L)" pad="1"/>
<connect gate="G$1" pin="VAC_IN_(N)" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="AC/DC Power Modules 3W 85-264Vin 3.3Vout 900mA" constant="no"/>
<attribute name="HEIGHT" value="18.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="RECOM Power" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="RAC03-3.3SK" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="919-RAC03-3.3SK" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/RECOM-Power/RAC03-3.3SK?qs=EBDBlbfErPyS11fagCV%252BCw%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ADE9153AACPZ" prefix="IC">
<description>&lt;b&gt;Data Acquisition ADCs/DACs - Specialized 1 PH Mtr IC w/ Auto Calibration&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.analog.com/media/en/technical-documentation/data-sheets/ade9153a.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ADE9153AACPZ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFN50P500X500X80-33N">
<connects>
<connect gate="G$1" pin="!IRQ" pad="27"/>
<connect gate="G$1" pin="!RESET" pad="28"/>
<connect gate="G$1" pin="!SS" pad="32"/>
<connect gate="G$1" pin="AGND_1" pad="9"/>
<connect gate="G$1" pin="AGND_2" pad="17"/>
<connect gate="G$1" pin="AVDDOUT" pad="16"/>
<connect gate="G$1" pin="CF1" pad="26"/>
<connect gate="G$1" pin="CLKIN" pad="4"/>
<connect gate="G$1" pin="CLKOUT" pad="3"/>
<connect gate="G$1" pin="DGND_1" pad="1"/>
<connect gate="G$1" pin="DGND_2" pad="20"/>
<connect gate="G$1" pin="DVDDOUT" pad="2"/>
<connect gate="G$1" pin="EP" pad="33"/>
<connect gate="G$1" pin="FA0" pad="23"/>
<connect gate="G$1" pin="FA1" pad="22"/>
<connect gate="G$1" pin="IAMS" pad="6"/>
<connect gate="G$1" pin="IAN" pad="7"/>
<connect gate="G$1" pin="IAP" pad="8"/>
<connect gate="G$1" pin="IBMS" pad="19"/>
<connect gate="G$1" pin="IBN" pad="11"/>
<connect gate="G$1" pin="IBP" pad="12"/>
<connect gate="G$1" pin="MISO/TX" pad="30"/>
<connect gate="G$1" pin="MOSI/RX" pad="29"/>
<connect gate="G$1" pin="MSH" pad="21"/>
<connect gate="G$1" pin="REFIN" pad="18"/>
<connect gate="G$1" pin="SCLK" pad="31"/>
<connect gate="G$1" pin="VAMS" pad="13"/>
<connect gate="G$1" pin="VAN" pad="15"/>
<connect gate="G$1" pin="VAP" pad="14"/>
<connect gate="G$1" pin="VDDOUT2P5" pad="10"/>
<connect gate="G$1" pin="VDD_1" pad="5"/>
<connect gate="G$1" pin="VDD_2" pad="24"/>
<connect gate="G$1" pin="ZX/DREADY/CF2" pad="25"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Data Acquisition ADCs/DACs - Specialized 1 PH Mtr IC w/ Auto Calibration" constant="no"/>
<attribute name="HEIGHT" value="0.8mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Analog Devices" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ADE9153AACPZ" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="584-ADE9153AACPZ" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Analog-Devices/ADE9153AACPZ?qs=rrS6PyfT74fO4%2FDiqnqz3A%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="PR28-3V-360-1A-E">
<packages>
<package name="RELAY_PR28-3V-360-1A-E">
<wire x1="-10.5" y1="8" x2="11.5" y2="8" width="0.127" layer="51"/>
<wire x1="11.5" y1="8" x2="11.5" y2="-8" width="0.127" layer="51"/>
<wire x1="11.5" y1="-8" x2="-10.5" y2="-8" width="0.127" layer="51"/>
<wire x1="-10.5" y1="-8" x2="-10.5" y2="8" width="0.127" layer="51"/>
<wire x1="-10.5" y1="-8" x2="-10.5" y2="8" width="0.127" layer="21"/>
<wire x1="-10.5" y1="8" x2="11.5" y2="8" width="0.127" layer="21"/>
<wire x1="11.5" y1="8" x2="11.5" y2="-8" width="0.127" layer="21"/>
<wire x1="11.5" y1="-8" x2="-10.5" y2="-8" width="0.127" layer="21"/>
<wire x1="-10.75" y1="8.25" x2="-10.75" y2="-8.25" width="0.05" layer="39"/>
<wire x1="-10.75" y1="-8.25" x2="11.75" y2="-8.25" width="0.05" layer="39"/>
<wire x1="11.75" y1="-8.25" x2="11.75" y2="8.25" width="0.05" layer="39"/>
<wire x1="11.75" y1="8.25" x2="-10.75" y2="8.25" width="0.05" layer="39"/>
<text x="-10.75" y="9.25" size="1.27" layer="25">&gt;NAME</text>
<text x="-10.75" y="-9.25" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<pad name="COM" x="-8.1" y="0" drill="1.4"/>
<pad name="COIL1" x="-6.1" y="6" drill="1.4"/>
<pad name="COIL2" x="-6.1" y="-6" drill="1.4"/>
<pad name="NO" x="6.1" y="-6" drill="1.4"/>
</package>
</packages>
<symbols>
<symbol name="PR28-3V-360-1A-E">
<wire x1="7.62" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="0" width="0.254" layer="94"/>
<polygon width="0.1524" layer="94">
<vertex x="4.445" y="0"/>
<vertex x="5.715" y="0"/>
<vertex x="5.08" y="1.27"/>
</polygon>
<circle x="2.54" y="2.54" radius="0.254" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0.635" x2="-2.54" y2="0.635" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.635" x2="-1.27" y2="0.635" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-0.635" x2="-2.54" y2="-0.635" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.635" x2="-3.81" y2="-0.635" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-0.635" x2="-3.81" y2="0.635" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-7.62" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="0.635" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.635" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="COM" x="10.16" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="NO" x="10.16" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="COIL1" x="-10.16" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="COIL2" x="-10.16" y="-2.54" visible="pad" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PR28-3V-360-1A-E" prefix="K">
<description> &lt;a href="https://pricing.snapeda.com/parts/PR28-3V-360-1A-E/CUI%20Devices/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="PR28-3V-360-1A-E" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RELAY_PR28-3V-360-1A-E">
<connects>
<connect gate="G$1" pin="COIL1" pad="COIL1"/>
<connect gate="G$1" pin="COIL2" pad="COIL2"/>
<connect gate="G$1" pin="COM" pad="COM"/>
<connect gate="G$1" pin="NO" pad="NO"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/PR28-3V-360-1A-E/Same+Sky/view-part/?ref=eda"/>
<attribute name="CUI_PURCHASE_URL" value="https://www.cuidevices.com/product/relays/power-relays/pr28-3v-360-1a-e?utm_source=snapeda.com&amp;utm_medium=referral&amp;utm_campaign=snapedaBOM"/>
<attribute name="DESCRIPTION" value="22 x 16 x 16.6 mm, 3 V, 16 A, SPST (1 Form A), Epoxy Sealed, Class F, Power Relay"/>
<attribute name="MF" value="CUI Devices"/>
<attribute name="MP" value="PR28-3V-360-1A-E"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://www.snapeda.com/api/url_track_click_mouser/?unipart_id=15935205&amp;manufacturer=CUI Devices&amp;part_name=PR28-3V-360-1A-E&amp;search_term=None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/PR28-3V-360-1A-E/Same+Sky/view-part/?ref=snap"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="2024-09-07_16-09-34_Library">
<packages>
<package name="ESP32-PICO-MINI-02_EXP">
<smd name="1" x="-5.9" y="1.2949" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="2" x="-5.9" y="0.4949" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="3" x="-5.9" y="-0.3051" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="4" x="-5.9" y="-1.1051" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="5" x="-5.9" y="-1.9051" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="6" x="-5.9" y="-2.7051" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="7" x="-5.9" y="-3.5051" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="8" x="-5.9" y="-4.3051" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="9" x="-5.9" y="-5.1051" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="10" x="-5.9" y="-5.9051" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="11" x="-5.9" y="-6.7051" dx="0.8128" dy="0.4064" layer="1"/>
<smd name="12" x="-4.8" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="13" x="-4" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="14" x="-3.2" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="15" x="-2.4" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="16" x="-1.6" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="17" x="-0.8" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="18" x="0" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="19" x="0.8" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="20" x="1.6" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="21" x="2.4" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="22" x="3.2" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="23" x="4" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="24" x="4.8" y="-7.6051" dx="0.8128" dy="0.4064" layer="1" rot="R90"/>
<smd name="25" x="5.9" y="-6.7051" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="26" x="5.9" y="-5.9051" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="27" x="5.9" y="-5.1051" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="28" x="5.9" y="-4.3051" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="29" x="5.9" y="-3.5051" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="30" x="5.9" y="-2.7051" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="31" x="5.9" y="-1.9051" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="32" x="5.9" y="-1.1051" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="33" x="5.9" y="-0.3051" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="34" x="5.9" y="0.4949" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="35" x="5.9" y="1.2949" dx="0.8128" dy="0.4064" layer="1" rot="R180"/>
<smd name="36" x="4.8" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="37" x="4" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="38" x="3.2" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="39" x="2.4" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="40" x="1.6" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="41" x="0.8" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="42" x="0" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="43" x="-0.8" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="44" x="-1.6" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="45" x="-2.4" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="46" x="-3.2" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="47" x="-4" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="48" x="-4.8" y="2.1949" dx="0.8128" dy="0.4064" layer="1" rot="R270"/>
<smd name="49" x="0" y="-2.7051" dx="1.4478" dy="1.4478" layer="1"/>
<smd name="52" x="-5.95" y="-7.6551" dx="0.7112" dy="0.7112" layer="1"/>
<smd name="50" x="5.95" y="2.2449" dx="0.7112" dy="0.7112" layer="1"/>
<smd name="51" x="5.95" y="-7.6551" dx="0.7112" dy="0.7112" layer="1"/>
<smd name="61" x="-1.975" y="-2.7051" dx="1.4478" dy="1.4478" layer="1"/>
<smd name="57" x="1.975" y="-2.7051" dx="1.4478" dy="1.4478" layer="1"/>
<smd name="54" x="-1.975" y="-0.7301" dx="0.127" dy="0.127" layer="1"/>
<smd name="55" x="0" y="-0.7301" dx="1.4478" dy="1.4478" layer="1"/>
<smd name="56" x="1.975" y="-0.7301" dx="1.4478" dy="1.4478" layer="1"/>
<smd name="60" x="-1.975" y="-4.6801" dx="1.4478" dy="1.4478" layer="1"/>
<smd name="59" x="0" y="-4.6801" dx="1.4478" dy="1.4478" layer="1"/>
<smd name="58" x="1.975" y="-4.6801" dx="1.4478" dy="1.4478" layer="1"/>
<smd name="53" x="-5.95" y="2.2449" dx="0.7112" dy="0.7112" layer="1"/>
<wire x1="6.731" y1="-8.4328" x2="-6.731" y2="-8.4328" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-8.4328" x2="-6.731" y2="8.4328" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="8.4328" x2="6.731" y2="8.4328" width="0.1524" layer="21"/>
<wire x1="6.731" y1="8.4328" x2="6.731" y2="-8.4328" width="0.1524" layer="21"/>
<text x="-7.5177" y="0.6599" size="1.27" layer="21" ratio="6">*</text>
<wire x1="6.604" y1="8.3058" x2="-6.604" y2="8.3058" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-8.3058" x2="6.604" y2="-8.3058" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-8.3058" x2="6.604" y2="8.3058" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="8.3058" x2="-6.604" y2="-8.3058" width="0.1524" layer="51"/>
<text x="-5.4349" y="0.6599" size="1.27" layer="51" ratio="6">*</text>
<wire x1="-5.9" y1="1.2949" x2="-8.89" y2="1.2949" width="0.1524" layer="47"/>
<wire x1="-5.9" y1="0.4949" x2="-8.89" y2="0.4949" width="0.1524" layer="47"/>
<wire x1="-8.509" y1="1.2949" x2="-8.509" y2="2.5649" width="0.1524" layer="47"/>
<wire x1="-8.509" y1="0.4949" x2="-8.509" y2="-0.7751" width="0.1524" layer="47"/>
<wire x1="-8.509" y1="1.2949" x2="-8.636" y2="1.5489" width="0.1524" layer="47"/>
<wire x1="-8.509" y1="1.2949" x2="-8.382" y2="1.5489" width="0.1524" layer="47"/>
<wire x1="-8.636" y1="1.5489" x2="-8.382" y2="1.5489" width="0.1524" layer="47"/>
<wire x1="-8.509" y1="0.4949" x2="-8.636" y2="0.2409" width="0.1524" layer="47"/>
<wire x1="-8.509" y1="0.4949" x2="-8.382" y2="0.2409" width="0.1524" layer="47"/>
<wire x1="-8.636" y1="0.2409" x2="-8.382" y2="0.2409" width="0.1524" layer="47"/>
<wire x1="-5.9" y1="-6.7051" x2="-5.9" y2="-9.5758" width="0.1524" layer="47"/>
<wire x1="5.9" y1="-6.7051" x2="5.9" y2="-9.5758" width="0.1524" layer="47"/>
<wire x1="-5.9" y1="-9.1948" x2="5.9" y2="-9.1948" width="0.1524" layer="47"/>
<wire x1="-5.9" y1="-9.1948" x2="-5.646" y2="-9.0678" width="0.1524" layer="47"/>
<wire x1="-5.9" y1="-9.1948" x2="-5.646" y2="-9.3218" width="0.1524" layer="47"/>
<wire x1="-5.646" y1="-9.0678" x2="-5.646" y2="-9.3218" width="0.1524" layer="47"/>
<wire x1="5.9" y1="-9.1948" x2="5.646" y2="-9.0678" width="0.1524" layer="47"/>
<wire x1="5.9" y1="-9.1948" x2="5.646" y2="-9.3218" width="0.1524" layer="47"/>
<wire x1="5.646" y1="-9.0678" x2="5.646" y2="-9.3218" width="0.1524" layer="47"/>
<wire x1="-6.604" y1="-8.3058" x2="-6.604" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="6.604" y1="-8.3058" x2="6.604" y2="-11.2268" width="0.1524" layer="47"/>
<wire x1="-6.604" y1="-10.8458" x2="6.604" y2="-10.8458" width="0.1524" layer="47"/>
<wire x1="-6.604" y1="-10.8458" x2="-6.35" y2="-10.7188" width="0.1524" layer="47"/>
<wire x1="-6.604" y1="-10.8458" x2="-6.35" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="-6.35" y1="-10.7188" x2="-6.35" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="6.604" y1="-10.8458" x2="6.35" y2="-10.7188" width="0.1524" layer="47"/>
<wire x1="6.604" y1="-10.8458" x2="6.35" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="6.35" y1="-10.7188" x2="6.35" y2="-10.9728" width="0.1524" layer="47"/>
<wire x1="4.8" y1="2.1949" x2="7.874" y2="2.1949" width="0.1524" layer="47"/>
<wire x1="4.8" y1="-7.6051" x2="7.874" y2="-7.6051" width="0.1524" layer="47"/>
<wire x1="7.493" y1="2.1949" x2="7.493" y2="-7.6051" width="0.1524" layer="47"/>
<wire x1="7.493" y1="2.1949" x2="7.366" y2="1.9409" width="0.1524" layer="47"/>
<wire x1="7.493" y1="2.1949" x2="7.62" y2="1.9409" width="0.1524" layer="47"/>
<wire x1="7.366" y1="1.9409" x2="7.62" y2="1.9409" width="0.1524" layer="47"/>
<wire x1="7.493" y1="-7.6051" x2="7.366" y2="-7.3511" width="0.1524" layer="47"/>
<wire x1="7.493" y1="-7.6051" x2="7.62" y2="-7.3511" width="0.1524" layer="47"/>
<wire x1="7.366" y1="-7.3511" x2="7.62" y2="-7.3511" width="0.1524" layer="47"/>
<wire x1="0" y1="2.8956" x2="12.954" y2="2.8956" width="0.1524" layer="47"/>
<wire x1="0" y1="-8.3058" x2="12.954" y2="-8.3058" width="0.1524" layer="47"/>
<wire x1="12.573" y1="2.8956" x2="12.573" y2="-8.3058" width="0.1524" layer="47"/>
<wire x1="12.573" y1="2.8956" x2="12.446" y2="2.6416" width="0.1524" layer="47"/>
<wire x1="12.573" y1="2.8956" x2="12.7" y2="2.6416" width="0.1524" layer="47"/>
<wire x1="12.446" y1="2.6416" x2="12.7" y2="2.6416" width="0.1524" layer="47"/>
<wire x1="12.573" y1="-8.3058" x2="12.446" y2="-8.0518" width="0.1524" layer="47"/>
<wire x1="12.573" y1="-8.3058" x2="12.7" y2="-8.0518" width="0.1524" layer="47"/>
<wire x1="12.446" y1="-8.0518" x2="12.7" y2="-8.0518" width="0.1524" layer="47"/>
<wire x1="-6.604" y1="-8.3058" x2="-7.9448" y2="-8.3058" width="0.1524" layer="47"/>
<wire x1="-6.604" y1="8.3058" x2="-7.9448" y2="8.3058" width="0.1524" layer="47"/>
<wire x1="-7.5638" y1="8.3058" x2="-7.5638" y2="-8.3058" width="0.1524" layer="47"/>
<wire x1="-7.4368" y1="8.0518" x2="-7.5638" y2="8.3058" width="0.1524" layer="47"/>
<wire x1="-7.6907" y1="8.0518" x2="-7.5638" y2="8.3058" width="0.1524" layer="47"/>
<wire x1="-7.6907" y1="8.0518" x2="-7.4368" y2="8.0518" width="0.1524" layer="47"/>
<wire x1="-7.6907" y1="-8.0518" x2="-7.5638" y2="-8.3058" width="0.1524" layer="47"/>
<wire x1="-7.4368" y1="-8.0518" x2="-7.5638" y2="-8.3058" width="0.1524" layer="47"/>
<wire x1="-7.4368" y1="-8.0518" x2="-7.6907" y2="-8.0518" width="0.1524" layer="47"/>
<text x="-15.2035" y="-14.9098" size="1.27" layer="47" ratio="6">Default Padstyle: RX32Y16D0T</text>
<text x="-17.305" y="-20.3791" size="1.27" layer="47" ratio="6">Heat Tab 1 Padstyle: RX57Y57D0T</text>
<text x="-14.8136" y="-19.4818" size="1.27" layer="47" ratio="6">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8136" y="-21.0058" size="1.27" layer="47" ratio="6">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="-15.9493" y="0.5774" size="0.635" layer="47" ratio="4">0.031in/0.8mm</text>
<text x="-3.7543" y="-10.3378" size="0.635" layer="47" ratio="4">0.465in/11.8mm</text>
<text x="-4.0424" y="-11.9888" size="0.635" layer="47" ratio="4">0.52in/13.208mm</text>
<text x="8.001" y="-3.0226" size="0.635" layer="47" ratio="4">0.386in/9.8mm</text>
<text x="13.081" y="-3.0226" size="0.635" layer="47" ratio="4">0.441in/11.201mm</text>
<text x="-16.7328" y="-0.3175" size="0.635" layer="47" ratio="4">0.654in/16.612mm</text>
<polygon width="0.0254" layer="1">
<vertex x="-1.2511" y="-0.0062"/>
<vertex x="-2.0893" y="-0.0062"/>
<vertex x="-2.6989" y="-0.6158"/>
<vertex x="-2.6989" y="-1.454"/>
<vertex x="-1.2511" y="-1.454"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.2511" y="-0.0062"/>
<vertex x="-2.0893" y="-0.0062"/>
<vertex x="-2.6989" y="-0.6158"/>
<vertex x="-2.6989" y="-1.454"/>
<vertex x="-1.2511" y="-1.454"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.2511" y="-0.0062"/>
<vertex x="-2.0893" y="-0.0062"/>
<vertex x="-2.6989" y="-0.6158"/>
<vertex x="-2.6989" y="-1.454"/>
<vertex x="-1.2511" y="-1.454"/>
</polygon>
<text x="-3.2712" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Name</text>
<text x="-1.7288" y="-0.635" size="1.27" layer="27" ratio="6">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="ESP32-PICO-MINI-02(U)">
<pin name="GND_2" x="2.54" y="0" length="middle" direction="pas"/>
<pin name="GND_3" x="2.54" y="-2.54" length="middle" direction="pas"/>
<pin name="3V3" x="2.54" y="-5.08" length="middle" direction="pwr"/>
<pin name="I36" x="2.54" y="-7.62" length="middle" direction="in"/>
<pin name="I37" x="2.54" y="-10.16" length="middle" direction="in"/>
<pin name="I38" x="2.54" y="-12.7" length="middle" direction="in"/>
<pin name="I39" x="2.54" y="-15.24" length="middle" direction="in"/>
<pin name="EN" x="2.54" y="-17.78" length="middle" direction="in"/>
<pin name="I34" x="2.54" y="-20.32" length="middle" direction="in"/>
<pin name="I35" x="2.54" y="-22.86" length="middle" direction="in"/>
<pin name="GND_4" x="2.54" y="-25.4" length="middle" direction="pas"/>
<pin name="IO32" x="2.54" y="-27.94" length="middle"/>
<pin name="IO33" x="2.54" y="-30.48" length="middle"/>
<pin name="GND_5" x="2.54" y="-33.02" length="middle" direction="pas"/>
<pin name="IO25" x="2.54" y="-35.56" length="middle"/>
<pin name="IO26" x="2.54" y="-38.1" length="middle"/>
<pin name="IO27" x="2.54" y="-40.64" length="middle"/>
<pin name="IO14" x="2.54" y="-43.18" length="middle"/>
<pin name="IO12" x="2.54" y="-45.72" length="middle"/>
<pin name="IO13" x="2.54" y="-48.26" length="middle"/>
<pin name="IO15" x="2.54" y="-50.8" length="middle"/>
<pin name="IO2" x="2.54" y="-53.34" length="middle"/>
<pin name="IO0" x="2.54" y="-55.88" length="middle"/>
<pin name="IO4" x="2.54" y="-58.42" length="middle"/>
<pin name="NC_2" x="2.54" y="-60.96" length="middle" direction="nc"/>
<pin name="IO20" x="2.54" y="-63.5" length="middle"/>
<pin name="IO7" x="2.54" y="-66.04" length="middle"/>
<pin name="IO8" x="2.54" y="-68.58" length="middle"/>
<pin name="IO5" x="2.54" y="-71.12" length="middle"/>
<pin name="RXD0" x="2.54" y="-73.66" length="middle"/>
<pin name="TXD0" x="38.1" y="-76.2" length="middle" rot="R180"/>
<pin name="NC" x="38.1" y="-73.66" length="middle" direction="nc" rot="R180"/>
<pin name="IO19" x="38.1" y="-71.12" length="middle" rot="R180"/>
<pin name="IO22" x="38.1" y="-68.58" length="middle" rot="R180"/>
<pin name="IO21" x="38.1" y="-66.04" length="middle" rot="R180"/>
<pin name="GND_6" x="38.1" y="-63.5" length="middle" direction="pas" rot="R180"/>
<pin name="GND_7" x="38.1" y="-60.96" length="middle" direction="pas" rot="R180"/>
<pin name="GND_8" x="38.1" y="-58.42" length="middle" direction="pas" rot="R180"/>
<pin name="GND_9" x="38.1" y="-55.88" length="middle" direction="pas" rot="R180"/>
<pin name="GND_10" x="38.1" y="-53.34" length="middle" direction="pas" rot="R180"/>
<pin name="GND_11" x="38.1" y="-50.8" length="middle" direction="pas" rot="R180"/>
<pin name="GND_12" x="38.1" y="-48.26" length="middle" direction="pas" rot="R180"/>
<pin name="GND_13" x="38.1" y="-45.72" length="middle" direction="pas" rot="R180"/>
<pin name="GND_14" x="38.1" y="-43.18" length="middle" direction="pas" rot="R180"/>
<pin name="GND_15" x="38.1" y="-40.64" length="middle" direction="pas" rot="R180"/>
<pin name="GND_16" x="38.1" y="-38.1" length="middle" direction="pas" rot="R180"/>
<pin name="GND_17" x="38.1" y="-35.56" length="middle" direction="pas" rot="R180"/>
<pin name="GND_18" x="38.1" y="-33.02" length="middle" direction="pas" rot="R180"/>
<pin name="GND_19" x="38.1" y="-30.48" length="middle" direction="pas" rot="R180"/>
<pin name="GND_20" x="38.1" y="-27.94" length="middle" direction="pas" rot="R180"/>
<pin name="GND_21" x="38.1" y="-25.4" length="middle" direction="pas" rot="R180"/>
<pin name="GND_22" x="38.1" y="-22.86" length="middle" direction="pas" rot="R180"/>
<pin name="GND_23" x="38.1" y="-20.32" length="middle" direction="pas" rot="R180"/>
<pin name="GND_24" x="38.1" y="-17.78" length="middle" direction="pas" rot="R180"/>
<pin name="GND_25" x="38.1" y="-15.24" length="middle" direction="pas" rot="R180"/>
<pin name="GND_26" x="38.1" y="-12.7" length="middle" direction="pas" rot="R180"/>
<pin name="GND_27" x="38.1" y="-10.16" length="middle" direction="pas" rot="R180"/>
<pin name="GND_28" x="38.1" y="-7.62" length="middle" direction="pas" rot="R180"/>
<pin name="GND_29" x="38.1" y="-5.08" length="middle" direction="pas" rot="R180"/>
<pin name="GND_30" x="38.1" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="GND" x="38.1" y="0" length="middle" direction="pas" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-81.28" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-81.28" x2="33.02" y2="-81.28" width="0.1524" layer="94"/>
<wire x1="33.02" y1="-81.28" x2="33.02" y2="5.08" width="0.1524" layer="94"/>
<wire x1="33.02" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="15.5946" y="9.1186" size="2.083" layer="95" ratio="6">&gt;Name</text>
<text x="14.9552" y="6.5786" size="2.083" layer="96" ratio="6">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-PICO-MINI-02-N8R2" prefix="U">
<gates>
<gate name="A" symbol="ESP32-PICO-MINI-02(U)" x="0" y="0"/>
</gates>
<devices>
<device name="ESP32-PICO-MINI-02_EXP" package="ESP32-PICO-MINI-02_EXP">
<connects>
<connect gate="A" pin="3V3" pad="3"/>
<connect gate="A" pin="EN" pad="8"/>
<connect gate="A" pin="GND" pad="61"/>
<connect gate="A" pin="GND_10" pad="40"/>
<connect gate="A" pin="GND_11" pad="41"/>
<connect gate="A" pin="GND_12" pad="42"/>
<connect gate="A" pin="GND_13" pad="43"/>
<connect gate="A" pin="GND_14" pad="44"/>
<connect gate="A" pin="GND_15" pad="45"/>
<connect gate="A" pin="GND_16" pad="46"/>
<connect gate="A" pin="GND_17" pad="47"/>
<connect gate="A" pin="GND_18" pad="48"/>
<connect gate="A" pin="GND_19" pad="49"/>
<connect gate="A" pin="GND_2" pad="1"/>
<connect gate="A" pin="GND_20" pad="50"/>
<connect gate="A" pin="GND_21" pad="51"/>
<connect gate="A" pin="GND_22" pad="52"/>
<connect gate="A" pin="GND_23" pad="53"/>
<connect gate="A" pin="GND_24" pad="54"/>
<connect gate="A" pin="GND_25" pad="55"/>
<connect gate="A" pin="GND_26" pad="56"/>
<connect gate="A" pin="GND_27" pad="57"/>
<connect gate="A" pin="GND_28" pad="58"/>
<connect gate="A" pin="GND_29" pad="59"/>
<connect gate="A" pin="GND_3" pad="2"/>
<connect gate="A" pin="GND_30" pad="60"/>
<connect gate="A" pin="GND_4" pad="11"/>
<connect gate="A" pin="GND_5" pad="14"/>
<connect gate="A" pin="GND_6" pad="36"/>
<connect gate="A" pin="GND_7" pad="37"/>
<connect gate="A" pin="GND_8" pad="38"/>
<connect gate="A" pin="GND_9" pad="39"/>
<connect gate="A" pin="I34" pad="9"/>
<connect gate="A" pin="I35" pad="10"/>
<connect gate="A" pin="I36" pad="4"/>
<connect gate="A" pin="I37" pad="5"/>
<connect gate="A" pin="I38" pad="6"/>
<connect gate="A" pin="I39" pad="7"/>
<connect gate="A" pin="IO0" pad="23"/>
<connect gate="A" pin="IO12" pad="19"/>
<connect gate="A" pin="IO13" pad="20"/>
<connect gate="A" pin="IO14" pad="18"/>
<connect gate="A" pin="IO15" pad="21"/>
<connect gate="A" pin="IO19" pad="33"/>
<connect gate="A" pin="IO2" pad="22"/>
<connect gate="A" pin="IO20" pad="26"/>
<connect gate="A" pin="IO21" pad="35"/>
<connect gate="A" pin="IO22" pad="34"/>
<connect gate="A" pin="IO25" pad="15"/>
<connect gate="A" pin="IO26" pad="16"/>
<connect gate="A" pin="IO27" pad="17"/>
<connect gate="A" pin="IO32" pad="12"/>
<connect gate="A" pin="IO33" pad="13"/>
<connect gate="A" pin="IO4" pad="24"/>
<connect gate="A" pin="IO5" pad="29"/>
<connect gate="A" pin="IO7" pad="27"/>
<connect gate="A" pin="IO8" pad="28"/>
<connect gate="A" pin="NC" pad="32"/>
<connect gate="A" pin="NC_2" pad="25"/>
<connect gate="A" pin="RXD0" pad="30"/>
<connect gate="A" pin="TXD0" pad="31"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2024 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ESP32-PICO-MINI-02-N8R2" constant="no"/>
<attribute name="MFR_NAME" value="Espressif Systems" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="J1" library="SamacSys_Parts" deviceset="796638-3" device=""/>
<part name="PS1" library="SamacSys_Parts" deviceset="RAC03-3.3SK" device=""/>
<part name="K1" library="PR28-3V-360-1A-E" deviceset="PR28-3V-360-1A-E" device=""/>
<part name="FRAME2" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="U1" library="2024-09-07_16-09-34_Library" deviceset="ESP32-PICO-MINI-02-N8R2" device="ESP32-PICO-MINI-02_EXP"/>
<part name="IC1" library="SamacSys_Parts" deviceset="ADE9153AACPZ" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="236.982" y="21.336" size="2.54" layer="94" ratio="9" align="center">LOS MAS ASPEROS</text>
<text x="251.714" y="6.35" size="2.54" layer="94" ratio="9" align="center">1.0</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="217.17" y="15.24" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="217.17" y="10.16" size="2.286" layer="94"/>
<attribute name="SHEET" x="230.505" y="5.08" size="2.54" layer="94"/>
</instance>
<instance part="J1" gate="G$1" x="33.02" y="149.86" smashed="yes">
<attribute name="NAME" x="49.53" y="157.48" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="49.53" y="154.94" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="PS1" gate="G$1" x="27.94" y="116.84" smashed="yes">
<attribute name="NAME" x="62.23" y="124.46" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="62.23" y="121.92" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="K1" gate="G$1" x="363.22" y="121.92" smashed="yes">
<attribute name="NAME" x="355.6" y="128.27" size="1.778" layer="95"/>
<attribute name="VALUE" x="355.6" y="114.3" size="1.778" layer="96"/>
</instance>
<instance part="FRAME2" gate="G$1" x="269.24" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="486.41" y="15.24" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="486.41" y="10.16" size="2.286" layer="94"/>
<attribute name="SHEET" x="499.745" y="5.08" size="2.54" layer="94"/>
</instance>
<instance part="U1" gate="A" x="109.22" y="142.24" smashed="yes">
<attribute name="NAME" x="124.8146" y="151.3586" size="2.083" layer="95" ratio="6"/>
<attribute name="VALUE" x="124.1752" y="148.8186" size="2.083" layer="96" ratio="6"/>
</instance>
<instance part="IC1" gate="G$1" x="401.32" y="106.68" smashed="yes">
<attribute name="NAME" x="433.07" y="134.62" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="433.07" y="132.08" size="1.778" layer="96" align="center-left"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>

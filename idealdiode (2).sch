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
<library name="SamacSys_Parts">
<description>&lt;b&gt;https://eagle.componentsearchengine.com&lt;/b&gt;&lt;p&gt;&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOP65P490X110-8N">
<description>&lt;b&gt;MS8 Package 8-Lead Plastic MSOP (Reference LTC DWG # 05-08-1660 Rev G)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-2.212" y="0.975" dx="1.425" dy="0.45" layer="1"/>
<smd name="2" x="-2.212" y="0.325" dx="1.425" dy="0.45" layer="1"/>
<smd name="3" x="-2.212" y="-0.325" dx="1.425" dy="0.45" layer="1"/>
<smd name="4" x="-2.212" y="-0.975" dx="1.425" dy="0.45" layer="1"/>
<smd name="5" x="2.212" y="-0.975" dx="1.425" dy="0.45" layer="1"/>
<smd name="6" x="2.212" y="-0.325" dx="1.425" dy="0.45" layer="1"/>
<smd name="7" x="2.212" y="0.325" dx="1.425" dy="0.45" layer="1"/>
<smd name="8" x="2.212" y="0.975" dx="1.425" dy="0.45" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.175" y1="1.801" x2="3.175" y2="1.801" width="0.05" layer="51"/>
<wire x1="3.175" y1="1.801" x2="3.175" y2="-1.801" width="0.05" layer="51"/>
<wire x1="3.175" y1="-1.801" x2="-3.175" y2="-1.801" width="0.05" layer="51"/>
<wire x1="-3.175" y1="-1.801" x2="-3.175" y2="1.801" width="0.05" layer="51"/>
<wire x1="-1.5" y1="1.5" x2="1.5" y2="1.5" width="0.1" layer="51"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="-1.5" width="0.1" layer="51"/>
<wire x1="1.5" y1="-1.5" x2="-1.5" y2="-1.5" width="0.1" layer="51"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="1.5" width="0.1" layer="51"/>
<wire x1="-1.5" y1="0.85" x2="-0.85" y2="1.5" width="0.1" layer="51"/>
<wire x1="-1.15" y1="1.5" x2="1.15" y2="1.5" width="0.2" layer="21"/>
<wire x1="1.15" y1="1.5" x2="1.15" y2="-1.5" width="0.2" layer="21"/>
<wire x1="1.15" y1="-1.5" x2="-1.15" y2="-1.5" width="0.2" layer="21"/>
<wire x1="-1.15" y1="-1.5" x2="-1.15" y2="1.5" width="0.2" layer="21"/>
<wire x1="-2.925" y1="1.55" x2="-1.5" y2="1.55" width="0.2" layer="21"/>
</package>
<package name="PSMNR5540SSH">
<description>&lt;b&gt;PSMNR55-40SSH-2&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-3" y="-3.85" dx="1.4" dy="1.2" layer="1" rot="R90"/>
<smd name="2" x="-1" y="-3.85" dx="1.4" dy="1.2" layer="1" rot="R90"/>
<smd name="3" x="1" y="-3.85" dx="1.4" dy="1.2" layer="1" rot="R90"/>
<smd name="4" x="3" y="-3.85" dx="1.4" dy="1.2" layer="1" rot="R90"/>
<smd name="5" x="0" y="3.37" dx="8.6" dy="1.76" layer="1"/>
<smd name="6" x="0" y="0.62" dx="6.8" dy="3.74" layer="1"/>
<text x="0" y="-0.15" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-0.15" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-4" y1="3.1" x2="4" y2="3.1" width="0.1" layer="51"/>
<wire x1="4" y1="3.1" x2="4" y2="-3.1" width="0.1" layer="51"/>
<wire x1="4" y1="-3.1" x2="-4" y2="-3.1" width="0.1" layer="51"/>
<wire x1="-4" y1="-3.1" x2="-4" y2="3.1" width="0.1" layer="51"/>
<wire x1="-5.3" y1="5.25" x2="5.3" y2="5.25" width="0.1" layer="51"/>
<wire x1="5.3" y1="5.25" x2="5.3" y2="-5.55" width="0.1" layer="51"/>
<wire x1="5.3" y1="-5.55" x2="-5.3" y2="-5.55" width="0.1" layer="51"/>
<wire x1="-5.3" y1="-5.55" x2="-5.3" y2="5.25" width="0.1" layer="51"/>
<wire x1="-3.2" y1="-5" x2="-3.2" y2="-5" width="0.1" layer="21"/>
<wire x1="-3.2" y1="-5" x2="-3.1" y2="-5" width="0.1" layer="21" curve="180"/>
<wire x1="-3.1" y1="-5" x2="-3.1" y2="-5" width="0.1" layer="21"/>
<wire x1="-3.1" y1="-5" x2="-3.2" y2="-5" width="0.1" layer="21" curve="180"/>
<wire x1="-4" y1="2.2" x2="-4" y2="-3" width="0.2" layer="21"/>
<wire x1="4" y1="2.2" x2="4" y2="-3" width="0.2" layer="21"/>
</package>
<package name="CAPC1608X90N">
<description>&lt;b&gt;GRM18_0.10 L=1.6mm W=0.8mm T=0.8mm&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.7" y="0" dx="0.94" dy="0.75" layer="1" rot="R90"/>
<smd name="2" x="0.7" y="0" dx="0.94" dy="0.75" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.225" y1="0.62" x2="1.225" y2="0.62" width="0.05" layer="51"/>
<wire x1="1.225" y1="0.62" x2="1.225" y2="-0.62" width="0.05" layer="51"/>
<wire x1="1.225" y1="-0.62" x2="-1.225" y2="-0.62" width="0.05" layer="51"/>
<wire x1="-1.225" y1="-0.62" x2="-1.225" y2="0.62" width="0.05" layer="51"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.1" layer="51"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.1" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.1" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.1" layer="51"/>
</package>
<package name="CAPC3225X280N">
<description>&lt;b&gt;CGA6 (2.8T)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.63" y="0" dx="2.82" dy="0.86" layer="1" rot="R90"/>
<smd name="2" x="1.63" y="0" dx="2.82" dy="0.86" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.21" y1="1.56" x2="2.21" y2="1.56" width="0.05" layer="51"/>
<wire x1="2.21" y1="1.56" x2="2.21" y2="-1.56" width="0.05" layer="51"/>
<wire x1="2.21" y1="-1.56" x2="-2.21" y2="-1.56" width="0.05" layer="51"/>
<wire x1="-2.21" y1="-1.56" x2="-2.21" y2="1.56" width="0.05" layer="51"/>
<wire x1="-1.625" y1="1.25" x2="1.625" y2="1.25" width="0.1" layer="51"/>
<wire x1="1.625" y1="1.25" x2="1.625" y2="-1.25" width="0.1" layer="51"/>
<wire x1="1.625" y1="-1.25" x2="-1.625" y2="-1.25" width="0.1" layer="51"/>
<wire x1="-1.625" y1="-1.25" x2="-1.625" y2="1.25" width="0.1" layer="51"/>
<wire x1="0" y1="1.15" x2="0" y2="-1.15" width="0.2" layer="21"/>
</package>
<package name="ERJS02_U02_(0402)">
<description>&lt;b&gt;ERJS02_U02_(0402)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.5125" y="0" dx="0.5" dy="0.475" layer="1" rot="R90"/>
<smd name="2" x="0.5125" y="0" dx="0.5" dy="0.475" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-0.5" y1="0.25" x2="0.5" y2="0.25" width="0.2" layer="51"/>
<wire x1="0.5" y1="0.25" x2="0.5" y2="-0.25" width="0.2" layer="51"/>
<wire x1="0.5" y1="-0.25" x2="-0.5" y2="-0.25" width="0.2" layer="51"/>
<wire x1="-0.5" y1="-0.25" x2="-0.5" y2="0.25" width="0.2" layer="51"/>
<circle x="-1.1125" y="0" radius="0.05" width="0.2" layer="25"/>
<wire x1="-2.0125" y1="1.25" x2="1.55" y2="1.25" width="0.05" layer="51"/>
<wire x1="1.55" y1="1.25" x2="1.55" y2="-1.25" width="0.05" layer="51"/>
<wire x1="1.55" y1="-1.25" x2="-2.0125" y2="-1.25" width="0.05" layer="51"/>
<wire x1="-2.0125" y1="-1.25" x2="-2.0125" y2="1.25" width="0.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="LTC4372IMS8#TRPBF">
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-10.16" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<text x="29.21" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="29.21" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="OUT" x="0" y="0" length="middle"/>
<pin name="GATE" x="0" y="-2.54" length="middle"/>
<pin name="SOURCE" x="0" y="-5.08" length="middle"/>
<pin name="IN" x="0" y="-7.62" length="middle"/>
<pin name="SHDN" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="2UPU" x="33.02" y="-2.54" length="middle" rot="R180"/>
<pin name="GND" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="INTVCC" x="33.02" y="-7.62" length="middle" rot="R180"/>
</symbol>
<symbol name="PSMNR55-40SSH">
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-7.62" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="21.59" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="21.59" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="G" x="0" y="0" length="middle"/>
<pin name="S_1" x="0" y="-2.54" length="middle"/>
<pin name="S_2" x="0" y="-5.08" length="middle"/>
<pin name="S_3" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="D_1" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="D_2" x="25.4" y="-5.08" length="middle" rot="R180"/>
</symbol>
<symbol name="GRM188R72A104KA35J">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="CGA6P1X7R1N106K250AC">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
<symbol name="ERJ-S020R00X">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LTC4372IMS8#TRPBF" prefix="IC">
<description>&lt;b&gt;Power Management Specialized - PMIC Low Icc Ideal Diode Controller w/SHDN&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.arrow.com/en/products/ltc4372ims8trpbf/analog-devices"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="LTC4372IMS8#TRPBF" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOP65P490X110-8N">
<connects>
<connect gate="G$1" pin="2UPU" pad="7"/>
<connect gate="G$1" pin="GATE" pad="2"/>
<connect gate="G$1" pin="GND" pad="6"/>
<connect gate="G$1" pin="IN" pad="4"/>
<connect gate="G$1" pin="INTVCC" pad="5"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$1" pin="SHDN" pad="8"/>
<connect gate="G$1" pin="SOURCE" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="LTC4372IMS8#TRPBF" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/ltc4372ims8trpbf/analog-devices?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="Power Management Specialized - PMIC Low Icc Ideal Diode Controller w/SHDN" constant="no"/>
<attribute name="HEIGHT" value="1.1mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Analog Devices" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="LTC4372IMS8#TRPBF" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="584-LTC4372IMS8TRPBF" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Analog-Devices/LTC4372IMS8TRPBF?qs=T94vaHKWudTwymNST%2FXaWA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PSMNR55-40SSH" prefix="Q">
<description>&lt;b&gt;N-channel 40 V, 0.55 mOhm, 500 Amps continuous, standard level MOSFET in LFPAK88 using NextPowerS3 Technology&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.nexperia.com/products/mosfets/power-mosfets/PSMNR55-40SSH.html"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="PSMNR55-40SSH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PSMNR5540SSH">
<connects>
<connect gate="G$1" pin="D_1" pad="5"/>
<connect gate="G$1" pin="D_2" pad="6"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S_1" pad="2"/>
<connect gate="G$1" pin="S_2" pad="3"/>
<connect gate="G$1" pin="S_3" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="N-channel 40 V, 0.55 mOhm, 500 Amps continuous, standard level MOSFET in LFPAK88 using NextPowerS3 Technology" constant="no"/>
<attribute name="HEIGHT" value="1.85mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Nexperia" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="PSMNR55-40SSH" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GRM188R72A104KA35J" prefix="C">
<description>&lt;b&gt;Multilayer Ceramic Capacitors MLCC - SMD/SMT 0.1uF 100Volts X7R 0.1&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://componentsearchengine.com/Datasheets/1/GRM188R72A104KA35J.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="GRM188R72A104KA35J" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC1608X90N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="GRM188R72A104KA35J" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/grm188r72a104ka35j/murata-manufacturing?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="Multilayer Ceramic Capacitors MLCC - SMD/SMT 0.1uF 100Volts X7R 0.1" constant="no"/>
<attribute name="HEIGHT" value="0.9mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Murata Electronics" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="GRM188R72A104KA35J" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="81-GRM188R72A104KA5J" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Murata-Electronics/GRM188R72A104KA35J?qs=UOvNgVTuGCrukYVcakHH%252BA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CGA6P1X7R1N106K250AC" prefix="C">
<description>&lt;b&gt;Multilayer Ceramic Chip Capacitors, Capacitance=10uF, LxWxT:3.2x2.5x2.5mm&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/mlcc/catalog/mlcc_automotive_general_en.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CGA6P1X7R1N106K250AC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC3225X280N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="CGA6P1X7R1N106K250AC" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/cga6p1x7r1n106k250ac/tdk?region=europe" constant="no"/>
<attribute name="DESCRIPTION" value="Multilayer Ceramic Chip Capacitors, Capacitance=10uF, LxWxT:3.2x2.5x2.5mm" constant="no"/>
<attribute name="HEIGHT" value="2.8mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TDK" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CGA6P1X7R1N106K250AC" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="810-CGA6P1X7R1N106K2" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TDK/CGA6P1X7R1N106K250AC?qs=PzGy0jfpSMuJjJ6Wlu9qRA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ERJ-S020R00X" prefix="R">
<description>&lt;b&gt;Thick Film Resistors - SMD 0402 Zero ohm Jumper 0.05ohm AEC-Q200&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://industrial.panasonic.com/cdbs/www-data/pdf/RDP0000/AOA0000C334.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERJ-S020R00X" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERJS02_U02_(0402)">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="ERJ-S020R00X" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="https://www.arrow.com/en/products/erj-s020r00x/panasonic?region=nac" constant="no"/>
<attribute name="DESCRIPTION" value="Thick Film Resistors - SMD 0402 Zero ohm Jumper 0.05ohm AEC-Q200" constant="no"/>
<attribute name="HEIGHT" value="0.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERJ-S020R00X" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="667-ERJ-S020R00X" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Panasonic/ERJ-S020R00X?qs=Zyl8A9hlmJqcGEcH0dtAYQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
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
<part name="IC1" library="SamacSys_Parts" deviceset="LTC4372IMS8#TRPBF" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="Q4" library="SamacSys_Parts" deviceset="PSMNR55-40SSH" device=""/>
<part name="Q5" library="SamacSys_Parts" deviceset="PSMNR55-40SSH" device=""/>
<part name="Q6" library="SamacSys_Parts" deviceset="PSMNR55-40SSH" device=""/>
<part name="C1" library="SamacSys_Parts" deviceset="GRM188R72A104KA35J" device=""/>
<part name="C2" library="SamacSys_Parts" deviceset="CGA6P1X7R1N106K250AC" device=""/>
<part name="R1" library="SamacSys_Parts" deviceset="ERJ-S020R00X" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="55.88" y="22.86" smashed="yes">
<attribute name="NAME" x="54.61" y="12.7" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="62.23" y="10.16" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="GND1" gate="1" x="116.84" y="22.86" smashed="yes" rot="R90">
<attribute name="VALUE" x="116.84" y="25.4" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="Q4" gate="G$1" x="55.88" y="78.74" smashed="yes">
<attribute name="NAME" x="77.47" y="86.36" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="77.47" y="83.82" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="Q5" gate="G$1" x="55.88" y="58.42" smashed="yes">
<attribute name="NAME" x="77.47" y="66.04" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="77.47" y="63.5" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="Q6" gate="G$1" x="55.88" y="38.1" smashed="yes">
<attribute name="NAME" x="77.47" y="45.72" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="77.47" y="43.18" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C1" gate="G$1" x="101.6" y="15.24" smashed="yes" rot="R270">
<attribute name="NAME" x="100.33" y="1.27" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="100.33" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C2" gate="G$1" x="124.46" y="7.62" smashed="yes" rot="R90">
<attribute name="NAME" x="130.81" y="11.43" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="156.21" y="8.89" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="R1" gate="G$1" x="25.4" y="15.24" smashed="yes">
<attribute name="NAME" x="39.37" y="21.59" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="39.37" y="19.05" size="1.778" layer="96" align="center-left"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="55.88" y1="78.74" x2="53.34" y2="78.74" width="0.1524" layer="91"/>
<wire x1="53.34" y1="78.74" x2="53.34" y2="58.42" width="0.1524" layer="91"/>
<wire x1="53.34" y1="58.42" x2="55.88" y2="58.42" width="0.1524" layer="91"/>
<wire x1="53.34" y1="58.42" x2="53.34" y2="38.1" width="0.1524" layer="91"/>
<wire x1="53.34" y1="38.1" x2="55.88" y2="38.1" width="0.1524" layer="91"/>
<junction x="53.34" y="58.42"/>
<pinref part="IC1" gate="G$1" pin="GATE"/>
<wire x1="53.34" y1="38.1" x2="53.34" y2="20.32" width="0.1524" layer="91"/>
<wire x1="53.34" y1="20.32" x2="55.88" y2="20.32" width="0.1524" layer="91"/>
<junction x="53.34" y="38.1"/>
<pinref part="Q4" gate="G$1" pin="G"/>
<pinref part="Q5" gate="G$1" pin="G"/>
<pinref part="Q6" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SOURCE"/>
<wire x1="55.88" y1="17.78" x2="45.72" y2="17.78" width="0.1524" layer="91"/>
<wire x1="55.88" y1="33.02" x2="45.72" y2="33.02" width="0.1524" layer="91"/>
<wire x1="45.72" y1="33.02" x2="45.72" y2="17.78" width="0.1524" layer="91"/>
<wire x1="45.72" y1="33.02" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<junction x="45.72" y="33.02"/>
<wire x1="55.88" y1="53.34" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<wire x1="45.72" y1="53.34" x2="45.72" y2="73.66" width="0.1524" layer="91"/>
<junction x="45.72" y="53.34"/>
<wire x1="45.72" y1="73.66" x2="55.88" y2="73.66" width="0.1524" layer="91"/>
<pinref part="Q4" gate="G$1" pin="S_2"/>
<pinref part="Q5" gate="G$1" pin="S_2"/>
<pinref part="Q6" gate="G$1" pin="S_2"/>
<pinref part="Q4" gate="G$1" pin="S_1"/>
<wire x1="55.88" y1="76.2" x2="55.88" y2="73.66" width="0.1524" layer="91"/>
<junction x="55.88" y="73.66"/>
<wire x1="55.88" y1="76.2" x2="58.42" y2="83.82" width="0.1524" layer="91"/>
<wire x1="58.42" y1="83.82" x2="83.82" y2="83.82" width="0.1524" layer="91"/>
<junction x="55.88" y="76.2"/>
<pinref part="Q4" gate="G$1" pin="S_3"/>
<wire x1="83.82" y1="83.82" x2="81.28" y2="78.74" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="S_3"/>
<wire x1="81.28" y1="58.42" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="63.5" x2="58.42" y2="63.5" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="S_1"/>
<wire x1="58.42" y1="63.5" x2="55.88" y2="55.88" width="0.1524" layer="91"/>
<wire x1="55.88" y1="53.34" x2="55.88" y2="55.88" width="0.1524" layer="91"/>
<junction x="55.88" y="53.34"/>
<junction x="55.88" y="55.88"/>
<pinref part="Q6" gate="G$1" pin="S_1"/>
<wire x1="55.88" y1="35.56" x2="55.88" y2="33.02" width="0.1524" layer="91"/>
<junction x="55.88" y="33.02"/>
<wire x1="55.88" y1="35.56" x2="58.42" y2="43.18" width="0.1524" layer="91"/>
<wire x1="58.42" y1="43.18" x2="83.82" y2="43.18" width="0.1524" layer="91"/>
<junction x="55.88" y="35.56"/>
<pinref part="Q6" gate="G$1" pin="S_3"/>
<wire x1="83.82" y1="43.18" x2="81.28" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="25.4" y1="15.24" x2="25.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="25.4" y1="33.02" x2="45.72" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="81.28" y1="76.2" x2="91.44" y2="76.2" width="0.1524" layer="91"/>
<wire x1="91.44" y1="76.2" x2="91.44" y2="55.88" width="0.1524" layer="91"/>
<wire x1="91.44" y1="55.88" x2="81.28" y2="55.88" width="0.1524" layer="91"/>
<wire x1="91.44" y1="55.88" x2="91.44" y2="35.56" width="0.1524" layer="91"/>
<junction x="91.44" y="55.88"/>
<wire x1="91.44" y1="35.56" x2="81.28" y2="35.56" width="0.1524" layer="91"/>
<pinref part="Q4" gate="G$1" pin="D_1"/>
<pinref part="Q5" gate="G$1" pin="D_1"/>
<pinref part="Q6" gate="G$1" pin="D_1"/>
<pinref part="Q5" gate="G$1" pin="D_2"/>
<wire x1="81.28" y1="55.88" x2="81.28" y2="53.34" width="0.1524" layer="91"/>
<junction x="81.28" y="55.88"/>
<pinref part="Q4" gate="G$1" pin="D_2"/>
<wire x1="81.28" y1="76.2" x2="81.28" y2="73.66" width="0.1524" layer="91"/>
<junction x="81.28" y="76.2"/>
<pinref part="Q6" gate="G$1" pin="D_2"/>
<wire x1="81.28" y1="33.02" x2="81.28" y2="35.56" width="0.1524" layer="91"/>
<junction x="81.28" y="35.56"/>
<pinref part="IC1" gate="G$1" pin="OUT"/>
<wire x1="55.88" y1="22.86" x2="55.88" y2="27.94" width="0.1524" layer="91"/>
<wire x1="55.88" y1="27.94" x2="101.6" y2="27.94" width="0.1524" layer="91"/>
<wire x1="101.6" y1="27.94" x2="101.6" y2="38.1" width="0.1524" layer="91"/>
<wire x1="101.6" y1="38.1" x2="124.46" y2="38.1" width="0.1524" layer="91"/>
<wire x1="124.46" y1="38.1" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<wire x1="91.44" y1="55.88" x2="124.46" y2="55.88" width="0.1524" layer="91"/>
<wire x1="124.46" y1="55.88" x2="124.46" y2="38.1" width="0.1524" layer="91"/>
<junction x="124.46" y="38.1"/>
<pinref part="C2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="INTVCC"/>
<wire x1="88.9" y1="15.24" x2="88.9" y2="2.54" width="0.1524" layer="91"/>
<wire x1="88.9" y1="2.54" x2="101.6" y2="2.54" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="88.9" y1="17.78" x2="101.6" y2="17.78" width="0.1524" layer="91"/>
<wire x1="101.6" y1="17.78" x2="101.6" y2="15.24" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="SHDN"/>
<wire x1="88.9" y1="22.86" x2="101.6" y2="22.86" width="0.1524" layer="91"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="17.78" width="0.1524" layer="91"/>
<junction x="101.6" y="17.78"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="101.6" y1="22.86" x2="114.3" y2="22.86" width="0.1524" layer="91"/>
<junction x="101.6" y="22.86"/>
<wire x1="114.3" y1="22.86" x2="114.3" y2="7.62" width="0.1524" layer="91"/>
<wire x1="114.3" y1="7.62" x2="124.46" y2="7.62" width="0.1524" layer="91"/>
<junction x="114.3" y="22.86"/>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="C2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="IN"/>
<wire x1="55.88" y1="15.24" x2="43.18" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
</net>
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

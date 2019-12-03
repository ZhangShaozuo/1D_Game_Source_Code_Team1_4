<?xml version="1.0" encoding="UTF-8"?>
<project name="ALU16" board="Mojo V3" language="Lucid">
  <files>
    <src>alu16.luc</src>
    <src>game_miniBeta.luc</src>
    <src>turn_util.luc</src>
    <src>boole16.luc</src>
    <src>compare16.luc</src>
    <src>game_miniRegfiles.luc</src>
    <src>mode_util.luc</src>
    <src>display.luc</src>
    <src>shift16.luc</src>
    <src top="true">mojo_top.luc</src>
    <src>game_CU.luc</src>
    <src>adder16.luc</src>
    <ucf lib="true">mojo.ucf</ucf>
    <ucf>custom.ucf</ucf>
    <component>decoder.luc</component>
    <component>reset_conditioner.luc</component>
    <component>pipeline.luc</component>
    <component>button_conditioner.luc</component>
    <component>edge_detector.luc</component>
    <component>serdes_1_to_5.luc</component>
  </files>
</project>

#NoEnv
GetDisplayBrightness(Minimum, Current, Maximum) ; aktuelle Einstellungen abrufen
;MsgBox, 0, Bildschirmhelligkeit, Minimum = %Minimum%`nAktuell = %Current%`nMaximum = %Maximum%
Return
; ======================================================================================================================
; Helligkeit erhöhen mit Shift+Win+Alt+PgUp
+#!PgUp::
If (Current < Maximum) {
   Current++
   SetDisplayBrightness(Current)
   ToolTip, %Current%
   SetTimer, KillToolTip, -1000
}
Return
; ======================================================================================================================
; Helligkeit verringern mit Shift+Win+Alt+PgDn
+#!PgDn::
If (Current > Minimum) {
   Current--
   SetDisplayBrightness(Current)
   ToolTip, %Current%
   SetTimer, KillToolTip, -1000
}
Return
KillToolTip:
ToolTip
Return
; ======================================================================================================================
GetDisplayBrightness(ByRef Minimum, ByRef Current, ByRef Maximum) {
   HMON := DllCall("User32.dll\MonitorFromWindow", "Ptr", 0, "UInt", 0x02, "UPtr")
   DllCall("Dxva2.dll\GetNumberOfPhysicalMonitorsFromHMONITOR", "Ptr", HMON, "UIntP", PhysMons, "UInt")
   VarSetCapacity(PHYS_MONITORS, (A_PtrSize + 256) * PhysMons, 0) ; PHYSICAL_MONITORS
   DllCall("Dxva2.dll\GetPhysicalMonitorsFromHMONITOR", "Ptr", HMON, "UInt", PhysMons, "Ptr", &PHYS_MONITORS, "UInt")
   HPMON := NumGet(PHYS_MONITORS, 0, "UPtr")
   DllCall("Dxva2.dll\GetMonitorBrightness", "Ptr", HPMON, "UIntP", Minimum, "UIntP", Current, "UIntP", Maximum, "UInt")
   DllCall("Dxva2.dll\DestroyPhysicalMonitors", "Ptr", HMON, "UInt", PhysMons, "Ptr", &PHYSICAL_MONITORS, "UInt")
}
; ======================================================================================================================
SetDisplayBrightness(Brightness) {
   Static Minimum := "", Current := "", Maximum := ""
   HMON := DllCall("User32.dll\MonitorFromWindow", "Ptr", 0, "UInt", 0x02, "UPtr")
   DllCall("Dxva2.dll\GetNumberOfPhysicalMonitorsFromHMONITOR", "Ptr", HMON, "UIntP", PhysMons, "UInt")
   VarSetCapacity(PHYS_MONITORS, (A_PtrSize + 256) * PhysMons, 0) ; PHYSICAL_MONITORS
   DllCall("Dxva2.dll\GetPhysicalMonitorsFromHMONITOR", "Ptr", HMON, "UInt", PhysMons, "Ptr", &PHYS_MONITORS, "UInt")
   HPMON := NumGet(PHYS_MONITORS, 0, "UPtr")
   DllCall("Dxva2.dll\GetMonitorBrightness", "Ptr", HPMON, "UIntP", Minimum, "UIntP", Current, "UIntP", Maximum, "UInt")
   If Brightness Is Not Integer
      Brightness := Current
   If (Brightness < Minimum)
      Brightness := Minimum
   If (Brightness > Maximum)
      Brightness := Maximum
   DllCall("Dxva2.dll\SetMonitorBrightness", "Ptr", HPMON, "UInt", Brightness, "UInt")
   DllCall("Dxva2.dll\DestroyPhysicalMonitors", "Ptr", HMON, "UInt", PhysMons, "Ptr", &PHYSICAL_MONITORS, "UInt")
   Return Brightness
}

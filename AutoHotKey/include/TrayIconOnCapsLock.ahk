; Disable TrayIcon by default, and enable it if CapsLock is on.

#NoTrayIcon

If GetKeyState("CapsLock", "T")
{
    Menu, Tray, Icon
}

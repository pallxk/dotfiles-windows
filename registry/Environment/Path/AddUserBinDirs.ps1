# Get original User Path
$UserPath = [Environment]::GetEnvironmentVariable("Path", "User")

# Detect all available drives
$DriveLetters = (Get-PSDrive -PSProvider FileSystem).Name

# Add user's private bin to User Path if exist
foreach ($DriveLetter in $DriveLetters) {
  $BinDir = "${DriveLetter}:\bin"
  if (Test-Path $BinDir -PathType Container) {
    [Environment]::SetEnvironmentVariable("Path", "$BinDir;$UserPath", "User")
    Write-Output "Added ""$BinDir"" to Path environment of the user."
  }
}

# Print result
$UserPath = [Environment]::GetEnvironmentVariable("Path", "User")
Write-Output "Current user Path is ""$UserPath"""

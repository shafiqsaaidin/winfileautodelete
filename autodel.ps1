$filePath = (
    "PABX - Disk Backup", 
    "Ving Card - Disk Backup",
    "UBSSERVER HOTEL - Disk Backup",
    "USERVER - Disk Backup",
    "Actatek Server New - Disk Backup",
    "HIG-HR-PYRL2\HIG-HR-PYRL2",
    "HR PAYROLL - Disk Backup\HR PAYROLL - Disk Backup"
    )

Foreach ($i in $filePath) {
    Write-Output $i
    ForFiles /p "Y:\$i" /d -5 /c "cmd /c del @file"
    Write-Output "."
    Write-Output "."
}

$filePath = (
    "PABX - Disk Backup", 
    "Ving Card - Disk Backup",
    "UBSSERVER HOTEL - Disk Backup",
    "USERVER - Disk Backup",
    "Actatek Server New - Disk Backup",
    "HIG-HR-PYRL2\HIG-HR-PYRL2",
    "HR PAYROLL - Disk Backup\HR PAYROLL - Disk Backup"
    )

# Check file directory
Foreach ($i in $filePath) {
    Get-ChildItem "Y:\$i"
    Write-Output "."
    Write-Output "."
}    

# Get user input
$usrInput = Read-Host -Prompt "Press Y to continue" 

if ($usrInput -eq "Y" -OR $usrInput -eq "y") {
    Foreach ($i in $filePath) {
        Write-Output $i
        ForFiles /p "Y:\$i" /d -5 /c "cmd /c del @file"
        Write-Output "."
        Write-Output "."
    }
} else {
    exit
}


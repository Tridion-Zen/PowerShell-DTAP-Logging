# PowerShell.DTAP.Logging.ps1
#
$ErrorActionPreference = "SilentlyContinue"
cls
#
$servers = @("SERVEUR_UNE", "SERVEUR_DEUX")
#
$startTime = get-date
write-host "Started $($startTime)"
#
foreach ($server in $servers) {   
    write-host "Server $server"
    #
    write-host "Searching in \XXX for logback.xml"
    $files = get-childitem -path "\\$server\c$\XXX\" -recurse -force -include "logback.xml"
    write-host "Files $files" -foregroundcolor gray
    foreach ($file in $files) {
        write-host "File $file" -foregroundcolor yellow
        [xml] $log = get-content $file
        $log.configuration.property
        $log.configuration.root.level
    } 
    #
    write-host "Searching in \YYY for logback.xml"
    $files = get-childitem -path "\\$server\c$\YYY\" -recurse -force -include "logback.xml"
    write-host "Files $files" -foregroundcolor gray
    foreach ($file in $files) {
        write-host "File $file" -foregroundcolor yellow
        [xml] $log = get-content $file
        $log.configuration.property
        $log.configuration.root.level
    }
}
write-host "Finished $(get-date)"
# PowerShell.DTAP.Logging.ps1
#
$ErrorActionPreference = "SilentlyContinue"
cls
#
$servers = @("SERVEUR_UNE", "SERVEUR_DEUX")
#
$startTime = get-date
write-host "Started $($startTime)"
#
foreach ($server in $servers) {   
    write-host "Server: $server"
    #
    write-host "Search in: \apps for: logback.xml"
    $files = get-childitem -path "\\$server\f$\apps\" -recurse -force -include "logback.xml"
    write-host "Files: $files" -foregroundcolor gray
    foreach ($file in $files) {
        write-host "File: $file" -foregroundcolor yellow
        [xml] $log = get-content $file
        write-host $log.configuration.property[2].name  " " -nonewline 
        write-host $log.configuration.property[2].value 
        write-host $log.configuration.property[3].name  " " -nonewline 
        write-host $log.configuration.property[3].value 
        #
        write-host $log.configuration.root.name   " " -nonewline
        write-host $log.configuration.root.level
    } 
    #
    write-host "Search in: \data\www\tridion\2011 for: logback.xml"
    $files = get-childitem -path "\\$server\f$\data\www\tridion\2011\" -recurse -force -include "logback.xml"
    write-host "Files: $files" -foregroundcolor gray
    foreach ($file in $files) {
        write-host "File: $file" -foregroundcolor yellow
        [xml] $log = get-content $file
        write-host $log.configuration.property[2].name  " " -nonewline 
        write-host $log.configuration.property[2].value 
        write-host $log.configuration.property[3].name  " " -nonewline 
        write-host $log.configuration.property[3].value 
        #
        write-host $log.configuration.root.name   " " -nonewline
        write-host $log.configuration.root.level
    }
}
write-host "Finished $(get-date)"

(Get-CimInstance Win32_PerfRawData_WASW3WPCounterProvider_WASW3WP -Property Name -ErrorAction SilentlyContinue).Name |
Select-String -Pattern '(\d+)_(.*)' -AllMatches |
ForEach-Object Matches |
ForEach-Object {
    $processID = [int]($_.Groups[1].value)
    [PSCustomObject]@{ 
        PID                 = $processID
        ApplicationPoolName = $_.Groups[2].value 
        ProcessInstanceName = [string](Get-CimInstance Win32_PerfRawData_PerfProc_Process -Filter "IDProcess=$processID" -Property Name -ErrorAction SilentlyContinue).Name
        DotNetInstanceName  = [string](Get-CimInstance Win32_PerfRawData_NETFramework_NETCLRMemory -Filter "ProcessID=$processID" -Property Name -ErrorAction SilentlyContinue).Name
    } 
}

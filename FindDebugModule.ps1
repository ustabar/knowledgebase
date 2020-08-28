Get-ChildItem -Filter *.dll -Recurse |
    ForEach-Object {
        $AssemblyName= $_.FullName;      
        try {
         $Assembly = [Reflection.Assembly]::LoadFile($AssemblyName);
         $type = [System.Type]::GetType("System.Diagnostics.DebuggableAttribute");
         $debugAttribute = $Assembly.GetCustomAttributes($type,$false);
         If ($debugAttribute.count -Eq 0) {} #{$_.Name  + ":Release"}
          Elseif ($debugAttribute[0].IsJITOptimizerDisabled -eq $false) {} #{$_.Name + ":Release"}
          Else {$_.Name + ":Debug"}
        } catch{ "***ERROR*** Error when loading assembly: " + $AssemblyName + $_.Exception.Message}                   
    } 


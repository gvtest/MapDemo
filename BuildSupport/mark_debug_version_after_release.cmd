REM ********************************************************
REM * Change the version info back to development versions *
REM ********************************************************

ECHO "\[assembly: AssemblyVersion\(\"(\d+\.\d+\.\d+)\.0\"\)\]"
ECHO "[assembly: AssemblyVersion(\"$1.%BUILD_NUMBER%\")]"

REM Note that fnr.exe is available at: http://findandreplace.codeplex.com/

REM Replaces "[assembly: AssemblyVersion("1.0.1.$BUILD_NUMBER")]" with "[assembly: AssemblyVersion("1.0.1.0")]"
"C:\Program Files (x86)\Jenkins\fnr.exe" --cl --dir "%WORKSPACE%\GMap.NET.Core\Properties" --fileMask "GlobalAssemblyInfo.cs" --caseSensitive --useRegEx --find "\[assembly: AssemblyVersion\(\"(\d+\.\d+\.\d+)\.%BUILD_NUMBER%\"\)\]" --replace "[assembly: AssemblyVersion(\"$1.0\")]"

REM Replaces "[assembly: AssemblyInformationalVersion("1.2.3 Development Snapshot")]" with "[assembly: AssemblyInformationalVersion("1.2.3 Released Version")]"
"C:\Program Files (x86)\Jenkins\fnr.exe" --cl --dir "%WORKSPACE%\GMap.NET.Core\Properties" --fileMask "GlobalAssemblyInfo.cs" --caseSensitive --useRegEx --find "\[assembly: AssemblyInformationalVersion\(*\"(\d+(\.\d+)+)\s*([^\\"]*)\"\)\]" --replace "[assembly: AssemblyInformationalVersion(\"$1 Released Version\")]" 
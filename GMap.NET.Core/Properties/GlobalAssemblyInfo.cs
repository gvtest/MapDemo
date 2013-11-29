using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
[assembly: AssemblyCulture("")]
[assembly: AssemblyCompany("Universe")]
[assembly: AssemblyCopyright("Copyright © Universe 2013")]
[assembly: AssemblyTrademark("email@radioman.lt")]

#if DEBUG
[assembly: AssemblyConfiguration("Debug")]
#else
[assembly: AssemblyConfiguration("Release")]
#endif

// Format used: Major.Minor.revision.build
// 
// When working on development machine, this should be in the format:
//   [assembly: AssemblyVersion("1.2.3.0")]
//   [assembly: AssemblyInformationalVersion("1.2.3 Development Snapshot")]
// 
// The last number, build, should normally be set to 0 for development versions.
//
// The release build process will set the build number to something other than 0 
// (the Jenkins build number). 
//
// It will also replace the text after the version number in AssemblyInformationalVersion
// with "Released Version" ( "1.2.3 Development Snapshot" becomes "1.2.3 Released Version" )
//
// Note that AssemblyVersion is visible in Properties of the .EXE file as "File Version" and
// the AssemblyInformationalVersion is visible as "Product Version". 
[assembly: AssemblyVersion("1.2.3.0")]
[assembly: AssemblyInformationalVersion("1.2.3 Development Snapshot")]
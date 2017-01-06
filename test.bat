echo off
set nuget=".\nuget\nuget.exe"
set msbuild="C:\Program Files (x86)\MSBuild\14.0\Bin\msbuild.exe"

%nuget% restore .\fullframework\ConsoleDotNet45\packages.config -PackagesDirectory .\fullframework\packages\
%nuget% restore .\fullframework\ConsoleDotNet46\packages.config -PackagesDirectory .\fullframework\packages\
%msbuild% .\fullframework\ConsoleDotNet45\ConsoleDotNet45.csproj /t:Rebuild /p:Configuration=Release /v:quiet
%msbuild% .\fullframework\ConsoleDotNet46\ConsoleDotNet46.csproj /t:Rebuild /p:Configuration=Release /v:quiet

fullframework\ConsoleDotNet45\bin\Release\ConsoleDotNet45.exe
fullframework\ConsoleDotNet46\bin\Release\ConsoleDotNet46.exe

REM dotnet restore dotnetcore\ConsoleDotNetCore1.0 
REM dotnet restore dotnetcore\ConsoleDotNetCore1.1

REM dotnet run -p dotnetcore\ConsoleDotNetCore1.0
REM dotnet run -p dotnetcore\ConsoleDotNetCore1.1
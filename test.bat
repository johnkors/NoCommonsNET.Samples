@echo off
set nuget=".\nuget\nuget.exe"
set msbuild="C:\Program Files (x86)\MSBuild\14.0\Bin\msbuild.exe"

%nuget% restore .\fullframework\ConsoleDotNet45\packages.config -PackagesDirectory .\fullframework\packages\ -Verbosity quiet
%nuget% restore .\fullframework\ConsoleDotNet46\packages.config -PackagesDirectory .\fullframework\packages\ -Verbosity quiet
%msbuild% .\fullframework\ConsoleDotNet45\ConsoleDotNet45.csproj /t:Rebuild /p:Configuration=Release /v:quiet
%msbuild% .\fullframework\ConsoleDotNet46\ConsoleDotNet46.csproj /t:Rebuild /p:Configuration=Release /v:quiet



dotnet restore dotnetcore\ConsoleDotNetCore1.0 --verbosity Error
dotnet restore dotnetcore\ConsoleDotNetCore1.1 --verbosity Error
dotnet build dotnetcore\ConsoleDotNetCore1.0 
dotnet build dotnetcore\ConsoleDotNetCore1.1 



fullframework\ConsoleDotNet45\bin\Release\ConsoleDotNet45.exe
fullframework\ConsoleDotNet46\bin\Release\ConsoleDotNet46.exe
dotnet run -p dotnetcore\ConsoleDotNetCore1.0 
dotnet run -p dotnetcore\ConsoleDotNetCore1.1 
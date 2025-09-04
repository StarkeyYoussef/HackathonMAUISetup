#!/bin/bash
# Build and run for MacCatalyst only
echo "Updating target frameworks to MacCatalyst only..."
projPath="MauiVerifyApp/MauiVerifyApp.csproj"
sed -i.bak 's|<TargetFrameworks>.*</TargetFrameworks>|<TargetFrameworks>net9.0-maccatalyst</TargetFrameworks>|' "$projPath"
echo "Building..."
dotnet build HackathonMAUISetup.sln
echo "Running app for MacCatalyst..."
dotnet run --project MauiVerifyApp/MauiVerifyApp.csproj --framework net9.0-maccatalyst
# To enable other platforms, edit <TargetFrameworks> in MauiVerifyApp.csproj and add e.g. net9.0-android;net9.0-ios

# MAUI Environment Verification App

This repository contains a minimal .NET MAUI app to help you verify your development environment for MAUI before the hackathon.

## Prerequisites

- Visual Studio 2022 (v17.3 or later) with the .NET MAUI workload installed
- .NET 8 SDK (or latest supported by MAUI)
- Windows 10/11 or macOS (for cross-platform)

## How to Verify Your Setup

1. **Clone this repository**
   ```sh
   git clone <repo-url>
   cd MauiVerifyApp
   ```

````

2. **Restore dependencies**
   ```sh
dotnet restore
````

3. **Build the app**
   ```sh
   dotnet build
   ```

````

4. **Run the app (Windows)**
   ```sh
dotnet build -t:Run -f net9.0-windows10.0.19041.0
````

> For other platforms, see [MAUI docs](https://learn.microsoft.com/dotnet/maui/).

## Troubleshooting

- If you see errors about missing workloads, run:
  ```sh
  dotnet workload install maui
  ```

```
- Make sure you have the latest .NET SDK and Visual Studio updates.
- See [MAUI setup guide](https://learn.microsoft.com/dotnet/maui/get-started/installation) for more help.

## Success Criteria
- The app builds and launches a window with "Welcome to .NET MAUI!"
- No errors about missing workloads or SDKs

---
For hackathon support, contact the organizers or check the official MAUI documentation.
```

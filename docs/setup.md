# Setup Guide

## Prerequisites

| Tool | Version | Notes |
|------|---------|-------|
| macOS | Sonoma 14+ | Required for Xcode 15 |
| Xcode | 15.0+ | Download from Mac App Store |
| visionOS SDK | 1.0+ | Bundled with Xcode 15 |

## Step 1: Clone the Repository

```bash
git clone https://github.com/caizongxun/apple-vision-pro-app.git
cd apple-vision-pro-app
```

## Step 2: Create Xcode Project

1. Open Xcode → **Create New Project**
2. Select platform: **visionOS** → **App**
3. Settings:
   - Product Name: `VisionProApp`
   - Bundle Identifier: `com.yourname.visionproapp`
   - Language: **Swift**
   - Interface: **SwiftUI**
4. Save to the cloned repo folder

## Step 3: Add Source Files

Drag the `App/` folder files into Xcode Project Navigator:
- `AppEntry.swift`
- `ContentView.swift`
- `ImmersiveView.swift`
- `HandGestureHandler.swift`

In the **Copy items if needed** dialog → uncheck (files are already in place).

## Step 4: Configure Info.plist

In Xcode project settings:
1. Select the target → **Info** tab
2. Confirm `NSHandsTrackingUsageDescription` is present
3. Confirm `NSWorldSensingUsageDescription` is present

## Step 5: Run

- **Simulator**: Select `Apple Vision Pro` from the device picker → `Cmd+R`
- **Device**: Enable Developer Mode on device → connect → `Cmd+R`

## Pulling Latest Changes

```bash
# In your repo directory
git pull origin main
```

Or if you're already on main branch:

```bash
git pull
```

# CineScope

The app ensures smooth navigation, a modern user experience, and adherence to robust coding principles like DRY and OOP. State management is efficiently handled using the BLoC pattern to maintain scalability and performance.

---

## Overview

CineScope leverages the TMDB API to fetch high-quality wallpapers and incorporates local assets for ringtones. The app features a dynamic UI where users can explore wallpapers, view them in detail, set them as wallpapers, and enjoy a curated list of ringtones. Authentication screens with validation enhance personalization and data integrity.

---

## Key Features

### **Wallpapers**
- Fetches data from the [TMDB API](https://www.themoviedb.org/), initially loading 80 wallpapers.
- Provides a "Load More" option to dynamically fetch additional wallpapers in batches of 80.
- Allows users to click on any wallpaper to view it in a fullscreen detailed screen, complete with a "Set Wallpaper" button.

### **Ringtones**
- Displays a list of ringtones stored in the app's assets.
- Users can play, pause, and switch between ringtones seamlessly.
- Highlights the currently playing ringtone, ensuring clarity and user control.

### **Authentication**
- Includes Login and Signup screens with comprehensive form validation.
- Signup form collects detailed user information:
  - Name
  - Email
  - Phone
  - Password
  - Gender
  - Country, State, and City
- Ensures secure user data entry and enhances the app's personalization capabilities.

### **Modern UI**
- A sleek, dark-themed interface optimized for usability and aesthetics.
- Intuitive navigation across screens with consistent design and responsive elements.

---

## Tech Stack

- **Flutter**: Framework for cross-platform app development.
- **Dart**: Programming language for app logic and structure.
- **TMDB API**: Used to fetch dynamic wallpaper data.
- **audioplayers**: Enables seamless audio playback for ringtones.

---

## ScreenShots
# Wallpapers page
![image](https://github.com/user-attachments/assets/097036b5-cd8f-4b4f-9816-7fd543bce592)

# Ringtones page
![image](https://github.com/user-attachments/assets/799af227-e575-4a56-a2b1-59735266d9f1)



## Setup Instructions

### Prerequisites
- Install [Flutter](https://docs.flutter.dev/get-started/install) (SDK version >= 3.5.4).
- Install [Android Studio](https://developer.android.com/studio) or Xcode for iOS development.
- Use a physical device or an emulator for testing.

### Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/CodeWithLakhan/CineScope.git
   cd cinescope
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Setup API Key**:
   - Create an account on [TMDB](https://www.themoviedb.org/).
   - Generate an API key from the developer console.
   - Add your API key in the code:
     ```dart
     final String apiKey = "YOUR_TMDB_API_KEY";
     ```

4. **Run the App**:
   - For Android:
     ```bash
     flutter run
     ```
   - For iOS:
     ```bash
     flutter build ios
     flutter run
     ```

5. **Build APK**:
   To generate a release APK:
   ```bash
   flutter build apk --release
   ```

---

## App Structure

The app is organized into modular components, ensuring scalability and maintainability:

```plaintext
cinescope/
├── lib/
│   ├── blocs/            # BLoC files for state management
│   ├── pages/            # Screens (HomePage, LoginPage, RingtonePage, etc.)
│   ├── main.dart         # Entry point of the app
├── assets/
│   ├── ringtones/        # Ringtone files
├── android/              # Android-specific files
├── ios/                  # iOS-specific files
├── pubspec.yaml          # App dependencies and assets registration
```

---

## API Integration

The TMDB API is seamlessly integrated to fetch high-quality wallpapers dynamically:
- **Initial Load**: Fetches 80 wallpapers upon app startup.
- **Load More**: Allows fetching additional wallpapers in increments of 80 via the "Load More" button.

---

## Highlights

### **Wallpapers**
- A visually appealing grid view displays fetched wallpapers.
- Detailed fullscreen view includes a "Set Wallpaper" option for easy customization.
- Dynamic loading ensures efficient data fetching and minimal initial load time.

### **Ringtones**
- Users can explore, play, and pause ringtones stored locally.
- Highlights the currently playing ringtone for better user control.

### **Authentication**
- Comprehensive forms for Login and Signup ensure secure user data handling.
- Validations cover all fields, enhancing data accuracy and app reliability.

### **Optimized Design**
- Adheres to DRY (Don't Repeat Yourself) principles with reusable components and widgets.
- Implements OOP concepts for better code organization and maintenance.
- Uses BLoC state management to handle app logic efficiently, ensuring scalability.

---



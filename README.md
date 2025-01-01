# CineScope

CineScope is a Flutter-based mobile application designed for exploring stunning wallpapers and melodious ringtones. The app offers seamless navigation and a modern UI, providing an engaging user experience.

---

## Features

### 1. **Wallpapers**
- Fetches wallpapers using the [TMDB API](https://www.themoviedb.org/).
- Initially loads **80 wallpapers** and allows fetching more by clicking "Load More."
- Clicking on an image expands it to fullscreen and provides an option to set it as a wallpaper.

### 2. **Ringtones**
- Contains a dedicated **Ringtone Page** with a list of ringtones stored in the app's assets.
- Allows users to play, pause, and switch between ringtones easily.

### 3. **Authentication**
- Includes **Login** and **Signup** screens with proper form validation.
- Signup collects information like:
  - Name
  - Email
  - Phone
  - Password
  - Gender
  - Country, State, and City

### 4. **Modern UI**
- Dark-themed, visually appealing user interface.
- Smooth navigation between pages and intuitive user interaction.

---

## Tech Stack

- **Flutter**: Framework used for building the app.
- **Dart**: Programming language for the app logic.
- **TMDB API**: Used to fetch wallpaper data.
- **audioplayers**: For playing and pausing ringtones.

---

## Setup Instructions

Follow these steps to set up and run the project on your local machine:

### Prerequisites
- Install [Flutter](https://docs.flutter.dev/get-started/install) (SDK version >= 3.5.4).
- Install [Android Studio](https://developer.android.com/studio) or Xcode for iOS (if building for iOS).
- A physical Android/iOS device or an emulator.

### Steps
1. **Clone the Repository**:
   ```bash
   git clone [https://github.com/your-repository/cinescope.git](https://github.com/CodeWithLakhan/CineScope)
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

5. **Build APK** (Optional):
   To generate a release APK:
   ```bash
   flutter build apk --release
   ```

---

## Screenshots

### **Wallpapers Page**
![image](https://github.com/user-attachments/assets/501fb227-e013-4b33-9f12-8e2d01a068d8)


### **Ringtones Page**
![image](https://github.com/user-attachments/assets/7abde4b7-ace9-4a17-a7fb-eda83b9982ee)

---

## Folder Structure

```plaintext
cinescope/
├── lib/
│   ├── blocs/            # BLoC files for state management
│   ├── pages/            # Screens (HomePage, LoginPage, RingtonePage, etc.)
│   ├── main.dart         # Entry point of the app
├── assets/
├── android/              # Android-specific files
├── ios/                  # iOS-specific files
├── pubspec.yaml          # App dependencies and assets registration
```

---

## API Integration

### **TMDB API**
- The app uses the TMDB API to fetch wallpaper data.
- Initially, **80 wallpapers** are fetched.
- Clicking "Load More" fetches an additional **80 wallpapers.**

---

## Key Features Breakdown

### **Wallpapers**
1. Fetches 80 wallpapers on load.
2. "Load More" fetches 80 additional wallpapers.
3. Clicking an image opens a fullscreen view with a "Set Wallpaper" button.

### **Ringtones**
1. Displays a list of ringtones from local assets.
2. Allows play/pause for ringtones.
3. Highlights the currently playing ringtone.


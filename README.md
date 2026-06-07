# QR Utility App

A simple and modern Flutter web app to generate, scan, save, and manage QR codes.

<p align="center">
  <a href="https://qr-utility-app-g1y3.vercel.app/" target="_blank">
    <img src="https://img.shields.io/badge/Live%20Demo-Open%20App-brightgreen?style=for-the-badge" alt="Live Demo" />
  </a>
</p>

---
# About the App

QR Utility App is a Flutter-based web application designed to make QR code generation and scanning simple and convenient. Users can instantly generate QR codes from text or URLs, scan QR codes using their device camera, and even extract QR information from uploaded images.

The application also includes a History feature that automatically stores all generated and scanned QR codes, allowing users to revisit, manage, and delete previous entries whenever needed.

With a clean user interface and responsive design, QR Utility App provides a seamless experience across different devices while offering essential QR code utilities in one place.


## Screenshots

### Home / Generate QR
<img src="screenshots/generate.png" width="700" alt="Generate QR Screenshot" />

### Scan QR
<img src="screenshots/scan.png" width="700" alt="Scan QR Screenshot" />

### History
<img src="screenshots/history.png" width="700" alt="History Screenshot" />

---

## Features

- Generate QR codes from text or URLs
- Scan QR codes using camera
- Scan QR codes from uploaded images
- Copy scanned or generated text
- Open scanned URLs directly
- Share generated QR code
- Save generated and scanned QR codes in history
- Delete history items
- Clear all history
- Clean responsive UI

---

## Tech Stack

- Flutter
- Dart
- qr_flutter
- mobile_scanner
- shared_preferences
- image_picker
- url_launcher
- share_plus
- zxing2

---
# Challenges Faced

During the development of QR Utility App, several challenges were encountered:

* Integrating QR code scanning functionality using the device camera.
* Implementing image-based QR code scanning and handling different image formats.
* Managing local storage for QR history using Shared Preferences.
* Ensuring a smooth and responsive user interface across different screen sizes.
* Handling URL validation and launching external links safely.
* Configuring Flutter Web support and resolving deployment-related issues.

These challenges provided valuable experience in Flutter development, state management, local storage, package integration, and deployment workflows.

---

# Future Enhancements

The following features can be added in future versions of the application:

* Export QR history as CSV or PDF.
* Search and filter history records.
* Mark frequently used QR codes as favorites.
* Download generated QR codes as image files.
* Cloud synchronization for accessing history across devices.
* Dark/Light theme customization options.
* QR code customization with colors and logos.
* Analytics showing most frequently scanned or generated QR codes.
* Multi-language support.
* User authentication and profile management.


## Run Locally

```bash
git clone https://github.com/mishita27twr/qr-utility-app.git
cd qr-utility-app/qr_utility_app
flutter pub get
flutter run
```

---

## Build for Web

```bash
flutter build web --release
```

---

## Author

**Mishita Tiwari**  
B.Tech CSE (AI/ML), VIT Bhopal University
GitHub: https://github.com/mishita27twr

If you found this project helpful, consider giving it a ⭐ on GitHub.
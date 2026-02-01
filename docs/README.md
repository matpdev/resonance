# 🎯 Resonance - Full Documentation

> A **high-performance**, **open-source**, **cross-platform** HTTP client and request builder for developers and teams.

[![Flutter](https://img.shields.io/badge/Flutter-3.10+-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)
[![Open Source](https://img.shields.io/badge/Open%20Source-%E2%9C%93-brightgreen)]()

## 🚀 Features

### Core Functionality
- 📡 **HTTP Methods Support** - GET, POST, PUT, PATCH, DELETE
- 🔧 **Request Builder** - Intuitive interface for building complex requests
- 📋 **Header Management** - Easy-to-use table for managing request headers
- 📦 **Request Body Editor** - Built-in JSON editor with syntax highlighting
- 📊 **Response Display** - Real-time response visualization with selectable text
- 📝 **Request Info** - Complete request metadata and history

### Performance Optimizations
- ⚡ **Lightweight Architecture** - Minimal dependencies for fast startup
- 💾 **Efficient State Management** - Provider pattern for optimal performance
- 🎨 **Smooth UI** - 60fps animations and responsive interface
- 📱 **Low Memory Footprint** - Optimized for all device sizes

### Cross-Platform Support
- 🖥️ **Windows** - Native performance
- 🐧 **Linux** - Full support
- 🍎 **macOS** - Native integration
- 📱 **iOS** - Complete feature parity
- 🤖 **Android** - Full Android support
- 🌐 **Web** - Progressive web app ready

## 📦 Installation

### Prerequisites
- [Flutter 3.10+](https://flutter.dev/docs/get-started/install)
- [Dart 3.0+](https://dart.dev)

### Clone & Setup
```bash
# Clone the repository
git clone https://github.com/matpdev/resonance.git
cd resonance

# Get dependencies
flutter pub get

# Run the app
flutter run
```

## 🎨 Project Structure

```
lib/
├── main.dart                          # App entry point
├── app/                              
│   └── app.dart                       # App configuration
├── theme/
│   └── app_theme.dart                 # Dark theme with Fira Code Nerd Font
├── contexts/
│   ├── request_context.dart           # Request state management
│   └── home_context.dart              # Home state management
├── pages/
│   └── home/
│       ├── home.dart                  # Home page
│       └── views/
│           └── dashboard/
│               ├── view.dart          # Main dashboard view
│               └── widgets/
│                   ├── request_url_bar.dart    # URL input & send button
│                   ├── headers_tab.dart        # Headers management
│                   ├── body_tab.dart           # Request body editor
│                   ├── response_tab.dart       # Response display
│                   └── info_tab.dart           # Request info summary
├── models/
├── utils/
│   └── enums.dart                     # Enums (StatusRequest, etc.)
└── controllers/
    └── request_controller.dart        # HTTP request handling
```

## 🛠️ Technology Stack

| Technology | Purpose |
|-----------|---------|
| **Flutter** | Cross-platform UI framework |
| **Dart** | Programming language |
| **Provider** | State management |
| **Dio** | HTTP client |
| **Material 3** | Design system |
| **Fira Code Nerd Font** | Beautiful monospace font with nerd glyphs |

## 🎯 Getting Started

### 1. Build a Request
- Select HTTP method (GET, POST, PUT, PATCH, DELETE)
- Enter your API endpoint URL
- Add headers using the intuitive table interface

### 2. Configure Headers
- Click the "+" button in the add row
- Enter header key and value
- Headers are automatically included in requests

### 3. Add Request Body (Optional)
- Switch to the Body tab
- Enter JSON payload
- Use the Clear button to reset

### 4. Send Request
- Click the Send button
- View response in the Response tab
- Check request metadata in the Info tab

## 🎨 Design System

Resonance uses a modern dark theme with:
- **Primary Color**: Vibrant Green (#1DB854)
- **Secondary Colors**: Soft Blue (#7C8FEE) & Warm Orange (#FFA726)
- **Typography**: Fira Code Nerd Font with 18 font variants (Propo, Mono, Standard weights)
- **Material 3**: Latest Flutter design guidelines

## 🔄 State Management

Resonance uses **Provider** pattern for efficient state management:

```dart
// Access request context
final requestContext = Provider.of<RequestContext>(context);

// Update headers
requestContext.addHeader("Authorization", "Bearer token");

// Send request
requestContext.startRequest();

// Cancel request
requestContext.cancelRequest();
```

## 🚀 Performance Considerations

### Optimization Techniques
- **Lazy Loading** - Components load on demand
- **Efficient Rebuilds** - Provider minimizes unnecessary rebuilds
- **Native Performance** - Flutter compiles to native code
- **Smart Caching** - Minimal state recreation

### Benchmarks
- App startup: < 2 seconds
- Request sending: < 100ms
- UI responsiveness: Consistent 60fps

## 🤝 Contributing

We welcome contributions! Here's how to get started:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### Contribution Guidelines
- Follow Dart style guidelines
- Add tests for new features
- Update documentation for significant changes
- Ensure code builds without errors

For detailed contribution guidelines and commit rules, see:
- [CONTRIBUTING.md](../CONTRIBUTING.md) - Contribution guidelines and policies
- [GIT_COMMITS.md](./GIT_COMMITS.md) - Detailed commit conventions and examples
- [GIT_HOOKS_SETUP.md](./GIT_HOOKS_SETUP.md) - Git hooks setup and troubleshooting

## 📋 Roadmap

- [ ] Request history and favorites
- [ ] Environment variables support
- [ ] Request/Response formatting options
- [ ] Authentication presets
- [ ] WebSocket support
- [ ] GraphQL support
- [ ] Team collaboration features

## 🐛 Known Issues & Limitations

- Filesize upload limited to available device memory
- WebSocket support coming soon
- Response formatting for non-JSON responses

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](../LICENSE) file for details.

## 🙏 Acknowledgments

- [Flutter Team](https://flutter.dev) for the amazing framework
- [Dart Team](https://dart.dev) for the language
- [Material Design](https://material.io) for design guidelines
- All open-source contributors

## 📞 Support

- 📖 [Documentation](../README.md)
- 🐛 [Report Issues](https://github.com/matpdev/resonance/issues)
- 💬 [Discussions](https://github.com/matpdev/resonance/discussions)

---

**Made with ❤️ by Matheus Nunes**

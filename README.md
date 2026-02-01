# 🎯 Resonance - The HTTP Client That Doesn't Ghost You ✨

> Ever felt ignored by your HTTP client? Not anymore! **Resonance** is a **high-performance**, **open-source**, **cross-platform** HTTP request builder that actually listens and responds (literally and metaphorically).

[![Flutter](https://img.shields.io/badge/Flutter-3.10+-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)
[![Open Source](https://img.shields.io/badge/Open%20Source-%E2%9C%93-brightgreen)]()
[![Made with ❤️](https://img.shields.io/badge/Made%20with-%E2%9D%A4%EF%B8%8F-red)]()

## 🚀 Why Resonance?

Tired of debugging HTTP requests in the dark like some kind of networking archaeologist? 🏺 Resonance gives you a beautiful, intuitive interface to craft, send, and inspect HTTP requests across **6 platforms** (yes, even that Linux server in your closet).

Think of it as Postman's cooler, lighter cousin who actually shows up on time. ⏰

## ⚡ Quick Start (Get Resonance in 30 Seconds)

```bash
# Step 1: Clone the repo (you know how this works)
git clone https://github.com/matpdev/resonance.git
cd resonance

# Step 2: Install dependencies (coffee break time ☕)
flutter pub get

# Step 3: Run it! 🎉
flutter run

# That's it! You're now part of the Resonance revolution!
```

## 📚 Where to Find What (A.K.A "Why Did You Move All the Docs?")

### Why the Docs Folder? 📦
We reorganized documentation into a dedicated `docs/` folder because:
- **Professional Standards** - This is how major projects (React, Kubernetes, Flutter) do it
- **Clean Root Directory** - No more doc file clutter in the main folder
- **Better Organization** - Related docs stay together, easy to find
- **Scalability** - As we grow, docs stay organized and maintainable
- **Discoverability** - All guides in one logical place = less confusion

### Documentation Map 🗺️

```
📂 resonance/
├── 📄 README.md                          👈 YOU ARE HERE (overview & quick start)
├── 📄 CONTRIBUTING.md                    👈 Want to help? Start here!
│
├── 📂 docs/                              👈 ALL THE GOOD STUFF LIVES HERE
│   ├── 📄 README.md                      → Full project documentation
│   ├── 📝 GIT_COMMITS.md                 → How to write commits like a pro
│   └── 🔗 GIT_HOOKS_SETUP.md            → Automate your code quality
│
├── 📂 lib/                               → Source code (where the magic happens ✨)
├── 📂 .github/                           → GitHub Actions CI/CD workflows
├── 📂 android/                           → Android-specific build stuff
├── 📂 ios/                               → iOS-specific build stuff
└── ... and more platform folders
```

### Quick Navigation Links 🧭

| Need | Go To | What You'll Find |
|------|-------|------------------|
| **Setup & Features** | [docs/README.md](./docs/README.md) | Installation, architecture, design system |
| **How to Commit Properly** | [docs/GIT_COMMITS.md](./docs/GIT_COMMITS.md) | Conventional commits, types, examples |
| **Git Hooks Trouble?** | [docs/GIT_HOOKS_SETUP.md](./docs/GIT_HOOKS_SETUP.md) | Setup, troubleshooting, workflow tips |
| **Contributing Code** | [CONTRIBUTING.md](./CONTRIBUTING.md) | Code style, PR process, testing requirements |
| **License Details** | [LICENSE](./LICENSE) | MIT License (basically: do what you want, credit us) |

## 📚 Complete Documentation Guide

- **[📖 Full Documentation](./docs/README.md)** - Features, tech stack, and detailed getting started
- **[📝 Git Commit Rules](./docs/GIT_COMMITS.md)** - Conventional commits format + why commitlint yells at you
- **[🔗 Git Hooks Setup](./docs/GIT_HOOKS_SETUP.md)** - Automated pre-commit quality checks (the good cop)
- **[🤝 Contributing Guide](./CONTRIBUTING.md)** - How to contribute without breaking things

## 🎨 Key Features (The Reasons You'll Love This)

- 📡 **HTTP Methods** - GET, POST, PUT, PATCH, DELETE (basically all the verbs for the web)
- 🔧 **Request Builder** - So intuitive, even your non-technical friend can use it
- 📋 **Header Management** - Add headers faster than you can say "Content-Type: application/json"
- 📦 **JSON Body Editor** - See your JSON errors before your API does (pro move)
- 📊 **Response Display** - Responses so readable, they're basically poetry
- ⚡ **High Performance** - Lightweight enough to run on your toaster (we haven't tested this)
- 🌐 **Cross-Platform** - Windows, Linux, macOS, iOS, Android, Web (pick your poison 🔫)
- 🔥 **Dark Theme** - Because your eyes are precious and deserve protection
- 🎯 **Real-Time Validation** - Errors caught before they embarrass you in production

## 🛠️ Technology Stack (The Boring But Important Stuff)

| Technology | Purpose | Why We Picked It |
|-----------|---------|-----------------|
| **Flutter** | UI Framework | Works everywhere™ |
| **Dart** | Language | Fast, type-safe, and sounds like a game 🎮 |
| **Provider** | State Management | Simple, powerful, no magic tricks |
| **Dio** | HTTP Client | Better than doing raw sockets like it's 1995 |
| **Material 3** | Design System | Google's design language (they probably know what they're doing) |
| **Fira Code Nerd Font** | Typography | Beautiful monospace font with nerd glyphs |

## 🏗️ Project Structure (How We Organized the Chaos)

```
lib/
├── main.dart                              # Entry point (the main character)
├── app/
│   └── app.dart                          # App configuration (the supporting cast)
├── theme/
│   └── app_theme.dart                    # Dark theme configuration (350+ lines of beauty)
├── contexts/
│   └── request_context.dart              # State management (where the magic lives ✨)
└── pages/
    └── home/
        └── views/
            └── dashboard/
                ├── view.dart             # Main orchestrator (the conductor)
                └── widgets/              # Modular components
                    ├── request_url_bar.dart      # Build your request here
                    ├── headers_tab.dart          # Manage headers
                    ├── body_tab.dart             # Edit JSON body
                    ├── response_tab.dart         # See responses
                    └── info_tab.dart             # View metadata
```

## 📦 Installation Guide (The Detailed Version)

### Prerequisites (You'll Need These First)

```bash
# Check Flutter version (3.10+)
flutter --version

# Check Dart version (3.0+)
dart --version

# Make sure Git is installed
git --version
```

### Step-by-Step Installation

#### 1️⃣ Clone the Repository
```bash
# Clone to your computer
git clone https://github.com/matpdev/resonance.git

# Go into the directory
cd resonance
```

#### 2️⃣ Install Dependencies
```bash
# This might take a minute or two (perfect time for coffee ☕)
flutter pub get

# Optional: Clean build (in case you're having weird issues)
flutter clean && flutter pub get
```

#### 3️⃣ Run the App

**On Linux:**
```bash
flutter run -d linux
```

**On Windows:**
```bash
flutter run -d windows
```

**On macOS:**
```bash
flutter run -d macos
```

**On Android (with emulator running):**
```bash
flutter run -d emulator
```

**On iOS (with simulator running):**
```bash
flutter run -d ios
```

**On Web:**
```bash
flutter run -d web
```

#### 4️⃣ Build for Production

```bash
# Linux
flutter build linux --release

# Windows
flutter build windows --release

# macOS
flutter build macos --release

# Android
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

## 📍 Where to Find Things (The Navigation Guide)

### I Want to...

**...understand the architecture?** 
→ Read [docs/README.md](./docs/README.md) - Full architecture explanation

**...write a commit message?** 
→ Check [docs/GIT_COMMITS.md](./docs/GIT_COMMITS.md) - Commit guidelines with 20+ examples

**...contribute code?** 
→ See [CONTRIBUTING.md](./CONTRIBUTING.md) - Step-by-step contribution guide

**...understand git hooks?** 
→ Visit [docs/GIT_HOOKS_SETUP.md](./docs/GIT_HOOKS_SETUP.md) - Setup + troubleshooting

**...report a bug?** 
→ Go to [GitHub Issues](https://github.com/matpdev/resonance/issues) - We'll fix it ASAP

**...discuss features?** 
→ Check [GitHub Discussions](https://github.com/matpdev/resonance/discussions) - Let's talk!

**...view the source code?** 
→ Explore the [lib/](./lib/) folder - It's well-organized, we promise

**...check the design system?** 
→ Look at [lib/theme/app_theme.dart](./lib/theme/app_theme.dart) - Complete Material 3 theme with Fira Code Nerd Font

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines. And yes, we use git hooks to keep code quality high—no accidental garbage commits here! 🚫🗑️

## 📄 License

MIT License - see [LICENSE](LICENSE) for details. Basically: do what you want, just credit us. 😎

## 📞 Support & Community

- 📖 [Full Documentation](./docs/README.md) - Everything you need to know
- 🐛 [Report Issues](https://github.com/matpdev/resonance/issues) - Found a bug? Tell us!
- 💬 [Discussions](https://github.com/matpdev/resonance/discussions) - Feature ideas, questions, chat
- 🌟 [Star Us!](https://github.com/matpdev/resonance) - Show some love on GitHub ⭐

## 🎯 Quick Tips

- **First time?** Start with [Quick Start](#-quick-start) above
- **Getting stuck?** Check [Installation Guide](#-installation-guide-the-detailed-version)
- **Contributing?** Read [CONTRIBUTING.md](./CONTRIBUTING.md)
- **Lost?** Use [Where to Find Things](#-where-to-find-things-the-navigation-guide)

---

**Made with ❤️ by the Resonance community**

# Contributing to Resonance

Thank you for your interest in contributing to Resonance! This document provides guidelines and instructions for contributing to the project.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Commit Guidelines](#commit-guidelines)
- [Pull Request Process](#pull-request-process)
- [Code Style](#code-style)
- [Testing Requirements](#testing-requirements)
- [Merge Policy](#merge-policy)

## 🤝 Code of Conduct

All contributors must adhere to our code of conduct:
- Be respectful and inclusive
- No harassment, discrimination, or hateful language
- Constructive feedback only
- Respect intellectual property

## 🚀 Getting Started

### 1. Fork the Repository
```bash
# Click "Fork" on GitHub
git clone https://github.com/YOUR_USERNAME/resonance.git
cd resonance
git remote add upstream https://github.com/matpdev/resonance.git
```

### 2. Create a Feature Branch
```bash
git checkout -b feature/your-feature-name
# or for bug fixes
git checkout -b fix/bug-description
```

### 3. Set Up Development Environment
```bash
flutter pub get
flutter analyze
```

## 📝 Commit Guidelines

We follow [Conventional Commits](https://www.conventionalcommits.org/) specification. **For detailed commit guidelines, see [docs/GIT_COMMITS.md](docs/GIT_COMMITS.md).**

### Quick Reference

Format:
```
<type>(<scope>): <subject>
```

**Types:** feat, fix, docs, style, refactor, perf, test, chore, ci, revert

**Scopes:** dashboard, headers, body, response, context, theme, utils, models, config

**Example:**
```
feat(headers): add bulk header editing capability
```

For complete guidelines, conventions, and automated enforcement, **see [docs/GIT_COMMITS.md](docs/GIT_COMMITS.md).**

```
fix(response): handle null response body gracefully

The response display was crashing when the API returned null.
Now it displays a helpful message instead.
```

```
docs(readme): update installation instructions
```

❌ Bad commits:
```
Fixed stuff
```

```
Update files
```

### Commit Rules
- **One concern per commit** - Keep commits focused and atomic
- **Descriptive messages** - Explain WHY, not just WHAT
- **Tested before commit** - Ensure changes don't break existing functionality
- **Sign commits** (optional but recommended): `git commit -S -m "message"`

## 🔄 Pull Request Process

### Before Creating a PR

1. **Update your branch**
```bash
git fetch upstream
git rebase upstream/main
```

2. **Run tests and analysis**
```bash
flutter analyze
flutter test
```

3. **Build for target platform** (if applicable)
```bash
flutter build linux --release
flutter build windows --release
flutter build macos --release
flutter build apk --release
flutter build ios --release
```

### Creating a Pull Request

1. **Push to your fork**
```bash
git push origin feature/your-feature-name
```

2. **Open PR on GitHub**
   - Use the PR template provided
   - Link related issues: `Closes #123`
   - Describe changes clearly
   - Include screenshots/videos if UI changes

3. **PR Title Format**
```
<type>(<scope>): <description>

Examples:
feat(dashboard): add request history sidebar
fix(headers): resolve header duplication on send
docs(contributing): update guidelines
```

### PR Requirements

✅ Your PR must:
- [ ] Pass all automated checks (GitHub Actions)
- [ ] Have no merge conflicts
- [ ] Include relevant tests
- [ ] Update documentation if needed
- [ ] Follow code style guidelines
- [ ] Have clear, descriptive commits
- [ ] Be reviewed and approved by maintainers

### PR Review Process

1. **Automated Checks**
   - Code analysis (flutter analyze)
   - Tests (flutter test)
   - Build for all platforms
   - Coverage reports

2. **Manual Review**
   - Code quality assessment
   - Architecture review
   - Documentation review
   - Performance evaluation

3. **Feedback & Iterations**
   - Address review comments
   - Push additional commits if needed
   - Rebase after approval if requested

## 💻 Code Style

### Dart Style Guide

Follow the [official Dart style guide](https://dart.dev/guides/language/effective-dart/style):

```dart
// ✅ Good
class RequestUrlBar extends StatelessWidget {
  final RequestContext requestContext;

  const RequestUrlBar({
    super.key,
    required this.requestContext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Implementation
    );
  }
}

// ❌ Bad
class RequestUrlBar extends StatelessWidget {
  var requestContext; // Missing type

  RequestUrlBar(this.requestContext); // Missing const

  @override
  Widget build(context) { // Missing BuildContext type
    return Container();
  }
}
```

### Naming Conventions

- **Classes**: PascalCase (`RequestContext`, `DashboardView`)
- **Functions/Methods**: camelCase (`startRequest()`, `addHeader()`)
- **Variables**: camelCase (`isLoading`, `responseText`)
- **Constants**: camelCase with const (`const defaultTimeout`)
- **Private**: Prefix with underscore (`_privateMethod()`, `_internalState`)

### Widget Structure

```dart
class MyWidget extends StatefulWidget {
  final String title;
  
  const MyWidget({super.key, required this.title});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // State variables
  late String _internalState;

  @override
  void initState() {
    super.initState();
    _internalState = '';
  }

  @override
  void dispose() {
    // Cleanup
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  // Helper methods
  void _privateMethod() {}
}
```

### Comments & Documentation

```dart
/// Public documentation comment.
/// Used for public APIs, classes, and functions.
void publicFunction() {}

// Regular comments for internal logic
int calculateValue() {
  // This performs an important calculation
  return 42;
}

// TODO: Future improvements
// FIXME: Known issue that needs fixing
```

## 🧪 Testing Requirements

### Unit Tests
```bash
flutter test
```

- Write tests for business logic
- Aim for >80% code coverage
- Test edge cases and error handling

### Widget Tests
```bash
flutter test --tags=widget
```

- Test UI components
- Verify user interactions
- Check state changes

### Example Test
```dart
void main() {
  group('RequestContext', () {
    test('addHeader adds header to collection', () {
      final context = RequestContext();
      context.addHeader('Authorization', 'Bearer token');
      
      expect(context.headers['Authorization'], 'Bearer token');
    });

    test('removeHeader removes header', () {
      final context = RequestContext();
      context.addHeader('X-Custom', 'value');
      context.removeHeader('X-Custom');
      
      expect(context.headers.containsKey('X-Custom'), false);
    });
  });
}
```

## 🔀 Merge Policy

### Main Branch (`main`)

Protected branch. Only maintainers can merge.

Requirements:
- ✅ All checks passing
- ✅ At least 1 approval from maintainers
- ✅ No conflicts
- ✅ Commits squashed if multiple small commits

### Development Branch (`develop`)

For ongoing development work.

Requirements:
- ✅ All checks passing
- ✅ At least 1 approval

### Release Process

1. Create release branch: `release/v1.0.0`
2. Update version in pubspec.yaml
3. Update CHANGELOG.md
4. Create PR to `main`
5. After merge, tag release: `git tag -a v1.0.0 -m "Release v1.0.0"`

## 📊 GitHub Actions CI/CD

All PRs automatically run:

- **Analyze**: `flutter analyze`
- **Tests**: `flutter test`
- **Build All Platforms**:
  - Linux
  - Windows
  - macOS
  - Android
  - iOS
  - Web

### Workflow Files

Located in `.github/workflows/`:
- `ci.yml` - Continuous Integration
- `build.yml` - Multi-platform builds
- `test.yml` - Test suite

## ❌ What Will Get Your PR Rejected

- No clear description
- Unrelated changes in single commit
- Failing automated checks
- Poor code quality
- Missing tests
- Breaking changes without discussion
- Outdated branch (rebase needed)
- Large, unfocused PRs

## ✅ Tips for Success

1. **Start small** - Begin with small, focused changes
2. **Discuss major changes** - Open an issue first
3. **Keep PR size manageable** - Aim for <400 lines
4. **Rebase often** - Stay up to date with main
5. **Review your own PR first** - Catch obvious issues
6. **Respond to feedback promptly** - Show you're engaged
7. **Test thoroughly** - Don't rely only on CI
8. **Ask questions** - We're here to help!

## 🎓 Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Provider Package](https://pub.dev/packages/provider)
- [Material Design 3](https://m3.material.io/)

## 📞 Questions?

- 📖 Check [README.md](../README.md)
- 🐛 [Open an issue](https://github.com/matpdev/resonance/issues)
- 💬 [Start a discussion](https://github.com/matpdev/resonance/discussions)

---

**Thank you for contributing to Resonance! 🙏**

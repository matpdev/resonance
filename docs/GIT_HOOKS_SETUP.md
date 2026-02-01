# Git Hooks Setup

> **Automated commit validation and pre-commit checks**

This document explains how to set up and use git hooks for the Resonance project.

## 🚀 Automatic Setup

### First Time Setup

When you clone and set up the project:

```bash
# Clone repository
git clone https://github.com/matpdev/resonance.git
cd resonance

# Install dependencies
flutter pub get

# Install Node.js dependencies (for git hooks)
npm install

# Install git hooks
npx husky install

# Make hooks executable
chmod +x .husky/*
```

### Verify Setup

```bash
# Check husky installation
npx husky install

# Should output:
# husky - Git hooks installed
```

## 🔍 What Git Hooks Do

### 1. **pre-commit Hook** (`.husky/pre-commit`)

Runs before creating a commit:

```bash
✅ Flutter analyze       - Code quality checks
✅ Dart format check     - Code formatting validation
✅ Tests (optional)      - Run unit tests
```

**Stops commit if:**
- Analysis fails
- Code formatting issues detected
- Tests fail (if enabled)

### 2. **commit-msg Hook** (`.husky/commit-msg`)

Validates commit message format:

```bash
✅ Checks type (feat, fix, docs, etc.)
✅ Validates scope (dashboard, headers, etc.)
✅ Enforces subject line format (max 50 chars)
✅ Checks for body/footer rules
```

**Stops commit if:**
- Message doesn't follow conventional commits format
- Subject exceeds 50 characters
- Invalid type or scope

## 📝 Commit Workflow

### Normal Commit

```bash
# 1. Make changes to your code
# 2. Stage changes
git add .

# 3. Attempt to commit
git commit -m "feat(dashboard): add request history"

# Hooks automatically run:
# ✅ Pre-commit: Flutter analysis
# ✅ Commit-msg: Message validation
# ✅ If all pass: Commit created ✨
```

### What Happens Behind the Scenes

```
git commit
  ↓
pre-commit hook runs
  ├─ flutter analyze
  └─ Check code formatting
  ↓ (if passes)
commit-msg hook runs
  ├─ Validate message format
  ├─ Check type, scope, subject
  └─ Verify body/footer rules
  ↓ (if passes)
✅ Commit created!
```

## 🛑 Hook Failure Scenarios

### Scenario 1: Analysis Fails

```bash
$ git commit -m "feat: add something"

🔍 Running Flutter analysis before commit...
❌ Flutter analysis failed. Commit aborted.

Error: file.dart:45 - Strong mode issue
```

**Solution:**
```bash
# Fix the analysis issue
flutter analyze  # See detailed error
# Edit the file to fix issue
git add .
git commit -m "feat: add something"  # Try again
```

### Scenario 2: Bad Commit Message

```bash
$ git commit -m "added new feature"

⧗   input: added new feature
✖   subject must not be in past tense [subject-case]
✖   type must be lowercase [type-case]

commit message validation failed
```

**Solution:**
```bash
# Fix the message format
git commit --amend -m "feat: add new feature"
```

### Scenario 3: Code Formatting Issues

```bash
$ git commit -m "feat: add feature"

❌ Code formatting issues found:
file.dart: Fix formatting

flutter format .  # Auto-format
git add .
git commit -m "feat: add feature"  # Try again
```

## ⏭️ Bypassing Hooks (Emergency Only)

### Not Recommended! ⚠️

If absolutely necessary:

```bash
# Skip all hooks
git commit --no-verify -m "feat: emergency fix"

# Or skip pre-commit only
HUSKY=0 git commit -m "feat: emergency fix"
```

**Consequences:**
- 🔴 CI/CD pipeline may fail
- 🔴 Code quality standards ignored
- 🔴 History consistency broken

### Better Alternative: Fix Issues First

```bash
# Let hooks guide you
git commit -m "feat: add feature"  # Fails

# Follow instructions and fix
flutter analyze
flutter format .

# Then commit properly
git add .
git commit -m "feat: add feature"  # Passes!
```

## 📊 Commit Hooks Configuration

### commitlint Config (`.commitlintrc.cjs`)

Enforces:
- Valid types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `chore`, `ci`, `revert`
- Valid scopes: `dashboard`, `headers`, `body`, `response`, `context`, `theme`, `utils`, `models`, `config`
- Subject: Max 50 chars, imperative mood, no period
- Body: Wrapped at 100 chars, optional but detailed
- Footer: Issue references, breaking changes

### pre-commit Hook (`.husky/pre-commit`)

Runs Flutter checks:
- `flutter analyze` - Code quality
- Optional: `flutter format --check` - Code formatting
- Optional: `flutter test` - Test suite

### commit-msg Hook (`.husky/commit-msg`)

Validates using commitlint:
- Message structure
- Type validation
- Scope validation
- Subject line format
- Body/footer format

## 🔧 Troubleshooting

### "husky - Git hooks installed" not showing

```bash
# Reinstall husky
rm -rf .husky node_modules
npm install
npx husky install
chmod +x .husky/*
```

### Hooks not running

```bash
# Check if husky is initialized
test -d .husky && echo "✅ Husky initialized" || echo "❌ Not initialized"

# Make sure .husky scripts are executable
ls -la .husky/

# They should show:
# -rwxr-xr-x commit-msg
# -rwxr-xr-x pre-commit
```

### "command not found: commitlint"

```bash
# Install commitlint locally
npm install -D commitlint @commitlint/config-conventional

# Or install globally
npm install -g commitlint @commitlint/config-conventional
```

### MacOS/Linux specific issues

```bash
# Make sure git hooks are executable
chmod +x .husky/pre-commit
chmod +x .husky/commit-msg

# Try running hook manually
./.husky/pre-commit
./.husky/commit-msg
```

### Windows PowerShell issues

```powershell
# Run as administrator
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Or use Git Bash instead of PowerShell
```

## 📚 Related Documentation

- [GIT_COMMITS.md](./GIT_COMMITS.md) - Detailed commit conventions
- [CONTRIBUTING.md](./CONTRIBUTING.md) - Full contribution guidelines
- [Husky Documentation](https://husky.typicode.com/)
- [commitlint Documentation](https://commitlint.js.org/)
- [Conventional Commits](https://www.conventionalcommits.org/)

## ✅ Checklist for New Contributors

- [ ] Cloned repository
- [ ] Ran `npm install`
- [ ] Ran `npx husky install`
- [ ] Made `.husky/*` executable
- [ ] Read `GIT_COMMITS.md`
- [ ] Tested first commit
- [ ] Understand hook workflow
- [ ] Know how to bypass (and when NOT to!)

## 🎓 Learning Resources

### Understanding Conventional Commits

```
feat(scope): description
├─ feat         = Type (what kind of change)
├─ (scope)      = Part of code affected
└─ description  = What was changed
```

### Understanding Git Hooks

```
Your commit → pre-commit hook → commit-msg hook → ✅ Commit stored
                  ↓                    ↓
            Check code         Check message format
            ✅ Passes          ✅ Passes
```

---

**Automated quality checks ensure consistency! ✨**

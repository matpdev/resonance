# Git Commit Rules

> **Commit Guidelines for Resonance Project**

This document outlines strict commit conventions to maintain code quality and project history clarity.

## 📋 Table of Contents

- [Conventional Commits Format](#conventional-commits-format)
- [Commit Types](#commit-types)
- [Scope Guidelines](#scope-guidelines)
- [Subject Line Rules](#subject-line-rules)
- [Body Guidelines](#body-guidelines)
- [Footer Rules](#footer-rules)
- [Examples](#examples)
- [Automated Enforcement](#automated-enforcement)

## 🎯 Conventional Commits Format

All commits **MUST** follow the Conventional Commits specification:

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Format Rules

| Part | Required | Rules |
|------|----------|-------|
| **type** | ✅ Yes | Single word, lowercase, from predefined list |
| **scope** | ❌ Optional | Lowercase, in parentheses, describes component |
| **subject** | ✅ Yes | Imperative mood, max 50 chars, no period |
| **body** | ❌ Optional | Detailed explanation, max 72 chars/line |
| **footer** | ❌ Optional | Issue references, breaking changes |

## 🏷️ Commit Types

### Allowed Types

```
feat     - New feature (minor version bump)
fix      - Bug fix (patch version bump)
docs     - Documentation changes
style    - Code style (formatting, semicolons, etc.)
refactor - Code refactoring (no feature/bug change)
perf     - Performance improvements
test     - Adding or updating tests
chore    - Build, dependencies, tooling
ci       - CI/CD configuration changes
revert   - Revert previous commit
```

### Type Specifications

#### **feat** - New Feature
- Introduces new functionality
- Results in minor version bump
- Must include tests
- Should update documentation

```bash
git commit -m "feat(dashboard): add request history"
```

#### **fix** - Bug Fix
- Resolves existing bug
- Results in patch version bump
- Must include test covering the fix
- Should explain the root cause

```bash
git commit -m "fix(headers): resolve header duplication"
```

#### **docs** - Documentation
- README updates
- API documentation
- Inline code comments
- Changelog updates

```bash
git commit -m "docs(readme): update installation section"
```

#### **style** - Code Style
- Formatting changes
- Whitespace fixes
- Semicolon additions
- **NOT** functionality changes

```bash
git commit -m "style: format code with dartfmt"
```

#### **refactor** - Refactoring
- Code restructuring
- **NO** functionality changes
- **NO** bug fixes
- Improves code quality/readability

```bash
git commit -m "refactor(context): extract header logic"
```

#### **perf** - Performance
- Speed improvements
- Memory optimization
- Better algorithms

```bash
git commit -m "perf(response): optimize json parsing"
```

#### **test** - Tests
- Adding new tests
- Updating existing tests
- Test configuration
- **NOT** changing tested code

```bash
git commit -m "test(context): add header management tests"
```

#### **chore** - Chores
- Dependency updates
- Build script changes
- Version bumps
- Tool configuration

```bash
git commit -m "chore: update flutter to 3.10.5"
```

#### **ci** - CI/CD
- GitHub Actions updates
- CI pipeline configuration
- Test runner configuration

```bash
git commit -m "ci: add multi-platform build workflow"
```

#### **revert** - Revert
- Revert previous commit
- Use when mistakes are made

```bash
git commit -m "revert: revert 'feat(dashboard): add history' (#123)"
```

## 🎯 Scope Guidelines

### Scope Purpose
Specifies what part of the codebase is affected.

### Valid Scopes

| Scope | Applies To |
|-------|-----------|
| `dashboard` | Dashboard view and related widgets |
| `headers` | Headers tab component |
| `body` | Body/payload tab component |
| `response` | Response display component |
| `context` | State management (RequestContext, etc.) |
| `theme` | Theme configuration |
| `utils` | Utility functions/helpers |
| `models` | Data models |
| `config` | Project configuration |

### Scope Rules

✅ **Good scopes:**
```
feat(dashboard): add request history
fix(headers): resolve duplication
refactor(context): extract logic
```

❌ **Bad scopes:**
```
feat(fix): unclear meaning
fix(several): too vague
refactor(this): not descriptive
```

### No Scope Cases

Omit scope for:
- Project-wide changes
- Multiple components affected
- Documentation/configuration

```bash
git commit -m "docs: update contributing guide"
git commit -m "chore: update dependencies"
```

## 📝 Subject Line Rules

### Rules

1. **Imperative mood** - Use command form, not past tense
2. **No period** - Don't end with punctuation
3. **Max 50 characters** - Keep it short
4. **Capitalize first letter** - Standard grammar
5. **Be specific** - Avoid vague descriptions

### Examples

✅ **Good subjects:**
```
feat(headers): add bulk edit mode
fix(response): handle null values
docs(readme): update installation
```

❌ **Bad subjects:**
```
feat(headers): Added bulk edit mode          # Past tense
fix(response): Fixes null value issues.      # Period, past tense
docs(readme): Updates readme                 # Vague
feat: Something                              # Not descriptive
```

### Imperative Mood Examples

| ❌ Wrong | ✅ Correct |
|---------|----------|
| Added new feature | Add new feature |
| Fixed the bug | Fix the bug |
| Changed behavior | Change behavior |
| Refactored code | Refactor code |
| Updated tests | Update tests |

## 📄 Body Guidelines

### When to Include Body

Include body when:
- 🔴 Change is non-obvious
- 🔴 Complex logic involved
- 🔴 Breaking change introduced
- 🔴 Multiple related changes

Skip body for:
- 🟢 Simple, obvious changes
- 🟢 Single file modifications
- 🟢 Clear from subject line

### Body Rules

1. **Blank line after subject** - Separate subject and body
2. **Wrap at 72 characters** - Improves readability
3. **Explain WHY, not WHAT** - Focus on motivation
4. **Use bullet points** - For multiple changes
5. **Be detailed but concise** - Provide context

### Body Structure

```
<subject>

<explanation of change>

- <additional detail 1>
- <additional detail 2>
```

### Body Example

```
fix(response): handle network timeouts gracefully

The application was crashing when network requests timed out
without displaying appropriate error messages to users.

This fix adds proper timeout error handling and displays
a user-friendly message instead of crashing.

Changes:
- Catch SocketException for network timeouts
- Display error snackbar to user
- Add retry button for failed requests
- Update unit tests for timeout scenarios
```

## 🔗 Footer Guidelines

### Footer Types

#### 1. **Issue Reference**

Link commit to GitHub issues:

```
Closes #123
Closes #123, #456
Fixes #789
Resolves #321
Related to #654
```

#### 2. **Breaking Changes**

Mark breaking changes clearly:

```
BREAKING CHANGE: remove old API endpoint

The `/api/v1/headers` endpoint has been removed.
Use `/api/v2/headers` instead.
```

Or in subject:
```
feat!: new authentication system
```

#### 3. **Co-Authors**

Credit multiple contributors:

```
Co-authored-by: Jane Doe <jane@example.com>
Co-authored-by: John Smith <john@example.com>
```

### Footer Example

```
feat(dashboard): add request history

Implement persistent request history storage

- Add SQLite integration
- Create history model
- Build history UI tab
- Add tests for history operations

Closes #42
Closes #56
Co-authored-by: Jane Doe <jane@example.com>
BREAKING CHANGE: Old API format no longer supported
```

## 💡 Examples

### ✅ Perfect Commits

#### Simple Feature
```
feat(headers): add preset header templates
```

#### Bug Fix with Details
```
fix(response): resolve json parsing error

The response parser was failing on empty arrays.
Added null check and proper error handling.

Closes #234
```

#### Refactoring
```
refactor(context): extract api logic into service

Move HTTP request handling into separate service class
for better separation of concerns and testability.
```

#### Documentation
```
docs: add commit guidelines to contributing guide

Includes detailed examples and rules for commit messages
to maintain consistency across the project.
```

#### Performance
```
perf(response): optimize json parsing performance

Use built-in json decoder instead of custom parser.
Improves response parsing by 40% on large payloads.

Benchmark:
- Before: 150ms for 10MB payload
- After: 85ms for 10MB payload
```

#### Tests
```
test(headers): add unit tests for header validation

Add comprehensive tests for:
- Valid header names
- Invalid header characters
- Special header handling
- Edge cases

Closes #567
```

#### Breaking Change
```
feat!: migrate to new http client library

BREAKING CHANGE: Dio client replaced with http package

Migration guide in UPGRADE.md
```

### ❌ Bad Commits

```
# ❌ Vague type
stuff: did some work

# ❌ Bad subject (period, past tense)
feat(headers): Added headers support.

# ❌ Too long subject
feat: Add support for multiple authentication methods including OAuth, JWT, and basic auth

# ❌ Missing type
Updated the response handler

# ❌ Non-imperative
fix(headers): Fixed a bug with headers

# ❌ Unclear scope
fix(x): changed something

# ❌ No value
feat: asdfghjkl
```

## 🤖 Automated Enforcement

### commitlint Configuration

Resonance uses **commitlint** to automatically enforce these rules:

```bash
# Installation (already configured)
npm install -D commitlint @commitlint/config-conventional husky

# Validate current commit
commitlint --edit
```

### Git Hooks

Husky pre-commit hooks ensure:
- ✅ Commits follow conventional format
- ✅ Code passes analysis
- ✅ Tests pass before committing

```bash
# Hooks automatically run on:
git commit -m "..."
```

### Hook Configuration

Located in `.husky/`:
- `commit-msg` - Validates commit message format
- `pre-commit` - Runs analysis and formatting

### Bypassing Hooks (Not Recommended)

If absolutely necessary:

```bash
git commit --no-verify -m "message"
```

⚠️ **Warning**: Bypassing hooks defeats quality checks!

## 📊 Commit Statistics

Good commit practices enable:

```
✅ Automated changelog generation
✅ Semantic versioning (major.minor.patch)
✅ Automated releases
✅ Better git history navigation
✅ Easier blame/bisect analysis
✅ Clearer PR reviews
```

## 🔄 Workflow

### Step-by-Step Process

```bash
# 1. Make your changes
# ... edit files ...

# 2. Stage changes
git add .

# 3. Commit with message
git commit -m "feat(dashboard): add request history"
# OR for detailed commits
git commit  # Opens editor for full message

# 4. Push to fork
git push origin feature/request-history

# 5. Create PR with linked issues
# Use Closes #123 in PR description
```

### Multi-Part Changes

Each logical change = separate commit:

```bash
# ✅ Good - Multiple focused commits
git commit -m "feat(headers): add header validation"
git commit -m "test(headers): add validation tests"
git commit -m "docs(headers): document header rules"

# ❌ Bad - Everything in one commit
git commit -m "feat: add headers, tests, and docs"
```

## 🆘 Fixing Commit Messages

### Last Commit Not Pushed
```bash
git commit --amend --no-edit              # Change files
git commit --amend -m "new message"       # Change message
```

### Already Pushed
```bash
git reset HEAD~1                          # Undo last commit
git add .
git commit -m "correct message"
git push --force-with-lease origin branch
```

### Interactive Rebase
```bash
git rebase -i HEAD~3                      # Edit last 3 commits
# Mark 'r' for reword to edit messages
```

## 📚 Resources

- [Conventional Commits](https://www.conventionalcommits.org/)
- [commitlint](https://commitlint.js.org/)
- [Husky](https://husky.typicode.com/)
- [Git Commit Best Practices](https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History)

## ✅ Checklist Before Committing

- [ ] Changes related to single concern
- [ ] Code follows project style guide
- [ ] Tests pass locally
- [ ] Commit follows conventional format
- [ ] Subject is imperative mood, max 50 chars
- [ ] Body explains WHY, not WHAT
- [ ] Footer includes issue references
- [ ] No sensitive data in commit

---

**Strict commit conventions = Better project history! 📝**

module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    // Subject rules
    'subject-case': [2, 'never', ['start-case', 'pascal-case', 'upper-case']],
    'subject-empty': [2, 'never'],
    'subject-full-stop': [2, 'never', '.'],
    'subject-max-length': [2, 'always', 50],
    'subject-min-length': [2, 'always', 10],

    // Type rules
    'type-case': [2, 'always', 'lowercase'],
    'type-empty': [2, 'never'],
    'type-enum': [
      2,
      'always',
      [
        'feat',      // New feature
        'fix',       // Bug fix
        'docs',      // Documentation
        'style',     // Code style
        'refactor',  // Code refactoring
        'perf',      // Performance improvement
        'test',      // Test addition/update
        'chore',     // Build/dependency/tool
        'ci',        // CI/CD configuration
        'revert',    // Revert commit
      ],
    ],

    // Scope rules
    'scope-case': [2, 'always', 'lowercase'],
    'scope-enum': [
      2,
      'always',
      [
        'dashboard',   // Dashboard view
        'headers',     // Headers component
        'body',        // Body component
        'response',    // Response display
        'context',     // State management
        'theme',       // Theme configuration
        'utils',       // Utilities
        'models',      // Data models
        'config',      // Project config
      ],
    ],

    // Body rules
    'body-leading-blank': [2, 'always'],
    'body-max-line-length': [2, 'always', 100],
    'body-min-length': [2, 'always', 10],

    // Footer rules
    'footer-leading-blank': [2, 'always'],
    'footer-max-line-length': [2, 'always', 100],

    // Header rules
    'header-max-length': [2, 'always', 72],
  },

  // Prompt configuration
  prompt: {
    questions: {
      type: {
        description: 'Select the type of change that you\'re committing:',
        enum: {
          feat: {
            description: 'A new feature',
            title: 'Features',
            emoji: '✨',
          },
          fix: {
            description: 'A bug fix',
            title: 'Bug Fixes',
            emoji: '🐛',
          },
          docs: {
            description: 'Documentation only changes',
            title: 'Documentation',
            emoji: '📚',
          },
          style: {
            description: 'Changes that do not affect the meaning of the code',
            title: 'Styles',
            emoji: '💄',
          },
          refactor: {
            description: 'A code change that neither fixes a bug nor adds a feature',
            title: 'Code Refactoring',
            emoji: '♻️',
          },
          perf: {
            description: 'A code change that improves performance',
            title: 'Performance Improvements',
            emoji: '⚡',
          },
          test: {
            description: 'Adding missing tests or correcting existing tests',
            title: 'Tests',
            emoji: '🧪',
          },
          chore: {
            description: 'Changes to the build process or dependencies',
            title: 'Chores',
            emoji: '🔧',
          },
          ci: {
            description: 'Changes to CI/CD configuration files and scripts',
            title: 'CI/CD',
            emoji: '⚙️',
          },
          revert: {
            description: 'Reverts a previous commit',
            title: 'Reverts',
            emoji: '⏮️',
          },
        },
      },
      scope: {
        description: 'What is the scope of this change (optional)',
        enum: {
          dashboard: 'Dashboard view',
          headers: 'Headers component',
          body: 'Body component',
          response: 'Response display',
          context: 'State management',
          theme: 'Theme configuration',
          utils: 'Utilities',
          models: 'Data models',
          config: 'Project configuration',
        },
      },
      subject: {
        description: 'Write a short, imperative tense description of the change (max 50 characters)',
      },
      body: {
        description: 'Provide a longer description of the changes (optional). Use "|" for new lines',
      },
      isBreaking: {
        description: 'Are there any breaking changes?',
      },
      breakingBody: {
        description: 'A BREAKING CHANGE commit requires a body. Please enter a longer description of the commit itself',
      },
      breaking: {
        description: 'Describe the breaking changes',
      },
      isIssueAffected: {
        description: 'Does this change affect any open issues?',
      },
      issuesBody: {
        description: 'If issues are closed, the commit requires a body. Please enter a longer description of the commit itself',
      },
      issues: {
        description: 'Add issue references (e.g. "Closes #123", "Fixes #456")',
      },
    },
  },
};

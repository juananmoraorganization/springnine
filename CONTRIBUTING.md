# Contributing to Springnine

Thank you for your interest in contributing to Springnine! This document provides guidelines and instructions for contributing to the project.

## Code of Conduct

By participating in this project, you are expected to uphold our Code of Conduct, which promotes a respectful and inclusive environment for all contributors.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check the existing issues to avoid duplicates. When you create a bug report, include as many details as possible:

- **Use a clear and descriptive title**
- **Describe the exact steps to reproduce the problem**
- **Provide specific examples** to demonstrate the steps
- **Describe the behavior you observed** and what behavior you expected to see
- **Include screenshots or animated GIFs** if relevant
- **Specify which version** of Springnine you're using
- **Include your environment details** (OS, Java version, Maven version)

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion:

- **Use a clear and descriptive title**
- **Provide a detailed description** of the suggested enhancement
- **Explain why this enhancement would be useful** to most Springnine users
- **List any similar features** in other projects if applicable

### Pull Requests

1. **Fork the repository** and create your branch from `main`
2. **Make your changes** following the coding standards
3. **Add or update tests** as appropriate
4. **Ensure all tests pass** locally
5. **Update documentation** to reflect your changes
6. **Write a clear commit message** describing your changes
7. **Submit a pull request**

## Development Setup

### Prerequisites

- Java JDK 11 or higher
- Apache Maven 3.6.x or higher
- Git

### Setting Up Your Development Environment

1. **Fork and clone the repository**:
   ```bash
   git clone https://github.com/YOUR-USERNAME/springnine.git
   cd springnine
   ```

2. **Build the project**:
   ```bash
   mvn clean install
   ```

3. **Run tests**:
   ```bash
   mvn test
   ```

4. **Run the application**:
   ```bash
   mvn spring-boot:run
   ```

## Coding Standards

### Java Code Style

- Follow the **Google Java Style Guide**
- Use the Maven fmt plugin to format code:
  ```bash
  mvn fmt:format
  ```
- Check formatting before committing:
  ```bash
  mvn fmt:check
  ```

### Code Quality

- Write meaningful variable and method names
- Add comments for complex logic
- Keep methods focused and concise
- Follow SOLID principles
- Aim for high test coverage

### Testing

- Write unit tests for all new functionality
- Include integration tests where appropriate
- Ensure all tests pass before submitting a PR
- Maintain or improve code coverage

### Commit Messages

Follow the conventional commits specification:

- **feat**: A new feature
- **fix**: A bug fix
- **docs**: Documentation only changes
- **style**: Changes that don't affect code meaning (formatting, etc.)
- **refactor**: Code change that neither fixes a bug nor adds a feature
- **test**: Adding or updating tests
- **chore**: Changes to build process or auxiliary tools

Example:
```
feat: add authentication to gRPC service

- Implement token-based authentication
- Add authentication interceptor
- Update documentation
```

## Building and Testing

### Build Commands

```bash
# Clean build
mvn clean install

# Skip tests (for quick builds)
mvn clean install -DskipTests

# Run specific test
mvn test -Dtest=ApplicationTest

# Generate coverage report
mvn clean test jacoco:report
```

### Protocol Buffer Changes

If you modify `.proto` files, regenerate Java sources:

```bash
mvn clean protobuf:compile protobuf:compile-custom
```

## Documentation

### Updating Documentation

- Update README.md for user-facing changes
- Update docs/ for detailed documentation
- Include code examples where helpful
- Keep documentation in sync with code changes

### Writing Documentation

- Use clear, concise language
- Include code examples
- Add diagrams for complex concepts
- Follow markdown best practices

## Review Process

1. **Automated Checks**: Your PR will run through CI/CD pipeline
2. **Code Review**: Maintainers will review your code
3. **Feedback**: Address any feedback or requested changes
4. **Approval**: Once approved, your PR will be merged

### What Reviewers Look For

- Code quality and style
- Test coverage
- Documentation updates
- Breaking changes
- Security implications
- Performance impact

## Community

### Getting Help

- Check existing documentation
- Search through issues
- Ask questions in GitHub Discussions
- Tag issues appropriately

### Staying Updated

- Watch the repository for notifications
- Read release notes
- Check the project roadmap

## License

By contributing to Springnine, you agree that your contributions will be licensed under the same license as the project.

## Questions?

If you have questions about contributing, feel free to:
- Open an issue with the "question" label
- Reach out to the maintainers
- Check existing documentation

Thank you for contributing to Springnine! 🎉

# Security Policy

## Supported Versions

The following versions of Springnine are currently being supported with security updates:

| Version | Supported          |
| ------- | ------------------ |
| 0.0.2-SNAPSHOT   | :white_check_mark: |
| < 0.0.2   | :x:                |

## Reporting a Vulnerability

We take the security of Springnine seriously. If you believe you have found a security vulnerability, please report it to us responsibly.

### How to Report

**Please do not report security vulnerabilities through public GitHub issues.**

Instead, please report them via one of the following methods:

1. **GitHub Security Advisories**: Report the vulnerability through GitHub's private vulnerability reporting feature at:
   https://github.com/juananmoraorganization/springnine/security/advisories/new

2. **Email**: Send details to the project maintainers (check the repository for contact information)

### What to Include

When reporting a vulnerability, please include:

- Type of vulnerability (e.g., SQL injection, XSS, authentication bypass, etc.)
- Full paths of source file(s) related to the vulnerability
- Location of the affected source code (tag/branch/commit or direct URL)
- Step-by-step instructions to reproduce the issue
- Proof-of-concept or exploit code (if possible)
- Impact of the issue, including how an attacker might exploit it

### Response Timeline

- **Initial Response**: We will acknowledge receipt of your vulnerability report within 48 hours
- **Status Updates**: We will provide regular updates on the progress of addressing the vulnerability
- **Resolution**: We aim to provide a fix or mitigation within 90 days for critical vulnerabilities
- **Disclosure**: Once a fix is available, we will coordinate with you on public disclosure

### What to Expect

If the vulnerability is accepted:
- We will work on a fix and coordinate with you on disclosure timing
- You will be credited in the security advisory (unless you prefer to remain anonymous)
- We may request additional information or clarification

If the vulnerability is declined:
- We will provide an explanation of why it was not accepted
- You may still create a public issue if you disagree with the decision

## Security Best Practices

When using Springnine, please follow these security best practices:

1. **Keep Dependencies Updated**: Regularly update all dependencies to their latest secure versions
2. **Use Environment Variables**: Never commit sensitive data (credentials, API keys) to the repository
3. **Enable TLS**: Use TLS/SSL for all gRPC communications in production
4. **Input Validation**: Always validate and sanitize input data
5. **Access Control**: Implement proper authentication and authorization mechanisms
6. **Monitoring**: Monitor your application for suspicious activities

## Security Updates

Security updates will be released as needed and announced through:

- GitHub Security Advisories
- Release notes
- Project README

Subscribe to repository notifications to stay informed about security updates.

# Springnine

[![Java CI with Maven](https://github.com/juananmoraorganization/springnine/actions/workflows/maven.yml/badge.svg)](https://github.com/juananmoraorganization/springnine/actions/workflows/maven.yml)
[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=springnine)](https://sonarcloud.io/summary/new_code?id=springnine)

A Spring Boot application with gRPC support that provides automated end-to-end testing capabilities for the cttione service.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Running the Application](#running-the-application)
- [Building](#building)
- [Testing](#testing)
- [API Documentation](#api-documentation)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Overview

Springnine is a Spring Boot application that implements a gRPC-based Greeter service. It demonstrates the integration of Spring Boot with gRPC for building high-performance microservices with automated testing capabilities.

## Features

- **gRPC Service**: Implements a Greeter service using Protocol Buffers
- **Spring Boot Integration**: Leverages Spring Boot for dependency injection and configuration
- **Automated Testing**: Includes end-to-end test suite
- **Code Quality**: Integrated with SonarCloud for code quality analysis
- **CI/CD**: Automated builds and deployments via GitHub Actions

## Prerequisites

Before you begin, ensure you have the following installed:

- **Java**: JDK 11 or higher
- **Maven**: 3.6.x or higher
- **Git**: For cloning the repository

## Installation

1. Clone the repository:

```bash
git clone https://github.com/juananmoraorganization/springnine.git
cd springnine
```

2. Build the project:

```bash
mvn clean install -DskipTests
```

## Configuration

The application uses standard Spring Boot configuration. You can customize settings in `src/main/resources/application.properties` or through environment variables.

### gRPC Configuration

The gRPC server is configured using the `grpc-spring-boot-starter` library. Default port is 6565.

## Running the Application

To run the application locally:

```bash
mvn spring-boot:run
```

The gRPC server will start on the default port (6565).

## Building

### Compile the project

```bash
mvn compile
```

### Build JAR file

```bash
mvn package
```

The built JAR will be available in the `target/` directory.

### Code Formatting

The project uses the Google Java Format plugin:

```bash
mvn fmt:format
```

## Testing

### Run all tests

```bash
mvn test
```

### Run integration tests

```bash
mvn verify
```

### Code Coverage

Generate code coverage report with JaCoCo:

```bash
mvn clean test jacoco:report
```

The coverage report will be available in `target/site/jacoco/index.html`.

## API Documentation

### gRPC Service: Greeter

The Greeter service provides a simple "Hello World" functionality via gRPC.

#### SayHello RPC

**Request:**
```protobuf
message HelloRequest {
    string name = 1;
}
```

**Response:**
```protobuf
message HelloReply {
    string message = 1;
}
```

**Example Usage:**

The service responds with "Hello [name]" where [name] is the input from the request.

For detailed API specifications, see the [Protocol Buffer definition](src/main/resources/greeter.proto).

## Project Structure

```
springnine/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/es/java/springnine/
│   │   │       ├── Application.java          # Main application entry point
│   │   │       └── GreeterService.java       # gRPC service implementation
│   │   └── resources/
│   │       └── greeter.proto                 # Protocol Buffer definitions
│   └── test/
│       └── java/
│           └── com/example/es/java/springnine/
│               └── ApplicationTest.java       # Integration tests
├── docs/                                      # Documentation
├── pom.xml                                    # Maven configuration
└── README.md                                  # This file
```

## Contributing

Contributions are welcome! Please read our [Contributing Guidelines](CONTRIBUTING.md) for details on how to submit pull requests, report issues, and contribute to the project.

## License

This project is licensed under the terms specified in the project's license file.

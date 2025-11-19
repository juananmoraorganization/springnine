# API Documentation

This document provides detailed information about the Springnine gRPC API.

## Overview

Springnine exposes a gRPC service for high-performance remote procedure calls. The service is defined using Protocol Buffers (proto3) and implements the Greeter service.

## Service Endpoint

**Default gRPC Port**: 6565

**Service Name**: `Greeter`

## Protocol Buffer Definition

The complete service definition can be found in [`src/main/resources/greeter.proto`](../src/main/resources/greeter.proto).

## Service Methods

### SayHello

A simple RPC method that returns a greeting message.

#### Method Signature

```protobuf
rpc SayHello (HelloRequest) returns (HelloReply) {}
```

#### Request

**Message Type**: `HelloRequest`

| Field | Type   | Required | Description                    |
|-------|--------|----------|--------------------------------|
| name  | string | Yes      | The name to include in the greeting |

**Example Request**:
```json
{
  "name": "World"
}
```

#### Response

**Message Type**: `HelloReply`

| Field   | Type   | Description              |
|---------|--------|--------------------------|
| message | string | The greeting message     |

**Example Response**:
```json
{
  "message": "Hello World"
}
```

#### Behavior

- Takes a name as input
- Returns a greeting message in the format: "Hello {name}"
- Example: Input "Alice" returns "Hello Alice"

#### Implementation Details

The service implementation can be found in `GreeterService.java`:
- Extends `GreeterGrpc.GreeterImplBase`
- Annotated with `@GRpcService` for Spring Boot integration
- Uses reactive streaming with `StreamObserver`

## Testing the API

### Using grpcurl

[grpcurl](https://github.com/fullstorydev/grpcurl) is a command-line tool for interacting with gRPC services.

**Installation**:
```bash
# macOS
brew install grpcurl

# Linux
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
```

**Example Request**:
```bash
grpcurl -plaintext \
  -d '{"name": "World"}' \
  localhost:6565 \
  Greeter/SayHello
```

**Expected Response**:
```json
{
  "message": "Hello World"
}
```

### Using BloomRPC

[BloomRPC](https://github.com/bloomrpc/bloomrpc) is a GUI client for gRPC.

1. Download and install BloomRPC
2. Import the `greeter.proto` file
3. Set the server address to `localhost:6565`
4. Select the `SayHello` method
5. Fill in the request with your desired name
6. Click "Send"

### Using Postman

Recent versions of Postman support gRPC:

1. Create a new gRPC request
2. Enter the server URL: `localhost:6565`
3. Import the proto file or define the schema
4. Select the `SayHello` method
5. Fill in the request body
6. Click "Invoke"

### Using Java Client

Here's an example of calling the service from a Java client:

```java
import com.example.es.java.springnine.proto.GreeterGrpc;
import com.example.es.java.springnine.proto.GreeterOuterClass.*;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;

public class GreeterClient {
    public static void main(String[] args) {
        // Create a channel
        ManagedChannel channel = ManagedChannelBuilder
            .forAddress("localhost", 6565)
            .usePlaintext()
            .build();
        
        // Create a blocking stub
        GreeterGrpc.GreeterBlockingStub stub = GreeterGrpc.newBlockingStub(channel);
        
        // Create request
        HelloRequest request = HelloRequest.newBuilder()
            .setName("World")
            .build();
        
        // Make the call
        HelloReply response = stub.sayHello(request);
        
        // Print response
        System.out.println("Response: " + response.getMessage());
        
        // Cleanup
        channel.shutdown();
    }
}
```

## Error Handling

The service uses standard gRPC status codes for error handling:

| Status Code | Description |
|-------------|-------------|
| OK (0) | Success |
| CANCELLED (1) | Request cancelled |
| UNKNOWN (2) | Unknown error |
| INVALID_ARGUMENT (3) | Invalid request parameters |
| UNAVAILABLE (14) | Service unavailable |
| INTERNAL (13) | Internal server error |

## Security Considerations

### Production Deployment

For production environments, consider implementing:

1. **TLS/SSL Encryption**: Enable secure communications
2. **Authentication**: Implement token-based or certificate-based authentication
3. **Authorization**: Add role-based access control
4. **Rate Limiting**: Protect against abuse
5. **Input Validation**: Validate all incoming requests

### Example: Enabling TLS

```java
@Configuration
public class GrpcSecurityConfig {
    @Bean
    public GRpcServerBuilderConfigurer grpcServerBuilderConfigurer() {
        return serverBuilder -> {
            serverBuilder.useTransportSecurity(
                new File("server.crt"),
                new File("server.key")
            );
        };
    }
}
```

## Performance Considerations

### Optimization Tips

1. **Connection Pooling**: Reuse channels instead of creating new ones
2. **Streaming**: Use streaming RPCs for large data transfers
3. **Compression**: Enable gRPC compression for bandwidth optimization
4. **Keep-Alive**: Configure keep-alive for long-lived connections

### Monitoring

Monitor the following metrics:

- Request latency
- Request rate
- Error rate
- Connection count
- CPU and memory usage

## Future Enhancements

Potential additions to the API:

- Additional service methods
- Bi-directional streaming support
- Authentication and authorization
- Request/response validation
- Metrics and monitoring endpoints
- Health check endpoints

## Support

For issues or questions about the API:

1. Check the [main documentation](index.md)
2. Review existing [GitHub issues](https://github.com/juananmoraorganization/springnine/issues)
3. Create a new issue with the "question" or "bug" label

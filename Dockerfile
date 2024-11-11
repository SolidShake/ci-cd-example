FROM golang:1.23.1
LABEL authors="solidshake"

# Move to working directory /build
WORKDIR /app

# Copy the go.mod and go.sum files to the /build directory
COPY go.mod go.sum ./

# Install dependencies
RUN go mod download

# Copy the entire source code into the container
COPY . .

# Build the application
RUN go build -o ci-cd-example

# Document the port that may need to be published
EXPOSE 80

# Start the application
CMD ["/app/ci-cd-example"]
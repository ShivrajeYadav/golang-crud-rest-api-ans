# Base image
FROM golang:1.16

# Set the working directory inside the container
WORKDIR /app

# Copy the necessary files to the container
COPY . /app

# Install dependencies
RUN go mod download

# Build the app
RUN go build -o app

# Expose the port your app will listen on
EXPOSE 8080

# Specify the command to run when the container starts
CMD ["./app"]

# Use the Astral Sh UV Python3.13 Bookworm image
FROM ghcr.io/astral-sh/uv:python3.13-bookworm

# Set the working directory
WORKDIR /app

# Copy the necessary files into the final stage
COPY . /app

# Install the required packages using uv
RUN uv sync && uv add fastmcp

# Expose the port
EXPOSE 8000

# Command to run the server
CMD ["uv", "run", "python", "src/osm_mcp_server/server.py"]

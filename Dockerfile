# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /root

# Create a projects directory
RUN mkdir /root/projects

# Install essential packages for Neovim
RUN apt-get update && \
    apt-get install -y \
        git \
        wget \
        build-essential \
        python3 \
        python3-venv \
        unzip \
        npm \
        python3-pip \
        curl

# Install Python packages for Neovim plugins
RUN pip3 install \
    markdown \
    pynvim

# Download and install Neovim
RUN wget https://github.com/neovim/neovim/releases/download/v0.9.4/nvim-linux64.tar.gz && \
    tar -xvf nvim-linux64.tar.gz && \
    ln -s /root/nvim-linux64/bin/nvim /usr/bin/nvim

# Clone Neovim configuration from GitHub
RUN git clone https://github.com/dtzampanakis/nvim.git /root/.config/nvim

# Start Neovim when the container runs
CMD ["nvim"]


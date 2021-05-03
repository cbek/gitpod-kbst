FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
# Download the latest release
RUN curl -LO "https://github.com/kbst/kbst/releases/download/$(curl -s https://www.kubestack.com/cli-latest.txt)/kbst_linux_amd64.zip"

# Extract the binary into your PATH e.g. /usr/local/bin
RUN sudo unzip -d /usr/local/bin/ kbst_linux_amd64.zip kbst
FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https:
RUN curl https://get.nextflow.io | bash
RUN export $PATH='/workspace/nextflow-tutorial'
RUN docker pull nextflow/rnaseq-nf

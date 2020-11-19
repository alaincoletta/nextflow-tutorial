FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https:
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh \
             && sdk install java \
             && sdk default java"
RUN curl https://get.nextflow.io | bash
RUN export PATH="/workspace/nextflow-tutorial:$PATH"
RUN docker pull nextflow/rnaseq-nf

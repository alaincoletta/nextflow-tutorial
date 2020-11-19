FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https:
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh \
             && sdk install java 12.0.1.j9-adpt"
RUN curl https://get.nextflow.io | bash
RUN export $PATH='/workspace/nextflow-tutorial'
RUN docker pull nextflow/rnaseq-nf

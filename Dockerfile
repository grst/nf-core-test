FROM nfcore/base
LABEL authors="grst" \
      description="Docker image containing all requirements for nf-core/test pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-test-1.0dev/bin:$PATH

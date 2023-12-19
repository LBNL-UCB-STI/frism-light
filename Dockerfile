FROM mambaorg/micromamba:1.5.1
LABEL authors="Dmitrii Openkov"
COPY --chown=$MAMBA_USER:$MAMBA_USER docker/env.yml /tmp/env.yml
RUN micromamba install -y -n base -f /tmp/env.yml && \
    micromamba clean --all --yes

COPY FRISM_light_src /src
VOLUME /pop_results

WORKDIR /src

ENTRYPOINT ["/usr/local/bin/_entrypoint.sh", "python", "frism_light_run.py"]
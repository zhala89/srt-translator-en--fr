FROM jupyter/tensortflow-notebook

USER root

RUN pip install --upgrade pip && \
    pip install transformers && \
    pip install pysrt && \
    fix-permissions "/home/root"
COPY captions_english.srt Translator.ipynb ./


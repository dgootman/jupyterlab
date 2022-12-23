FROM python:slim

RUN \
  echo "### Installing jupyterlab" && \
  pip install jupyterlab

RUN mkdir /notebooks

EXPOSE 8888

CMD ["jupyter", "lab", "--allow-root", "--ip=0.0.0.0", "--notebook-dir=/notebooks"]

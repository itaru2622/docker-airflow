ARG base=apache/airflow:slim-2.10.2-python3.12
FROM ${base}
ARG base

USER root
RUN  apt update; apt install -y vim bash-completion git make
RUN  echo "set mouse-=a" > /root/.vimrc; \
     echo "set mouse-=a" > /home/airflow/.vimrc; \
     chown airflow /home/airflow/.vimrc

USER airflow
RUN  pip install openai langchain langchain_openai pydantic
#ENTRYPOINT []
#CMD []

FROM continuumio/miniconda3

WORKDIR /home/app

RUN apt-get update
RUN apt-get install nano unzip
RUN apt install curl -y

RUN curl -fsSL https://get.deta.dev/cli.sh | sh

COPY . /home/app
RUN conda install --yes --channel conda-forge pandas seaborn py-xgboost geopy plotly
RUN conda install --yes --channel conda-forge scikit-learn=1.1.3
RUN conda install --yes --channel conda-forge streamlit=1.18.1

CMD streamlit run --server.port $PORT app.py
FROM python:3.8

# Pythonの標準出力、標準エラー出力をバッファーにため込まないようにする設定
ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

ADD requirements.txt /code/

# requirements.txtに記述してあるものをpipでインストールする
RUN pip install -r requirements.txt

ADD . /code/
# syntax=docker/dockerfile:1

FROM nikolaik/python-nodejs:python3.10-nodejs18

WORKDIR /app

COPY . .

EXPOSE 8888

#安装依赖
RUN pip3 install -r requirements.txt

VOLUME ["/app/opt" ]

CMD ["jupyter", "lab", "--ip=0.0.0.0","--port=8888", "--allow-root", "--no-browser"]

FROM python:3.8
WORKDIR /root/python-learn/web

COPY ../requirements.txt ./
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . .

CMD ["manage"]

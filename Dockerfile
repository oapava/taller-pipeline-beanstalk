FROM public.ecr.aws/docker/library/alpine:3.14

RUN apk add py3-pip && \
    pip3 install --upgrade pip

WORKDIR /app

COPY . /app/

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python", "application.py"]

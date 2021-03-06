FROM python:3-slim

RUN mkdir /src

COPY team-cost-aggregator/ /src/

WORKDIR /src

RUN pip install -r requirements.txt

ENTRYPOINT ["python","/src/team-cost-aggregator.py"]
CMD ["-h"]
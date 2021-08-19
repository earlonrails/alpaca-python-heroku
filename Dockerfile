# ---- Dependencies ----
FROM python:3 AS build
WORKDIR /app
COPY requirements.txt .
COPY ./src .
RUN pip install -r requirements.txt

# ---- Release ----
FROM python:3
WORKDIR /app
COPY --from=build /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=build /root/.cache /root/.cache
COPY ./src .

CMD "python3 main.py"

FROM mcr.microsoft.com/dotnet/core/sdk:2.2

RUN apt-get update && \
    apt-get install default-jdk && \
    apt-get clean && \
    dotnet tool install --global dotnet-sonarscanner

ENV PATH="/root/.dotnet/tools:${PATH}"
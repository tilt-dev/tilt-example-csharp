FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine
COPY . /app/out
WORKDIR /app/out
RUN apk add entr
ENTRYPOINT ["dotnet", "hello-tilt.dll"]

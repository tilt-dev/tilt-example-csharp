FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine
COPY . /app/out
WORKDIR /app/out
ENTRYPOINT ["dotnet", "hello-tilt.dll"]

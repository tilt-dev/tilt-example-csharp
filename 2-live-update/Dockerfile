FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
COPY out /app/out
WORKDIR /app/out
ENTRYPOINT ["dotnet", "hello-tilt.dll"]

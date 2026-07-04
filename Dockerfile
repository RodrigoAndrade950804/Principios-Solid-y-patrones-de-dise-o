#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 48102

FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /src
COPY ["BestPractices/Best Practices.csproj", "BestPractices/"]
RUN dotnet restore "BestPractices/Best Practices.csproj"
COPY . .
WORKDIR "/src/BestPractices"
RUN dotnet build "Best Practices.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Best Practices.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Best Practices.dll"]
# Usa la imagen oficial del SDK de .NET 8 para compilar la aplicación
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copia el archivo del proyecto y restaura las dependencias (NuGet)
COPY ["BestPractices/Best Practices.csproj", "BestPractices/"]
RUN dotnet restore "BestPractices/Best Practices.csproj"

# Copia el resto del código y publica la aplicación en la carpeta /app/publish
COPY . .
WORKDIR "/src/BestPractices"
RUN dotnet publish "Best Practices.csproj" -c Release -o /app/publish

# Usa la imagen de Runtime (más ligera, solo para ejecutar la app)
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .

# .NET 8 escucha por defecto en el puerto 8080. Exponemos este puerto para Render.
ENV ASPNETCORE_HTTP_PORTS=8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "Best Practices.dll"]

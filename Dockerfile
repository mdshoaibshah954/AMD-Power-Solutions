FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build

WORKDIR /src

COPY ["AMD.PowerSolutions/AMD.PowerSolutions.csproj", "AMD.PowerSolutions/"]

RUN dotnet restore "AMD.PowerSolutions/AMD.PowerSolutions.csproj"

COPY . .

WORKDIR "/src/AMD.PowerSolutions"

RUN dotnet publish "AMD.PowerSolutions.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final

WORKDIR /app

COPY --from=build /app/publish .

ENV ASPNETCORE_URLS=http://0.0.0.0:8080

ENTRYPOINT ["dotnet", "AMD.PowerSolutions.dll"]

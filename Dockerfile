FROM mcr.microsoft.com/dotnet/sdk:7.0 as build

#Update stretch repositories
RUN sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list
RUN sed -i 's|security.debian.org|archive.debian.org/|g' /etc/apt/sources.list
RUN sed -i '/stretch-updates/d' /etc/apt/sources.list


# Copy source
WORKDIR /src
COPY . .

# Build site
RUN dotnet run dotnet-oxford-website.csproj

# Copy output folder into an NGINX container
FROM nginx:alpine
COPY ./nginx.config /etc/nginx/conf.d/default.conf
COPY --from=build /src/output/. /usr/share/nginx/html

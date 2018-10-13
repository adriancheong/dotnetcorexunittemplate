FROM microsoft/aspnetcore-build:2.0
ENV name ActiveDirectory
ENV buildconfig Release
COPY src/$name /root/$name
RUN cp /root/$name/GICRootCA.cer /usr/local/share/ca-certificates/GICRootCA.crt && update-ca-certificates
RUN export http_proxy=http://172.17.0.1:3128 && export https_proxy=http://172.17.0.1:3128 && cd /root/$name && dotnet restore && dotnet build -c $buildconfig && dotnet publish -c $buildconfig
RUN cp -rf /root/$name/bin/$buildconfig/netcoreapp2.0/publish/* /root/
WORKDIR /root
ENTRYPOINT dotnet ${name}.dll

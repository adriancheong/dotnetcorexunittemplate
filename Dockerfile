FROM microsoft/aspnetcore-build:2.0
ENV name DotnetCoreXUnitProjectTemplate
ENV buildconfig Release
COPY src/$name /root/$name
RUN cd /root/$name && dotnet restore && dotnet build -c $buildconfig && dotnet publish -c $buildconfig
RUN cp -rf /root/$name/bin/$buildconfig/netcoreapp2.0/publish/* /root/
WORKDIR /root
ENTRYPOINT dotnet ${name}.dll

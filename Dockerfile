FROM microsoft/aspnetcore-build:2.0
ENV name DotnetCoreXUnitProjectTemplate
ENV buildconfig Release
COPY src/$name/bin/$buildconfig/netcoreapp2.0/publish/* /root/
WORKDIR /root
ENTRYPOINT bash
#ENTRYPOINT dotnet ${name}.dll

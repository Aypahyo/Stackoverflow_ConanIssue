pushd "%~dp0"
docker version
docker pull gcc:10.2.0
docker build -t questionbuilder .
popd
@echo off
pushd "%~dp0"
if not exist build (md build)
docker run ^
-v "%CD%:/src" ^
-v "cache:/root/.conan/data" ^
-w /src/build ^
--name questioncontainer ^
questionimage ^
conan install .. --build=missing
docker rm questioncontainer
popd
echo done installing 
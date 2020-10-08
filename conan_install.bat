pushd "%~dp0"
if not exist build (md build)
if not exist build/conan (md build/conan)
docker run ^
-v "%CD%:/src" ^
-v "%CD%/build/conan:/root/.conan/data" ^
-w /src/build ^
--rm questionbuilder ^
conan install .. --build=missing
popd

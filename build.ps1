$ErrorActionPreference = 'Stop';
Write-Host Starting build

if ($isWindows) {
  docker build --pull -t landroid-bridge -f Dockerfile.windows .
} else {
  docker build -t landroid-bridge --build-arg "arch=$env:ARCH" .
}

docker images

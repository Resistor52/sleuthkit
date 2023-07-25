# sleuthkit_container
Containerize the open-source Sleuthkit tools 

## Build the Image

```
docker build --no-cache=true --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t resistor52/sleuthkit:latest .
```

## Usage Examples
```

```

## Acknowledgements
The Dockerfile is a fork of [https://github.com/DigiFors/DigiFors-Sleuthkit-Container](https://github.com/DigiFors/DigiFors-Sleuthkit-Container) and the usage examples were inspired by [https://gitlab.com/CinCan/tools/-/tree/master/stable/sleuthkit](https://gitlab.com/CinCan/tools/-/tree/master/stable/sleuthkit)


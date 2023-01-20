# cpkg
PoC for crossplane packaging 

This provides a naive script for taking a collection of YAML documents including a crossplane meta Configuration package and consolidating them into a package image.
The generation of the yaml documents is out of scope for this PoC. 

## Usage

Build the package image
```
export TAG=examplerepo/donothingpackage:v0.0.1
docker build -t $TAG --build-arg TAG=$TAG
```

Push the package to a container registry:

```
docker push $TAG
```

The configuration package can then be installed on a cluster via kubectl by applying the configuration resource.

The package can be inspected by copy the image from the registry and untaring the layers to see the package.yaml contents. 

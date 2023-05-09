# Docker container for BEERS2

Dockerfile for [BEERS2](https://github.com/itmat/BEERS2/tree/main): An RNA-seq simulator that combines a flexible and highly configurable design with detailed simulation of the entire library preparation and sequencing pipeline.

It's on [dockerhub](https://hub.docker.com/r/naotokubota/beers2) and [github](https://github.com/NaotoKubota/BEERS2).

## tags and links

- `1.0` [(master/Dockerfile)](https://github.com/NaotoKubota/BEERS2/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/beers2:1.0
```

or

```sh
git clone git@github.com:NaotoKubota/BEERS2.git
cd BEERS2
docker build --rm -t naotokubota/beers2:1.0 .
```

## running

```sh
docker run --rm -it naotokubota/beers2:1.0
```

# api_challenge_noodles

<p>
  <a href="https://github.com/tiagoleal/twitter-openweathermap">
    <img alt="Current Version" src="https://img.shields.io/badge/version-1.0.0 -blue.svg">
  </a>
  <a href="https://ruby-doc.org/core-2.7.1/">
    <img alt="Ruby Version" src="https://img.shields.io/badge/Ruby-2.7.1 -brightgreen.svg" target="_blank">
  </a>
  <a href="https://guides.rubyonrails.org/6_0_release_notes.html">
    <img alt="" src="https://img.shields.io/badge/Rails- 6.0-blue.svg" target="_blank">
  </a>
</p>

Challenge - Instant Noodle Problem<br />
João is a fanatic for "noodles"; he loves them, and, as expected, he took several packages when he went camping with his colleagues. As João only likes noodles made with the right time, he despaired when he realized that he had forgotten his watch at home.
Luckily, on the way, he managed to buy two hourglasses of different durations. For example, if the noodles need 3 minutes to be ready, and João has an hourglass of 5 minutes and another of 7 minutes, a possible way to cook the noodles is:
João starts turning the two hourglasses over at the same time. When the 5 minute hourglass sand runs out, João turns it over again. João starts preparing the noodles when the 7 minute hourglass sand runs out. when the 5 minute hourglass runs out again, the noodles will stay on fire for 3 minutes (from minute 7 to minute 10). So, although the noodles take only three minutes to cook, it needs 10 minutes to be ready. Make a program that, given the time of preparation of the noodles, and the times of the two hourglasses (both longer than the time of the noodles) , determines the minimum time needed for the noodles to be ready or if it is not possible to cook the noodles in the exact time with the available hourglasses.

Observation: it is necessary install the gem sdk 
https://github.com/Thiago-Cardoso/CalculateNoodles-sdk

## Stack the Project

- **Docker**
- **Rails Api**
- **Rspec (TDD)**

## Features

- **Public:**
  - Endpoint to show result of time cook

## Documentation API

- **Postman Online:** [<b>Documentation API</b>](https://documenter.getpostman.com/view/2339597/TWDZJwn5)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You must have installed on your machine:

- Docker
- Docker Compose

### Installing

First step is to install the docker service:

```bash
#Linux: ubuntu,Mint
$ sudo apt-get update
$ sudo apt-get install docker-ce
$ sudo apt install docker-compose

# Fedora
$ sudo dnf update -y
$ sudo dnf install docker-ce
$ sudo dnf -y install docker-compose
```

For test if the service was installed with succeed, you can run the command for to check de version of docker:

```bash
$ docker --version
#Must be have the docker version: Docker version 18.06.0-ce
$ docker-compose --version
#Must be have the docker-compose version: docker-compose version 1.22.0
```

## First steps

Follow the instructions to have a project present and able to run it locally.
After copying the repository to your machine, go to the project's root site and:

1.  Construct the container

```
docker-compose build
```

2.  Run the project

```
docker-compose up - d
```

## Running the tests

To run the tests, you must run the docker container through the command:

```
docker-compose run --rm app bundle exec rspec spec
```

## Authors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
[<img src="https://avatars1.githubusercontent.com/u/1753070?s=460&v=4" width="100px;"/><br /><sub><b>Tiago Leal</b></sub>](https://github.com/Thiago-Cardoso)<br />

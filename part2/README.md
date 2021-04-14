# Part 2

## 2.1

Check out folder Exercise2.01

## 2.2

Check out folder Exercise2.02

## 2.3

Check out folder Exercise2.03

## 2.4

Check out folder Exercise2.04

## 2.5

```shell
docker-compose up -d --scale compute=4
```

## 2.6

Check out folder Exercise2.06

## 2.7

Check out folder Exercise2.07

## 2.8

Check out folder Exercise2.08

## 2.9

Check out folder Exercise2.09

## 2.10

Check out folder Exercise2.10

## 2.11

### An interview project that works on APIs that consume restaurant data

#### Design decision
The project is containing three main parts, the main node application, and two mongodb container instances.

The origin design was to dockerize the mongodb seperately and to access based on the NODE_ENV. It was wise to containerized the mongodb but we still have to set up the node application ourselves.

Therefore, we containerized the node application as well, and upgrade the docker-compose.yml in the root folder such that it can start up both the testing database and the production database in differnet container at the same time. 

This time, we only need to alter the CMD command in the Dockerfile for the node application to decide either we go with testing or produciton. Other trivial stuff can be simply skipped thanks to docker-compose.

#### Link to the repository
[Link](https://github.com/charlesfu4/NENT-Interview-task)

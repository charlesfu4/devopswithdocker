## Optimizations from security to size for any other Dockerfile

Optimize a tinyurl app that has been dockerized

- Original 

```bash
git clone https://github.com/charlesfu4/Pluss-Interview-task.git
cd Pluss-Interview-task
docker build . -t tinyurl && docekr run -p 3001:3001 tinyurl
```
- Secured & shrinked size 

```bash
git clone https://github.com/charlesfu4/Pluss-Interview-task.git
docker build -t tinyurl:alpine -f Dockerfile.alpine .

```

- Multi-stage build 

```bash
git clone https://github.com/charlesfu4/Pluss-Interview-task.git
docker build -t tinyurl:multistage -f Dockerfile.multistage .

```


|  Dockerfile |     Sizes     |
|-------------| ------------- |
|   Normal    |     511MB     |
|   Alpine    |     435MB     |
| Multi-stage |     118MB     |
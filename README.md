# Build docker image
```sh
docker build -t helloworld_outlook_addin .
```

# Run docker container
```sh
docker run -v ./app:/app -w /app -it -p 3000:3000 --name helloworld_outlook_addin_container helloworld_outlook_addin
```

# Enter docker container
```sh
docker exec -it helloworld_outlook_addin_container sh 
```

# Tunnel localhost through ngrok
```sh
docker run --net=host -it -e NGROK_AUTHTOKEN=_YOUR_TOKEN_HERE_ ngrok/ngrok:alpine http --domain=terminally-suited-boa.ngrok-free.app 3000
```
**Note**
1. Please update the ngrok command with your token.
2. Please update your own static subdomain in above command as well as in manifest file.
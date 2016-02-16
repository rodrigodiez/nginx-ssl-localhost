# What is docker-nginx-ssl?
nginx-ssl is a `nginx` docker image which comes with a self-signed certificate for `localhost` and a basic nginx ssl set up. By using it you can bootstrap ssl projects within seconds

# How to use
Run the container by executing
`docker run --name nginx-ssl --rm -p "443:443" rodrigodiez/nginx-ssl`

Now, open `https://localhost` in your browser. You should see a welcome page

# Serving your site
It's easy to serve your own set of files. Just mount as a volume in `/usr/share/nginx/html` the directory where they live in:
`docker run --name nginx-ssl --rm -p "443:443" -v /some/html:/usr/share/nginx/html rodrigodiez/nginx-ssl`

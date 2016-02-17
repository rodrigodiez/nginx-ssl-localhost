# What is nginx-ssl-localhost?
Is a ready to use nginx ssl image which comes pre-configured with a self-signed certificate for localhost

# How to use
Run the container by executing
`docker run --name nginx-ssl-localhost --rm -p "443:443" rodrigodiez/nginx-ssl-localhost`

Now, open `https://localhost` in your browser. You should see a welcome page

# Serving your site
Just mount your site's directory as a volume in `/usr/share/nginx/html`:
`docker run --name nginx-ssl-localhost --rm -p "443:443" -v /some/html:/usr/share/nginx/html rodrigodiez/nginx-ssl-localhost`

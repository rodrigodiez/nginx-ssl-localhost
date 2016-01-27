# What is ssl-playground?
ssl-playground is a `nginx` docker image which comes configured with a self-signed ssl certificate for the domain `playground.local`. By using it you can start ssl-enabled projects within seconds

# Considerations
`playground.local` domain needs to be resolvable from your machine. You will normally tackle this by adding an entry in your `/etc/hosts` file pointing to your loopback ip address `127.0.0.1`

# Basic usage
First, run the container by executing
`docker run --name ssl-playground --rm -p "443:443" rodrigodiez/ssl-playground`

Now, open `https://playground.local` in your browser. You should see a welcome page

# Serving your site
It's easy to serve your own set of files. Just mount as a volume in `/usr/share/nginx/html` the directory where they live in:
`docker run --name ssl-playground --rm -p "443:443" -v /some/html:/usr/share/nginx/html rodrigodiez/ssl-playground`

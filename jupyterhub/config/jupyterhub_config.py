import os
import wordpressauthenticator
# Configuration file for jupyterhub.


from subprocess import check_call
import os
def my_script_hook(spawner):
    username = spawner.user.name # get the username
    script = os.path.join(os.path.dirname(__file__), 'bootstrap.sh')
    check_call([script, username])

# attach the hook function to the spawner
c.Spawner.pre_spawn_hook = my_script_hook


# Force the proxy to only listen to connections to 127.0.0.1 default at 8000
c.JupyterHub.ip = '127.0.0.1'

# c.JupyterHub.ssl_key = 'jupyterhub.key'
# c.JupyterHub.ssl_cert = 'jupyterhub.crt'
# c.JupyterHub.port = 443


# set of users allowed to use the Hub
# c.Authenticator.whitelist = {'instructor1', 'student1','admin'}

# set of users who can administer the Hub itself
c.Authenticator.admin_users = {'admin','instructor1','instructor2','instructor3'}


#from oauthenticator.github import LocalGitHubOAuthenticator
#c.JupyterHub.authenticator_class = LocalGitHubOAuthenticator

c.JupyterHub.authenticator_class = "wordpressauthenticator.WordPressAuthenticator"
c.WordPressAuthenticator.dbuser = "root"
c.WordPressAuthenticator.dbpassword = "passw0rd"

c.WordPressAuthenticator.dbhost = "localhost"
c.WordPressAuthenticator.dbport = 3306
c.WordPressAuthenticator.dbname = "easyailab"
c.WordPressAuthenticator.table_prefix = "wp_"



from dockerspawner import DockerSpawner
c.JupyterHub.spawner_class = DockerSpawner
c.DockerSpawner.container_image = 'jupyterhub/singleuser_eal'

c.Spawner.mem_limit = '500M'
c.SystemdSpawner.cpu_limit = 0.5

# Explicitly set notebook directory because we'll be mounting a host volume to
# it.  Most jupyter/docker-stacks *-notebook images run the Notebook server as
# user `jovyan`, and set the notebook directory to `/home/jovyan/work`.
# We follow the same convention.
notebook_dir = os.environ.get('DOCKER_NOTEBOOK_DIR') or '/home/jovyan/work'
c.DockerSpawner.notebook_dir = notebook_dir


# Mount the real user's Docker volume on the host to the notebook user's
# notebook directory in the container
# c.DockerSpawner.volumes = { 'jupyterhub-user-{username}': notebook_dir, 'shared': '/srv/nbgrader/exchange' }
# c.DockerSpawner.volumes = { 'jupyterhub-user-{username}': notebook_dir}
# c.DockerSpawner.volumes = { '/srv/data/userhomedir/{username}/': notebook_dir,'/srv/data/exchange/':'/srv/nbgrader/exchange','/srv/data/tmp/':'/srv/tmp'}
c.DockerSpawner.volumes = { '/srv/data/userhomedir/{username}/': notebook_dir,'/srv/data/exchange/':'/srv/nbgrader/exchange','/srv/data/deployment/':'/srv/deployment'}



# the Hub's API listens on localhost by default,
# but docker containers can't see that.
# Tell the Hub to listen on its docker network:
import netifaces
docker0 = netifaces.ifaddresses('docker0')
docker0_ipv4 = docker0[netifaces.AF_INET][0]
c.JupyterHub.hub_ip = docker0_ipv4['addr']
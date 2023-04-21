# Use cifsdk Python client within a Jupyter notebook inside a container

1. Ensure `~/.cif.yml` is present with correct info
2. `docker compose up -d` will build and deploy container
3. `JUPYTER_TOKEN=$(docker compose exec jupyter-cif cat /home/jovyan/.local/share/jupyter/runtime/jpserver-8.json | grep token | cut -d ':' -f2 | cut -d '"' -f2)`
4. Visit `http://<host>:8888/lab/tree/work/cifv3.ipynb?token=<JUPYTER_TOKEN>` in a browser, where `<host>` is the IP of the host where your container is running, and `<JUPYTER_TOKEN>` is the output from the previous step

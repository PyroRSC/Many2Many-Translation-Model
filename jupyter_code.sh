sudo docker run -d --name nlp-ipynb -it -v $(pwd):/workspace/ -p 8888:8888 --gpus all jupyterlab-cst 

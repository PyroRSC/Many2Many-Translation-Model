FROM python:3.12-slim

# Set working directory
WORKDIR /workspace

# Install JupyterLab
ENV JUPYTER_TOKEN=token
# Expose port for JupyterLab
EXPOSE 8888

RUN apt-get update && apt-get install build-essential sentencepiece libsentencepiece-dev -y --no-install-recommends
RUN pip install --no-cache-dir jupyterlab
RUN pip install ipywidgets ipykernel protobuf
RUN pip install transformers huggingface_hub sentencepiece -U 
RUN pip install numpy pandas peft bitsandbytes -U
RUN pip install  evaluate torch torchvision sacrebleu -U 


# Run JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]


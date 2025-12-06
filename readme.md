### Many2Many-Translation-Model Directory
Authors: Renzo Chua, Malks David, Kenneth Go, Rinaldo Lee

### Steps to Reproduce
1. Obtain a huggingface API key from https://huggingface.co/ 
2. Generate the parallel corpora from `parallel_corpora_gen.ipynb`
3. Clean the datasets with `clean_dataset.ipynb`
4. Run the `tokenizer.ipynb` 
5. Fine tune the model with `fine-tuning.ipynb`
6. Evaluate with `evaluation.ipynb`

---

tokenizer.ipynb
- generates the tokenizer files and vocab/model files for the tokenizer

parallel_corpora_gen.ipynb
- splits the original parallel corpora based on language pairs

m2m100-tl-ceb-model.zip
- model zip file for the m2m100_1.2b tl-ceb model

m2m100-tl-ilg-model.zip
- model zip file for the m2m100_1.2b tl-ilg model

evaluation-base.ipynb
- displays the base model specs

evaluation.ipynb
- evaluation notebook for the model

fine-tuning.ipynb
- fine tuning notebook

clean_dataset.ipynb
- cleans the dataset with regex and other functions

Dockerfile
- to replicate the setup run `docker build -t jupyterlab-cst .` and the `jupyter_code.sh` to run the jupyter lab container

vocabs
- vocab files generated from the tokenizer.ipynb notebook

tokenizers
- tokenizer data

dataset
- dataset containing the csvs and txt files

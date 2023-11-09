# hf-download-scripts
Short scripts for downloading huggingface repos en masse in the background.

## Usage

Pass a list of git repo urls to `dload.sh` and it will perform a `lfs clone` using nohup in the background for each sequentially. 

```bash
./dload.sh https://huggingface.co/TheBloke/Yarn-Mistral-7B-128k-GGUF https://huggingface.co/codellama/CodeLlama-34b-Instruct-hf
```

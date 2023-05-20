docker buildx build --push --file ./prem-chat-llama-cpp/docker/m1/Dockerfile --build-arg="MODEL_ID=vicuna-7b-q4" --tag ghcr.io/premai-io/prem-chat-vicuna-7b-q4-m1:latest --platform linux/arm64,linux/amd64 ./prem-chat-llama-cpp
docker buildx build --push --file ./prem-chat-llama-cpp/docker/m1/Dockerfile --build-arg="MODEL_ID=gpt4all-lora-q4" --tag ghcr.io/premai-io/prem-chat-gpt4all-lora-q4-m1:latest --platform linux/arm64,linux/amd64 ./prem-chat-llama-cpp

docker system prune -f -a

docker buildx build --push --file ./prem-chat-dolly-v2/docker/gpu/Dockerfile --build-arg="MODEL_ID=databricks/dolly-v2-12b" --tag ghcr.io/premai-io/prem-chat-dolly-v2-12b-gpu:latest --platform linux/arm64,linux/amd64 ./prem-chat-dolly-v2

docker system prune -f -a

docker buildx build --push --file ./prem-embeddings-st/docker/gpu/Dockerfile --build-arg="MODEL_ID=sentence-transformers/all-MiniLM-L6-v2" --tag ghcr.io/premai-io/prem-embeddings-all-MiniLM-L6-v2-gpu:latest --platform linux/arm64,linux/amd64 ./prem-embeddings-st

docker system prune -f -a

docker buildx build --push --file ./prem-michelangelo-sd/docker/gpu/Dockerfile --build-arg="MODEL_ID=stabilityai/stable-diffusion-2-1-base" --tag ghcr.io/premai-io/prem-michelangelo-stable-diffusion-2-1-base-gpu:latest --platform linux/arm64,linux/amd64 ./prem-michelangelo-sd
docker buildx build --push --file ./prem-michelangelo-sd/docker/gpu/Dockerfile --build-arg="MODEL_ID=stabilityai/stable-diffusion-2-base" --tag ghcr.io/premai-io/prem-michelangelo-stable-diffusion-2-base-gpu:latest --platform linux/arm64,linux/amd64 ./prem-michelangelo-sd

docker system prune -f -a

docker buildx build --push --file ./prem-audio-to-text-wh/docker/gpu/Dockerfile --build-arg="MODEL_ID=large-v2" --tag ghcr.io/premai-io/prem-audio-to-text-whisper-large-v2-gpu:latest --platform linux/arm64,linux/amd64 ./prem-audio-to-text-wh

docker system prune -f -a

docker buildx build --push --file ./prem-text-to-audio-ba/docker/gpu/Dockerfile --tag ghcr.io/premai-io/prem-text-to-audio-bark-gpu:latest --platform linux/arm64,linux/amd64 ./prem-text-to-audio-ba

#!/bin/bash

# path to directory of audio
path_to_audio='/root/host/audio/sandlab-test'
path_to_transcription=$path_to_audio/transcription

sudo docker run --rm -v ${PWD}/:/root/host/ -it --ipc=host --name w2l -a stdin -a stdout -a stderr wav2letter/wav2letter:inference-latest sh -c "/root/wav2letter/build/inference/inference/examples/multithreaded_streaming_asr_example \
--input_files_base_path /root/host/model \
--input_audio_files $path_to_audio/target_voice.wav \
--output_files_base_path $path_to_transcription"

python3 demo_cli.py

exit
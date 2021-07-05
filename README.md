# Baseline for Voice Jammer Project
This baseline uses existing technologies to create a clean-slate, end-to-end personalized virtual voice platform, using only a user voice and a target voice. In its current locally-running version, the platform is a script that runs [Facebook Flashlight](https://github.com/flashlight/flashlight) for automatic speech recognition (ASR) then [SV2TTS](https://github.com/CorentinJ/Real-Time-Voice-Cloning) to generate the speech.

To get started, you will need to set up Flashlight and SV2TTS before running `pipeline_script.sh`.


## Setup Flashlight

### 1. Install Requirements
* This project runs Flashlight with Docker. Please make sure you have Docker installed and that Docker is up and running for the baseline.

* Follow the instructions in the [overview](https://github.com/flashlight/wav2letter/wiki/Inference-Run-Examples) to install the example trained models from AWS S3. You do not need the LibriSpeech audio samples for our purposes but you may choose to download them as well for testing purposes. 


## Setup SV2TTS

### 1. Install Requirements

**Python 3.6 or 3.7** is needed to run the toolbox.

* Install [PyTorch](https://pytorch.org/get-started/locally/) (>=1.0.1).
* Install [ffmpeg](https://ffmpeg.org/download.html#get-packages).
* Run `pip install -r requirements.txt` to install the remaining necessary packages.

### 2. Download Pretrained Models
Download the latest [here](https://github.com/CorentinJ/Real-Time-Voice-Cloning/wiki/Pretrained-models).

By the end of the installation process, you should have a `model` folder in your local repo. 

### 3. (Optional) Test Configuration
Before you download any dataset, you can begin by testing your configuration with:

`python demo_cli.py`

If all tests pass, you're good to go.

### 4. (Optional) Download Datasets
For playing with the toolbox alone, I only recommend downloading [`LibriSpeech/train-clean-100`](https://www.openslr.org/resources/12/train-clean-100.tar.gz). Extract the contents as `<datasets_root>/LibriSpeech/train-clean-100` where `<datasets_root>` is a directory of your choosing. Other datasets are supported in the toolbox, see [here](https://github.com/CorentinJ/Real-Time-Voice-Cloning/wiki/Training#datasets). You're free not to download any dataset, but then you will need your own data as audio files or you will have to record it with the toolbox.

### 5. Launch the Toolbox
You can then try the toolbox:

`python demo_toolbox.py -d <datasets_root>`  
or  
`python demo_toolbox.py`  

depending on whether you downloaded any datasets. If you are running an X-server or if you have the error `Aborted (core dumped)`, see [this issue](https://github.com/CorentinJ/Real-Time-Voice-Cloning/issues/11#issuecomment-504733590).

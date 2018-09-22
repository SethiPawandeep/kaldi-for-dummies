# Kaldi for dummies

The digits recordings data has been taken from https://github.com/Jakobovski/free-spoken-digit-dataset/tree/master/recordings

The data was brought to the required format by running the script `script.sh`

### Steps to bring the dataset to proper format.
1. Move N speakers to `test` directory and remaining to `train`
2. Create a file spk2gender to show the mapping of the speakers to their gender.
3. Run the scripts `script_for_utt2spk.sh`, `script_for_wav.scp.sh`, and `script_for_text.sh` to generate the respective files.
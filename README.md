# Kaldi for dummies

The digits recordings data has been taken from [here](https://github.com/Jakobovski/free-spoken-digit-dataset/tree/master/recordings).

The data was brought to the required format by running the script `script.sh` which is there in the root directory of the project. It should be run in the directory where the above audio files exist. You may need to change permissions before running the `script.sh`

### Steps to bring the dataset to proper format.
1. Move N speakers to `test` directory and remaining to `train`
2. Create a file spk2gender to show the mapping of the speakers to their gender.
3. Run the scripts `script_for_utt2spk.sh`, `script_for_wav.scp.sh`, and `script_for_text.sh` to generate the respective files.
4. `text`, `wav.scp`, and `utt2spk` would be generated as a result of the above step. Move these files to their respective test or train sub-directories in the `data` directory.
Completing these steps ensures that the data has been properly set up.

For further steps, kaldi-for-dummies can be followed from [here](http://www.dsp.agh.edu.pl/_media/pl:dydaktyka:kaldi_for_dummies.pdf).

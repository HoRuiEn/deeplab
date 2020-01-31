
export PYTHONPATH=$PYTHONPATH:/home/whizz/Desktop/deeplabv3/deeplab

DATASET_FOLDER="/home/whizz/data"

python /home/whizz/Desktop/deeplabv3/deeplab/inference.py \
    --image_folder="${DATASET_FOLDER}/selected" \
    --output_folder="${DATASET_FOLDER}/post" \
    --model_directory="${DATASET_FOLDER}/models/deeplab_adambest.tar.gz" \
    --crf_pos=80 \
    --crf_col=26 \
    --crf_smooth=3 \
    --use_crf
    
    # --print_tensor='directory/tensors.txt'                # path to text file, no segmentation, only check checkpoint model
    # --gpu=-1                                              # use CPU only
    # --use_crf                                             # whether to use crf
    # --add_orig                                            # to attach segmentation image with original
    # --translate_labels                                    # to translate sky to building e.g.
    # --print_tensor="directory/checkpoint_tensors.txt"     # output tensors of chkpoint to text file
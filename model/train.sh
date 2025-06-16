#!/bin/sh

project_dir='/lustre/groups/epigenereg01/workspace/projects/vale/gxe-eqtl/borzoi'
hg38_dir=$project_dir'/training_data/data/hg38'
mm10_dir=$project_dir'/training_data/data/mm10'
saved_models=$project_dir'/saved_models/default'
#saved_models=$project_dir'/saved_models/masked'
params=/home/icb/sergey.vilov/workspace/gxe-eqtl/borzoi/borzoi/examples/params.json

#westminster_train_folds.py --restart --restore $saved_models  -e borzoi --f_list 3 -c 1 --identical_crosses -q gpu_long -o $saved_models $params $hg38_dir $mm10_dir
westminster_train_folds.py  -e borzoi --f_list 3 -c 1 --identical_crosses -q gpu_long -o $saved_models $params  $mm10_dir $hg38_dir

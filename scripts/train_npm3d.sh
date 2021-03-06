#!/usr/bin/env bash
DATA_ROOT = /home/yc/chen/
TRAIN_SET = $DATA_ROOT/data/point_cloud/npm3d
python train.py $TRAIN_SET \
--dataset_name 'npm3d'  --model_name 'KPConv_Net'  --task 'segmentation'  --seed 2048 \
--workers 8  --epochs 100  --batch_size 6  --epoch_steps 500 \
--optimizer 'Adam'  --lr 0.01  --momentum 0.9 --beta 0.999 --weight_decay 0 \
--decay_style 'LambdaLR' --decay_basenum 0.95  --decay_step 50 --decay_rate 0.7 \
--offsets_loss 'fitting'  --offset_decay 0.1 \
--KP_influence 'linear' \
--KP_extent 1.0 \
--density_parameter 5.0 \
--convolution_mode 'sum' \
--fixed_kernel_points 'center' \
--in_features_dim 1 \
--in_points_dim 3  \
--modulated False \
--grad_clip_norm 100.0 \
--batch_average_loss False \
--in_radius 4.0 \
--segmentation_ratio 1.0 \
--first_features_dim 64 \
--density_parameter 3.0 \
--num_pts 40960 \
--num_cls 13 \
--num_kpts 15 \
--sub_grid_size 0.08 \
--val_split 5 \
--augment_scale_anisotropic True \
--augment_symmetries [True,False,False] \
--augment_rotation 'vertical' \
--augment_scale_min 0.9 \
--augment_scale_max 1.1 \
--augment_noise 0.01 \
--augment_occulusion 'none' \
--augment_occulusion_ratio 0.2 \
--augment_occulusion_num 1 \
--augment_color 1.0 \
--is_debug True

# ['simple',
# 'resnetb',
# 'resnetb_strided',
# 'resnetb',
# 'resnetb_strided',
# 'resnetb_deformable',
# 'resnetb_deformable_strided',
# 'resnetb_deformable',
# 'resnetb_deformable_strided',
# 'resnetb_deformable',
# 'nearest_upsample',
# 'unary',
# 'nearest_upsample',
# 'unary',
# 'nearest_upsample',
# 'unary',
# 'nearest_upsample',
# 'unary']
# NPM3d  Scannet  Shapenet
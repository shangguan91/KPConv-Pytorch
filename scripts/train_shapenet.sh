DATA_ROOT = /home/yc/chen/
TRAIN_SET = $DATA_ROOT/data/point_cloud/shapenet
python train.py $TRAIN_SET \
--dataset_name 'shapenet'  --model_name 'KPConv_Net'  --task 'segmentation'  --seed 2048 \
--workers 8  --epochs 100  --batch_size 16  --epoch_steps 500 \
--optimizer 'Adam'  --lr 0.01  --momentum 0.9 --beta 0.999 --weight_decay 0 \
--decay_style 'LambdaLR' --decay_basenum 0.98  --decay_step 50 --decay_rate 0.7 \
--offsets_loss 'fitting'  --offset_decay 0.1 \
--KP_influence 'linear' \
--KP_extent 1.0 \
--density_parameter 5.0 \
--convolution_mode 'sum' \
--fixed_kernel_points 'center' \
--in_features_dim 4 \
--in_points_dim 3  \
--modulated False \
--grad_clip_norm 100.0 \
--batch_average_loss False \
--in_radius 1.0 \
--segmentation_ratio 1.0 \
--first_features_dim 64 \
--density_parameter 3.0 \
--num_pts 40960 \
--num_cls 13 \
--num_kpts 15 \
--sub_grid_size 0.02 \
--val_split 5 \
--augment_scale_anisotropic True \
--augment_symmetries [False,False,False] \
--augment_rotation 'none' \
--augment_scale_min 0.9 \
--augment_scale_max 1.1 \
--augment_noise 0.001 \
--augment_occulusion 'none' \
--augment_occulusion_ratio 0.2 \
--augment_occulusion_num 1 \
--augment_color 1.0 \
--is_debug True
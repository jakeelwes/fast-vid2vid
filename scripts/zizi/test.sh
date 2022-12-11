python inference.py --name luke-full \
--dataroot /zizi-data/datasets/acts/full --checkpoints_dir /zizi-data/checkpoints/ --results_dir results/zizitest \
--input_nc 6 --n_scales_spatial 1 --ngf 29 --ndf 25 --dataset_mode pose \
--resize_or_crop scaleHeight --loadSize 850 --fineSize 850 \
--no_first_img --add_face_disc --how_many 500000 \
--start_frame 0

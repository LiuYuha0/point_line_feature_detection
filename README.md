# point_line_feature_detection
Fast point-line feature detection for VIO(Visual-Inertial Odometry) based on gradient density. It mainly solves the time-consuming problem of line feature detection in repeated textures area. The pixel gradient changes frequently in this area which the region grow of LSD would be restrained. 


## Demo
We tested on the [EuRoc dataset](https://projects.asl.ethz.ch/datasets/doku.php?id=kmavvisualinertialdatasets) and the detection result of one frame from [V1_03_difficult](http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/vicon_room1/V1_03_difficult/V1_03_difficult.bag) shows as follows.

<div align="center">
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/figure1.png" alt="fig1" width="33%" />
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/DenseArea.png" alt="Dense" width="33%" />
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/figure2.png" alt="fig2" width="33%" />
</div>

## Run
Clone the repository
```sh
cd YOUR_WORKSPACE/
git clone https://github.com/LiuYuha0/point_line_feature_detection.git
cd point_line_feature_detection/FeatureDetect/
```

Opne matlab and run
```sh
main.m
```
**NOTICE**: If you want to test on your own dataset, do not forget to modify camera parameters!

## Test Result
In order to verify the performance of this algorithm, we tested it on whole dataset and the results of time consume show in Fig.1(V1_01_easy) and Fig.2(V1_03_difficult).
<div align="center">
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/V1_01_easy.png" alt="result1" width="48%" />
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/V1_03_difficult.png" alt="result3" width="48%" />
</div>
# point_line_feature_detection
Fast point-line feature detection for VIO(Visual-Inertial Odometry) based on gradient density. It mainly solves the time-consuming problem of line feature detection in repeated textures area. The pixel gradient changes frequently in this area which the region grow of LSD would be restrained. 


## Demo
We tested on the [EuRoc dataset](https://projects.asl.ethz.ch/datasets/doku.php?id=kmavvisualinertialdatasets) and the detection result of one frame from [V1_03_difficult](http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/vicon_room1/V1_03_difficult/V1_03_difficult.bag) shows as follows.

Feature detection
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/figure1.png" alt="fig1" width="360" height="240" border="10" />

Dense area
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/DenseArea.png" alt="Dense" width="360" height="240" border="10" />

Improved
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/figure2.png" alt="fig2" width="360" height="240" border="10" />

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
**Note**: If you want to test on your own dataset, do not forget to modify camera parameters!

## Test Result
V1_01_easy
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/V1_01_easy.png" alt="result1" width="360" height="240" border="10" />

V1_03_difficult
<img src="https://github.com/LiuYuha0/point_line_feature_detection/blob/master/example/V1_03_difficult.png" alt="result2" width="360" height="240" border="10" />
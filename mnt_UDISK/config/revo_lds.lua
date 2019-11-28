-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "map_builder.lua"

options = {
  map_builder = MAP_BUILDER,
  map_frame = "map",
  tracking_frame = "horizontal_laser_link",
  published_frame = "horizontal_laser_link",
  odom_frame = "odom",
  provide_odom_frame = true,
  use_odometry_data = true,
  use_constant_odometry_variance = true,
  constant_odometry_translational_variance = 0.00005,
  constant_odometry_rotational_variance = 0.00005,
  use_horizontal_laser = true,
  use_horizontal_multi_echo_laser = false,
  horizontal_laser_min_range = 0.2,
  horizontal_laser_max_range = 6.0,
  horizontal_laser_missing_echo_ray_length = 1.,
  num_lasers_3d = 0,
  lookup_transform_timeout_sec = 0.2,
  submap_publish_period_sec = 0.3,
  pose_publish_period_sec = 5e-3,
}

MAP_BUILDER.use_trajectory_builder_2d = true
TRAJECTORY_BUILDER_2D.use_imu_data = true
TRAJECTORY_BUILDER_2D.use_online_correlative_scan_matching = true
SPARSE_POSE_GRAPH.optimization_problem.huber_scale = 1e2
SPARSE_POSE_GRAPH.optimize_every_n_scans = 10000000
TRAJECTORY_BUILDER_2D.submaps.num_laser_fans = 10000000
TRAJECTORY_BUILDER_2D.submaps.half_length = 40.0
TRAJECTORY_BUILDER_2D.horizontal_laser_min_z = -0.42
TRAJECTORY_BUILDER_2D.horizontal_laser_max_z = 1.0
TRAJECTORY_BUILDER_2D.real_time_correlative_scan_matcher.linear_search_window = 0.15
TRAJECTORY_BUILDER_2D.real_time_correlative_scan_matcher.angular_search_window = math.rad(30.)
TRAJECTORY_BUILDER_2D.pose_tracker.imu_gravity_variance = 0.01
TRAJECTORY_BUILDER_2D.adaptive_voxel_filter.max_length = 2.0

return options

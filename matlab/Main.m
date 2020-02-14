%% Main code for ergodic sampling
function planner()

rosinit();
map = rossubscriber('/robot1/map');
infomap = rossubscriber('/robot1/infomap');
costmap= rossubscriber('/robot1/move_base/global_costmap/costmap');

traj=planner(map.LatestMessage,infomap.LatestMessage,costmap.LatestMessage);
rosshutdown();
end


# コンパイラの指定
CC = g++
# インクルードファイル等
CFLAGS = -lm
LDFLAGS = -L/usr/local/lib -L/opt/pylon/lib -L /usr/lib/x86_64-linux-gnu -L/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu#-L/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu#-Wl,-E
LIBS = -lopencv_core \
	-lopencv_cudaimgproc\
	-lopencv_highgui\
	-lopencv_imgcodecs\
	-lopencv_imgproc\
    -lopencv_calib3d \
 	-lpylonbase \
  	-lpylonutility \
  	-lGenApi_gcc_v3_1_Basler_pylon \
    -lGCBase_gcc_v3_1_Basler_pylon \
	-lrealsense2 \
	-lboost_atomic \
	-lboost_system \
	-lboost_thread \
	-lboost_signals \
	-lboost_numpy3-py36\
	-lboost_python3-py36\
	-lpython3.6\
	-lstdc++ \
	-pthread \
	
	
	#-lpython2.7 -lpython3.5
INCLUDE =   -I/usr/local/include/opencv4 \
			-I/opt/pylon/include \
			-I/usr/include/ \
			-I/usr/include/python3.6m
			#-I/usr/include/python3.6m

# 実行ファイル名
#TARGETS = main
TARGETS = realsense_sample_show
#clean:;         rm -f *.o *~ $(PROGRAM)
#clean:
	#rm $(TARGETS)
# compile
#main: main_camera_input.cpp
realsense_sample_show: realsense_sample_show.cpp
	$(CC) realsense_sample_show.cpp -o $(TARGETS) $(CFLAGS) $(INCLUDE) $(LDFLAGS) $(LIBS)
# make clean

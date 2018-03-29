ROS

# 为什么要学习ROS

之前在德国RWTH Aachen University短期交流的时候就接触过ROS操作系统以及在ROS上的一些扩展内容，有点意外的是
这样一个优秀的机器人开源操作系统平台在国内学校中用的不多。作为一个有点国际经验的学生，平心而论国外的教学
环境先进之处在于教师与课程内容都是与时俱进的，在课上用到的都是最新的工具与方法，把经典的理论立体丰富地展
现给学生。

National Instruments的 NI ELVIS + myDAQ构建了从电路搭建到信号采集与显示一体化的模电数电实验环境；源于
欧洲意大利的Arduino系列微处理器电子积木简化了微处理器的编程门槛，由于它有丰富的开源库文件并且便于实现功能，
当做玩具用用就好；在德国Aachen所接触的 ROS+Gazebo+rviz+MoveIt! 应该是机器人领域最流行的一套设置。同时，重要
的一点在于在使用这些工具的时候，同学们会把 C++, Python 这些编程工具用起来，这是国内最欠缺的一块。学了那么多
语言，但都不知道怎么使用（没有使用的需求），耽误了国内这么多优秀的学生资源。国内的教学还是集中于经典知识
的讲解，将知识完全抽象并用数学的方式描述，殊不知现在的计算机就是新一代的数学工具，在这方面国内的老师还没转过弯来。

Anyway, 扯远了。学习ROS的主要原因就在于一下几点。

1. 打算进军 Autonomous Robotics 领域，将 Machine Learning 与 Control Science 相结合。
2. 目前申请的PhD项目中导师实验室都在用ROS，工具这些东西当然要尽快熟悉。
3. 为我的C++和Python找一个应用对象，是时候把代码练起来了。This is an era for programming.

学习ROS主要是在Ubuntu上玩儿，所以这个 repository 就当一个学习笔记吧。

>我的学习资料为

>[wiki.ROS.Tutorial : http://wiki.ros.org/cn/ROS/Tutorials](http://wiki.ros.org/cn/ROS/Tutorials)

跳过简单部分，从创建ROS程序包开始
在catkin工作空间中的程序包架构

	workspace_folder/
	  src/
	    CMakeLists.txt
	    package_1/
	        CMakeLists.txt
	        package.xml
	    ... ...
	    package_n/
	        CMakeLists.txt
	        package.xml

## 创建ROS程序包

首先，创建一个 catkin 程序包，在 catkin 工作空间中的 src 目录下：

	$ cd ~/catkin_ws/src
	$ catkin_create_pkg beginner_tutorials std_msgs rospy roscpp

创建了一个名为beginner_tutorials的文件夹，其中包含一个package.xml文件和一个CMakeList.txt文件。
catkin_create_pkg的语法为

	# catkin_create_pkg  <package_name> [depend1] [depend2] [depend3]
	
对自动生成的package.xml文件进行修改，对依赖项标签的修改。由于在创建程序包时添加了依赖项，因此自动生成的
依赖项为：

	<buildtool_depend>catkin</buildtool_depend>
	<build_depend>roscpp</build_depend>
	<build_depend>rospy</build_depend>
	<build_depend>std_msgs</build_depend>
	
由于在编译和运行时我们需要用到所有指定的依赖包，因此需要将每一个依赖包分别添加到run_depend标签中

	<buildtool_depend>catkin</buildtool_depend>
	
	<build_depend>roscpp</build_depend>
	<build_depend>rospy</build_depend>
	<build_depend>std_msgs</build_depend>
	
	<exec_depend>roscpp</exec_depend>
	<exec_depend>rospy</exec_depend>
	<exec_depend>std_msgs</exec_depend>

最后完成的package.xml文件为

	<?xml version="1.0"?>
	<package format="2">
	     <name>beginner_tutorials</name>
	     <version>0.1.0</version>
	     <description>The beginner_tutorials package</description>

	     <maintainer email="you@yourdomain.tld">Your Name</maintainer>
	     <license>BSD</license>
	     <url type="website">http://wiki.ros.org/beginner_tutorials</url>
	     <author email="you@yourdomain.tld">Jane Doe</author>
 
	     <buildtool_depend>catkin</buildtool_depend>

	     <build_depend>roscpp</build_depend>
	     <build_depend>rospy</build_depend>
	     <build_depend>std_msgs</build_depend>
 
	     <exec_depend>roscpp</exec_depend>
	     <exec_depend>rospy</exec_depend>
	     <exec_depend>std_msgs</exec_depend>

	</package>

## 编译ROS程序包

在编译ROS程序包之前，需要source环境配置(setup)文件，在新开的终端中也要执行此命令。有一次性永久解决的方法，
但在我的机器上并没有取得效果，因此暂时不加以描述。（之后玩儿熟了会回来解决这个问题）

	$ source /opt/ros/kinetic/setup.bash

使用catkin_make编译程序包，在catkin工作空间中进行编译

	$ cd ~/catkin_ws/
	$ catkin_make

	
	





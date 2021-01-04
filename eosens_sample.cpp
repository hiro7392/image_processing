/**
* @mainpage
* 
* ## abstruct
* 
* ## required libraries
* - 
* - opencv: 3.0�ȏ�
*	- download: https://sourceforge.net/projects/opencvlibrary/files/opencv-win/
* - TBB
*	- download: https://github.com/01org/tbb/releases
* - boost
*	- download: https://sourceforge.net/projects/boost/files/boost-binaries/
* - SiliconSoftware SDK
*
* ## ����
* - �摜���\������Ă���E�C���h�E�ŃL�[���������Ƃŉ��L�̗l�ɓ���
*	- q: �v���O�����̏I��
*   - s: �摜��ۑ��J�n(ImageProc��"maxSaveNum"�ŕۑ��t���[�����ݒ�C���O�ɕۑ���f�B���N�g�����쐬)
*   - S: �摜�ۑ����~
*
* main files
* - eosens_sample.cpp: this file main file
* - communicate_dspce.h: communication with dSpace
* - display_info.h: display the images
* - image_proc.h: image processing
* - type_definition.h: defintion of types and structs
*/

#include "stdafx.h"

#define CVLIBVER CVAUX_STR(CV_MAJOR_VERSION) CVAUX_STR(CV_MINOR_VERSION) CVAUX_STR(CV_SUBMINOR_VERSION)
#ifdef NDEBUG
#define CVLIB(name) "opencv_" CVAUX_STR(name) CVLIBVER
#else
#define CVLIB(name) "opencv_" CVAUX_STR(name) CVLIBVER "d"
#endif
#pragma comment(lib, CVLIB(world))


int sample()
{
	// const
	// conmmunication with dSpace
	const std::string destIP = "10.1.196.179";
	const std::string destPort = "50006";
	const std::string srcPort = "52001";
	//image proccessing
	const unsigned int width = 528;//608;
	const unsigned int height = 490;//538;

	//
	spsc_queue<sendData_t> queSend; //! sending data from image proccessing to communication
	spsc_queue<recvData_t> queRecv; //! received date from communication to image processing
	spsc_queue<dispData_t> queDisp; //! display the data from image processing to display
	std::atomic<bool> isSaveImage = false; //! output the images for debug 

	auto comDspacePtr = std::make_unique<ComDspace>(queSend, queRecv, destIP, destPort, srcPort);
	auto imageProcPtr = std::make_unique<ImageProc>(queDisp, queSend, queRecv, width, height);
	auto dispInfoPtr = std::make_unique<DispInfo>(queDisp, width, height);
	
	std::thread sendThread(&ComDspace::sendData, std::ref(*comDspacePtr));
	std::thread recvThread(&ComDspace::recieveData, std::ref(*comDspacePtr));
	std::thread imageProcThread(std::ref(*imageProcPtr), std::ref(isSaveImage));
	std::thread dispThread(std::ref(*dispInfoPtr), std::ref(isSaveImage));

	std::this_thread::sleep_for(std::chrono::milliseconds(10));
	std::cout << "finish loading!!" << std::endl;

	dispThread.join();
	//if displaying thread stopped, other threads stop as well.
	comDspacePtr->finishProc();
	imageProcPtr->finishProc();

	sendThread.join();
	recvThread.join();
	imageProcThread.join();
    return 0;
}


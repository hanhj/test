/*
 * File Name: main.cpp
 * Author: hanhj
 * Mail: hanhj@zx-jy.com 
 * Created Time: 2019-10-18 11:42:22 week:5
*/
#include<iostream>
#include "data.h"
#include "configurable.h"
#include "protocol.h"
using namespace std;
int g_balance=0;
char g_filename[20];
/****************************
 *	main 
****************************/
int main(int arg,char **argv){
	int i;
	com_port com[3];
	serial_set serial_set_1;
	serial serial_1;
	ethernet_set eth_set_1;
	ethernet eth_1;
	wireless_set wire_set_1;
	wireless wire_1;
	link_layer_101 link[2];
	link_layer_104 link_104;
	app_layer app;
	int loops=0;

	if(arg<=1){
		g_balance=1;
		strcpy(g_filename,"test.dat");
	}else if(arg<=2){
		g_balance=atoi(argv[1]);
		strcpy(g_filename,"test.dat");
	}else if(arg<=3){
		g_balance=atoi(argv[1]);
		strcpy(g_filename,argv[2]);
	}
	set_app_interface(&app);

	com[0].set_com_handle(&serial_1);
	com[0].set_com_para((void *)&serial_set_1,1);
	com[0].init();
	com[1].set_com_handle(&eth_1);
	com[1].set_com_para((void *)&eth_set_1,2);
	com[1].init();
	com[2].set_com_handle(&wire_1);
	com[2].set_com_para((void *)&wire_set_1,3);
	com[2].init();
	for(i=0;i<2;i++){
		link[i].set_link_com(&com[i],i);
		link[i].set_app(&app);
		link[i].set_balance(g_balance);
	}
	link_104.set_link_com(&com[2],2);
	link_104.set_app(&app);
	for(i=0;i<3;i++){
		com[i].connect();
	}
	init_data();
	while(1){
		pfunc(DEBUG_INFO,"run loop:%d\n",loops);
		loops++;
		sleep_ms(10);
		for(i=0;i<3;i++){
			com[i].read(100);
		}
		for(i=0;i<2;i++){
			link[i].deal_timeout();
			link[i].get_frame();
		}
		link_104.deal_timeout();
		link_104.get_frame();

	}
	return 0;
}
// vim:tw=72 

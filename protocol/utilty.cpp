/*
 * File Name: utilty.cpp
 * Author: hanhj
 * Mail: hanhj@zx-jy.com 
 * Created Time: 2019-10-18 11:53:31 week:5
*/
#include<iostream>
using namespace std;
#include "utilty.h"
/****************************
 * utilty
****************************/
void sleep_ms(int t){
	struct timeval tm;
	tm.tv_sec=t/1000;
	tm.tv_usec=t*1000;
	select(4,NULL,NULL,NULL,&tm);
}
unsigned char sum(unsigned char *data,int len){
	int i;
	unsigned char _sum;
	_sum=0;
	i=0;
	if(len<0)
		return 0;
	while(len--){
		_sum+=*(data+i);
		i++;
	}
	return _sum;
}
time_t get_system_time(){
	return time(NULL);
}
int timer::is_reached(){
	if(!start_flag)
		return -1;
	if(get_system_time()>exp_time){
		stop();
		return 1;
	}
	return 0;
}
int timer::start(int T){
	if(start_flag == 1){
		cout<<"timer has started"<<endl;
		return -1;
	}
	start_flag=1;
	exp_time=get_system_time()+T;
	cout<<"start timer"<<endl;
	return 0;
}
int timer::stop(){
	if(start_flag == 1){
		cout<<"stop timer"<<endl;
		start_flag =0;
		return 0;
	}
	return -1;
}
unsigned char debug_buff[DEBUG_BUFF];
int debug(int mode,const char*file,const char*func,int line,const char *fmt...){
	const char *color="";
	const char *default_col="\033[0;m";
	if(mode>DEBUG_LEVEL)
		return -1;
	switch(mode){
		case DEBUG_ERROR:
			color="\033[031m";
			break;
		case DEBUG_WARNING:
			color="\033[033m";
			break;
		case DEBUG_INFO:
			color="\033[032m";
			break;
		case DEBUG_NORMAL:
			color="\033[0;m";
			break;
	}
	va_list arg;
	va_start(arg,fmt);
	vsnprintf((char*)&debug_buff[0],DEBUG_BUFF,fmt,arg);
	va_end(arg);
	fprintf(stderr,"[%s %s %d]%s%s%s",file,func,line,color,debug_buff,default_col);
	return 0;
}
int dump(int mode,const char*file,const char*func,int line,unsigned char *data,int len,const char *head){
	int i;
	i=0;
	const char *color="";
	const char *default_col="\033[0;m";
	if(mode>DEBUG_LEVEL)
		return -1;
	switch(mode){
		case DEBUG_ERROR:
			color="\033[031m";
			break;
		case DEBUG_WARNING:
			color="\033[033m";
			break;
		case DEBUG_INFO:
			color="\033[032m";
			break;
		case DEBUG_NORMAL:
			color="\033[0;m";
			break;
	}
	if(head!=NULL){
		fprintf(stderr,"[%s %s %d]%s%s %d:%s",file,func,line,color,head,len,default_col);
	}
	while(len--){
		fprintf(stderr,"%02hhx ",*(data+i));
		i++;
		if(i%16==0)
			fprintf(stderr,"\n");
	}
	fprintf(stderr,"\n");
	return 0;
}

// vim:tw=72 

﻿package{	import flash.net.*;	import flash.events.*;	import flash.display.*;	import flash.media.*;		public class LiveStream extends Sprite	{		private var video:Video;		private var nc:NetConnection;		private var ns:NetStream;		private var txt:*;				public function LiveStream(btnPublish:*,txtInput:*):void		{			txt = txtInput;			btnPublish.addEventListener(MouseEvent.CLICK,onPublishClick);			//获取视频和声音,并将视频显示到Flash界面			//cam = Camera.getCamera();			//mic = Microphone.getMicrophone();			//video = new Video(320,240);			//video.attachCamera(cam);			//video.x=0;			//video.y=0;			//addChild(video);		}				private function onPublishClick(evt:MouseEvent):void		{			nc = new NetConnection();			nc.connect("rtmp://115.29.165.209/live");			nc.addEventListener(NetStatusEvent.NET_STATUS,onNetStatusHandler);		}				private function onNetStatusHandler(evt:NetStatusEvent):void		{			if(evt.info.code=="NetConnection.Connect.Success")			{				ns=new NetStream(nc);				ns.addEventListener(NetStatusEvent.NET_STATUS,onNetStatusHandler);				ns.client=new CustomClient();				video=new Video(320,240);				video.attachNetStream(ns);				ns.play(txt.text);				addChild(video);			}		}	}}
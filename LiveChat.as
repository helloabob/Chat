﻿package{	import flash.net.*;	import flash.events.*;	import flash.display.*;	import flash.media.*;	import fl.controls.*;		public class LiveChat extends Sprite	{		private var liveStream:LiveStream;		private var pubStream:PublishStream;				public function LiveChat():void		{			liveStream = new LiveStream(btnRec,txtRec);			pubStream = new PublishStream(btnPub,txtPub);			addChild(pubStream);			liveStream.y = 262;			addChild(liveStream);		}		/*		private function onPublishClick(evt:MouseEvent):void		{			trace("a:"+txtInput.text);			nc = new NetConnection();			nc.connect("rtmp://115.29.165.209/live");			nc.addEventListener(NetStatusEvent.NET_STATUS,onNetStatusHandler);		}				private function onNetStatusHandler(evt:NetStatusEvent):void		{			trace(evt.info.code);			if(evt.info.code=="NetConnection.Connect.Success")			{				ns=new NetStream(nc);				ns.addEventListener(NetStatusEvent.NET_STATUS,onNetStatusHandler);				ns.client=new CustomClient();				ns.attachCamera(cam);				ns.attachAudio(mic);				ns.publish(txtInput.text,"live");			}		}		*/	}}
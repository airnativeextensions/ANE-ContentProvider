/**
 *        __       __               __ 
 *   ____/ /_ ____/ /______ _ ___  / /_
 *  / __  / / ___/ __/ ___/ / __ `/ __/
 * / /_/ / (__  ) / / /  / / /_/ / / 
 * \__,_/_/____/_/ /_/  /_/\__, /_/ 
 *                           / / 
 *                           \/ 
 * http://distriqt.com
 *
 * @author 		"Michael Archbold (ma&#64;distriqt.com)"
 * @created		08/01/2016
 * @copyright	http://distriqt.com/copyright/license.txt
 */
package com.distriqt.test.contentprovider
{
	import com.distriqt.extension.contentprovider.ContentProvider;
	
	import flash.display.Bitmap;
	import flash.events.DataEvent;
	import flash.filesystem.File;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.utils.setTimeout;
	
	import starling.core.Starling;
	
	import starling.display.Image;
	import starling.display.Sprite;
	
	/**	
	 */
	public class ContentProviderTests extends Sprite
	{
		public static const TAG : String = "";
		
		private var _l : ILogger;
		
		private function log( log:String ):void
		{
			_l.log( TAG, log );
		}
		
		
		
		
		////////////////////////////////////////////////////////
		//	FUNCTIONALITY
		//
		
		public function ContentProviderTests( logger:ILogger )
		{
			_l = logger;
			try
			{
				log( "ContentProvider Supported: " + ContentProvider.isSupported );
				if (ContentProvider.isSupported)
				{
					log( "ContentProvider Version:   " + ContentProvider.service.version );
				}
				
			}
			catch (e:Error)
			{
				trace( e );
			}
		}
		
		
		
		
		////////////////////////////////////////////////////////
		//  
		//
		
		public function test():void 
		{
			ContentProvider.instance.addEventListener( DataEvent.DATA, dataHandler );
			
			ContentProvider.instance.readFromContentUrl( "content://" );
		}
		
		
		private function dataHandler( event:DataEvent ):void
		{
			trace( event.data );
		}
		
		
	}
	
}

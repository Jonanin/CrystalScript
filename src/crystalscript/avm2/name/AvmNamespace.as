﻿package crystalscript.avm2.name 
{
	import crystalscript.etc.IHashable;
	import crystalscript.etc.Util;
	import crystalscript.avm2.abc.AbcInfo;

	
	/**
	 * ...
	 * @author Jon Morton
	 */
	public class AvmNamespace implements IHashable
	{
		
		private var _kind:uint;
		private var _name:String;
		
		public function AvmNamespace(kind:uint, name:String = "*") 
		{
			_kind = kind;
			_name = name;
		}
		
		public function hash():uint 
		{
			return Util.mixHash(kind, Util.hashString(name));
		}
		
		public function equalTo(val:*):Boolean 
		{
			return val.kind == kind && val.name == name;
		}
		
		public function get name():String { return _name; }
		
		public function set name(value:String):void 
		{
			_name = value;
		}
		
		public function get kind():uint { return _kind; }
		
		public function set kind(value:uint):void 
		{
			_kind = value;
		}
		
	}
	
}

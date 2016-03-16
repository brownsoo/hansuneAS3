﻿package hansune.geom{	/**	 * x, y, z, tag, id	 * @author hyonsoohan	 * 	 */	public class Position	{		public var x:Number = 0;		public var y:Number = 0;		public var z:Number = NaN;		public var tag:String = "";		public var id:int = -1;				public function Position(x:Number = 0, y:Number = 0, z:Number = 0)		{			this.x = x;			this.y = y;			if(z != 0) this.z = z;		}						public function toString():String {			return "x:" + x + "  y:" + y + "  z:" + z;		}				/**		 * 오브젝트에 포지션을 적용함.		 * @param obj		 * 		 */		public function apply(obj:Object):void {			if(obj.hasOwnProperty("x")) obj.x = this.x;			if(obj.hasOwnProperty("y")) obj.y = this.y;			if(z != 0) {				if(obj.hasOwnProperty("z")) obj.z = this.z;			}			else {			//	trace("property z does not applied because z is 0", z);			}		}				/**		 * 오브젝트로부터 포지션을 생성		 * @param obj		 * @return 		 * 		 */		static public function create(obj:Object):Position {			var p:Position = new Position();			if(obj.hasOwnProperty("x")) p.x = obj.x;			if(obj.hasOwnProperty("y")) p.y = obj.y;			if(obj.hasOwnProperty("z")) p.z = obj.z;						return p;		}	}}
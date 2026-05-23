package alternativa.engine3d.core {
	
	/**
	 * @private 
	 */
	public class CullingPlane {
		
		public var x:Number;
		public var y:Number;
		public var z:Number;
		public var offset:Number;
		
		public var next:CullingPlane;
		
		static public var collector:CullingPlane;
	
		static public function create():CullingPlane {
			if (collector != null) {
				var res:CullingPlane = collector;
				collector = res.next;
				res.next = null;
				return res;
			} else {
				return new CullingPlane();
			}
		}
	
		public function create():CullingPlane {
			if (collector != null) {
				var res:CullingPlane = collector;
				collector = res.next;
				res.next = null;
				return res;
			} else {
				return new CullingPlane();
			}
		}
		
	}
}

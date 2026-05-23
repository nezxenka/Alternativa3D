package alternativa.engine3d.loaders.collada {
	
	/**
	 * @private
	 */
	public class DaeArray extends DaeElement {
	
		use namespace collada;
	
		/**
		 * Array of String values.
		 * Call <code>parse()</code> before using.
		 */
		public var array:Array;
	
		public function DaeArray(data:XML, document:DaeDocument) {
			super(data, document);
		}
	
		public function get type():String {
			return String(data.localName());
		}
	
		override protected function parseImplementation():Boolean {
			array = parseStringArray(data);
			var countXML:XML = data.@count[0];
			if (countXML != null) {
				var count:int = parseInt(countXML.toString(), 10);
				if (array.length < count) {
					document.logger.logNotEnoughDataError(data.@count[0]);
					return false;
				} else {
					array.length = count;
					return true;
				}
			}
			return false;
		}
	
	}
}

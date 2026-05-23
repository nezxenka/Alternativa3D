package alternativa.engine3d.loaders.collada {

	import alternativa.engine3d.alternativa3d;

	use namespace alternativa3d;

	/**
	 * @private
	 */
	public class DaeVertices extends DaeElement {

		use namespace collada;

		/**
		 *   Source of vertex coordinates data. Stores coordinates in <code>numbers</code> array.
		 * <code>stride</code> property of source  is not less than three.
		 * Call <code>parse()</code> before using.
		 */
		public var positions:DaeSource;
		//private var texCoords:Vector.<DaeSource>;

		public function DaeVertices(data:XML, document:DaeDocument) {
			super(data, document);
		}

		override protected function parseImplementation():Boolean {
			// Get array of vertex coordinates.
			var inputXML:XML = data.input.(@semantic == "POSITION")[0];
			if (inputXML != null) {
				positions = (new DaeInput(inputXML, document)).prepareSource(3);
				if (positions != null) {
					return true;
				}
			}
			return false;
		}
	
	}
}

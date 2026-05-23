package alternativa.engine3d.loaders.collada {
	
	/**
	 * @private
	 */
	public class DaeInput extends DaeElement {
	
		use namespace collada;
	
		public function DaeInput(data:XML, document:DaeDocument) {
			super(data, document);
		}
	
		public function get semantic():String {
			var attribute:XML = data.@semantic[0];
			return (attribute == null) ? null : attribute.toString();
		}
	
		public function get source():XML {
			return data.@source[0];
		}
	
		// todo: profiler shows that offset getter is seriously abused in DaePrimitive's fillGeometry
		private var _offset:int = -1;
		public function get offset():int {
			if (_offset < 0) {
				var attr:XML = data.@offset[0];
				_offset = (attr == null) ? 0 : parseInt(attr.toString(), 10);
			}
			return _offset;
		}
	
		public function get setNum():int {
			var attr:XML = data.@set[0];
			return (attr == null) ? 0 : parseInt(attr.toString(), 10);
		}
	
		/**
		 * If DaeSource, located at the link source, is type of Number and
		 * number of components is not less than specified number, then this method will return it.
		 *
		 */
		public function prepareSource(minComponents:int):DaeSource {
			var source:DaeSource = document.findSource(this.source);
			if (source != null) {
				source.parse();
				if (source.numbers != null && source.stride >= minComponents) {
					return source;
				} else {
				}
			} else {
				document.logger.logNotFoundError(data.@source[0]);
			}
			return null;
		}
	
	}
}

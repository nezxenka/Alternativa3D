package alternativa.engine3d.loaders.collada {
	
	/**
	 * @private
	 */
	public class DaeImage extends DaeElement {
	
		use namespace collada;
	
		public function DaeImage(data:XML, document:DaeDocument) {
			super(data, document);
		}
	
		public function get init_from():String {
			var element:XML = data.init_from[0];
			if (element != null) {
				if (document.versionMajor > 4) {
					var refXML:XML = element.ref[0];
					return (refXML == null) ? null : refXML.text().toString();
				}
				return element.text().toString();
			}
			return null;
		}

	}
}

package alternativa.engine3d.loaders.collada {

	import alternativa.engine3d.loaders.ParserMaterial;

	/**
	 * @private
	 */
	public class DaeMaterial extends DaeElement {
	
		use namespace collada;
	
		/**
		 * Material of engine.
		 * Call <code>parse()</code> before using.
		 */
		public var material:ParserMaterial;
	
		/**
		 * Name of texture channel for color map of object.
		 * Call <code>parse()</code> before using.
		 */
		public var mainTexCoords:String;
	
		/**
		 * If <code>true</code>material is in use.
		 */
		public var used:Boolean = false;
	
		public function DaeMaterial(data:XML, document:DaeDocument) {
			super(data, document);
		}
	
		private function parseSetParams():Object {
			var params:Object = {};
			var list:XMLList = data.instance_effect.setparam;
			for each (var element:XML in list) {
				var param:DaeParam = new DaeParam(element, document);
				params[param.ref] = param;
			}
			return params;
		}
	
		private function get effectURL():XML {
			return data.instance_effect.@url[0];
		}
	
		override protected function parseImplementation():Boolean {
			var effect:DaeEffect = document.findEffect(effectURL);
			if (effect != null) {
				effect.parse();
				material = effect.getMaterial(parseSetParams());
				mainTexCoords = effect.mainTexCoords;
				if (material != null) {
					material.name = cloneString(name);
				}
				return true;
			}
			return false;
		}
	
	}
}

package alternativa.engine3d.loaders.collada {
	
	/**
	 * @private
	 */
	public class DaeLogger {
	
		public function DaeLogger() {
		}
	
		private function logMessage(message:String, element:XML):void {
			var index:int = 0;
			var name:String = (element.nodeKind() == "attribute") ? "@" + element.localName() : element.localName() + ((index > 0) ? "[" + index + "]" : "");
			var parent:* = element.parent();
			while (parent != null) {
				//				index = parent.childIndex();
				name = parent.localName() + ((index > 0) ? "[" + index + "]" : "") + "." + name;
				parent = parent.parent();
			}
			trace(message, '| "' + name + '"');
		}
	
		private function logError(message:String, element:XML):void {
			logMessage("[ERROR] " + message, element);
		}
	
		public function logExternalError(element:XML):void {
			logError("External urls don't supported", element);
		}
	
		public function logSkewError(element:XML):void {
			logError("<skew> don't supported", element);
		}
	
		public function logJointInAnotherSceneError(element:XML):void {
			logError("Joints in different scenes don't supported", element);
		}
	
		public function logInstanceNodeError(element:XML):void {
			logError("<instance_node> don't supported", element);
		}
	
		public function logNotFoundError(element:XML):void {
			logError("Element with url \"" + element.toString() + "\" not found", element);
		}
	
		public function logNotEnoughDataError(element:XML):void {
			logError("Not enough data", element);
		}
	
	}
}

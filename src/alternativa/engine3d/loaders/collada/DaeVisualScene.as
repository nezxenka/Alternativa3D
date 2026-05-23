package alternativa.engine3d.loaders.collada {
	
	/**
	 * @private
	 */
	public class DaeVisualScene extends DaeElement {
	
		use namespace collada;
	
		public var nodes:Vector.<DaeNode>;
	
		public function DaeVisualScene(data:XML, document:DaeDocument) {
			super(data, document);
	
			// nodes are declared in <visual_scene>.
			constructNodes();
		}
	
		public function constructNodes():void {
			var nodesList:XMLList = data.node;
			var count:int = nodesList.length();
			nodes = new Vector.<DaeNode>(count);
			for (var i:int = 0; i < count; i++) {
				var node:DaeNode = new DaeNode(nodesList[i], document, this);
				if (node.id != null) {
					document.nodes[node.id] = node;
				}
				nodes[i] = node;
			}
		}
	
	}
}

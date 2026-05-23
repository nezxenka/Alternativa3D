package alternativa.engine3d.loaders.collada {

	import alternativa.engine3d.animation.AnimationClip;
	import alternativa.engine3d.core.Object3D;

	/**
	 * @private
	 */
	public class DaeObject {

		public var object:Object3D;
		public var animation:AnimationClip;
		public var jointNode:DaeNode;

		public function DaeObject(object:Object3D, animation:AnimationClip = null) {
			this.object = object;
			this.animation = animation;
		}

	}
}

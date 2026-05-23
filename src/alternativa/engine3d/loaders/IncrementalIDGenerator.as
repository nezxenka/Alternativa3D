package alternativa.engine3d.loaders {

	import alternativa.engine3d.core.Object3D;
	import alternativa.types.Long;

	import flash.utils.Dictionary;

	/**
	 * @private
	 */
	public class IncrementalIDGenerator implements IIDGenerator {

		private var lastID:uint = 0;
		private var objects:Dictionary;

		public function IncrementalIDGenerator() {
			objects = new Dictionary(true);
		}

		public function getID(object:Object3D):Long {
			var result:Long = objects[object];
			if (result == null) {
				result = objects[object] = Long.fromInt(lastID); lastID++;
			}
			return result;
		}
	}
}

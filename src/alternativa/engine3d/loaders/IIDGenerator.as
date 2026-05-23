package alternativa.engine3d.loaders {

	import alternativa.engine3d.core.Object3D;
	import alternativa.types.Long;

	/**
	 * @private
	 */
	public interface IIDGenerator {
		function getID(object:Object3D):Long;

	}
}

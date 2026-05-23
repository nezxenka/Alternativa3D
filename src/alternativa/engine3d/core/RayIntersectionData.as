package alternativa.engine3d.core {

	import alternativa.engine3d.objects.Surface;

	import flash.geom.Point;
	import flash.geom.Vector3D;

	/**
	 * A result of searching for intersection of an Object3D and a ray with intersectRay() method of Object3D.
	 *
	 * @see Object3D#intersectRay()
	 */
	public class RayIntersectionData {

		/**
		 *  First object intersected by the ray.
		 */
		public var object:Object3D;

		/**
		 * The point of intersection il local coordinates of object.
		 */
		public var point:Vector3D;

		/**
		 * Surface of <code>object</code> on which intersection occurred.
		 */
		public var surface:Surface;

		/**
		 * Distance from ray's origin to intersection point expressed in length of <code>localDirection</code> vector.
		 */
		public var time:Number;

		/**
		 * Texture coordinates of intersection point.
		 */
		public var uv:Point;

		/**
		 * Returns the string representation of the specified object.
		 * @return The string representation of the specified object.
		 */
		public function toString():String {
			return "[RayIntersectionData " + object + ", " + point + ", " + uv + ", " + time + "]";
		}

	}
}

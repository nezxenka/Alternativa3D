package alternativa.engine3d.animation.keys {

	import alternativa.engine3d.alternativa3d;

	use namespace alternativa3d;

	/**
	 * Keyframe of the animation. Sets object property at given time.
	 * Keyframe animation can be defined with  NumberTrack and TransformTrack classes.
	 *
	 * @see TransformTrack
	 * @see NumberTrack
	 */
	public class Keyframe {

		/**
		 * @private
		 * Key frame time in seconds.
		 */
		alternativa3d var _time:Number = 0;

		/**
		 * Creates a new Keyframe instance.
		 */
		public function Keyframe() {
		}

		/**
		 * Key frame time in seconds.
		 */
		public function get time():Number {
			return _time;
		}

		/**
		 * The value of animated property kept by the keyframe.
		 * Can be <code>Number</code> or <code>Matrix3D</code> depends on
		 *   <code>NumberTrack</code> or <code>TransformTrack</code> belongs to.
		 *
		 * @see NumberTrack
		 * @see TransformTrack
		 */
		public function get value():Object {
			return null;
		}

		/**
		 * @private
		 */
		public function set value(v:Object):void {
		}

		/**
		 * @private
		 */
		alternativa3d function get nextKeyFrame():Keyframe {
			return null;
		}

		/**
		 * @private
		 */
		alternativa3d function set nextKeyFrame(value:Keyframe):void {
		}

		/**
		 * Returns string representation of the object.
		 */
		public function toString():String {
			return '[Keyframe time = ' + _time.toFixed(2) + ' value = ' + value + ']';
		}

	}
}

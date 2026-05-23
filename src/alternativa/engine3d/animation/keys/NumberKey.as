package alternativa.engine3d.animation.keys {

	import alternativa.engine3d.alternativa3d;

	use namespace alternativa3d;

	/**
	 * @private
	 */
	public class NumberKey extends Keyframe {

		/**
		 * @private
		 */
		alternativa3d var _value:Number = 0;
		/**
		 * @private
		 */
		alternativa3d var next:NumberKey;

		/**
		 * Creates a NumberKey object.
		 */
		public function NumberKey() {
		}

		/**
		 * Sets interpolated value.
		 */
		public function interpolate(a:NumberKey, b:NumberKey, c:Number):void {
			_value = (1 - c)*a._value + c*b._value;
		}

		/**
		 * @inheritDoc
		 */
		override public function get value():Object {
			return _value;
		}

		/**
		 * @inheritDoc
		 */
		override public function set value(v:Object):void {
			_value = Number(v);
		}

		/**
		 * @inheritDoc
		 */
		override alternativa3d function get nextKeyFrame():Keyframe {
			return next;
		}

		/**
		 * @inheritDoc
		 */
		override alternativa3d function set nextKeyFrame(value:Keyframe):void {
			next = NumberKey(value);
		}

	}
}

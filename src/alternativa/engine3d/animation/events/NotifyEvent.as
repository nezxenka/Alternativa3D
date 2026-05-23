package alternativa.engine3d.animation.events {

	import alternativa.engine3d.animation.AnimationNotify;

	import flash.events.Event;

	/**
	 * This event is fired by an AnimationNotify instance when certain point of AnimationClip time line is reached.
	 *
	 * @see alternativa.engine3d.animation.AnimationNotify
	 */
	public class NotifyEvent extends Event {

		/**
		 *NotifyEvent.NOTIFY is specified as the type property for transfer to the addEventListener alert for the event.
		 */
		public static const NOTIFY:String = "notify";

		/**
		 * The source of the event. Actually this property returns AnimationNotify(target) value.
		 */
		public function get notify():AnimationNotify {
			return AnimationNotify(target);
		}

		/**
		 * Creates a Notyfy object.
		 */
		public function NotifyEvent(notify:AnimationNotify) {
			super(NOTIFY);
		}

	}
}

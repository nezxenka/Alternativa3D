package alternativa.osgi.service.clientlog {

	/**
	 * @private
	 */
	public interface IClientLog extends IClientLogBase {

		/**
		 * Adds record in specified log, duplicating its into the "error" channel.
		 *
		 * @param channelName Name of channel.
		 * @param text Text, that can contain expressions like %i, i=1..n. These expressions will be changed by values, that is passed as subsequent parameters.
		 * @param vars Values of variables in text.
		 */
		function logError(channelName:String, text:String, ...vars):void;

		/**
		 * Returns list of strings at specified channel. If channel is not exists, null is returned.
		 *
		 * @param channelName Name of channel
		 * @return List of string in specified channel.
		 */
		function getChannelStrings(channelName:String):Vector.<String>;

		/**
		 * Add listener for all channel of log.
		 *
		 * @param listener Listener.
		 */
		function addLogListener(listener:IClientLogChannelListener):void;

		/**
		 * Removes listener from all channels of log.
		 *
		 * @param listener Listener.
		 */
		function removeLogListener(listener:IClientLogChannelListener):void;

		/**
		 * Add listener of channel.
		 *
		 * @param channelName Name of channel, for which the listener is added.
		 * @param listener Listener.
		 */
		function addLogChannelListener(channelName:String, listener:IClientLogChannelListener):void;

		/**
		 * Removes listener of channel.
		 *
		 * @param channelName Name of channel, for which the listener is removed.
		 * @param listener   Listener.
		 */
		function removeLogChannelListener(channelName:String, listener:IClientLogChannelListener):void;

		/**
		 * Returns list of existing channels.
		 *
		 * @return List of existing channels.
		 */
		function getChannelNames():Vector.<String>;

	}
}

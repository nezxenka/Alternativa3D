package alternativa.osgi.service.clientlog {

	/**
	 * @private
	 */
	public interface IClientLogChannelListener {

		function onLogEntryAdded(channelName:String, logText:String):void;

	}
}

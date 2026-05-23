package alternativa.engine3d.resources {

	import alternativa.engine3d.alternativa3d;

	import flash.display3D.Context3D;
	import flash.display3D.textures.TextureBase;

	use namespace alternativa3d;

	/**
	 * a TextureResource, that uses data from external source (file). Link for this source is specified on instance creation.
	 * Used with <code>TexturesLoader</code>, which gets <code>ExternalTextureResource</code> for uploading needed files.
	 * Size of texture must be power of two (e.g., 256х256, 128*512, 256* 32).
	 * @see alternativa.engine3d.loaders.TexturesLoader#loadResource()
	 * @see alternativa.engine3d.loaders.TexturesLoader#loadResources()
	 */
	public class ExternalTextureResource extends TextureResource {
		/**
		 * URL-path to texture.
		 */
		public var url:String;

		/**
		 * @param url Adress of texture.
		 */
		public function ExternalTextureResource(url:String) {
			this.url = url;
		}

		/**
		 * @inheritDoc
		 */
		override public function upload(context3D:Context3D):void {
		}

		/**
		 * Resource data, that are get from external resource.
		 */
		public function get data():TextureBase {
			return _texture;
		}

		/**
		 * @private
		 */
		public function set data(value:TextureBase):void {
			_texture = value;
		}
		
	}
}

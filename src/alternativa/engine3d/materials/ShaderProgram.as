package alternativa.engine3d.materials {

	import alternativa.engine3d.alternativa3d;
	import alternativa.engine3d.materials.compiler.Linker;

	import flash.display3D.Context3D;
	import flash.display3D.Program3D;

	use namespace alternativa3d;

	/**
	 * @private
	 */
	public class ShaderProgram {
		
		public var program:Program3D;
		
		public var vertexShader:Linker;
		public var fragmentShader:Linker;
		public var agalVersion:uint;
        
		public function ShaderProgram(vertexShader:Linker, fragmentShader:Linker, agalVersion:uint = 1) {
			this.vertexShader = vertexShader;
			this.fragmentShader = fragmentShader;
			this.agalVersion = agalVersion;
		}
		
		public function upload(context3D:Context3D):void {
			if (program != null) program.dispose();
			if (vertexShader != null && fragmentShader != null) {
				vertexShader.link(agalVersion);
				fragmentShader.link(agalVersion);
	            program = context3D.createProgram();
				try {
					program.upload(vertexShader.data, fragmentShader.data);
				} catch (e:Error) {
					throw (e);
				}
			} else {
				program = null;
			}
		}
		
		public function dispose():void {
			if (program != null) {
				program.dispose();
				program = null;
			}
		}
		
	}
}

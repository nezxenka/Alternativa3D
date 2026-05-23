package alternativa.engine3d.shadows {

	import alternativa.engine3d.alternativa3d;
	import alternativa.engine3d.core.Camera3D;
	import alternativa.engine3d.core.DrawUnit;
	import alternativa.engine3d.core.Light3D;
	import alternativa.engine3d.materials.compiler.Linker;
	import alternativa.engine3d.materials.compiler.Procedure;
	import alternativa.engine3d.objects.Surface;

	use namespace alternativa3d;

	/**
	 * Base class for shadows.
	 */
	public class Shadow {

		/**
		 * @private
		 */
		alternativa3d static const NONE_MODE:int = 0;
		/**
		 * @private
		 */
		alternativa3d static const SIMPLE_MODE:int = 1;
		/**
		 * @private
		 */
		alternativa3d static const PCF_MODE:int = 2;

		/**
		 * Debug mode.
		 */
		public var debug:Boolean = false;

		/**
		 * @private
		 * Key for processing in materials.
		 */
		alternativa3d var type:int = 0;

		/**
		 * @private
		 */
		alternativa3d var _light:Light3D;

		/**
		 * @private
		 * inputs: position
		 */
		alternativa3d var vertexShadowProcedure:Procedure;

		/**
		 * @private
		 * outputs: shadow intensity
		 */
		alternativa3d var fragmentShadowProcedure:Procedure;

		/**
		 * @private
		 */
		alternativa3d function process(camera:Camera3D):void {
		}

		/**
		 * @private
		 */
		alternativa3d function setup(drawUnit:DrawUnit, vertexLinker:Linker, fragmentLinker:Linker, surface:Surface):void {
		}

	}
}

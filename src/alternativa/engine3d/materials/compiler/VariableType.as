package alternativa.engine3d.materials.compiler {

	/**
	 * @private
	 * Types of shader variables
	 */
	public class VariableType {

		/**
		 * Input attribute of vertex.
		 */
		public static const ATTRIBUTE:uint = 0;
		/**
		 * Constant.
		 */
		public static const CONSTANT:uint = 1;
		/**
		 * Temporary variable.
		 */
		public static const TEMPORARY:uint = 2;
		/**
		 * Output variable.
		 */
		public static const OUTPUT:uint = 3;
		/**
		 * Interpolated variable.
		 */
		public static const VARYING:uint = 4;
		/**
		 * Texture.
		 */
		public static const SAMPLER:uint = 5;
		/**
		 * Depth variable.
		 */
		public static const DEPTH:uint = 6;
		/**
		 * Input variable.
		 */
		public static const INPUT:uint = 7;
		
		public static const TYPE_NAMES:Vector.<String> = Vector.<String>(
			["attribute", "constant", "temporary", "output", "varying", "sampler", "depth", "input"]
		);
		public function VariableType() {
		}
		
	}
}

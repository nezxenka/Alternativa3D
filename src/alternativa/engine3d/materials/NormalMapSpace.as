package alternativa.engine3d.materials {

	/**
	 * NormalMapSpace offers constant values that can be used for the   normalMapSpace property of materials which use normal map.
	 *
	 * @see StandardMaterial#normalMapSpace
	 */
	public class NormalMapSpace {

		/**
		 * Normal map defined in surface space, y-axis oriented on top.
		 */
		public static const TANGENT_RIGHT_HANDED:int = 0;
		/**
		 * Normal map defined in surface space, y-axis oriented on bottom.
		 */
		public static const TANGENT_LEFT_HANDED:int = 1;
		/**
		 * Normal map defined in object space.
		 */
		public static const OBJECT:int = 2;
		
	}
}

package alternativa.engine3d.core {

	import alternativa.engine3d.alternativa3d;
	import alternativa.engine3d.materials.ShaderProgram;

	import flash.display3D.IndexBuffer3D;
	import flash.display3D.Program3D;

	use namespace alternativa3d;

	/**
	 * @private
	 */
	public class DebugMaterialsRenderer extends Renderer {

		override alternativa3d function createDrawUnit(object:Object3D, program:Program3D, indexBuffer:IndexBuffer3D, firstIndex:int, numTriangles:int, debugShader:ShaderProgram = null):DrawUnit {
			var res:DebugDrawUnit;
			if (collector != null) {
				res = DebugDrawUnit(collector);
				collector = collector.next;
				res.next = null;
			} else {
				res = new DebugDrawUnit();
			}
			res.shader = debugShader;
			res.object = object;
			res.program = program;
			res.indexBuffer = indexBuffer;
			res.firstIndex = firstIndex;
			res.numTriangles = numTriangles;
			return res;
		}

		override alternativa3d function addDrawUnit(drawUnit:DrawUnit, renderPriority:int):void {
			DebugDrawUnit(drawUnit).check();
			super.addDrawUnit(drawUnit, renderPriority);
		}

	}
}

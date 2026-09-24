/**
 * A bridged base whose constructor omits optional basic-type arguments.
 *
 * `getTypedExpr` fills those in as `null`. A `Bool`, `Float` or `UInt` cannot hold that.
 */
class HostOptionalBool {
	public function new() {
		hold(new Flag('`'));
		hold(new Grid(0, 0));
	}

	function hold(v:Dynamic) {}
}

class Flag {
	public function new(v:String, shift:Bool = false, ctrl:Bool = false, alt:Bool = false, onUp:Bool = false) {}
}

class Grid {
	public function new(x:Float = 0, y:Float = 0, z:Float = 0, w:Float = 0) {}
}

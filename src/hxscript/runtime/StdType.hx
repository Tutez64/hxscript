package hxscript.runtime;

/**
 * The standard library's `Type`, called from code the bridge generator pastes into an instance
 * method.
 *
 * That method is the constructor of a class extending the host. A host field named `Type` is in
 * scope there, and a bare `Type.createInstance` binds to the field. These functions are resolved
 * in this module, where nothing is named `Type`. They are not inline: inlining would copy the
 * identifier back into the constructor.
 */
class StdType {
	/**
	 * @param cls The class to construct.
	 * @param args Its constructor arguments.
	 * @return The new instance.
	 */
	public static function createInstance(cls:Class<Dynamic>, args:Array<Dynamic>):Dynamic {
		return Type.createInstance(cls, args);
	}

	/**
	 * @param value The value to inspect.
	 * @return Its class, or null.
	 */
	public static function getClass(value:Dynamic):Class<Dynamic> {
		return Type.getClass(value);
	}

	/**
	 * @param cls The class to inspect.
	 * @return Its super-class, or null.
	 */
	public static function getSuperClass(cls:Class<Dynamic>):Class<Dynamic> {
		return Type.getSuperClass(cls);
	}
}

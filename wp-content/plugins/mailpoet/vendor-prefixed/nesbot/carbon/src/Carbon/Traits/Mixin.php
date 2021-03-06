<?php

namespace MailPoetVendor\Carbon\Traits;

if (!defined('ABSPATH')) exit;

use Closure;
use ReflectionClass;
use ReflectionException;
use ReflectionMethod;
use Throwable;

trait Mixin
{
    protected static $macroContextStack = [];
    public static function mixin($mixin)
    {
        \is_string($mixin) && \trait_exists($mixin) ? static::loadMixinTrait($mixin) : static::loadMixinClass($mixin);
    }
    private static function loadMixinClass($mixin)
    {
        $methods = (new \ReflectionClass($mixin))->getMethods(\ReflectionMethod::IS_PUBLIC | \ReflectionMethod::IS_PROTECTED);
        foreach ($methods as $method) {
            if ($method->isConstructor() || $method->isDestructor()) {
                continue;
            }
            $method->setAccessible(\true);
            static::macro($method->name, $method->invoke($mixin));
        }
    }
    private static function loadMixinTrait($trait)
    {
        $baseClass = static::class;
        $context = eval('return new class() extends ' . $baseClass . ' {use ' . $trait . ';};');
        $className = \get_class($context);
        foreach (\get_class_methods($context) as $name) {
            if (\method_exists($baseClass, $name)) {
                continue;
            }
            $closureBase = \Closure::fromCallable([$context, $name]);
            static::macro($name, function () use ($closureBase, $className) {
                try {
                } catch (\Throwable $throwable) {
                    $closure = $closureBase;
                }
                return $closure(...\func_get_args());
            });
        }
    }
    protected static function bindMacroContext($context, callable $callable)
    {
        static::$macroContextStack[] = $context;
        $exception = null;
        $result = null;
        try {
            $result = $callable();
        } catch (\Throwable $throwable) {
            $exception = $throwable;
        }
        \array_pop(static::$macroContextStack);
        if ($exception) {
            throw $exception;
        }
        return $result;
    }
    protected static function this()
    {
        return \end(static::$macroContextStack) ?: new static();
    }
}

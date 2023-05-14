<?php

declare(strict_types=1);

namespace Tests\:namespace;

use :namespace\Greeting;
use PHPUnit\Framework\TestCase;

final class GreetingTest extends TestCase
{
    public function testItGreetsUser(): void
    {
        $greeting = new Greeting('Rasmus Lerdorf');

        $this->assertSame('Hello Rasmus Lerdorf', $greeting->sayHello());
    }
}

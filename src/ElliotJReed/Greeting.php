<?php

declare(strict_types=1);

namespace :namespace;

class Greeting
{
    public function __construct(private string $name = 'Stranger')
    {
    }

    public function sayHello(): string
    {
        return 'Hello ' . $this->name;
    }
}

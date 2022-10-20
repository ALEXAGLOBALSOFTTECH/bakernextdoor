<?php

declare(strict_types=1);

namespace Lalamove\Requests\V3;

class Sender
{
    public string $displayString;

    public string $country;

    public string $city;

    public ?string $floor;

    public ?string $room;

    public ?string $remarks;

    public function __construct(
        string $displayString,
        string $city = '',
        string $country = '',
        ?string $floor = null,
        ?string $room = null,
        ?string $remarks = null
    ) {
        $this->displayString = $displayString;
        $this->city = $city;
        $this->country = $country;
        $this->floor = $floor;
        $this->room = $room;
        $this->remarks = $remarks;
    }

    public static function make(
        string $displayString,
        string $city,
        string $country,
        ?string $floor = null,
        ?string $room = null,
        ?string $remarks = null
    ) {
        return new static($displayString, $city, $country, $floor, $room, $remarks);
    }
}
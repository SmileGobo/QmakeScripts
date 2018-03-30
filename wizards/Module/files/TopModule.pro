load(tools/common)
@if "{%TestEnabled}" === "true"
Module(%{ModuleName})
@else 
Module()
@endif
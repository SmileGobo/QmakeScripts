load(tools/common)
@if "{%TestEnabled}"
Module(%{ModuleName})
@else 
Module()
@endif
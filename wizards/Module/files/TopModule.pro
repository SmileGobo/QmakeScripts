load(tools/common)
@if "{%TestEnabled}"
Module(%{Module.Name})
@else 
Module()
@endif
for multi integer input values
where id in(select cast(value as int) from string_split(@value,','))

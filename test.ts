import { assertEquals } from "https://deno.land/std@v0.9.0/testing/asserts.ts";
import { test, runIfMain } from "https://deno.land/std@v0.9.0/testing/mod.ts";
import { foo } from "./mod.ts";

test(function testFoo() {
  assertEquals(foo(), "bar");
});

runIfMain(import.meta);

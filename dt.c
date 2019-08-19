#include "duktape.h"

static duk_ret_t native_print(duk_context *ctx) {
    printf("%s\n", duk_to_string(ctx, 0));
    return 0;  /* no return value (= undefined) */
}

/* Adder: add argument values. */
static duk_ret_t native_adder(duk_context *ctx) {
  	int i;
  	int n = duk_get_top(ctx);  /* #args */
  	double res = 0.0;

  	for (i = 0; i < n; i++) {
    	res += duk_to_number(ctx, i);
  	}

  	duk_push_number(ctx, res);
  	return 1;  /* one return value */
}

int main(int argc, char *argv[]) {
    duk_context *ctx = duk_create_heap_default();
    duk_push_c_function(ctx, native_print, 1 /*nargs*/);
    duk_put_global_string(ctx, "print");
	duk_push_c_function(ctx, native_adder, DUK_VARARGS);
	duk_put_global_string(ctx, "adder");
    if (ctx) {
        duk_eval_string(ctx, "print('2+3=' + adder(2, 3));");
        duk_destroy_heap(ctx);
    }
    return 0;
}

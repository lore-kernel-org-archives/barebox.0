Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJDQr-0004p2-9X
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 10:15:58 +0000
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
 <20200918084532.2794-9-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <518f7fbb-8454-52e9-8b43-fc04d099ee6e@pengutronix.de>
Date: Fri, 18 Sep 2020 12:15:53 +0200
MIME-Version: 1.0
In-Reply-To: <20200918084532.2794-9-s.hauer@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 8/9] Add KASan support
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>



On 9/18/20 10:45 AM, Sascha Hauer wrote:
> -	return block_prepare_used(control, block, adjust);
> +	void *ret;
> +
> +	ret = block_prepare_used(control, block, adjust, size);
> +	if (!ret)
> +		return ret;
> +
> +	return ret;

Debugging leftover? You can just return the function result directly.


> -	return block_prepare_used(control, block, adjust);
> +	ret = block_prepare_used(control, block, adjust, size);
> +	if (!ret)
> +		return NULL;
> +
> +	return ret;

Likewise
  
[snip]

> diff --git a/lib/kasan/report.c b/lib/kasan/report.c
> new file mode 100644
> index 0000000000..b7b2d032ee
> --- /dev/null
> +++ b/lib/kasan/report.c
> @@ -0,0 +1,199 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * This file contains common generic and tag-based KASAN error reporting code.
> + *
> + * Copyright (c) 2014 Samsung Electronics Co., Ltd.
> + * Author: Andrey Ryabinin <ryabinin.a.a@gmail.com>
> + *
> + * Some code borrowed from https://github.com/xairy/kasan-prototype by
> + *        Andrey Konovalov <andreyknvl@gmail.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + */
> +
> +#include <common.h>
> +#include <linux/bitops.h>
> +#include <linux/kernel.h>
> +#include <printk.h>
> +#include <asm-generic/sections.h>
> +
> +#include "kasan.h"
> +
> +/* Shadow layout customization. */
> +#define SHADOW_BYTES_PER_BLOCK 1
> +#define SHADOW_BLOCKS_PER_ROW 16
> +#define SHADOW_BYTES_PER_ROW (SHADOW_BLOCKS_PER_ROW * SHADOW_BYTES_PER_BLOCK)
> +#define SHADOW_ROWS_AROUND_ADDR 2
> +
> +static unsigned long kasan_flags;
> +
> +#define KASAN_BIT_REPORTED	0
> +#define KASAN_BIT_MULTI_SHOT	1
> +
> +bool kasan_save_enable_multi_shot(void)
> +{
> +	return test_and_set_bit(KASAN_BIT_MULTI_SHOT, &kasan_flags);
> +}
> +EXPORT_SYMBOL_GPL(kasan_save_enable_multi_shot);
> +
> +void kasan_restore_multi_shot(bool enabled)
> +{
> +	if (!enabled)
> +		clear_bit(KASAN_BIT_MULTI_SHOT, &kasan_flags);
> +}
> +EXPORT_SYMBOL_GPL(kasan_restore_multi_shot);
> +
> +static void print_error_description(struct kasan_access_info *info)
> +{
> +	pr_err("BUG: KASAN: %s in %pS\n",
> +		get_bug_type(info), (void *)info->ip);
> +	pr_err("%s of size %zu at addr %px\n",
> +		info->is_write ? "Write" : "Read", info->access_size,
> +		info->access_addr);

I just removed the pr_err in ubsan with this rationale:

    common: ubsan: replace pr_err with printf

    The pr_print family of functions also writes to the barebox
    log buffer, which we don't require for printing UBSan errors,
    which is a debugging aid. This also improves UBSan coverage as now
    undefined behavior within pr_print may be reported as well.

Should we use plain printf here as well? Less code to execute
= less chance to run into a recursion.

> +}
> +
> +static void start_report(unsigned long *flags)
> +{
> +	/*
> +	 * Make sure we don't end up in loop.
> +	 */
> +	kasan_disable_current();
> +	pr_err("==================================================================\n");
> +}
> +
> +static void end_report(unsigned long *flags)
> +{
> +	pr_err("==================================================================\n");
> +	kasan_enable_current();
> +}
> +
> +static inline bool kernel_or_module_addr(const void *addr)
> +{
> +	if (addr >= (void *)_stext && addr < (void *)_end)
> +		return true;
> +	return false;
> +}
> +
> +static void print_address_description(void *addr, u8 tag)
> +{
> +	dump_stack();
> +	pr_err("\n");
> +
> +	if (kernel_or_module_addr(addr)) {
> +		pr_err("The buggy address belongs to the variable:\n");
> +		pr_err(" %pS\n", addr);
> +	}
> +}
> +
> +static bool row_is_guilty(const void *row, const void *guilty)
> +{
> +	return (row <= guilty) && (guilty < row + SHADOW_BYTES_PER_ROW);
> +}
> +
> +static int shadow_pointer_offset(const void *row, const void *shadow)
> +{
> +	/* The length of ">ff00ff00ff00ff00: " is
> +	 *    3 + (BITS_PER_LONG/8)*2 chars.
> +	 */
> +	return 3 + (BITS_PER_LONG/8)*2 + (shadow - row)*2 +
> +		(shadow - row) / SHADOW_BYTES_PER_BLOCK + 1;
> +}
> +
> +static void print_shadow_for_address(const void *addr)
> +{
> +	int i;
> +	const void *shadow = kasan_mem_to_shadow(addr);
> +	const void *shadow_row;
> +
> +	shadow_row = (void *)round_down((unsigned long)shadow,
> +					SHADOW_BYTES_PER_ROW)
> +		- SHADOW_ROWS_AROUND_ADDR * SHADOW_BYTES_PER_ROW;
> +
> +	pr_err("Memory state around the buggy address:\n");
> +
> +	for (i = -SHADOW_ROWS_AROUND_ADDR; i <= SHADOW_ROWS_AROUND_ADDR; i++) {
> +		const void *kaddr = kasan_shadow_to_mem(shadow_row);
> +		char buffer[4 + (BITS_PER_LONG/8)*2];
> +		char shadow_buf[SHADOW_BYTES_PER_ROW];
> +
> +		snprintf(buffer, sizeof(buffer),
> +			(i == 0) ? ">%px: " : " %px: ", kaddr);
> +		/*
> +		 * We should not pass a shadow pointer to generic
> +		 * function, because generic functions may try to
> +		 * access kasan mapping for the passed address.
> +		 */
> +		memcpy(shadow_buf, shadow_row, SHADOW_BYTES_PER_ROW);
> +		print_hex_dump(KERN_ERR, buffer,
> +			DUMP_PREFIX_NONE, SHADOW_BYTES_PER_ROW, 1,
> +			shadow_buf, SHADOW_BYTES_PER_ROW, 0);
> +
> +		if (row_is_guilty(shadow_row, shadow))
> +			printf("%*c\n",
> +				shadow_pointer_offset(shadow_row, shadow),
> +				'^');
> +
> +		shadow_row += SHADOW_BYTES_PER_ROW;
> +	}
> +}
> +
> +static bool report_enabled(void)
> +{
> +	if (kasan_depth)
> +		return false;
> +	if (test_bit(KASAN_BIT_MULTI_SHOT, &kasan_flags))
> +		return true;
> +	return !test_and_set_bit(KASAN_BIT_REPORTED, &kasan_flags);
> +}
> +
> +static void __kasan_report(unsigned long addr, size_t size, bool is_write,
> +				unsigned long ip)
> +{
> +	struct kasan_access_info info;
> +	void *tagged_addr;
> +	void *untagged_addr;
> +	unsigned long flags;
> +
> +	tagged_addr = (void *)addr;
> +	untagged_addr = reset_tag(tagged_addr);
> +
> +	info.access_addr = tagged_addr;
> +	if (addr_has_shadow(untagged_addr))
> +		info.first_bad_addr = find_first_bad_addr(tagged_addr, size);
> +	else
> +		info.first_bad_addr = untagged_addr;
> +	info.access_size = size;
> +	info.is_write = is_write;
> +	info.ip = ip;
> +
> +	start_report(&flags);
> +
> +	print_error_description(&info);
> +	pr_err("\n");
> +
> +	if (addr_has_shadow(untagged_addr)) {
> +		print_address_description(untagged_addr, get_tag(tagged_addr));
> +		pr_err("\n");
> +		print_shadow_for_address(info.first_bad_addr);
> +	} else {
> +		dump_stack();
> +	}
> +
> +	end_report(&flags);
> +}
> +
> +bool kasan_report(unsigned long addr, size_t size, bool is_write,
> +			unsigned long ip)
> +{
> +	bool ret = false;
> +
> +	if (likely(report_enabled())) {
> +		__kasan_report(addr, size, is_write, ip);
> +		ret = true;
> +	}
> +
> +	return ret;
> +}
> diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
> new file mode 100644
> index 0000000000..83f6aa543d
> --- /dev/null
> +++ b/scripts/Makefile.kasan
> @@ -0,0 +1,17 @@
> + # SPDX-License-Identifier: GPL-2.0
> +ifdef CONFIG_KASAN
> +CFLAGS_KASAN_NOSANITIZE := -fno-builtin
> +KASAN_SHADOW_OFFSET ?= $(CONFIG_KASAN_SHADOW_OFFSET)
> +endif
> +
> +CFLAGS_KASAN_MINIMAL := -fsanitize=kernel-address
> +
> +cc-param = $(call cc-option, -mllvm -$(1), $(call cc-option, --param $(1)))
> +
> +CFLAGS_KASAN := $(CFLAGS_KASAN_MINIMAL) \
> +	$(call cc-param,asan-globals=1) \
> +	$(call cc-param,asan-instrument-allocas=1)
> +
> +ifndef CONFIG_CPU_64
> +CFLAGS_KASAN += $(call cc-param,asan-stack=1)
> +endif
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 337430cd00..ab7d9f2bdf 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -127,6 +127,16 @@ _c_flags       = $(KBUILD_CFLAGS) $(ccflags-y) $(CFLAGS_$(target-stem).o)
>  _a_flags       = $(KBUILD_AFLAGS) $(asflags-y) $(AFLAGS_$(target-stem).o)
>  _cpp_flags     = $(KBUILD_CPPFLAGS) $(cppflags-y) $(CPPFLAGS_$(target-stem).lds)
>  
> +#
> +# Enable address sanitizer flags for kernel except some files or directories
> +# we don't want to check (depends on variables KASAN_SANITIZE_obj.o, KASAN_SANITIZE)
> +#
> +ifeq ($(CONFIG_KASAN),y)
> +_c_flags += $(if $(part-of-pbl),, $(if $(patsubst n%,, \
> +		$(KASAN_SANITIZE_$(basetarget).o)$(KASAN_SANITIZE)y), \
> +		$(CFLAGS_KASAN), $(CFLAGS_KASAN_NOSANITIZE)))
> +endif
> +
>  ifeq ($(CONFIG_UBSAN),y)
>  _CFLAGS_UBSAN   = $(eval _CFLAGS_UBSAN := $(CFLAGS_UBSAN))$(_CFLAGS_UBSAN)
>  _c_flags       += $(if $(patsubst n%,, \
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

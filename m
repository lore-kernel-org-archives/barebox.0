Delivery-date: Sun, 06 Mar 2022 23:51:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQziY-002lR4-7H
	for lore@lore.pengutronix.de; Sun, 06 Mar 2022 23:51:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQziW-0000F3-Jj
	for lore@pengutronix.de; Sun, 06 Mar 2022 23:51:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLEHKyK9WYR6L4kPOyUn1mhRFl8rm7ylURoxVNUrkIk=; b=X/Uj+iBCliXCJQ
	QNSOkH6sXy5QuLAj+lW9ggMr9ZqOEMc0AaQdvnHmH+YB5jb8MsKADNdCJMNhpDKNUKV29TkVOVDLJ
	2vzgi0WFkSzZ8rsvgpuM/7J1nvsVbudDvcbnxP21+dqDLKEoTqYqWuyF0HUkq3hKTXj+sc2fPcXuU
	XUHW5b95148h6x+YLHPAMl+252mtnQmuTttFoOLgGjeI4iSxK157Fy3YET4X4hrqwEQWc9sc2NMX4
	qfZ+7AEwSFptpmrA7ElO5D2VnYc4rpT2V0y26FIn6H6v9XaM+swlFRmOznqmk1mmAzg1WfdtQgVF7
	N7cYAUJLLk+PsXGUxYLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQzgj-00FOUv-Co; Sun, 06 Mar 2022 22:49:17 +0000
Received: from mxout.security-mail.net ([85.31.212.46]
 helo=fx303.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQzgd-00FOU6-Mt
 for barebox@lists.infradead.org; Sun, 06 Mar 2022 22:49:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx303.security-mail.net (Postfix) with ESMTP id 74EBA323734
 for <barebox@lists.infradead.org>; Sun,  6 Mar 2022 23:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1646606944;
 bh=2HOkELEksxEpohgZBuTXAMaMb2Ob1Z+h5cvXq/i1RpQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=C6P3SjkJzdZX89Mqq9oUUgDCaGpgTH8U42IviQtdrs4DRE3ihow7PmrqZpL3IkTB6
 5PdVdbVjGNNYog8kS7GLr5LShhCmeAIUf5A7Lwv8BbTeua4lZ8WXgC/5D7ym6VKckP
 ZYWxa4Mk0Kc4sccyolwHdyzWpatFaSbGxs4rB2CQ=
Received: from fx303 (localhost [127.0.0.1]) by fx303.security-mail.net
 (Postfix) with ESMTP id DA1F332374C; Sun,  6 Mar 2022 23:49:03 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx303.security-mail.net (Postfix) with ESMTPS id 3703D323747; Sun,  6 Mar
 2022 23:49:02 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 9FF0027E03FA; Sun,  6 Mar 2022
 23:49:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 851B327E0412; Sun,  6 Mar 2022 23:49:02 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 TiKbQTpkdX4f; Sun,  6 Mar 2022 23:49:02 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 60C9827E03FA; Sun,  6 Mar 2022
 23:49:02 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <13091.62253a5e.c8053.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 851B327E0412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1646606942;
 bh=e1xurxCibzV09yy2nA5oHmlpT54mk+tnI0PS5TnIE6k=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=VLclP3arcAxDQxJfcLlluUsI4k4jbi7LHfOoW7cm0XltMkuVFni20hEugyVdB6Sgx
 qe4sFpiJGSA06X1a11TCsExTfocHxn6yxBfSbim/Q2BK/S1xhXU/651EF+73J88w25
 qX0BOqbgBfnTs6XDOe/W5D2G3oz9a+dWGhZuhp3I=
Date: Sun, 6 Mar 2022 23:49:01 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220306224901.GC18417@tellis.lin.mbt.kalray.eu>
References: <20220305222013.1902586-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220305222013.1902586-1-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_144911_998425_9B1B7CA3 
X-CRM114-Status: GOOD (  27.91  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: add printf debugging automation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Sat, Mar 05, 2022 at 11:20:13PM +0100, Ahmad Fatoum wrote:
> This allows automating pinpointing of breakage outside PBL. For example
> if barebox is stuck during startup:
> 
>   - Turn on CONFIG_DEBUG_LL and CONFIG_DEBUG_INITCALLS
>   - Note last $initcall executed
By $initcall are you talking about the function name or about the
initcall address during startup ?

>   - Set CONFIG_FTRACE_CALLCHAIN=$initcall
>   - Serial output will stop at the last called traced function
> 
> Alternatively, enable CONFIG_FTRACE and stick tracing_on() somewhere.
> 
> Output will look like:
> 
>  [<4fd859a5>]   (netconsole_init+0x1/0x120) from [<4fd014c7>] (start_barebox+0x43/0x7c)
>  [<4fd77209>]     (xzalloc+0x1/0x34) from [<4fd859bd>] (netconsole_init+0x19/0x120)
>  [<4fd7719d>]       (xmalloc+0x1/0x34) from [<4fd77221>] (xzalloc+0x19/0x34)
>  [<4fd0995d>]         (malloc+0x1/0x54) from [<4fd771b5>] (xmalloc+0x19/0x34)
>  [<4fd0aae1>]           (tlsf_malloc+0x1/0x48) from [<4fd09983>] (malloc+0x27/0x54)
>  [<4fd0a1d9>]             (adjust_request_size+0x1/0x44) from [<4fd0aaff>] (tlsf_malloc+0x1f/0x48)
>  [<4fd0a18d>]               (align_up+0x1/0x4c) from [<4fd0a205>] (adjust_request_size+0x2d/0x44)
>  [<4fd0aa55>]             (block_locate_free+0x1/0x8c) from [<4fd0ab09>] (tlsf_malloc+0x29/0x48)
> 
> This is added as an experimental feature as it's not meant to be enabled
> at all time due to large overhead and may change considerably in future,
> e.g. to allow dumping to memory buffer and to record timestamps for
> profiling.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Makefile           | 10 +++++-
>  common/Kconfig     | 15 +++++++++
>  include/ftrace.h   | 18 +++++++++++
>  lib/Makefile       |  4 +++
>  lib/ftrace.c       | 77 ++++++++++++++++++++++++++++++++++++++++++++++
>  lib/kasan/Makefile |  5 +++
>  6 files changed, 128 insertions(+), 1 deletion(-)
>  create mode 100644 include/ftrace.h
>  create mode 100644 lib/ftrace.c
> 
> diff --git a/Makefile b/Makefile
> index c04deaaa0f69..34743f4b6b45 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -469,7 +469,7 @@ export KBUILD_AFLAGS AFLAGS_KERNEL AFLAGS_MODULE
>  export KBUILD_AFLAGS_MODULE KBUILD_CFLAGS_MODULE
>  export KBUILD_AFLAGS_KERNEL KBUILD_CFLAGS_KERNEL
>  export LDFLAGS_barebox
> -export LDFLAGS_pbl
> +export LDFLAGS_pbl PBL_CPPFLAGS
>  
>  export CFLAGS_UBSAN
>  export CFLAGS_KASAN CFLAGS_KASAN_NOSANITIZE
> @@ -682,6 +682,14 @@ KBUILD_CFLAGS += $(call cc-option,-Wno-pointer-sign,)
>  # change __FILE__ to the relative path from the srctree
>  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
>  
> +# The arch Makefiles can override CC_FLAGS_FTRACE. We may also append it later.
> +ifdef CONFIG_FTRACE
> +CC_FLAGS_FTRACE := -finstrument-functions
> +export CC_FLAGS_FTRACE
> +KBUILD_CFLAGS	+= $(CC_FLAGS_FTRACE)
> +PBL_CPPFLAGS   += -fno-instrument-functions
> +endif
> +
>  include-y +=scripts/Makefile.ubsan
>  include-$(CONFIG_KASAN)         += scripts/Makefile.kasan
>  
> diff --git a/common/Kconfig b/common/Kconfig
> index b8c3e34c0a58..2a35b43e2717 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1592,6 +1592,21 @@ config ASAN
>  	  Enables ASAN (AddressSANitizer) - runtime memory debugger,
>  	  designed to find out-of-bounds accesses and use-after-free bugs.
>  
> +config FTRACE
> +	bool "Enable function tracing (Only for debugging!)
missing closing quote here --------------------------------^
which generated the following warning when building:
common/Kconfig:1583:warning: multi-line strings not supported

> +	depends on EXPERIMENTAL
> +	help
> +	  This is not Linux-like ftrace, but a poor man's substitute using
> +	  GCC function instrumentation.
> +
> +config FTRACE_CALLCHAIN
> +	string "Print execution trace of all function below"
> +	depends on FTRACE && KALLSYMS
> +	default ""
> +	help
> +	  All functions called directly or indirectly by the specified
> +	  function will be logged to serial. Keep empty to disable
> +
>  config COMPILE_TEST
>  	bool "compile-test drivers of other platforms"
>  	default n
> diff --git a/include/ftrace.h b/include/ftrace.h
> new file mode 100644
> index 000000000000..68b46f1fa1d4
> --- /dev/null
> +++ b/include/ftrace.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef _FTRACE_H__
> +#define _FTRACE_H__
> +
> +#ifdef CONFIG_FTRACE
> +void tracing_on(void);
> +void tracing_off(void);
> +#else
> +static inline void tracing_on(void)
> +{
> +}
> +static inline void tracing_off(void)
> +{
> +}
> +#endif
> +
> +#endif /* _FTRACE_H */
> diff --git a/lib/Makefile b/lib/Makefile
> index 3f6653d74e9a..7b86ad3383c3 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -73,6 +73,7 @@ obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
>  obj-$(CONFIG_CRC8)	+= crc8.o
>  obj-$(CONFIG_NLS)	+= nls_base.o
>  obj-$(CONFIG_FSL_QE_FIRMWARE) += fsl-qe-firmware.o
> +obj-$(CONFIG_FTRACE)	+= ftrace.o
>  obj-$(CONFIG_UBSAN)	+= ubsan.o
>  
>  # GCC library routines
> @@ -85,6 +86,9 @@ pbl-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
>  
>  UBSAN_SANITIZE_ubsan.o := n
>  
> +CFLAGS_REMOVE_ubsan.o = $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_ftrace.o = $(CC_FLAGS_FTRACE)
> +
>  libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
>  	                      fdt_empty_tree.o
>  $(foreach file, $(libfdt_files), \
> diff --git a/lib/ftrace.c b/lib/ftrace.c
> new file mode 100644
> index 000000000000..1d0b36c10550
> --- /dev/null
> +++ b/lib/ftrace.c
> @@ -0,0 +1,77 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <ftrace.h>
> +#include <kallsyms.h>
> +
> +static int trace_enabled __section(".data");
> +static volatile int trace_lock __section(".data");
> +static int depth __section(".data");
> +static const void *trigger __section(".data");
> +
> +void notrace tracing_on(void)
> +{
> +	if (trace_lock)
> +		return;
> +	trigger = NULL;
> +	trace_enabled = 1;
> +}
> +
> +void notrace tracing_off(void)
> +{
> +	if (trace_lock)
> +		return;
> +	trigger = NULL;
> +	trace_enabled = 0;
> +}
> +
> +void notrace __cyg_profile_func_enter(void *where, void *from)
> +{
> +	if (trace_lock)
> +		return;
> +
> +	if (trace_enabled <= 0) {
> +		if (where == trigger)
> +			trace_enabled++;
> +		else
> +			return;
> +	}
> +
> +	depth++;
> +
> +	trace_lock = true;
> +
> +	printf(" [<%08lx>] %*s(%pS) from [<%08lx>] (%pS)\n", (ulong) where,
> +	       depth * 2, "", where, (ulong)from, from);
> +
> +	trace_lock = false;
> +}
> +
> +void notrace __cyg_profile_func_exit(void *where, void *from)
> +{
> +	if (trace_lock || !trace_enabled)
> +		return;
> +
> +	depth--;
> +
> +	if (where == trigger)
> +		trace_enabled--;
> +}
> +
> +static int init_trace(void)
> +{
> +	ulong _trigger;
> +
> +	trace_lock = true;
> +
> +	_trigger = kallsyms_lookup_name(CONFIG_FTRACE_CALLCHAIN);
> +	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
> +		_trigger |= 1;
> +	trigger = (void *)_trigger;
> +
> +	trace_lock = false;
> +
> +	return 0;
> +}
> +pure_initcall(init_trace);
> diff --git a/lib/kasan/Makefile b/lib/kasan/Makefile
> index e3f4bb61f900..06fa906ff620 100644
> --- a/lib/kasan/Makefile
> +++ b/lib/kasan/Makefile
> @@ -13,3 +13,8 @@ CFLAGS_generic_report.o := $(CC_FLAGS_KASAN_RUNTIME)
>  CFLAGS_generic.o := $(CC_FLAGS_KASAN_RUNTIME)
>  CFLAGS_report.o := $(CC_FLAGS_KASAN_RUNTIME)
>  CFLAGS_common.o := $(CC_FLAGS_KASAN_RUNTIME)
> +
> +CFLAGS_REMOVE_generic_report.o = $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_generic.o = $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_report.o = $(CC_FLAGS_FTRACE)
> +CFLAGS_REMOVE_common.o = $(CC_FLAGS_FTRACE)
> -- 
> 2.30.2





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


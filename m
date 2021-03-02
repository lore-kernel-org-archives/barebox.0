Delivery-date: Tue, 02 Mar 2021 09:42:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0bV-0005ne-8R
	for lore@lore.pengutronix.de; Tue, 02 Mar 2021 09:42:05 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lH0bU-0000fA-7D
	for lore@pengutronix.de; Tue, 02 Mar 2021 09:42:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AgJHXmZOLqyVWyorzKDaEt9UhvAe//Ue7GUlUPaY/V0=; b=n6c1y2k/Tn5om/r/bCD0J/Wrq
	8W80ib/n2JLFXP5mLwZ8DxnrBMOzdEIpSzDpQF0LCxhTI+h1QsgHdmNXJnRoI/E3gn7iqyMgK9Lth
	uqCFX/aMkVjXE0EuY1SWjPAbE00SVZIYMJ2msFqUMgaNQ8W17GA8T9ZocgRn0DPJByTTVcWYusxzo
	JY/IzRX92ziGEaETV7ZQz2NxJSO9LzvW+kGoTqw5wxJhC+EqA/Lt7OltDNcdW4c2LSXlN8JxdC7EY
	rWppG7AkQQrEMt0XL+24F9iK4mnOHiyXByAkyoBlDbVNWgUBzCfppVfFJdfVh0uLEsNJchbgmMEa6
	9e7QuvQtQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lH0aN-0003Yb-8f; Tue, 02 Mar 2021 08:40:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lH0aJ-0003Y9-R4
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 08:40:52 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lH0aI-0000PG-OT; Tue, 02 Mar 2021 09:40:50 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
 <20210301155851.12463-2-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <cd974769-fc79-ada3-a8e6-cd3cadfdbe89@pengutronix.de>
Date: Tue, 2 Mar 2021 09:40:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210301155851.12463-2-jmaselbas@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_034051_896290_A3063F71 
X-CRM114-Status: GOOD (  25.68  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Yann Sionneau <ysionneau@kalray.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] kvx: Implement dcache invalidation primitive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 01.03.21 16:58, Jules Maselbas wrote:
> From: Yann Sionneau <ysionneau@kalray.eu>
> 
> Signed-off-by: Yann Sionneau <ysionneau@kalray.eu>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  arch/kvx/Kconfig             |  1 +
>  arch/kvx/include/asm/cache.h | 13 ++++++++++
>  arch/kvx/lib/Makefile        |  2 +-
>  arch/kvx/lib/cache.c         | 50 ++++++++++++++++++++++++++++++++++++
>  4 files changed, 65 insertions(+), 1 deletion(-)
>  create mode 100644 arch/kvx/lib/cache.c
> 
> diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
> index 8483ae6e6..4e02613ec 100644
> --- a/arch/kvx/Kconfig
> +++ b/arch/kvx/Kconfig
> @@ -12,6 +12,7 @@ config KVX
>  	select FLEXIBLE_BOOTARGS
>  	select GENERIC_FIND_NEXT_BIT
>  	select HAS_ARCH_SJLJ
> +	select HAS_CACHE
>  	select LIBFDT
>  	select MFD_SYSCON
>  	select OF_BAREBOX_DRIVERS
> diff --git a/arch/kvx/include/asm/cache.h b/arch/kvx/include/asm/cache.h
> index 3be176725..efdbcc630 100644
> --- a/arch/kvx/include/asm/cache.h
> +++ b/arch/kvx/include/asm/cache.h
> @@ -15,4 +15,17 @@ static inline void sync_caches_for_execution(void)
>  	__builtin_kvx_barrier();
>  }
>  
> +void kvx_dcache_invalidate_mem_area(uint64_t addr, int size);
> +
> +static inline void sync_dcache_icache(void)
> +{
> +	sync_caches_for_execution();
> +}
> +
> +static inline void dcache_inval(void)
> +{
> +	__builtin_kvx_fence();
> +	__builtin_kvx_dinval();
> +}
> +
>  #endif /* __KVX_CACHE_H */
> diff --git a/arch/kvx/lib/Makefile b/arch/kvx/lib/Makefile
> index cee08b0fa..d271ebccf 100644
> --- a/arch/kvx/lib/Makefile
> +++ b/arch/kvx/lib/Makefile
> @@ -3,4 +3,4 @@
>  # Copyright (C) 2019 Kalray Inc.
>  #
>  
> -obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o
> +obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o cache.o
> diff --git a/arch/kvx/lib/cache.c b/arch/kvx/lib/cache.c
> new file mode 100644
> index 000000000..4e128891a
> --- /dev/null
> +++ b/arch/kvx/lib/cache.c
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2021 Yann Sionneau <ysionneau@kalray.eu>, Kalray Inc.
> +
> +#include <asm/cache.h>
> +
> +#define K1_DCACHE_REFILL         (12)
> +#define K1_DCACHE_HWLOOP         (1)
> +#define K1_DCACHE_REFILL_PERCENT (80)
> +#define K1_DCACHE_LINE_SIZE    (64)
> +#define K1_DCACHE_SIZE (128*1024)
> +
> +void kvx_dcache_invalidate_mem_area(uint64_t addr, int size)
> +{
> +	/* if hwloop iterations cost < _K1_DCACHE_REFILL_PERCENT cache refill,
> +	 * use hwloop, otherwise invalid the whole cache
> +	 */
> +	if (size <
> +	(K1_DCACHE_REFILL_PERCENT * (K1_DCACHE_REFILL * K1_DCACHE_SIZE))
> +			/ (100 * (K1_DCACHE_REFILL + K1_DCACHE_HWLOOP))) {
> +		/* number of lines that must be invalidated */
> +		int invalid_lines = ((addr + size) -
> +					(addr & (~(K1_DCACHE_LINE_SIZE - 1))));
> +
> +		invalid_lines = invalid_lines / K1_DCACHE_LINE_SIZE
> +				+ (0 != (invalid_lines % K1_DCACHE_LINE_SIZE));
> +		if (__builtin_constant_p(invalid_lines) && invalid_lines <= 2) {

Note that currently this will always be false, because of lack of link time
optimization. You could split this away the check into the header and leave the
juicy parts here if you want to have this optimization.

> +			/* when inlining (and doing constant folding),
> +			 *  gcc is able to unroll small loops
> +			 */
> +			int i;
> +
> +			for (i = 0; i < invalid_lines; i++) {
> +				__builtin_kvx_dinvall((void *)(addr
> +						+ i * K1_DCACHE_LINE_SIZE));
> +			}
> +		} else if (invalid_lines > 0) {
> +			__asm__ __volatile__ (
> +				"loopdo %1, 0f\n;;\n"
> +				"dinvall 0[%0]\n"
> +				"addd %0 = %0, %2\n;;\n"
> +				"0:\n"
> +				: "+r"(addr)
> +				: "r" (invalid_lines),
> +				"i" (K1_DCACHE_LINE_SIZE)
> +				: "ls", "le", "lc", "memory");
> +		}
> +	} else {
> +		__builtin_kvx_dinval();
> +	}
> +}
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


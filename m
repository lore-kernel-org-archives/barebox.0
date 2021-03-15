Delivery-date: Mon, 15 Mar 2021 09:39:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiko-0000bl-Ig
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:39:10 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLikn-0003K2-B2
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:39:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=soT2PkFMF5s57SHDoOWTDALIyjQLgZVZOomgnEKv0kE=; b=nqfEZOOje+OjkARgDgw+IfHbe
	3JsLUQGmUB/WhtUJ5FKSf6LBeX3RcdcvVlcDx4Ki5ltyJTS7KP4jssNGExoXbycRtRMVr2AFpKPSb
	V2/ZrNPY8PG+0AK5ZvQmedIHHsGR9zM36YC07Q8t7UYyrEDRJNL9dF1yGGKF1sM1F3clACmz636SJ
	VjNp/qTtc/Rpp6bnW1dGISlTGk36l87bacznMDvM8/c+suGh8lHNl6xMN4Td2DRJY3+Ma0dH0Ab2b
	0Uh1Mc7nvmzQNpdJiQP9cK4DK8shTYyDayuoPpsskJyyoPLzUI1x0wZprLurhQ+NP9cQaSNy+ANAz
	023ThPsJQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLijR-00FFUt-9E; Mon, 15 Mar 2021 08:37:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLih1-00FEvh-63
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:35:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLih0-0002Y7-O1; Mon, 15 Mar 2021 09:35:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLih0-0006oI-4L; Mon, 15 Mar 2021 09:35:14 +0100
Date: Mon, 15 Mar 2021 09:35:14 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210315083514.GL23724@pengutronix.de>
References: <20210305183327.29753-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305183327.29753-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:35:03 up 25 days, 11:58, 79 users,  load average: 0.15, 0.18, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_083519_278000_D7087E33 
X-CRM114-Status: GOOD (  26.43  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/5] kvx: Implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 05, 2021 at 07:33:23PM +0100, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
> changes v1 -> v2: nothing
> ---
>  arch/kvx/Kconfig              |  1 +
>  arch/kvx/include/asm/setjmp.h | 15 +++++++
>  arch/kvx/lib/Makefile         |  2 +-
>  arch/kvx/lib/setjmp.S         | 85 +++++++++++++++++++++++++++++++++++
>  4 files changed, 102 insertions(+), 1 deletion(-)
>  create mode 100644 arch/kvx/include/asm/setjmp.h
>  create mode 100644 arch/kvx/lib/setjmp.S

Applied, thanks

Sascha

> 
> diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
> index 3327021e1..8483ae6e6 100644
> --- a/arch/kvx/Kconfig
> +++ b/arch/kvx/Kconfig
> @@ -11,6 +11,7 @@ config KVX
>  	select ELF
>  	select FLEXIBLE_BOOTARGS
>  	select GENERIC_FIND_NEXT_BIT
> +	select HAS_ARCH_SJLJ
>  	select LIBFDT
>  	select MFD_SYSCON
>  	select OF_BAREBOX_DRIVERS
> diff --git a/arch/kvx/include/asm/setjmp.h b/arch/kvx/include/asm/setjmp.h
> new file mode 100644
> index 000000000..3cfc698d9
> --- /dev/null
> +++ b/arch/kvx/include/asm/setjmp.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2021 Jules Maselbas <jmaselbas@kalray.eu>, Kalray Inc. */
> +
> +#ifndef _ASM_KVX_SETJMP_H_
> +#define _ASM_KVX_SETJMP_H_
> +
> +#include <linux/types.h>
> +
> +typedef u64 jmp_buf[22];
> +
> +int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
> +int setjmp(jmp_buf jmp) __attribute__((returns_twice));
> +void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
> +
> +#endif /* _ASM_KVX_SETJMP_H_ */
> diff --git a/arch/kvx/lib/Makefile b/arch/kvx/lib/Makefile
> index 6e56462da..cee08b0fa 100644
> --- a/arch/kvx/lib/Makefile
> +++ b/arch/kvx/lib/Makefile
> @@ -3,4 +3,4 @@
>  # Copyright (C) 2019 Kalray Inc.
>  #
>  
> -obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o
> +obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o
> diff --git a/arch/kvx/lib/setjmp.S b/arch/kvx/lib/setjmp.S
> new file mode 100644
> index 000000000..829299711
> --- /dev/null
> +++ b/arch/kvx/lib/setjmp.S
> @@ -0,0 +1,85 @@
> +/* SPDX-License-Identifier: LGPL-2.1 */
> +/* SPDX-FileCopyrightText: 2021 Jules Maselbas <jmaselbas@kalray.eu>, Kalray Inc. */
> +
> +#define REG_SIZE 8
> +
> +#include <linux/linkage.h>
> +
> +/* jmp_buf layout:
> + * [0]  = $ra,  $sp,  $cs,  $r14,
> + * [4]  = $r20, $r21, $r22, $r23,
> + * [8]  = $r24, $r25, $r26, $r27,
> + * [12] = $r28, $r29, $r30, $r31,
> + * [16] = $r18, $r19,
> + * [18] = $lc,  $le,  $ls,  xxxx
> + */
> +
> +/**
> + * int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
> + */
> +ENTRY(initjmp)
> +	/* store $ra */
> +	sd (0 * REG_SIZE)[$r0] = $r1
> +	;;
> +	/* store $sp */
> +	sd (1 * REG_SIZE)[$r0] = $r2
> +	make $r0 = 0
> +	ret
> +	;;
> +ENDPROC(initjmp)
> +
> +/**
> + * int setjmp(jmp_buf jmp);
> + */
> +ENTRY(setjmp)
> +	sq (16 * REG_SIZE)[$r0] = $r18r19
> +	get $r40 = $ra
> +	copyd $r41 = $sp
> +	;;
> +	so (4 * REG_SIZE)[$r0] = $r20r21r22r23
> +	get $r42 = $cs
> +	copyd $r43 = $r14
> +	;;
> +	so (0 * REG_SIZE)[$r0] = $r40r41r42r43
> +	get $r40 = $lc
> +	;;
> +	so (8 * REG_SIZE)[$r0] = $r24r25r26r27
> +	get $r41 = $le
> +	;;
> +	so (12 * REG_SIZE)[$r0] = $r28r29r30r31
> +	get $r42 = $ls
> +	;;
> +	so (18 * REG_SIZE)[$r0] = $r40r41r42r43
> +	make $r0 = 0
> +	ret
> +	;;
> +ENDPROC(setjmp)
> +
> +/**
> + * void longjmp(jmp_buf jmp, int ret);
> + */
> +ENTRY(longjmp)
> +	lo $r40r41r42r43 = (0 * REG_SIZE)[$r0]
> +	;;
> +	lo $r44r45r46r47 = (18 * REG_SIZE)[$r0]
> +	set $ra = $r40
> +	copyd $sp = $r41
> +	;;
> +	lo $r20r21r22r23 = (4 * REG_SIZE)[$r0]
> +	set $cs = $r42
> +	copyd $r14 = $r43
> +	;;
> +	lo $r24r25r26r27 = (8 * REG_SIZE)[$r0]
> +	set $lc = $r44
> +	;;
> +	lo $r28r29r30r31 = (12 * REG_SIZE)[$r0]
> +	set $le = $r45
> +	;;
> +	lq $r18r19 = (16 * REG_SIZE)[$r0]
> +	set $ls = $r46
> +	;;
> +	/* According to man, if retval is equal to 0, then we should return 1 */
> +	maxud $r0 = $r1, 1
> +	ret
> +	;;
> +ENDPROC(longjmp)
> -- 
> 2.17.1
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
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


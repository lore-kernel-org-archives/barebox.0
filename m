Delivery-date: Mon, 29 Mar 2021 18:43:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQuzU-000683-NC
	for lore@lore.pengutronix.de; Mon, 29 Mar 2021 18:43:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lQuzT-0003m2-VG
	for lore@pengutronix.de; Mon, 29 Mar 2021 18:43:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o2apEvYdgdJpRQRffb1SDFNbG74dhxsEXeq7om3iidQ=; b=SBXIUxu8ZFNpoJXFfZuZ0sbBD
	2mT1eVn+gvMOAU4XW5v8TwHl5xZS9Wzrrnvj8anJRUT0SyVu660YeYPGL7EgLiU0pMcbn3zKkqY3T
	Q+pMwGhuKhhag1yA/ycL+FTj0d8GOo85EW9elKvRA7/7r50fmJ1PgB5rV5nPjHHOEIWZGbbjqNa0H
	d9sx3jEtppDOg3ZtP5Ih5+wzvodVbiM+oYrySbbbylf2U3jOV1kYnpOXnDKRwEvlzVAORvQ1BjqJz
	5qYGSb1D8N0blPeajNixbZkqjhFPNpjyGP6K9/nrz8SkLUNc4YI6wI+Dx0x0JCYToq4yhXXni0o/5
	Dixly1a3g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lQuwq-000lun-1z; Mon, 29 Mar 2021 16:41:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQod3-000Yhq-NI
 for barebox@desiato.infradead.org; Mon, 29 Mar 2021 09:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=w8Twsq2HDR26IDUL4ewugK+tz5s+Qco/H2ycR3bCejw=; b=OuKrjauBlxyhRN2wMK2YrGvRWQ
 1lZtXDQY+j6435InHOIN6ilDSVZmCZbLyJBuDucEF/PaN8n8rOxa7ugG5BCh8SH3lqdlDMBEanoLD
 pv+Nrxyd0QWIoSjEjvBLbxutrISeotnI+mbWk+gfRs6+Hnwg98TZiAAqNxisBesFUU7Q37lvH3/zF
 2muFO6KsQUzguB153+zaQ/bv6sQ+1PZVOLHxxNt9zLBam5pFwqssCD6HWXxroGhOaGEaRFWt819eD
 A/J3b/nL367PZNy41O0JPyBKDkDmh6XH40dAyOhJLzUUCQMDjPC+QCMS1gArLPi301XEV2os+0TSm
 YDL4U35Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQmlo-001CrW-EI
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 07:57:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lQmln-00041H-4Q; Mon, 29 Mar 2021 09:57:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lQmlm-0004e3-RP; Mon, 29 Mar 2021 09:57:06 +0200
Date: Mon, 29 Mar 2021 09:57:06 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210329075706.GF609@pengutronix.de>
References: <20210324082304.30858-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210324082304.30858-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:56:56 up 39 days, 11:20, 86 users,  load average: 0.16, 0.18, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_085710_516889_3FF61765 
X-CRM114-Status: GOOD (  19.51  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] RISC-V: cpu: request stack memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 24, 2021 at 09:23:02AM +0100, Ahmad Fatoum wrote:
> Now that the stack base region is determined dynamically,
> mem_malloc_resource can no longer reserve the stack space.
> Do as ARM does and add a RISC-V specific initcall to reserve
> the main thread's stack space.
> 
> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

> Fix for master as otherwise stack could be overwritten at runtime
> ---
>  arch/riscv/cpu/core.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
> index bdcd500ed748..982d378eddec 100644
> --- a/arch/riscv/cpu/core.c
> +++ b/arch/riscv/cpu/core.c
> @@ -2,6 +2,9 @@
>  /*
>   * Copyright (C) 2012 Regents of the University of California
>   * Copyright (C) 2017 SiFive
> + * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
> + *
> + * Common RISC-V core initcalls.
>   *
>   * All RISC-V systems have a timer attached to every hart.  These timers can
>   * either be read from the "time" and "timeh" CSRs, and can use the SBI to
> @@ -14,8 +17,17 @@
>  #include <of.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> +#include <memory.h>
> +#include <asm-generic/memory_layout.h>
>  #include <io.h>
>  
> +static int riscv_request_stack(void)
> +{
> +	extern unsigned long riscv_stack_top;
> +	return PTR_ERR_OR_ZERO(request_sdram_region("stack", riscv_stack_top - STACK_SIZE, STACK_SIZE));
> +}
> +coredevice_initcall(riscv_request_stack);
> +
>  static struct device_d timer_dev;
>  
>  static int riscv_probe(struct device_d *parent)
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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


Delivery-date: Thu, 05 Aug 2021 16:25:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBeJi-0002xV-95
	for lore@lore.pengutronix.de; Thu, 05 Aug 2021 16:25:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBeJh-0004WS-Af
	for lore@pengutronix.de; Thu, 05 Aug 2021 16:25:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gIN0/HQ5C11u+/9R51Dts27l/kfVd1i4uJ93LrqPf/E=; b=NWS0sV0TsbIKoEqbUwTQaWeFQn
	HaEWzGD8lxJ0Fry9et98LYy91IIY0PNbOpEGb1g1JztTmkg2mQTyVTT8vQcWst7FfbmEEpxa9K/jd
	ZPBV1YPTJFrokKKqCC/VOuSeCtIaCVU0tFj/FCe1Kd0b7Jj7r5+l6Au0GNU8VoSvAPIbcFWWEIqNd
	q6gfcvnqMkb0BPol9gKZt88MYBWWsax939fQ4CbLrQ1EgcFDkckxsTJhSKp0+v51iafE74CFtF1RZ
	1YkmvopbSrqosezAno8hM46ShRa9MvkNhAKhqDFRybEwmT+pU8tRolqMkSgor3KsJe5R67w5eW+9X
	JlniIn4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBeIU-009qn1-CQ; Thu, 05 Aug 2021 14:24:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBeIP-009qmR-W0
 for barebox@lists.infradead.org; Thu, 05 Aug 2021 14:24:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mBeIO-0004HO-N9; Thu, 05 Aug 2021 16:24:28 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-8-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <086d5892-9ca1-84d3-05aa-fe16c5a6eccf@pengutronix.de>
Date: Thu, 5 Aug 2021 16:24:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210803094418.475609-8-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_072430_110256_EEE928B8 
X-CRM114-Status: GOOD (  24.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 7/8] ARM: mmu-early: map no-map entries XN & uncached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.08.21 11:44, Rouven Czerwinski wrote:
> Ensure that reserved map entries with the no-map flag are marked as
> uncached and non-execute during the early MMU initialization.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/cpu/mmu-early.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
> index b985aa455f..9c3f01326b 100644
> --- a/arch/arm/cpu/mmu-early.c
> +++ b/arch/arm/cpu/mmu-early.c
> @@ -3,9 +3,11 @@
>  #include <errno.h>
>  #include <linux/sizes.h>
>  #include <asm/memory.h>
> +#include <asm-generic/memory_layout.h>
>  #include <asm/system.h>
>  #include <asm/cache.h>
>  #include <asm-generic/sections.h>
> +#include <pbl.h>
>  
>  #include "mmu.h"
>  
> @@ -24,7 +26,10 @@ static inline void map_region(unsigned long start, unsigned long size,
>  void mmu_early_enable(unsigned long membase, unsigned long memsize,
>  		      unsigned long _ttb)
>  {
> +	const struct pbl_reserved_memory *res_mem;
> +	int i;
>  	ttb = (uint32_t *)_ttb;
> +	res_mem =  get_pbl_reserved_memory();

Nitpick: could've been a single line.

>  
>  	arm_set_cache_functions();
>  
> @@ -58,6 +63,14 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
>  	/* maps main memory as cachable */
>  	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
>  
> +	for (i = 0; i < get_pbl_reserved_memory_num(); i++) {
> +		if (res_mem->flags & FDT_RES_MEM_FLAG_NOMAP)
> +			map_region(res_mem->base, res_mem->size,
> +				   PMD_SECT_DEF_UNCACHED | PMD_SECT_XN);
> +		res_mem++;
> +	}
> +
> +

Looks good:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  	/*
>  	 * With HAB enabled we call into the ROM code later in imx6_hab_get_status().
>  	 * Map the ROM cached which has the effect that the XN bit is not set.

Would be nice to make this HAB exception just an entry in the reserved map,
but that's out of scope for this patch.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


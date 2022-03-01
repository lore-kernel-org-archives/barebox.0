Delivery-date: Tue, 01 Mar 2022 09:51:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyDm-00ECRg-CG
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 09:51:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyDl-0007jX-33
	for lore@pengutronix.de; Tue, 01 Mar 2022 09:51:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CWSCd9HAIDQcWTEryii+aRQfHL6DAizTs/b3s+2iEF4=; b=wpzbhgZnjJfBbzvNUeZuG/YuFp
	vbhvZDh2PztwnsZfZKrXIC1QcK8k+p0OBPjHNglm3sujDa9/QKfecL2zCIkEsawZSvLHt/+IWMeT5
	AQkY+i7RvuXwqgPCxIMb5KXfSEOAGBUim4SK8iYjZTe8sVyaVptvwezbElU/ZRE+Ed5+r+W0e6Ily
	piRIMwM1AlaXlZfIzwusNsQHUl9oJeBuAsz4TOdeEESdfHjMcqLZDNChYveu8DBWGbYM9qbsXnTUD
	sPd0YpXwoH+sCsxWpN4OfZ9S3yNjbkuRSzUQ/qpd1rdxb9xWEpyP412VnUhikZInfK9Q78XjGaLE9
	X/efPHYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOyCY-00FgX9-IQ; Tue, 01 Mar 2022 08:49:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOyCS-00FgUz-OE
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 08:49:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOyCR-0007Dv-HV; Tue, 01 Mar 2022 09:49:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOyCR-0004CV-8m; Tue, 01 Mar 2022 09:49:39 +0100
Date: Tue, 1 Mar 2022 09:49:39 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220301084939.GR19585@pengutronix.de>
References: <20220223113846.3022227-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220223113846.3022227-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:49:30 up 80 days, 17:35, 81 users,  load average: 0.08, 0.17, 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_004940_807907_15AE793D 
X-CRM114-Status: GOOD (  27.08  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: stm32mp: ddrctl: add STM32MP131 RAM size querying
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 23, 2022 at 12:38:47PM +0100, Ahmad Fatoum wrote:
> buswidth is read from HW. With nb_bytes == 2, there is a possibility
> that we get a zero size out here, if driver and device are
> mismatched, e.g. because barebox is booted in FIP with mismatched
> external device tree.
> 
> As this runs very early before relocation, round up instead of crashing
> to be a bit more on the safe side.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-stm32mp/ddrctrl.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
> index 7f0944d7e77c..ed211cf58ebc 100644
> --- a/arch/arm/mach-stm32mp/ddrctrl.c
> +++ b/arch/arm/mach-stm32mp/ddrctrl.c
> @@ -101,7 +101,8 @@ static unsigned long ddrctrl_addrmap_ramsize(struct stm32mp1_ddrctl __iomem *d,
>  	if (LINE_UNUSED(reg, ADDRMAP6_ROW_B13)) rows--;
>  	if (LINE_UNUSED(reg, ADDRMAP6_ROW_B12)) rows--;
>  
> -	return memory_sdram_size(cols, rows, BIT(banks), nb_bytes / BIT(buswidth));
> +	return memory_sdram_size(cols, rows, BIT(banks),
> +				 DIV_ROUND_UP(nb_bytes, BIT(buswidth)));
>  }
>  
>  static inline unsigned ddrctrl_ramsize(void __iomem *base, unsigned nb_bytes)
> -- 
> 2.30.2
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


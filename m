Delivery-date: Fri, 10 Nov 2023 14:33:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Rdd-005tyX-0I
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:33:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1Rdd-0004FR-2d
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:33:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k6eFYCynIFv/yBXOtZQTih8eO4d45QGpU5hG2LrWhg0=; b=uiXrqXmHbLuPxUYhii0CQEvJyz
	nfP06uQkuUvp+54GUgkfNoczb/UmVZwzdusx0DLJjz/Ik1zwnrZItUSGKZVKhCpr7J+eXAoDEGCFe
	i/aM4IH8elsH/ybxmGxId+lIgKd6Yb87uAdKb3LrhyKY+WVZUKXW+/88CLTmio8xdUzvcig3ONbr8
	Zv3+9mAIDkcXoD62zMbE15yBsUdBFilUL8ojRCmBWnuIOI9Mif2ADaX8XGd5ySGZ3v9yerwc0h10D
	LUJHcG1ZetimpSVt8BqT4rufVMwEqKL+qKKVZtt0bEPuxcme+deZgu+IQ2OgrH2N/yxDtn2IE7PcN
	Stsnihbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Rcc-008rFY-2b;
	Fri, 10 Nov 2023 13:32:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Rca-008rF4-0j
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:32:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RcY-00044K-NM; Fri, 10 Nov 2023 14:32:26 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RcY-008267-As; Fri, 10 Nov 2023 14:32:26 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RcY-001Lkg-8O; Fri, 10 Nov 2023 14:32:26 +0100
Date: Fri, 10 Nov 2023 14:32:26 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20231110133226.GK3359458@pengutronix.de>
References: <20231109113012.1063774-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231109113012.1063774-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_053228_263558_F308F7CF 
X-CRM114-Status: GOOD (  24.55  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] resource: align memory reservation to page
 boundaries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 12:30:12PM +0100, Ahmad Fatoum wrote:
> barebox remaps all reserved entries as uncached to avoid speculative
> access into the described regions using remap_range.
> 
> The ARM implementation requires buffers to be page aligned, which we
> can't assume unconditionally. For this reason, reserve_sdram_region
> will align region start and size before mapping uncached.
> 
> __mmu_init called later on, will remap everything outside the reserved
> entries cached, e.g. to cache additional DRAM not known at PBL time.
> No realignment will happen then though triggering the BUG(!IS_ALIGNED)
> in ARM's arch_remap_range.
> 
> By moving the realignment before __request_sdram_region(), we ensure
> that no misaligned memory regions will be passed to arch_remap_range by
> core code.
> 
> This fixes chainloading barebox from an older barebox[1] that reserves
> the FDT prior to relocation.
> 
> [1]: anything prior to 0b6b146a5508 ("fdt: Do not reserve device tree blob")
> 
> Reported-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/memory.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/memory.c b/common/memory.c
> index d560d444b0a8..300320f85344 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -218,10 +218,6 @@ struct resource *reserve_sdram_region(const char *name, resource_size_t start,
>  {
>  	struct resource *res;
>  
> -	res = __request_sdram_region(name, IORESOURCE_BUSY, start, size);
> -	if (IS_ERR(res))
> -		return ERR_CAST(res);
> -
>  	if (!IS_ALIGNED(start, PAGE_SIZE)) {
>  		pr_err("%s: %s start is not page aligned\n", __func__, name);
>  		start = ALIGN_DOWN(start, PAGE_SIZE);
> @@ -232,6 +228,10 @@ struct resource *reserve_sdram_region(const char *name, resource_size_t start,
>  		size = ALIGN(size, PAGE_SIZE);
>  	}
>  
> +	res = __request_sdram_region(name, IORESOURCE_BUSY, start, size);
> +	if (IS_ERR(res))
> +		return ERR_CAST(res);
> +
>  	remap_range((void *)start, size, MAP_UNCACHED);
>  
>  	return res;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Mon, 22 May 2023 10:19:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q10lB-009RhL-Tx
	for lore@lore.pengutronix.de; Mon, 22 May 2023 10:19:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q10l9-0000Q3-Gp
	for lore@pengutronix.de; Mon, 22 May 2023 10:19:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bNOMy7MzohNlo83ujCsrZvliLQCiRPXb/Th1TnBAPWU=; b=cZpsOb3Wm/ssozbx/P7V8FlLtz
	EXgc+0NXKdtf1jb+dyKXA9Wy8eqq4uoxDup7ZurquF3uB86B4oHvkPwaGsnXSezu7DkJ3sCgBz4x0
	CWXOSDPUiay0QmcOMubYUpOmgFcZadc6jI88mPZXCQTrwttaDrDaRLKfBGxWDTIurYgnJtyu0poj7
	xMRUL6fmOGF4m/2hldIQFjvmr8vEP+l2FzkqfseNeJwx2+BNi1kaJc/5O2b04Yf6PJhIY6IHoPADK
	kazv33BhKnxq+QXGSPUEafZlpKHJPHUZ+TtUa9aVqo3q+XpKOaqolV/Yy75LuzjOkV4rVHHZfWvQa
	i9tHlJnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q10k7-005jJi-0u;
	Mon, 22 May 2023 08:18:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q10k3-005jJI-2W
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 08:18:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q10k2-0000HI-Fg; Mon, 22 May 2023 10:18:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q10k1-0002xi-Ii; Mon, 22 May 2023 10:18:05 +0200
Date: Mon, 22 May 2023 10:18:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230522081805.GJ29365@pengutronix.de>
References: <20230522052054.1037494-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522052054.1037494-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_011807_815751_8D40732F 
X-CRM114-Status: GOOD (  20.68  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! ARM: mmu32: Use pages for early MMU setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 22, 2023 at 07:20:54AM +0200, Ahmad Fatoum wrote:
> ARM: mmu32: fix alignment when early remapping .text section
> 
> arch_remap_range has a BUG_ON unaligned memory region start. On AM335x
> (Tested with Beaglebone Black), _stext for the second stage barebox.bin
> is not page-aligned, so this broke the boot. Use PAGE_ALIGN_DOWN to fix
> this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index dc4b0e414d57..852c5626dedd 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -583,7 +583,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  	/* maps main memory as cachable */
>  	arch_remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
>  	arch_remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
> -	arch_remap_range(_stext, PAGE_ALIGN(_etext - _stext), MAP_CACHED);
> +	arch_remap_range((void *)PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
>  
>  	__mmu_cache_on();
>  }
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



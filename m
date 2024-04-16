Delivery-date: Tue, 16 Apr 2024 14:03:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwhX0-003LG2-1V
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 14:03:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwhWv-0003fn-K8
	for lore@pengutronix.de; Tue, 16 Apr 2024 14:03:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sbvF62HyhxZPcr3Om1eV/CASVTmyvGZ5WwHkBxu4Zbc=; b=pLZDX8XaPZJaL2jRChqdS3Y8WN
	mUh2T4hCSncsjB18Nn4w6DjcvZqpYRbI7/lQD8teRw3PJ4EwfSdWCoe/1IJ2JltFrJ7I94+hqrsOr
	HtxcY1t1sp0Sop31u+jqyrf6qyn8wNRNs8jUjPot/06wNJUXlxwSqHSYBxQKhErpz3AUnH4peGV3O
	Fvw2jRfjdkUyGqqitJZMPKGMTrPnbW142afU8Gi/iGzhtLb0zaxAATfZToW0SrxSqVbHDK/H163x6
	zFf6yZkEjSIeT8m6g2Yph56MPtRYDjkKUWu6shSlnaH+82BjCL8+OhATpVNBZlPJasFMRlzHaNnwH
	8UsIvyRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhWA-0000000C2mz-1oyj;
	Tue, 16 Apr 2024 12:02:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhW2-0000000C2lJ-1r7I
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 12:02:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rwhVz-00020K-K5; Tue, 16 Apr 2024 14:02:19 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rwhVz-00CbIe-7O; Tue, 16 Apr 2024 14:02:19 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rwhVz-00Fq2U-0U;
	Tue, 16 Apr 2024 14:02:19 +0200
Date: Tue, 16 Apr 2024 14:02:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zh5oy4CE9fF6OARr@pengutronix.de>
References: <20240412162836.284671-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412162836.284671-1-enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_050222_506113_EF324C2C 
X-CRM114-Status: GOOD (  23.15  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM64: let 'end' point after the range in cache functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Enrico,

On Fri, Apr 12, 2024 at 06:28:35PM +0200, Enrico Scholz wrote:
> From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> 
> v8_flush_dcache_range() and v8_inv_dcache_range() are implemented
> under the assumption that their 'end' parameter points *after* the
> range.
> 
> Fix callers to use it in this way.
> 
> This fixes e.g. spurious corruptions in the last octet when sending
> 129 bytes over ethernet.

So 129 bytes are sent from barebox, right? Which network driver driver
is involved on the barebox side here? How did you force sending excatly
129 bytes?

I am asking because I want to look if there are other bugs invlolved
here.

Sascha

> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  arch/arm/cpu/dma_64.c | 2 +-
>  arch/arm/cpu/mmu_64.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/dma_64.c b/arch/arm/cpu/dma_64.c
> index 74d7167860c2..b50572f5e601 100644
> --- a/arch/arm/cpu/dma_64.c
> +++ b/arch/arm/cpu/dma_64.c
> @@ -6,7 +6,7 @@ void arch_sync_dma_for_device(void *vaddr, size_t size,
>                                enum dma_data_direction dir)
>  {
>  	unsigned long start = (unsigned long)vaddr;
> -	unsigned long end = start + size - 1;
> +	unsigned long end = start + size;
>  
>  	if (dir == DMA_FROM_DEVICE)
>  		v8_inv_dcache_range(start, end);
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 12cd644de0c7..b48e4732b86d 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -282,7 +282,7 @@ void mmu_disable(void)
>  void dma_inv_range(void *ptr, size_t size)
>  {
>  	unsigned long start = (unsigned long)ptr;
> -	unsigned long end = start + size - 1;
> +	unsigned long end = start + size;
>  
>  	v8_inv_dcache_range(start, end);
>  }
> @@ -290,7 +290,7 @@ void dma_inv_range(void *ptr, size_t size)
>  void dma_flush_range(void *ptr, size_t size)
>  {
>  	unsigned long start = (unsigned long)ptr;
> -	unsigned long end = start + size - 1;
> +	unsigned long end = start + size;
>  
>  	v8_flush_dcache_range(start, end);
>  }
> -- 
> 2.44.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



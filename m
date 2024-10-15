Delivery-date: Tue, 15 Oct 2024 10:32:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0cyr-004ap3-2W
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 10:32:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0cyr-0001p2-4c
	for lore@pengutronix.de; Tue, 15 Oct 2024 10:32:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b6huQtNgJTRK/+dmT5d7iuAU2Ym3xk7Wx+M2IEC72+Q=; b=VPoj4wgJKhe3YT+fpL8GkjCMuC
	CHIk4vZuelLbhVVJcmT6kVmOZaffwtwZ/0yiHSxfNkTTVUPcA17cZq0WYmxevhLSYxlJSdU2YLPLZ
	o+N8xI7j7ZLxeI0kiNuiPPm+W5rVXRhFxCcDkC89j4mDMm8IqalmNbvQoe4GA/Dcx9Uu6ZB2iCvsZ
	7KF6HpfRuBngkT9vRH9l2+kHSn2uXUTLYrdFjSqb/UMeZfE3cCIWmORmGpsqPVumlcmp7aTn4wUNp
	wHXuXrrNwxltq6CpEIQv2wt5Po6jT58br6hb3KtARBFTTMJJLxxR/ufy6crUT0R0NgaQzRzd7GZoD
	cfrmxItQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0cyK-00000007WQt-3BYZ;
	Tue, 15 Oct 2024 08:32:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0cyH-00000007WPi-3wbV
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 08:32:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t0cyD-0001hF-1l; Tue, 15 Oct 2024 10:31:57 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1t0cyA-001zKk-UY; Tue, 15 Oct 2024 10:31:54 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t0cyA-00Cc9v-2n;
	Tue, 15 Oct 2024 10:31:54 +0200
Date: Tue, 15 Oct 2024 10:31:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zw4oeghWigZqclfe@pengutronix.de>
References: <20241015082029.1664824-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015082029.1664824-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_013202_018346_DCA1D406 
X-CRM114-Status: GOOD (  20.31  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! dma: give dma_alloc_coherent a device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 15, 2024 at 10:20:29AM +0200, Ahmad Fatoum wrote:
> Should've been part of the original patch.
> This fixes CI failure for ARM64.

The patch you are fixing here doesn't apply on any of my for-next
branches. I'll drop it for now and apply it right after the next release
instead.

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 94a19b1aec3c..bc1a44d0a7b8 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -390,9 +390,9 @@ void dma_flush_range(void *ptr, size_t size)
>  	v8_flush_dcache_range(start, end);
>  }
>  
> -void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
> +void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle)
>  {
> -	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
> +	return dma_alloc_map(dev, size, dma_handle, ARCH_MAP_WRITECOMBINE);
>  }
>  
>  static void init_range(size_t total_level0_tables)
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Fri, 13 Jun 2025 11:42:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0vp-006ozq-2s
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 11:42:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0vp-0005dx-8L
	for lore@pengutronix.de; Fri, 13 Jun 2025 11:42:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2DL9+TZZGORWmaeFIi4/QbGKhimxnRNk+QPnbByZc2E=; b=Rlin8eKCJvb+ZmijrpD9czXepr
	7P/sdtXz7DqOawOwWk6oI7B8eA36OW2Y6ZUHA1GzBvmONdYpDYCEwvu9zZkkvyyN2Bc2/sd0QSlBN
	TUTqIGqeXm4GVXp9DcX21xfCvzpVivCkNw8Z+hiL5O/HvR/2DjfhMCt22vvsfTE/pm0Cm+OLyfSJZ
	y1AJtMB2QbZuNvbm+A+bJwFxSOqUkif657GjbD7uImrmFgM6HEEOXRn1Wp7qjc5LfH5d/DuMqYXio
	OmHvGXepNKpE37srn7oNkFIkS+jwTX0p2W2Vtmhlgqo8Lu2i5dmDlhkHN6ZMSUwSEfFZOUPdIdBvo
	M0RXwOVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0vJ-0000000Fw9L-0cMn;
	Fri, 13 Jun 2025 09:42:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0XP-0000000FtXo-0i1W
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 09:17:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uQ0XO-0007KP-13; Fri, 13 Jun 2025 11:17:26 +0200
Message-ID: <b9a21a09-fbaa-4c9e-9a0d-6c728a55a2e3@pengutronix.de>
Date: Fri, 13 Jun 2025 11:17:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
 <20250613-arm-mmu-xn-ro-v1-2-60f05c6e7b4b@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-2-60f05c6e7b4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_021727_215134_E12EA46D 
X-CRM114-Status: GOOD (  18.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/7] ARM: pass barebox base to mmu_early_enable()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/13/25 09:58, Sascha Hauer wrote:
> We'll need the barebox base in the next patches to map the barebox
> area differently.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu_32.c      | 2 +-
>  arch/arm/cpu/mmu_64.c      | 2 +-
>  arch/arm/cpu/uncompress.c  | 9 ++++-----
>  arch/arm/include/asm/mmu.h | 2 +-
>  4 files changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index ec6bd27da4e161a96fd42497e1a54dafc9779937..2754bea88a514c2886e43ffc4dbf310d75055fca 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -591,7 +591,7 @@ void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_ha
>  	return dma_alloc_map(dev, size, dma_handle, ARCH_MAP_WRITECOMBINE);
>  }
>  
> -void mmu_early_enable(unsigned long membase, unsigned long memsize)
> +void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
>  {
>  	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
>  
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index bc1a44d0a7b85af769ffa9c9bfbf70f274fc1aa5..65c6f1bb9f8ac2f4b55baf46c2af3d3714060088 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -408,7 +408,7 @@ static void init_range(size_t total_level0_tables)
>  	}
>  }
>  
> -void mmu_early_enable(unsigned long membase, unsigned long memsize)
> +void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
>  {
>  	int el;
>  	u64 optee_membase;
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index 4657a4828e67e1b0acfa9dec3aef33bc4c525468..e24e754e0b16bda4974df0dd754936e87fe59d2d 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -63,11 +63,6 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>  
> -	if (IS_ENABLED(CONFIG_MMU))
> -		mmu_early_enable(membase, memsize);
> -	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
> -		set_cr(get_cr() | CR_C);
> -
>  	/* Add handoff data now, so arm_mem_barebox_image takes it into account */
>  	if (boarddata)
>  		handoff_data_add_dt(boarddata);
> @@ -83,6 +78,10 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  #ifdef DEBUG
>  	print_pbl_mem_layout(membase, endmem, barebox_base);
>  #endif
> +	if (IS_ENABLED(CONFIG_MMU))
> +		mmu_early_enable(membase, memsize, barebox_base);
> +	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
> +		set_cr(get_cr() | CR_C);
>  
>  	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
>  			pg_start, pg_len, barebox_base, uncompressed_len);
> diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
> index ebf1e096c68295858bc8f3e6ab0e6f2dd6512717..5538cd3558e8e6c069923f7f6ccfc38e7df87c9f 100644
> --- a/arch/arm/include/asm/mmu.h
> +++ b/arch/arm/include/asm/mmu.h
> @@ -64,7 +64,7 @@ void __dma_clean_range(unsigned long, unsigned long);
>  void __dma_flush_range(unsigned long, unsigned long);
>  void __dma_inv_range(unsigned long, unsigned long);
>  
> -void mmu_early_enable(unsigned long membase, unsigned long memsize);
> +void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_base);
>  void mmu_early_disable(void);
>  
>  #endif /* __ASM_MMU_H */
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




Delivery-date: Wed, 17 May 2023 14:47:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGYa-004ImU-Fz
	for lore@lore.pengutronix.de; Wed, 17 May 2023 14:47:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGYX-00087m-OP
	for lore@pengutronix.de; Wed, 17 May 2023 14:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WgeDi3/Bj0GkNvbXhi14wlU5PYt3Tt++KtuDVSvc4vI=; b=atlH+WUVvIQaVg5EM4EDXd9DOG
	VLMzBvz4SrUHYukpOAdlxdcissvZ+7b161ZTUqy5Vx7UKYVgwsVCL+1u2ybVLmwOLaZoW0feUyARq
	4GhMNycqnTlK9YIbQOFlFJLsYk613KdJ9oNTcH3IyoSXPWbKbArVnY4naafYy0hcgwyG9O4FSZDUt
	hCXRd/aWrnoxcDEAuaIHUXnP/2NSW6hYI1tEZApTHloiFFFlHI6OHnkouUNu94wzA3Q4LGQ+cxyAn
	TQ9BYgzL22PaMA8Yn0L45VtVvKZ0idfY0T10Y7fKN8crBX3gWU/x1cGXHCSypFdxrPNvYmFgzltxh
	EGgQy2zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGX9-009qPu-0o;
	Wed, 17 May 2023 12:45:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGX5-009qOw-2V
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 12:45:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGWz-0007eE-6B; Wed, 17 May 2023 14:45:25 +0200
Message-ID: <32bc94db-da9d-4fbd-de05-c0f529079439@pengutronix.de>
Date: Wed, 17 May 2023 14:45:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_054531_818900_48AC7B29 
X-CRM114-Status: GOOD (  22.86  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 01/34] ARM: remove unused membase argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> The functions determining the different memory locations for stack,
> early malloc, ttb and op-tee all take a membase argument which is
> unused as all locations depend on the end of memory. Remove this unused
> argument.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/raspberry-pi/lowlevel.c |  2 +-
>  arch/arm/cpu/entry.c                    |  2 +-
>  arch/arm/cpu/start.c                    |  6 ++---
>  arch/arm/cpu/uncompress.c               |  6 ++---
>  arch/arm/include/asm/barebox-arm.h      | 29 ++++++++++---------------
>  5 files changed, 20 insertions(+), 25 deletions(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
> index 742f177dec..fd11fe53e0 100644
> --- a/arch/arm/boards/raspberry-pi/lowlevel.c
> +++ b/arch/arm/boards/raspberry-pi/lowlevel.c
> @@ -42,7 +42,7 @@ static void copy_vc_fdt(void *dest, void *src, unsigned long max_size)
>   * this FDT there. We fetch it from there later in rpi_devices_init().
>   */
>  #define rpi_stack_top(memsize) \
> -	arm_mem_stack_top(BCM2835_SDRAM_BASE, BCM2835_SDRAM_BASE + memsize - VIDEOCORE_FDT_SZ)
> +	arm_mem_stack_top(BCM2835_SDRAM_BASE + memsize - VIDEOCORE_FDT_SZ)
>  
>  static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
>  								void *vc_fdt)
> diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
> index b863af5757..dc264c8771 100644
> --- a/arch/arm/cpu/entry.c
> +++ b/arch/arm/cpu/entry.c
> @@ -40,5 +40,5 @@ void NAKED __noreturn barebox_arm_entry(unsigned long membase,
>  					unsigned long memsize, void *boarddata)
>  {
>  	__barebox_arm_entry(membase, memsize, boarddata,
> -			    arm_mem_stack_top(membase, membase + memsize));
> +			    arm_mem_stack_top(membase + memsize));
>  }
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index be303514c2..62b2054dd6 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -111,7 +111,7 @@ static inline unsigned long arm_mem_boarddata(unsigned long membase,
>  
>  unsigned long arm_mem_ramoops_get(void)
>  {
> -	return arm_mem_ramoops(0, arm_stack_top);
> +	return arm_mem_ramoops(arm_stack_top);
>  }
>  EXPORT_SYMBOL_GPL(arm_mem_ramoops_get);
>  
> @@ -163,12 +163,12 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  
>  	arm_membase = membase;
>  	arm_endmem = endmem;
> -	arm_stack_top = arm_mem_stack_top(membase, endmem);
> +	arm_stack_top = arm_mem_stack_top(endmem);
>  	arm_barebox_size = barebox_size;
>  	malloc_end = barebox_base;
>  
>  	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> -		unsigned long ttb = arm_mem_ttb(membase, endmem);
> +		unsigned long ttb = arm_mem_ttb(endmem);
>  
>  		if (IS_ENABLED(CONFIG_PBL_IMAGE)) {
>  			arm_set_cache_functions();
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index 65de87f109..abaf36b68c 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -82,13 +82,13 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>  
>  	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> -		unsigned long ttb = arm_mem_ttb(membase, endmem);
> +		unsigned long ttb = arm_mem_ttb(endmem);
>  		pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
>  		mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
>  	}
>  
> -	free_mem_ptr = arm_mem_early_malloc(membase, endmem);
> -	free_mem_end_ptr = arm_mem_early_malloc_end(membase, endmem);
> +	free_mem_ptr = arm_mem_early_malloc(endmem);
> +	free_mem_end_ptr = arm_mem_early_malloc_end(endmem);
>  
>  	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
>  			pg_start, pg_len, barebox_base, uncompressed_len);
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 0cf4549cd7..2e0d8dc9a7 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -78,39 +78,34 @@ static inline const void *arm_mem_scratch_get(void)
>  	return (const void *)__arm_mem_scratch(arm_mem_endmem_get());
>  }
>  
> -#define arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K - OPTEE_SIZE)
> +#define arm_mem_stack_top(endmem) ((endmem) - SZ_64K - OPTEE_SIZE)
>  
> -static inline unsigned long arm_mem_stack(unsigned long membase,
> -					  unsigned long endmem)
> +static inline unsigned long arm_mem_stack(unsigned long endmem)
>  {
> -	return arm_mem_stack_top(membase, endmem) - STACK_SIZE;
> +	return arm_mem_stack_top(endmem) - STACK_SIZE;
>  }
>  
> -static inline unsigned long arm_mem_ttb(unsigned long membase,
> -					unsigned long endmem)
> +static inline unsigned long arm_mem_ttb(unsigned long endmem)
>  {
> -	endmem = arm_mem_stack(membase, endmem);
> +	endmem = arm_mem_stack(endmem);
>  	endmem = ALIGN_DOWN(endmem, ARM_TTB_SIZE) - ARM_TTB_SIZE;
>  
>  	return endmem;
>  }
>  
> -static inline unsigned long arm_mem_early_malloc(unsigned long membase,
> -						 unsigned long endmem)
> +static inline unsigned long arm_mem_early_malloc(unsigned long endmem)
>  {
> -	return arm_mem_ttb(membase, endmem) - SZ_128K;
> +	return arm_mem_ttb(endmem) - SZ_128K;
>  }
>  
> -static inline unsigned long arm_mem_early_malloc_end(unsigned long membase,
> -						     unsigned long endmem)
> +static inline unsigned long arm_mem_early_malloc_end(unsigned long endmem)
>  {
> -	return arm_mem_ttb(membase, endmem);
> +	return arm_mem_ttb(endmem);
>  }
>  
> -static inline unsigned long arm_mem_ramoops(unsigned long membase,
> -					    unsigned long endmem)
> +static inline unsigned long arm_mem_ramoops(unsigned long endmem)
>  {
> -	endmem = arm_mem_ttb(membase, endmem);
> +	endmem = arm_mem_ttb(endmem);
>  #ifdef CONFIG_FS_PSTORE_RAMOOPS
>  	endmem -= CONFIG_FS_PSTORE_RAMOOPS_SIZE;
>  	endmem = ALIGN_DOWN(endmem, SZ_4K);
> @@ -123,7 +118,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  						  unsigned long endmem,
>  						  unsigned long size)
>  {
> -	endmem = arm_mem_ramoops(membase, endmem);
> +	endmem = arm_mem_ramoops(endmem);
>  
>  	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
>  		return ALIGN_DOWN(endmem - size, SZ_1M);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




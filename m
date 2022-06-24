Delivery-date: Fri, 24 Jun 2022 10:18:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4eWZ-00D0ek-DX
	for lore@lore.pengutronix.de; Fri, 24 Jun 2022 10:18:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4eWZ-0001Mi-4z
	for lore@pengutronix.de; Fri, 24 Jun 2022 10:18:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=89QMjjQhogRzm1UDDmH0ULIAr/qTUUWSwDU1fjT9wjI=; b=nwFyTiXHkWvdcljxSUa0XU270H
	HsvC2eHSp4BICzKFsLfNJzwB8uZQen6CUC1srOyDvG4M5x27O7pKdxQfGDMiUppu/250Mq1nQa3L0
	MDCe2QlaLsm1KrKYUbDdxTbURF+NhSCMsK3UmH6DKn2N8mb411QuQWybSWtyzoVRrFXGwwrhu+pX3
	XtEfo0AJ2jGYotIhu5YadVCr1uPHxGqLXFhuxG95gA/W4GSPF4QeVf0rkD/1IpM4gETJ9HfIKz0n9
	KtAWxIBE35ZE7K2NFixA00MlpcgcuVGp89j25ACJpdmZL/sJ6bzUsYbrh2RtQSduOePVApJyN/PKA
	toCJIG6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4eVI-0019FG-ES; Fri, 24 Jun 2022 08:17:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4eVD-0019E2-PN
	for barebox@lists.infradead.org; Fri, 24 Jun 2022 08:17:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o4eVC-0001EW-Hk; Fri, 24 Jun 2022 10:17:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o4eVC-0005wR-93; Fri, 24 Jun 2022 10:17:18 +0200
Date: Fri, 24 Jun 2022 10:17:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220624081718.GE1615@pengutronix.de>
References: <20220622175111.2657673-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220622175111.2657673-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_011719_863570_BCA095E7 
X-CRM114-Status: GOOD (  29.80  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: cpu: start: don't panic when only initial memory
 known
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 22, 2022 at 07:51:11PM +0200, Ahmad Fatoum wrote:
> Boards that get their memory from device tree are prone to breakage if
> upstream decides to remove the /memory node or renders it unusable[0]
> or to disable the DRAM controller device node[1] used to dynamically
> compute the size.  While this needs to be fixed properly on a
> case-by-case basis, soften the blow by using the memory size specified
> by low level code as a fallback instead of just throwing the towel.
> 
> [0]: aa68c6bd3615 ("arm: rk3288-phycore-som: Fix memory node")
> [1]: 0529149b2756 ("arm: imx8mq: re-enable DDRC for Barebox")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/mmu-common.c          | 15 +++++++++++++--
>  arch/arm/cpu/start.c               |  8 ++++++++
>  arch/arm/include/asm/barebox-arm.h |  1 +
>  3 files changed, 22 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
> index 2ef1fa231f39..488a189f1c06 100644
> --- a/arch/arm/cpu/mmu-common.c
> +++ b/arch/arm/cpu/mmu-common.c
> @@ -9,6 +9,7 @@
>  #include <dma.h>
>  #include <mmu.h>
>  #include <asm/system.h>
> +#include <asm/barebox-arm.h>
>  #include <memory.h>
>  #include "mmu.h"
>  
> @@ -58,14 +59,24 @@ void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
>  
>  static int mmu_init(void)
>  {
> -	if (list_empty(&memory_banks))
> +	if (list_empty(&memory_banks)) {
> +		resource_size_t start;
> +		int ret;
> +
>  		/*
>  		 * If you see this it means you have no memory registered.
>  		 * This can be done either with arm_add_mem_device() in an
>  		 * initcall prior to mmu_initcall or via devicetree in the
>  		 * memory node.
>  		 */
> -		panic("MMU: No memory bank found! Cannot continue\n");
> +		pr_emerg("No memory bank registered. Limping along with initial memory\n");
> +
> +		start = arm_mem_membase_get();
> +		ret = barebox_add_memory_bank("initmem", start,
> +					      arm_mem_endmem_get() - start);
> +		if (ret)
> +			panic("");
> +	}
>  
>  	__mmu_init(get_cr() & CR_M);
>  
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index c61db668658b..14cc310312ab 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -28,6 +28,7 @@
>  unsigned long arm_stack_top;
>  static unsigned long arm_barebox_size;
>  static unsigned long arm_endmem;
> +static unsigned long arm_membase;
>  static void *barebox_boarddata;
>  static unsigned long barebox_boarddata_size;
>  
> @@ -114,6 +115,12 @@ unsigned long arm_mem_endmem_get(void)
>  }
>  EXPORT_SYMBOL_GPL(arm_mem_endmem_get);
>  
> +unsigned long arm_mem_membase_get(void)
> +{
> +	return arm_membase;
> +}
> +EXPORT_SYMBOL_GPL(arm_mem_membase_get);
> +
>  static int barebox_memory_areas_init(void)
>  {
>  	if(barebox_boarddata)
> @@ -148,6 +155,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>  
> +	arm_membase = membase;
>  	arm_endmem = endmem;
>  	arm_stack_top = arm_mem_stack_top(membase, endmem);
>  	arm_barebox_size = barebox_size;
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 15b3b6c44479..8240cce9bf5b 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -84,6 +84,7 @@ static inline void boarddata_create(void *adr, u32 machine)
>  u32 barebox_arm_machine(void);
>  
>  unsigned long arm_mem_ramoops_get(void);
> +unsigned long arm_mem_membase_get(void);
>  unsigned long arm_mem_endmem_get(void);
>  
>  struct barebox_arm_boarddata *barebox_arm_get_boarddata(void);
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



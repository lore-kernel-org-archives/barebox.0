Delivery-date: Wed, 17 May 2023 15:04:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGpR-004Js4-HQ
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:04:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGpP-0002QG-4p
	for lore@pengutronix.de; Wed, 17 May 2023 15:04:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nj/l7ZNUqceIJ1X/6WRW5gPjoZHRT/QeqMAqAfHxXvY=; b=3V0+B2AyzkdPbyNunOBlx+3MAd
	0PDS958GYijkngZiuQlqvQ7X4vdyXsj91q2lfIqQJTV+SoBoy7Lar8kjvoeMuTnybq/T3Opt1LioU
	aN2OsPZ5wJzzgSZlp4IBlOCaLiwRT02nywBLLe51V93U51uV5QF4CKBx1djm5a+w9jab10qtO7aUY
	wNyZ8ufzekI8ZSVicnGPSZeIZLLwaMRwUhEIn4R82d+Rk3r5KEWq/2aIMCyfdbI9FFjFnbCsIY8e9
	1Jv6LgdPye9uugUhormIVJeDNUd0To8rlU6QgGCz3dhdTZqcRsLPQhVbp8C+CiY/vc+qTMpJvt9Gd
	6J3bgXeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGoK-009t8T-1L;
	Wed, 17 May 2023 13:03:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGoH-009t7m-24
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:03:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGoF-0002I5-SL; Wed, 17 May 2023 15:03:15 +0200
Message-ID: <e18207de-1617-b7e4-eba8-3640e6f20ab1@pengutronix.de>
Date: Wed, 17 May 2023 15:03:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-22-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-22-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_060317_676272_91B9EE01 
X-CRM114-Status: GOOD (  23.97  )
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
Subject: Re: [PATCH v2 21/34] ARM: mmu: alloc 64k for early page tables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> This is a preparation for using two level page tables in the PBL.
> To do that we need a way to allocate page tables in PBL. As malloc
> is not available in PBL, increase the area we use for the TTB to
> make some space available for page tables.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu_32.c              | 6 ++++++
>  arch/arm/include/asm/barebox-arm.h | 8 ++------
>  2 files changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 12fe892400..4050d96846 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -24,6 +24,12 @@
>  #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
>  #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
>  
> +/*
> + * We have a 4GiB address space split into 1MiB sections, with each
> + * section header taking 4 bytes
> + */
> +#define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
> +
>  static uint32_t *ttb;
>  
>  /*
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index f5a74b4746..eb31ca2788 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -23,11 +23,7 @@
>  #include <asm/reloc.h>
>  #include <linux/stringify.h>
>  
> -/*
> - * We have a 4GiB address space split into 1MiB sections, with each
> - * section header taking 4 bytes
> - */
> -#define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
> +#define ARM_EARLY_PAGETABLE_SIZE	SZ_64K
>  
>  void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
>  
> @@ -89,7 +85,7 @@ static inline unsigned long arm_mem_stack(unsigned long endmem)
>  static inline unsigned long arm_mem_ttb(unsigned long endmem)
>  {
>  	endmem = arm_mem_stack(endmem);
> -	endmem = ALIGN_DOWN(endmem, ARM_TTB_SIZE) - ARM_TTB_SIZE;
> +	endmem = ALIGN_DOWN(endmem, ARM_EARLY_PAGETABLE_SIZE) - ARM_EARLY_PAGETABLE_SIZE;
>  
>  	return endmem;
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




Delivery-date: Sun, 19 Sep 2021 09:08:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRqwN-00025t-VM
	for lore@lore.pengutronix.de; Sun, 19 Sep 2021 09:08:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRqwM-0001S9-Va
	for lore@pengutronix.de; Sun, 19 Sep 2021 09:08:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QdKTmmNt1Dluair48Q0cS2EGZFI0hcGQYtXRVWqhGI=; b=oO3uJ/OgyNY6cP
	+Cbyh1uzMdi8JDHjfdpkXmb3W583vsY7+FBBuq2wi++t5FU1OqIZJn4eBnjYmHL3hOdTImPboreLM
	NqjSyrLl4tsYfATrAUgD7J/xM3xg03b4xBXrxWNyQZKScOGxgJVTv29X68LKMVW03XU0ViqrOtQMU
	z5axA3wBewrrclOId9RNFiXMBE6IDXSbRD4oeXkAiHARVBXJp7Vz5OVFcSpMOD25vLLbVV8LjbU16
	/nT9VZE14Mx0gGHBlPQHVJr657bMaVshj2rvMtlstgzaDgcACgADOuLQBklcB4fzbDLjwZWL7x/AW
	L56GEf8UrCFUExhWd6Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRquu-00GtmK-5h; Sun, 19 Sep 2021 07:07:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRqup-00GtlH-Dx
 for barebox@lists.infradead.org; Sun, 19 Sep 2021 07:07:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1mRquj-0001IH-7w; Sun, 19 Sep 2021 09:07:01 +0200
Message-ID: <e14fb2eb0ea344ac272b823c51ee3a4049a51c33.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Peter Rosin <peda@axentia.se>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
Date: Sun, 19 Sep 2021 09:06:59 +0200
In-Reply-To: <d4eb8281-121e-91a3-7300-83336ba0f285@axentia.se>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
 <d4eb8281-121e-91a3-7300-83336ba0f285@axentia.se>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210919_000707_525340_C0ADBFB0 
X-CRM114-Status: GOOD (  18.09  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] Revert "ARM: mmu: use client domain permissions to
 support ARMv7 eXecute Never"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Peter,

while this may break for your board, it fundamentally introduces the
possibility to speculate out of the RAM area on speculation happy
processors. Are you calling into SAMA5D3 ROM code somewhere? If so an
exception can be added similar to the handling for the HAB code
(arch/arm/cpu/mmu_early.c):

	if (IS_ENABLED(CONFIG_HABV4) && IS_ENABLED(CONFIG_ARCH_IMX6))
		map_region(0x0, SZ_1M, PMD_SECT_DEF_CACHED);

which allows calls into the NXP boot ROM to retrieve the HAB status.

Regards,
Rouven

On Sat, 2021-09-18 at 00:40 +0200, Peter Rosin wrote:
> This reverts commit 3e4a0405455f66fbae0a98dc1faee5c7c39f17a2.
> 
> The patch breaks my SAMA5D3 board.
> 
> Signed-off-by: Peter Rosin <peda@axentia.se>
> ---
>  arch/arm/cpu/mmu-early.c | 7 +------
>  arch/arm/cpu/mmu.c       | 7 +------
>  arch/arm/cpu/mmu.h       | 1 -
>  3 files changed, 2 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
> index b985aa455fe8..92b1161985fb 100644
> --- a/arch/arm/cpu/mmu-early.c
> +++ b/arch/arm/cpu/mmu-early.c
> @@ -29,12 +29,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
>  	arm_set_cache_functions();
>  
>  	set_ttbr(ttb);
> -
> -	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
> -	if (cpu_architecture() >= CPU_ARCH_ARMv7)
> -		set_domain(DOMAIN_CLIENT);
> -	else
> -		set_domain(DOMAIN_MANAGER);
> +	set_domain(DOMAIN_MANAGER);
>  
>  	/*
>  	 * This marks the whole address space as uncachable as well as
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 6388e1bf14f6..d0aff9e7f027 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -452,12 +452,7 @@ void __mmu_init(bool mmu_on)
>  		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
>  
>  		set_ttbr(ttb);
> -
> -		/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
> -		if (cpu_architecture() >= CPU_ARCH_ARMv7)
> -			set_domain(DOMAIN_CLIENT);
> -		else
> -			set_domain(DOMAIN_MANAGER);
> +		set_domain(DOMAIN_MANAGER);
>  
>  		create_flat_mapping(ttb);
>  		__mmu_cache_flush();
> diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
> index c85e0ea05033..e8b72662cddc 100644
> --- a/arch/arm/cpu/mmu.h
> +++ b/arch/arm/cpu/mmu.h
> @@ -36,7 +36,6 @@ static inline void set_ttbr(void *ttb)
>  	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
>  }
>  
> -#define DOMAIN_CLIENT	1
>  #define DOMAIN_MANAGER	3
>  
>  static inline unsigned long get_domain(void)



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


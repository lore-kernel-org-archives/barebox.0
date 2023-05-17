Delivery-date: Wed, 17 May 2023 15:31:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHF7-004KwS-Cm
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:31:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHF4-00079K-Iw
	for lore@pengutronix.de; Wed, 17 May 2023 15:30:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J2PoPUuBnI3ORc7Y6J23NtoMTM7bz5dUUw2TiHrt6ws=; b=rIXZrACR7Kzie/UseRvYL8CgEn
	JAVeT8XDRSPVbFU4fFx9TuloJ0b3DD+mHzvUkHaSr/Fu/qt/26J3VQtENcIosyGmUCDmz9XzfCGUg
	eWCBMZVOuIKhjtCVlqJtlV2PAfAXVHhFGGTSqmYR3TNp/qxeY9sXnwA9KkZ6p74Sew50sZ6E7Zp4w
	1jJxSR7rsoUVbpv3WaGLG9hc2G6PtrRXtg2XkbTjC9iqhUUw3ig3s0qGt2lZYpjDhPEDktrI40d4e
	I0l/3CavzBSKETk2o3xb3zV+Jh/a0FWCE4UvABXV0S3XRH6aDfknyi4d+IsQONbMjfOtu2KIhfh6f
	cRsHWlJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHDz-009z21-1t;
	Wed, 17 May 2023 13:29:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHDw-009z0c-1q
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:29:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzHDu-0006n9-6H; Wed, 17 May 2023 15:29:46 +0200
Message-ID: <143015ba-76fc-e881-93fa-6b99e6003866@pengutronix.de>
Date: Wed, 17 May 2023 15:29:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-26-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-26-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_062948_612776_54C952E2 
X-CRM114-Status: GOOD (  22.87  )
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
Subject: Re: [PATCH v2 25/34] ARM: mmu: always do MMU initialization early
 when MMU is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> Drop the CONFIG_MMU_EARLY and make early MMU initialization the default.
> 
> Doing so allows us for some simplifications in the MMU code as we have
> less code pathes to care and think about.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>



> ---
>  arch/arm/cpu/start.c      | 2 +-
>  arch/arm/cpu/uncompress.c | 2 +-
>  common/Kconfig            | 9 ---------
>  3 files changed, 2 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 165d2d94e6..2e987ec41d 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -216,7 +216,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
> -	if (IS_ENABLED(CONFIG_MMU_EARLY) && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
> +	if (IS_ENABLED(CONFIG_MMU) && !IS_ENABLED(CONFIG_PBL_IMAGE)) {
>  		arm_early_mmu_cache_invalidate();
>  		mmu_early_enable(membase, memsize);
>  	}
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index e471dd87f9..a481c4634d 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -81,7 +81,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  
>  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
>  
> -	if (IS_ENABLED(CONFIG_MMU_EARLY))
> +	if (IS_ENABLED(CONFIG_MMU))
>  		mmu_early_enable(membase, memsize);
>  
>  	free_mem_ptr = arm_mem_early_malloc(endmem);
> diff --git a/common/Kconfig b/common/Kconfig
> index ac3df75acb..c6008f125b 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -185,15 +185,6 @@ config MMU
>  	  to enable the data cache which depends on the MMU. See Documentation/mmu.txt
>  	  for further information.
>  
> -config MMU_EARLY
> -	bool "Enable MMU early"
> -	depends on ARM
> -	depends on MMU
> -	default y
> -	help
> -	  This enables the MMU during early startup. This speeds up things during startup
> -	  of barebox, but may lead to harder to debug code. If unsure say yes here.
> -
>  config HAVE_CONFIGURABLE_TEXT_BASE
>  	bool
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




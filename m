Delivery-date: Fri, 07 Mar 2025 09:19:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSvW-00Aw28-1l
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 09:19:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSvV-0008MT-4o
	for lore@pengutronix.de; Fri, 07 Mar 2025 09:19:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=83j9cS8F3C7I3NpD95ypQUQWv5p6aI5cU/tY+1KFkQo=; b=RSl0j+8XMNR6SqXf+MKEgScjFY
	rwbsQpITMwCBorhqNuWjdhnJFolUemN5sCcOmeVgT8RNyiTkvF/gBxdMx6SptlVyIdLfYCocJ+SCv
	yPjLWNIFzDG3Cd+NnRwigJhiAX9gSYs5pGL9/LDb6RWWzg6QrTvT2QYhsAPgEavSu8KqW+GMg0YgI
	ZxB7UXHSVzl/1UUp9B4g/zldJQa8KwXAABO92nDhcZ/LPlr4NF972J379Or4bNRLqd8mmXzwN1HZd
	+sPxE8Tpm8CCBDx+tu2mO7pKwn5qgNlKjk1wWQxRyUHigIkquyrcZHx7RExDnZZETsI2XbLPgzzPu
	12oGks9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSut-0000000DXRC-48Dy;
	Fri, 07 Mar 2025 08:18:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSuO-0000000DXEs-0BFM
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 08:18:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tqSuM-0008DC-Li; Fri, 07 Mar 2025 09:18:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tqSuM-004SFl-15;
	Fri, 07 Mar 2025 09:18:14 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tqSuM-000QXR-0m;
	Fri, 07 Mar 2025 09:18:14 +0100
Date: Fri, 7 Mar 2025 09:18:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z8qrxskIpfyBO74o@pengutronix.de>
References: <20250305062101.25588-1-eagle.alexander923@gmail.com>
 <20250305062101.25588-2-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250305062101.25588-2-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_001816_082832_766B307F 
X-CRM114-Status: GOOD (  26.22  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] at91: Use the ddramc driver for all boards whose
 architecture uses it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 05, 2025 at 09:20:59AM +0300, Alexander Shiyan wrote:
> Reuse ddramc driver for all SAMA5D2/3/4 boards.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/sama5d4_xplained/lowlevel.c |  4 ++--
>  arch/arm/mach-at91/ddramc.c                 |  4 ++--
>  arch/arm/mach-at91/sama5d3_devices.c        |  7 +++----
>  arch/arm/mach-at91/sama5d4_devices.c        |  7 +++----
>  include/mach/at91/at91_ddrsdrc.h            | 11 -----------
>  5 files changed, 10 insertions(+), 23 deletions(-)
> 
> diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
> index 183bd9c5a9..5763333f39 100644
> --- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
> +++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
> @@ -10,7 +10,7 @@
>  #include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  
> -#include <mach/at91/at91_ddrsdrc.h>
> +#include <mach/at91/ddramc.h>
>  #include <mach/at91/hardware.h>
>  
>  void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
> @@ -19,5 +19,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
>  
>  	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE);
>  
> -	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(), NULL);
> +	sama5d4_barebox_entry(0, NULL);
>  }
> diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
> index 4d0637b487..ca77889ecc 100644
> --- a/arch/arm/mach-at91/ddramc.c
> +++ b/arch/arm/mach-at91/ddramc.c
> @@ -30,14 +30,14 @@ void __noreturn sama5d3_barebox_entry(unsigned int r4, void *boarddata)
>  {
>  	__sama5d3_stashed_bootrom_r4 = r4;
>  
> -	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(),
> +	barebox_arm_entry(SAMA5_DDRCS, sama5_ramsize(IOMEM(SAMA5D3_BASE_MPDDRC)),
>  			  boarddata);

I like it better to have a at91sama5d3_get_ddram_size() because with
that you don't have to worry about the base address, but only need to
call for the correct SoC.

>  }
>  void __noreturn sama5d4_barebox_entry(unsigned int r4, void *boarddata)
>  {
>  	__sama5d4_stashed_bootrom_r4 = r4;
>  
> -	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(),
> +	barebox_arm_entry(SAMA5_DDRCS, sama5_ramsize(IOMEM(SAMA5D4_BASE_MPDDRC)),
>  			  boarddata);
>  }
>  
> diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
> index f6d5617e5f..4871c2bd69 100644
> --- a/arch/arm/mach-at91/sama5d3_devices.c
> +++ b/arch/arm/mach-at91/sama5d3_devices.c
> @@ -21,10 +21,9 @@
>  
>  void at91_add_device_sdram(u32 size)
>  {
> -	if (!size)
> -		size = at91sama5d3_get_ddram_size();
> -
> -	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
> +	add_generic_device("sama5-ddramc", DEVICE_ID_SINGLE, NULL,
> +			   SAMA5D3_BASE_MPDDRC, SZ_512,
> +			   IORESOURCE_MEM, NULL);

Is this necessary? I just merged your patch that says that all SAMA5D3
boards are merged to device tree. The device tree already has a
"atmel,sama5d3-ddramc" node, so there shouldn't be a need to create the
device here again.

Sascha

>  	add_mem_device("sram0", SAMA5D3_SRAM_BASE,
>  			SAMA5D3_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
>  }
> diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
> index e438bd0d10..4a81e7cd40 100644
> --- a/arch/arm/mach-at91/sama5d4_devices.c
> +++ b/arch/arm/mach-at91/sama5d4_devices.c
> @@ -21,10 +21,9 @@
>  
>  void at91_add_device_sdram(u32 size)
>  {
> -	if (!size)
> -		size = at91sama5d4_get_ddram_size();
> -
> -	arm_add_mem_device("ram0", SAMA5_DDRCS, size);
> +	add_generic_device("sama5-ddramc", DEVICE_ID_SINGLE, NULL,
> +			   SAMA5D4_BASE_MPDDRC, SZ_512,
> +			   IORESOURCE_MEM, NULL);
>  	add_mem_device("sram0", SAMA5D4_SRAM_BASE,
>  		       SAMA5D4_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
>  }
> diff --git a/include/mach/at91/at91_ddrsdrc.h b/include/mach/at91/at91_ddrsdrc.h
> index b9b0eb20b3..d511e157b2 100644
> --- a/include/mach/at91/at91_ddrsdrc.h
> +++ b/include/mach/at91/at91_ddrsdrc.h
> @@ -357,17 +357,6 @@ static inline u32 at91sam9n12_get_ddram_size(void)
>  	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
>  }
>  
> -static inline u32 at91sama5d3_get_ddram_size(void)
> -{
> -	return at91_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC), true);
> -}
> -
> -static inline u32 at91sama5d4_get_ddram_size(void)
> -{
> -	return at91_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC), true);
> -}
> -
> -
>  #endif /* __ASSEMBLY__ */
>  
>  #endif	/* #ifndef __AT91_DDRSDRC_H__ */
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



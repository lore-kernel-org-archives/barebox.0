Delivery-date: Tue, 18 Mar 2025 11:57:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUdK-0010So-0d
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 11:57:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUdI-00018B-MP
	for lore@pengutronix.de; Tue, 18 Mar 2025 11:57:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FzIs+jVUMycZOGyuEuGdouYTslj9OhTWoL6YCxXipDg=; b=o3jXme4WAGSu/9zKDMvuxjLnFJ
	pPphhU5E6wjwTzWrOypYvLNJXS9c8cD/rSz3I/bApvEtdhHQJ324b/3EZOmim7qKa1gpn3JZFPK+d
	lDqiDhIhmio5Aq6cglmL+N72kXsemWAim6xDw7fFR9YbpInbgKJ5DFud/2twtfSEopoUgwdy+MPuG
	iI9H3dfifriidpdgqnX2pz60rYqDypKJE68nYvhq3lVr+KKjqixpOuftjSGjT4FazKEKwli0bdWhL
	3UHUOyMGSwpCbpPXqBK3nJJmPlS6HCZL+8Tvxyv1x0HDE4Gj7rRpyZidgzX6JMJ0GwOU5/FbSq0jg
	5Yxqe3dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUcm-00000005cB8-0OPE;
	Tue, 18 Mar 2025 10:56:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUba-00000005c3X-2ATv
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 10:55:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tuUbX-0000sG-U6; Tue, 18 Mar 2025 11:55:27 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuUbX-000PZk-11;
	Tue, 18 Mar 2025 11:55:27 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuUbX-002zsK-24;
	Tue, 18 Mar 2025 11:55:27 +0100
Date: Tue, 18 Mar 2025 11:55:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z9lRH065pPDbir9z@pengutronix.de>
References: <20250318074327.37730-1-eagle.alexander923@gmail.com>
 <20250318074327.37730-4-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318074327.37730-4-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_035530_711239_EB8E1BA3 
X-CRM114-Status: GOOD (  35.49  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: at91: sama5: Unify xx_start_image() calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Tue, Mar 18, 2025 at 10:43:26AM +0300, Alexander Shiyan wrote:
> This unifies the xload.c start_image() code for both sama5d2() and
> sama5d3() CPU variants.

I have trouble bringing the description together with what the patch
acutally does.

> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  .../arm/boards/sama5d27-giantboard/lowlevel.c |   2 +-
>  arch/arm/boards/sama5d27-som1/lowlevel.c      |   2 +-
>  arch/arm/mach-at91/xload.c                    | 102 ++++++++++--------
>  include/mach/at91/xload.h                     |   2 +-
>  4 files changed, 62 insertions(+), 46 deletions(-)
> 
> diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
> index 49540bede0..c266af6357 100644
> --- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
> +++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
> @@ -31,7 +31,7 @@ SAMA5D2_ENTRY_FUNCTION(start_sama5d27_giantboard_xload_mmc, r4)
>  
>  	sama5d2_udelay_init(MASTER_CLOCK);
>  	sama5d2_d1g_ddrconf();
> -	sama5d2_sdhci_start_image(r4);
> +	sama5d2_start_image(r4);
>  }
>  
>  extern char __dtb_z_at91_sama5d27_giantboard_start[];
> diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
> index 67300587fe..e74502244b 100644
> --- a/arch/arm/boards/sama5d27-som1/lowlevel.c
> +++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
> @@ -55,7 +55,7 @@ SAMA5D2_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
>  	ek_turn_led(RGB_LED_RED | RGB_LED_GREEN); /* Yellow */
>  	sama5d2_udelay_init(MASTER_CLOCK);
>  	sama5d2_d1g_ddrconf();
> -	sama5d2_sdhci_start_image(r4);
> +	sama5d2_start_image(r4);
>  }
>  
>  extern char __dtb_z_at91_sama5d27_som1_ek_start[];
> diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
> index 9c03d2119c..e417223b31 100644
> --- a/arch/arm/mach-at91/xload.c
> +++ b/arch/arm/mach-at91/xload.c
> @@ -11,39 +11,50 @@
>  #include <asm/cache.h>
>  #include <pbl/bio.h>
>  
> -static void at91_fat_start_image(struct pbl_bio *bio,
> -				 void *buf, unsigned int len,
> -				 u32 r4)
> +struct xload_instance {
> +	void __iomem *base;
> +	unsigned id;
> +	u8 periph;
> +	s8 pins[15];
> +};

Original code has struct sdhci_instance and struct atmci_instance which
both have the same members. You unify this to struct xload_instance
which is a good step. I think this should be a separate patch along with
the rename from sdhci_instance[] to sama5d2_mci_instances[] and
sama5d3_atmci_instances[] to sama5d3_mci_instances[].

This will help to better see what the rest of this patch is about.

> +
> +static void at91_fat_start_image(struct pbl_bio *bio, u32 r4)

You remove the *buf and len arguments from at91_fat_start_image()
because both arguments are common for all callers. Again, should be a
separate patch.

>  {
> -	void __noreturn (*bb)(void);
> +	void *buf = (void *)SAMA5_DDRCS;
>  	int ret;
>  
> -	ret = pbl_fat_load(bio, "barebox.bin", buf, len);
> +	ret = pbl_fat_load(bio, "barebox.bin", buf, SZ_2M);
>  	if (ret < 0) {
>  		pr_err("pbl_fat_load: error %d\n", ret);
>  		return;
>  	}
>  
> -	bb = buf;
> -
>  	sync_caches_for_execution();
>  
> -	sama5_boot_xload(bb, r4);
> +	sama5_boot_xload(buf, r4);
>  }
>  
> -static const struct sdhci_instance {
> -	void __iomem *base;
> -	unsigned id;
> -	u8 periph;
> -	s8 pins[15];
> -} sdhci_instances[] = {
> +static const struct xload_instance sama5d2_mci_instances[] = {
>  	[0] = {
> -		.base = SAMA5D2_BASE_SDHC0, .id = SAMA5D2_ID_SDMMC0, .periph = AT91_MUX_PERIPH_A,
> -		.pins = { 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 13, 10, 11, 12, -1 }
> +		.base = SAMA5D2_BASE_SDHC0,
> +		.id = SAMA5D2_ID_SDMMC0,
> +		.periph = AT91_MUX_PERIPH_A,
> +		.pins = {
> +			AT91_PIN_PA2, AT91_PIN_PA3, AT91_PIN_PA4, AT91_PIN_PA5,
> +			AT91_PIN_PA6, AT91_PIN_PA7, AT91_PIN_PA8, AT91_PIN_PA9,
> +			AT91_PIN_PA0, AT91_PIN_PA1, AT91_PIN_PA13, AT91_PIN_PA10,
> +			AT91_PIN_PA11, AT91_PIN_PA12, -1
> +		}

Here the hardcoded values are replaced with defines which is also a good
step but could be a separate patch.

>  	},
>  	[1] = {
> -		.base = SAMA5D2_BASE_SDHC1, .id = SAMA5D2_ID_SDMMC1, .periph = AT91_MUX_PERIPH_E,
> -		.pins = { 18, 19, 20, 21, 22, 28, 30, -1 }
> +		.base = SAMA5D2_BASE_SDHC1,
> +		.id = SAMA5D2_ID_SDMMC1,
> +		.periph = AT91_MUX_PERIPH_E,
> +		.pins = {
> +			AT91_PIN_PA18, AT91_PIN_PA19, AT91_PIN_PA20,
> +			AT91_PIN_PA21, AT91_PIN_PA22, AT91_PIN_PA28,
> +			AT91_PIN_PA30, -1
> +		}
>  	},
>  };
>  
> @@ -51,25 +62,23 @@ static const struct sdhci_instance {
>   * sama5d2_sdhci_start_image - Load and start an image from FAT-formatted SDHCI
>   * @r4: value of r4 passed by BootROM
>   */
> -void __noreturn sama5d2_sdhci_start_image(u32 r4)
> +static void __noreturn sama5d2_sdhci_start_image(u32 r4)
>  {
> -	void *buf = (void *)SAMA5_DDRCS;
> -	const struct sdhci_instance *instance;
> +	const struct xload_instance *instance;
>  	struct pbl_bio bio;
>  	const s8 *pin;
>  	int ret;
>  
>  	ret = sama5_bootsource_instance(r4);
> -	if (ret > 1)
> +	if (ret > ARRAY_SIZE(sama5d2_mci_instances) - 1)
>  		panic("Couldn't determine boot MCI instance\n");
>  
> -	instance = &sdhci_instances[ret];
> +	instance = &sama5d2_mci_instances[ret];
>  
>  	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOA);
> -	for (pin = instance->pins; *pin >= 0; pin++) {
> +	for (pin = instance->pins; *pin >= 0; pin++)
>  		at91_mux_pio4_set_periph(SAMA5D2_BASE_PIOA,
>  					 BIT(*pin), instance->periph);
> -	}
>  
>  	sama5d2_pmc_enable_periph_clock(instance->id);
>  	sama5d2_pmc_enable_generic_clock(instance->id, AT91_PMC_GCKCSS_UPLL_CLK, 1);
> @@ -80,18 +89,26 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4)
>  
>  	/* TODO: eMMC boot partition handling: they are not FAT-formatted */
>  
> -	at91_fat_start_image(&bio, buf, SZ_16M, r4);
> +	at91_fat_start_image(&bio, r4);
>  
>  out_panic:
>  	panic("FAT chainloading failed\n");
>  }
>  
> -static const struct atmci_instance {
> -	void __iomem *base;
> -	unsigned id;
> -	u8 periph;
> -	s8 pins[15];
> -} sama5d3_atmci_instances[] = {
> +void __noreturn sama5d2_start_image(u32 r4)
> +{
> +	switch (sama5_bootsource(r4)) {
> +	case BOOTSOURCE_MMC:
> +		sama5d2_sdhci_start_image(r4);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	panic("Unsupported boot configuration!\n");
> +}

And this is what the patch really is about: You want to have a function
which is no longer MMC specific, but boots from MMC/QSPI depending on
the bootsource. Please make this a separate patch as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



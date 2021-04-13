Delivery-date: Tue, 13 Apr 2021 07:06:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWBFg-0006qB-Ee
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 07:06:16 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWBFf-0003qD-J2
	for lore@pengutronix.de; Tue, 13 Apr 2021 07:06:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PE09FQuSt7YVxmeY3xMP0QluiqB4ByjMchIo/KC6ZlU=; b=VgxyQJhpWgFpeg+ptWMrOvs+8
	niKnDVwj+v+CHzU1fDFYpjnYe8TxBAhqgymo+w/zo4BdkE4ppOL8rFzfMFfv8rPsjKR+fLgILn/sh
	EMTU6vGFl7fHZ4xq8EAH33LAqgfiW8Sn0ObZHqOoWHR3jkyxLJwZ9X3spsyTI2QiPNvborm7orX/2
	gByPa+6YO4U1O/jyd6iVUzvLmcrfGI7h6AW45cJ+supIklXfURFcd7P1nUq8LVzOwjLzeyFHU2rwa
	SSWI1Cz++avuCtYaXBVfhEnQGMvd4g3/cxfOp5syzMpM4t6HYRPIeuM3R73zaEeV3P/Ndngb1s6k3
	rhKNXOxWA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWBEH-008H1J-Uz; Tue, 13 Apr 2021 05:04:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWBBY-008Gv1-VT
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 05:02:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=nbTzVEamBNzn1kAGMe203wf1AHEDMyOZCZ+lhAo3Zrk=; b=D3IcxaP6NmHXWAoHZ0ZuXzUotr
 qR43Am2tg9LMXc8jpEHVJbg9/SZLGA9yJX3IfcEJ0qzcL1cYSidDhHz52rXkrfP4P/8ZpkkymcJmN
 xLNlQ+H0OSEJq5jIw6Y8tOkMXLVw+hQIldDz6a9sKtekLjn2kWmm1U6jrIwHoxHhW60RBf93Bpmrh
 4pkbnmPlnBknz94yjRE/lIeI+JrIUorCmMWjXNLFP6nQDvLsa+DVaPQXy5COTaKcEqT4oa+E7w7co
 cSkzyXmPCMeTLII3ld9vYlY7i5GJmFYxpc3m8Kd37U0mmTY23U8elJtqHv87DhXw/wXscswPbci/Y
 WEjOIcew==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWBBW-006j7d-4Z
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 05:01:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWBBU-0003O3-U8; Tue, 13 Apr 2021 07:01:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWBBU-0002nd-Kz; Tue, 13 Apr 2021 07:01:56 +0200
Date: Tue, 13 Apr 2021 07:01:56 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210413050156.GF6950@pengutronix.de>
References: <20210409131149.2184-1-o.rempel@pengutronix.de>
 <20210409131149.2184-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210409131149.2184-3-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:00:21 up 54 days,  8:24, 69 users,  load average: 0.85, 0.30, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_220158_208818_D1375885 
X-CRM114-Status: GOOD (  29.98  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/6] ARM: at91: xload-mmc: add
 sama5d3_atmci_start_image() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 09, 2021 at 03:11:45PM +0200, Oleksij Rempel wrote:
> This helper should be called from the xloader
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/mach-at91/Kconfig              |  2 +
>  arch/arm/mach-at91/include/mach/xload.h |  2 +
>  arch/arm/mach-at91/xload-mmc.c          | 51 +++++++++++++++++++++++++
>  3 files changed, 55 insertions(+)
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 52eefc7361..0fc8d25111 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -45,6 +45,7 @@ config HAVE_AT91_DDRAMC
>  
>  config AT91_MCI_PBL
>  	bool
> +	depends on MCI_ATMEL_PBL
>  	depends on MCI_ATMEL_SDHCI_PBL
>  	default y
>  
> @@ -599,6 +600,7 @@ config MACH_MICROCHIP_KSZ9477_EVB
>  	bool "Microchip EVB-KSZ9477 Evaluation Kit"
>  	select SOC_SAMA5D3
>  	select OFDEVICE
> +	select MCI_ATMEL_PBL
>  	select COMMON_CLK_OF_PROVIDER
>  	help
>  	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
> diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
> index 9201e7d0b7..bbc70af210 100644
> --- a/arch/arm/mach-at91/include/mach/xload.h
> +++ b/arch/arm/mach-at91/include/mach/xload.h
> @@ -5,6 +5,8 @@
>  #include <pbl.h>
>  
>  void __noreturn sama5d2_sdhci_start_image(u32 r4);
> +void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
> +					  unsigned int slot);
>  
>  int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
>  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
> diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
> index e9edeccb7f..2e00cfc2a9 100644
> --- a/arch/arm/mach-at91/xload-mmc.c
> +++ b/arch/arm/mach-at91/xload-mmc.c
> @@ -3,6 +3,7 @@
>  #include <mach/sama5_bootsource.h>
>  #include <mach/hardware.h>
>  #include <mach/sama5d2_ll.h>
> +#include <mach/sama5d3_ll.h>
>  #include <mach/gpio.h>
>  #include <linux/sizes.h>
>  #include <asm/cache.h>
> @@ -44,6 +45,23 @@ static const struct sdhci_instance {
>  	},
>  };
>  
> +static const struct atmci_instance {
> +	void __iomem *base;
> +	unsigned id;
> +	u8 periph;
> +	s8 pins[15];
> +} atmci_instances[] = {
> +	[0] = {
> +		.base = IOMEM(SAMA5D3_BASE_HSMCI0),
> +		.id = SAMA5D3_ID_HSMCI0,
> +		.periph = AT91_MUX_PERIPH_A,
> +		.pins = {
> +			AT91_PIN_PD0, AT91_PIN_PD1, AT91_PIN_PD2, AT91_PIN_PD3,
> +			AT91_PIN_PD4, AT91_PIN_PD5, AT91_PIN_PD6, AT91_PIN_PD7,
> +			AT91_PIN_PD8, AT91_PIN_PD9, -1 }
> +	},
> +};

What about SAMA5D3_BASE_HSMCI1? Please either add it here or don't
access it below.

Sascha

> +
>  /**
>   * sama5d2_sdhci_start_image - Load and start an image from FAT-formatted SDHCI
>   * @r4: value of r4 passed by BootROM
> @@ -82,3 +100,36 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4)
>  out_panic:
>  	panic("FAT chainloading failed\n");
>  }
> +
> +void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
> +					  unsigned int slot)
> +{
> +	void *buf = (void *)SAMA5_DDRCS;
> +	const struct atmci_instance *instance;
> +	struct pbl_bio bio;
> +	const s8 *pin;
> +	int ret;
> +
> +	ret = sama5_bootsource_instance(boot_src);
> +	if (ret > 1)
> +		panic("Couldn't determine boot MCI instance\n");
> +
> +	instance = &atmci_instances[boot_src];
> +
> +	sama5d3_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
> +	for (pin = instance->pins; *pin >= 0; pin++) {
> +		at91_mux_pio3_pin(IOMEM(SAMA5D3_BASE_PIOD),
> +					 pin_to_mask(*pin), instance->periph, 0);
> +	}
> +
> +	sama5d3_pmc_enable_periph_clock(instance->id);
> +
> +	ret = at91_mci_bio_init(&bio, instance->base, clock, slot);
> +	if (ret)
> +		goto out_panic;
> +
> +	at91_fat_start_image(&bio, buf, SZ_16M, boot_src);
> +
> +out_panic:
> +	panic("FAT chainloading failed\n");
> +}
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


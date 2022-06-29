Delivery-date: Wed, 29 Jun 2022 08:51:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RY7-000whm-OB
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:51:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RY9-0008Tc-Aj
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:51:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zYJU4Rq1Y+6soHcrbdSQ7Oxn/N01B0h3oS8mxBBObAY=; b=VDwXm7+NoFyCXpHmF2KJEZU1UM
	ffH8kjhkNHwXZ4G2ETFGbc2VQXCaXoo9kQPhOsNpxvFD6pQfp0DUOgFhB0q4TG6xGms+6NFl7dpzb
	F4SzbNCIr367srks/lqUYLMJTbWdDK425Viv9VJXzeSH+k22IvVxkWbWZSUiX1FxHoFSZ1Bx5lC7+
	UHmc5VLHBdLajP6GIsfHQFfcotBG4tTgzOprrWCTXxyPza7ZZx8lhQGRbv0xVmEQOgeMzcov615Pl
	XTS89HZ04zjHk0/ckPbyf5pRZ1V43z2vyJ6R/5QlWWfNfkxhPwQArmpMHoQnijxI8gQwYkdbBqKNb
	umFKPE+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RWm-009tYx-6J; Wed, 29 Jun 2022 06:50:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RWf-009tUM-Jb
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:50:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6RWU-0007tP-9i; Wed, 29 Jun 2022 08:50:02 +0200
Message-ID: <31aa1db1-0802-a475-a406-7bf4fee5d036@pengutronix.de>
Date: Wed, 29 Jun 2022 08:50:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20220628203849.2785611-1-sam@ravnborg.org>
 <20220628203849.2785611-7-sam@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220628203849.2785611-7-sam@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_235013_695491_6992F615 
X-CRM114-Status: GOOD (  29.53  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 06/11] ARM: at91: Add at91sam9 xload_mmc for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.06.22 22:38, Sam Ravnborg wrote:
> Add xload support to at91sam9263 similar to what is already
> present for the sama5d3.
> The xload supports reading barebox.bin from a SDCARD from the
> PBL and load the full barebox.bin and starts it.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  arch/arm/mach-at91/Makefile             |   1 +
>  arch/arm/mach-at91/at91sam9_xload_mmc.c | 118 ++++++++++++++++++++++++
>  arch/arm/mach-at91/include/mach/xload.h |   4 +
>  3 files changed, 123 insertions(+)
>  create mode 100644 arch/arm/mach-at91/at91sam9_xload_mmc.c
> 
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index 12e64291b..b171d682f 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -17,6 +17,7 @@ obj-y += at91sam9_reset.o
>  obj-y += at91sam9g45_reset.o
>  obj-pbl-$(CONFIG_HAVE_AT91_DDRAMC) += ddramc.o
>  pbl-$(CONFIG_AT91_MCI_PBL) +=  xload-mmc.o
> +pbl-$(CONFIG_AT91_MCI_PBL) +=  at91sam9_xload_mmc.o
>  
>  obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
>  obj-$(CONFIG_HAVE_AT91SAM9_RST) += at91sam9_rst.o
> diff --git a/arch/arm/mach-at91/at91sam9_xload_mmc.c b/arch/arm/mach-at91/at91sam9_xload_mmc.c
> new file mode 100644
> index 000000000..64266757d
> --- /dev/null
> +++ b/arch/arm/mach-at91/at91sam9_xload_mmc.c
> @@ -0,0 +1,118 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: 2022 Sam Ravnborg */
> +
> +#include <debug_ll.h>
> +#include <common.h>
> +#include <pbl.h>
> +
> +#include <linux/sizes.h>
> +#include <asm/cache.h>
> +
> +#include <mach/at91_pmc_ll.h>
> +#include <mach/at91sam9263.h>
> +#include <mach/at91sam926x.h>
> +#include <mach/hardware.h>
> +#include <mach/iomux.h>
> +#include <mach/xload.h>
> +#include <mach/gpio.h>
> +
> +typedef void (*func)(int zero, int arch, void *params);
> +
> +/*
> + * Load barebox.bin and start executing the first byte in the barebox image.
> + * barebox.bin is loaded to AT91_CHIPSELECT_1.
> + *
> + * To be able to load barebox.bin do a minimal init of the pheriferals
> + * used by MCI.
> + * This functions runs in PBL code and uses the PBL variant of the
> + * atmel_mci driver.
> + */
> +void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
> +					  bool slot_b)
> +{
> +	void __iomem *pio = IOMEM(AT91SAM9263_BASE_PIOA);
> +	void *buf = (void *)AT91_CHIPSELECT_1;
> +	void __iomem *base;
> +	struct pbl_bio bio;
> +	int ret;
> +
> +	at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC), AT91SAM9263_ID_PIOA);
> +
> +	if (mmc_id == 0) {
> +		base = IOMEM(AT91SAM9263_BASE_MCI0);
> +
> +		/* CLK */
> +		at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA12), AT91_MUX_PERIPH_A, 0);
> +
> +		if (!slot_b) {
> +			/* CMD */
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA1), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +
> +			/* DAT0 to DAT3 */
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA0), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA3), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA4), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA5), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +		} else {
> +			/* CMD */
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA16), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +
> +			/* DAT0 to DAT3 */
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA17), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA18), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA19), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA20), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +		}
> +
> +		at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC),  AT91SAM9263_ID_MCI0);
> +	} else {
> +		base = IOMEM(AT91SAM9263_BASE_MCI1);
> +
> +		/* CLK */
> +		at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA6), AT91_MUX_PERIPH_A, 0);
> +
> +		if (!slot_b) {
> +			/* CMD */
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA7), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +
> +			/* DAT0 to DAT3 */
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA8), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA9), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA10), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA11), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +		} else {
> +			/* CMD */
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA21), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +
> +			/* DAT0 to DAT3 */
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA22), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA23), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA24), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +			at91_mux_pio_pin(pio, pin_to_mask(AT91_PIN_PA25), AT91_MUX_PERIPH_A, GPIO_PULL_UP);
> +		}
> +
> +		at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC),  AT91SAM9263_ID_MCI1);
> +	}
> +
> +	ret = at91_mci_bio_init(&bio, base, clock, (int)slot_b);
> +	if (ret) {
> +		pr_err("atmci_start_image: bio init faild: %d\n", ret);
> +		goto out_panic;
> +	}
> +
> +	/* at91sam9x do not support high capacity */
> +	at91_mci_bio_set_highcapacity(false);
> +
> +	ret = pbl_fat_load(&bio, "barebox.bin", buf, SZ_16M);
> +	if (ret < 0) {
> +		pr_err("pbl_fat_load: error %d\n", ret);
> +		goto out_panic;
> +	}
> +
> +	sync_caches_for_execution();
> +
> +	((func)buf)(0, 0, NULL);
> +
> +out_panic:
> +	panic("FAT chainloading failed\n");
> +}
> diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
> index 488279c1a..82db65e30 100644
> --- a/arch/arm/mach-at91/include/mach/xload.h
> +++ b/arch/arm/mach-at91/include/mach/xload.h
> @@ -15,4 +15,8 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>  		      unsigned int clock, unsigned int slot);
>  void at91_mci_bio_set_highcapacity(bool highcapacity_card);
>  
> +void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
> +					  bool slot_b);
> +
> +
>  #endif /* __MACH_XLOAD_H */


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



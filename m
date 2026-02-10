Delivery-date: Tue, 10 Feb 2026 09:29:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpj88-0006lu-1E
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 09:29:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpj87-0004oN-LQ
	for lore@pengutronix.de; Tue, 10 Feb 2026 09:29:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1/jri3qgTQWDFe/9JOi63pTzTMGPRiXEAqzZ4ui94k4=; b=TaNU6j6PqKLvCiKsFOZVK99aHB
	vQusSas0aKhkmn2exOyqpeaZ4hr5iGi0IJCYGkZfT0l62E52rFyqOQJdAB+U9pJkBBdvB5xLqLmje
	Tkd11p69iyesD2yQNQZSjKg/SNFPRbRMDTOGrtzz0Xo6WHpCJG0wBhj54T9d55SafPZ8GUzM6DL50
	1xbd0+u8jlOG5ruAf2AWMZsGQmF+woP96+liSn2meGm2TnHNkWPKeWIXNKtbz0YcCrigsRx5FiM+F
	gxokpbbHy9gHNj2NUh0OhuWl+tubSf011Wlkok7rRAEscfpbhGiEeFjtOXmBCD/pTFNqT7A5nBm3o
	RiQ9b36g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpj7U-0000000Ggya-01Hs;
	Tue, 10 Feb 2026 08:29:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpj7Q-0000000Ggxj-2Hn8
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 08:29:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vpj7M-0004il-Nk; Tue, 10 Feb 2026 09:29:08 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vpj7L-00039p-38;
	Tue, 10 Feb 2026 09:29:07 +0100
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vpj7M-009ujL-1I;
	Tue, 10 Feb 2026 09:29:08 +0100
Date: Tue, 10 Feb 2026 09:29:08 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aYrsVGDWGvXuBb7c@pengutronix.de>
References: <20260209164045.1924618-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260209164045.1924618-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_002912_591742_91A82B4D 
X-CRM114-Status: GOOD (  29.26  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] mci: dw_mmc: drop CD from mask programmed into
 interrupt status register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 09 Feb 2026 17:40:44 +0100, Ahmad Fatoum wrote:
> We don't usually care for the card detect in barebox and just
> unconditionally try to access the card. If it fails, a probe can be
> attempted later via setting mmcX.probe=1.
> 
> The dw_mmc driver diverges from this and enables all kinds
> of interrupts in the interrupt status polled after submitting commands,
> including card-detect.
> 
> This appears to be problematic, when we have a GPIO card detect and are
> not using the card detect hardware function.
> 
> Align behavior with Linux and skip polling for hardware card-detect when
> we have a GPIO card detect. The current behavior was inherited from
> U-Boot, which still does it this way and it's possible it would be affected
> by this issue as well, once U-Boot updates to use DTs >= v6.19-rc1, provided
> that the ROCK 5 support in U-Boot uses CONFIG_OF_UPSTREAM.
> 
> Fixes: a3bf6c16f77d ("dts: update to v6.19-rc1")

Even with this patch, I still observe the DATA ERROR on CMD13 and the
timeouts.

Michael

> Reported-by: Michael Tretter <m.tretter@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/dw_mmc.c | 33 ++++++++++++++++++++++++++++++++-
>  drivers/mci/dw_mmc.h |  1 +
>  2 files changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
> index 30e5d56944b6..9ddf931eb513 100644
> --- a/drivers/mci/dw_mmc.c
> +++ b/drivers/mci/dw_mmc.c
> @@ -12,6 +12,7 @@
>  #include <driver.h>
>  #include <malloc.h>
>  #include <clock.h>
> +#include <linux/gpio/consumer.h>
>  #include <init.h>
>  #include <mci.h>
>  #include <io.h>
> @@ -23,6 +24,20 @@
>  #include <errno.h>
>  #include "dw_mmc.h"
>  
> +/* Most importantly, it doesn't contain DWMCI_INTMSK_CD as to allow
> + * for GPIO card detect, unlike DWMCI_INTMSK_ALL.
> + * The list is taken from Linux v6.19 with addition of DWMCI_INTMSK_FRUN
> + * as barebox had inherited this into DWMCI_DATA_ERR from U-Boot
> + */
> +#define DW_MCI_DATA_ERROR_FLAGS	(DWMCI_INTMSK_DRTO | DWMCI_INTMSK_DCRC | \
> +				 DWMCI_INTMSK_HTO | DWMCI_INTMSK_SBE  | \
> +				 DWMCI_INTMSK_EBE | DWMCI_INTMSK_HLE | \
> +				 DWMCI_INTMSK_FRUN)
> +#define DW_MCI_CMD_ERROR_FLAGS	(DWMCI_INTMSK_RTO | DWMCI_INTMSK_RCRC | \
> +				 DWMCI_INTMSK_RE | DWMCI_INTMSK_HLE)
> +
> +#define DW_MCI_ERROR_FLAGS	(DW_MCI_DATA_ERROR_FLAGS | \
> +				 DW_MCI_CMD_ERROR_FLAGS)
>  
>  struct dwmci_host {
>  	struct mci_host mci;
> @@ -37,6 +52,7 @@ struct dwmci_host {
>  	u32 fifoth_val;
>  	u32 pwren_value;
>  	dma_addr_t idmac_dma;
> +	struct gpio_desc *cd_gpio;
>  };
>  
>  struct dwmci_idmac {
> @@ -285,7 +301,13 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
>  		}
>  	}
>  
> -	dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_ALL);
> +	/*
> +	 * Enable interrupts for command done, data over, data empty,
> +	 * receive ready and error such as transmit, receive timeout, crc error
> +	 */
> +	dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_CDONE | DWMCI_INTMSK_DTO |
> +		   DWMCI_INTMSK_TXDR | DWMCI_INTMSK_RXDR |
> +		   DW_MCI_ERROR_FLAGS);
>  
>  	if (data) {
>  
> @@ -586,6 +608,15 @@ static int dw_mmc_probe(struct device *dev)
>  		reset_control_deassert(rst);
>  	}
>  
> +	/*
> +	 * We don't actually care for the cd-gpios and it's usually connected
> +	 * just to a dumb lever shorting to ground, but let's mux as GPIO
> +	 * to be on the safe side.
> +	 */
> +	host->cd_gpio = gpiod_get_optional(dev, "cd", GPIOD_IN);
> +	if (IS_ERR(host->cd_gpio))
> +		dev_dbg(dev, "Failed to get cd-gpios: %pe (ignoring)\n", host->cd_gpio);
> +
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
>  		return PTR_ERR(iores);
> diff --git a/drivers/mci/dw_mmc.h b/drivers/mci/dw_mmc.h
> index 23fa116d7514..eb5331d1ccb2 100644
> --- a/drivers/mci/dw_mmc.h
> +++ b/drivers/mci/dw_mmc.h
> @@ -53,6 +53,7 @@
>  
>  /* Interrupt Mask register */
>  #define DWMCI_INTMSK_ALL	0xffffffff
> +#define DWMCI_INTMSK_CD		BIT(0)
>  #define DWMCI_INTMSK_RE		BIT(1)
>  #define DWMCI_INTMSK_CDONE	BIT(2)
>  #define DWMCI_INTMSK_DTO	BIT(3)
> -- 
> 2.47.3
> 
> 



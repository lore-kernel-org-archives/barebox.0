Delivery-date: Wed, 11 May 2022 08:31:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noft5-009JF6-Sh
	for lore@lore.pengutronix.de; Wed, 11 May 2022 08:31:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noft4-00045o-Do
	for lore@pengutronix.de; Wed, 11 May 2022 08:31:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B/L1++LcJiDqi7fSZqWpU7FeWfIgAMvDbEMozZ7KTQE=; b=0qfkDd3SIYlN4RSP12Y0lpLqjq
	YKxJpB6YkEtsD0vqbe289ElZXfHVKoWpRGc+uvxHu2tU/5WiLQkD2/YWE/5LkE0utm8MhB8R1a8/n
	ZgTIjYxcItCe/vNeyhvEYK4CzE/pWfdLtJMsEnspOT08rtuboj5HATe7D/ZLYXeWGOnltpnOkNZ+f
	YgwL8TUSURIJUjMB+M8TidZlTfZkQSAu2oq3f6L3v249Z3AWgz/lA3qyVc2W6F/CeexjCzLqk3jfC
	mocNJcib2jNA41+mEXugvyHNA3G7BBX8astOZ/TWlR2GpWmE7h+Cd1Tb5mtL/yyrVZSwSoEH7tDRh
	oeMgizjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nofrm-005R6f-S7; Wed, 11 May 2022 06:30:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nofri-005R5O-By
 for barebox@lists.infradead.org; Wed, 11 May 2022 06:30:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nofrg-0003ib-GN; Wed, 11 May 2022 08:30:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nofrg-0006jL-7D; Wed, 11 May 2022 08:30:28 +0200
Date: Wed, 11 May 2022 08:30:28 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220511063028.GG4012@pengutronix.de>
References: <20220510121242.216065-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220510121242.216065-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:30:18 up 41 days, 18:59, 67 users,  load average: 0.26, 0.16, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_233030_448316_385A3A56 
X-CRM114-Status: GOOD (  27.13  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/2] usb: dwc2: add support st,stm32mp15-fs/hsotg
 devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 10, 2022 at 02:12:41PM +0200, Oleksij Rempel wrote:
> Port chip specific configuration for stm32mp15x SoC from kernel v5.18-rc4.
> This patch is needed to fix USB host support on OTG port. Tested on stm32mp151.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/usb/dwc2/dwc2.c | 51 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
> index 1b5981c2d5..8cb99446e4 100644
> --- a/drivers/usb/dwc2/dwc2.c
> +++ b/drivers/usb/dwc2/dwc2.c
> @@ -13,9 +13,49 @@
>  #include <driver.h>
>  #include <linux/clk.h>
>  #include <linux/reset.h>
> +#include <of_device.h>
>  
>  #include "dwc2.h"
>  
> +static void dwc2_set_stm32mp15_fsotg_params(struct dwc2 *dwc2)
> +{
> +	struct dwc2_core_params *p = &dwc2->params;
> +
> +	p->otg_cap &= ~(DWC2_CAP_PARAM_HNP_SRP_CAPABLE
> +			 | DWC2_CAP_PARAM_SRP_ONLY_CAPABLE);
> +	p->otg_cap |= DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE;
> +	p->speed = DWC2_SPEED_PARAM_FULL;
> +	p->host_rx_fifo_size = 128;
> +	p->host_nperio_tx_fifo_size = 96;
> +	p->host_perio_tx_fifo_size = 96;
> +	p->max_packet_count = 256;
> +	p->phy_type = DWC2_PHY_TYPE_PARAM_FS;
> +	p->i2c_enable = false;
> +	p->activate_stm_fs_transceiver = true;
> +	p->ahbcfg = GAHBCFG_HBSTLEN_INCR16 << GAHBCFG_HBSTLEN_SHIFT;
> +	p->power_down = DWC2_POWER_DOWN_PARAM_NONE;
> +	p->host_support_fs_ls_low_power = true;
> +	p->host_ls_low_power_phy_clk = true;
> +}
> +
> +static void dwc2_set_stm32mp15_hsotg_params(struct dwc2 *dwc2)
> +{
> +	struct dwc2_core_params *p = &dwc2->params;
> +
> +	p->otg_cap &= ~(DWC2_CAP_PARAM_HNP_SRP_CAPABLE
> +			 | DWC2_CAP_PARAM_SRP_ONLY_CAPABLE);
> +	p->otg_cap |= DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE;
> +	p->host_rx_fifo_size = 440;
> +	p->host_nperio_tx_fifo_size = 256;
> +	p->host_perio_tx_fifo_size = 256;
> +	p->ahbcfg = GAHBCFG_HBSTLEN_INCR16 << GAHBCFG_HBSTLEN_SHIFT;
> +	p->power_down = DWC2_POWER_DOWN_PARAM_NONE;
> +	p->lpm = false;
> +	p->lpm_clock_gating = false;
> +	p->besl = false;
> +	p->hird_threshold_en = false;
> +}
> +
>  static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
>  {
>  	struct dwc2 *dwc2 = ctx;
> @@ -43,10 +83,13 @@ static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
>  	return ret;
>  }
>  
> +typedef void (*set_params_cb)(struct dwc2 *dwc2);
> +
>  static int dwc2_probe(struct device_d *dev)
>  {
>  	struct resource *iores;
>  	struct dwc2 *dwc2;
> +	set_params_cb set_params;
>  	int ret;
>  
>  	dwc2 = xzalloc(sizeof(*dwc2));
> @@ -107,6 +150,10 @@ static int dwc2_probe(struct device_d *dev)
>  
>  	dwc2_set_default_params(dwc2);
>  
> +	set_params = of_device_get_match_data(dev);
> +	if (set_params)
> +		set_params(dwc2);
> +
>  	dma_set_mask(dev, DMA_BIT_MASK(32));
>  	dev->priv = dwc2;
>  
> @@ -148,6 +195,10 @@ static const struct of_device_id dwc2_platform_dt_ids[] = {
>  	{ .compatible = "brcm,bcm2835-usb", },
>  	{ .compatible = "brcm,bcm2708-usb", },
>  	{ .compatible = "snps,dwc2", },
> +	{ .compatible = "st,stm32mp15-fsotg",
> +	  .data = dwc2_set_stm32mp15_fsotg_params },
> +	{ .compatible = "st,stm32mp15-hsotg",
> +	  .data = dwc2_set_stm32mp15_hsotg_params },
>  	{ }
>  };
>  
> -- 
> 2.30.2
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


Delivery-date: Thu, 29 Feb 2024 17:20:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfj8c-00GEQH-2i
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 17:20:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfj8b-0007Z6-SC
	for lore@pengutronix.de; Thu, 29 Feb 2024 17:20:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CK4CszHW1gPKgAOA+SMmjmlxzfpoHyWmaNGtP+O6fwk=; b=2GOSIpNDwCYxd95agKUCNWb7iU
	z9oeel3ooVmsPgK0t5wgqdD41ekX1wNEdNMlxkttwt7tNPhqtT8OGJARKcThRdhaaCSgnWv0BEFL7
	GaOqCBLomNLYClA9Rl2O6bP0rK1nJY6pTHOYy0Mf2c0vCcT5o03iYkXbb0TaLBbzkOJp2H8/dzINl
	BJ/LmmMDYXirZ5C0DCM9B7PBqf67OKP1Q4XwBCGDGxl7dGJLA5GrInbrulBMLD8bBYB+CnrjbdYxP
	IrAxlxWP+sBThqbhwXu7shSLxQzEE3lnDiBFMdZ2jrMTnk4fuPXskmwu6vfHvevPQG7vs2D9m6CId
	tRe7miXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfj80-0000000EFlw-0voB;
	Thu, 29 Feb 2024 16:19:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfj7w-0000000EFk1-1kZI
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 16:19:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfj7u-0007Ja-Bn; Thu, 29 Feb 2024 17:19:18 +0100
Message-ID: <213af923-0b5f-4a49-a982-a7a40ef1c25a@pengutronix.de>
Date: Thu, 29 Feb 2024 17:19:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
Cc: Jonathan Borne <jborne@kalrayinc.com>,
 Julian Vetter <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>
References: <20240229155700.17443-1-ysionneau@kalrayinc.com>
 <20240229155700.17443-4-ysionneau@kalrayinc.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240229155700.17443-4-ysionneau@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_081920_508806_CF1767A6 
X-CRM114-Status: GOOD (  23.79  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] mci: dwcmshc-sdhci: add support for Kalray Coolidge
 v2 SoC eMMC controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Yann,

On 29.02.24 16:57, Yann Sionneau wrote:
> Kalray Coolidge v2 SoC eMMC controller needs static tx delay tuning even
> for basic standard or high speed modes.
> 
> This patch also adds possibility to do some vendor specific tuning
> in set_ios().
> This will be needed for Coolidge v2 for >50 MHz speeds and HS200/HS400
> modes.
> 
> Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
> ---
>  drivers/mci/dwcmshc-sdhci.c | 40 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
> index d9c51752db..5017a1f56e 100644
> --- a/drivers/mci/dwcmshc-sdhci.c
> +++ b/drivers/mci/dwcmshc-sdhci.c
> @@ -9,11 +9,16 @@
>  #include <dma.h>
>  #include <malloc.h>
>  #include <mci.h>
> +#include <of_device.h>
>  #include <linux/err.h>
>  #include <linux/clk.h>
>  
>  #include "sdhci.h"
>  
> +#define tx_delay_static_cfg(delay)      (delay << 5)
> +#define tx_tuning_clk_sel(delay)        (delay)
> +
> +#define DWCMSHC_GPIO_OUT  0x34 /* offset from vendor specific area */
>  #define CARD_STATUS_MASK (0x1e00)
>  #define CARD_STATUS_TRAN (4 << 9)
>  
> @@ -22,6 +27,13 @@ static int do_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_dat
>  struct dwcmshc_host {
>  	struct mci_host mci;
>  	struct sdhci sdhci;
> +	int vendor_specific_area;
> +	const struct dwcmshc_callbacks *cb;
> +};
> +
> +struct dwcmshc_callbacks {
> +	void (*init)(struct mci_host *mci, struct device *dev);

Why is dev needed? There's already mci->hw_dev and mci->mci->dev

> +	void (*set_ios)(struct mci_host *mci, struct mci_ios *ios);

You don't actually use set_ios. But I assume you intend to add in future?
Maybe add it when it's actually needed?

> +static void dwcmshc_coolidgev2_init(struct mci_host *mci, struct device *dev)
> +{
> +	struct dwcmshc_host *host = priv_from_mci_host(mci);
> +
> +	// configure TX delay to set correct setup/hold for Coolidge V2

Nite: If you are going to send v2, please change into /* */ comments
for uniformity.


Cheers,
Ahmad

> +	sdhci_write32(&host->sdhci,
> +		      host->vendor_specific_area + DWCMSHC_GPIO_OUT,
> +		      tx_delay_static_cfg(0xf) | tx_tuning_clk_sel(4));
> +}
> +
> +struct dwcmshc_callbacks kalray_coolidgev2_callbacks = {
> +	.init = dwcmshc_coolidgev2_init,
> +};
> +
>  static struct of_device_id dwcmshc_dt_ids[] = {
>  	{ .compatible = "snps,dwcmshc-sdhci", },
> +	{ .compatible = "kalray,coolidge-v2-dwcmshc-sdhci", .data = &kalray_coolidgev2_callbacks },
>  	{ }
>  };
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




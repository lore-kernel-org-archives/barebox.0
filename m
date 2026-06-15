Delivery-date: Mon, 15 Jun 2026 08:19:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ0fB-0062cd-32
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 08:19:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ0fB-0001RN-48
	for lore@pengutronix.de; Mon, 15 Jun 2026 08:19:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+3eFD6wKZ/VxuzYlQnVirbS+yrZhyLF5Iy5HW9BQ2eg=; b=c3NBofyxkMSBwc8JddRGOlkO0k
	m4MEn5kfk/Bc5xXac7yWdlp+LTRMzgfjL2HXdqOsIwr6hwrh0KL897L4MmCg7Ukyi31d4XzBLjPkK
	OJd5mohifCCzsh3mjvBH02Fb97RwUduQrH+U6HvMKCHabEjLLxI2R/7o+pSfKijXlhNqxuLNGIjEA
	Zm8U3gFyoXwCA3NhpIeYLu9HXeTDdb2iRnN+JC/SYrWTW/mlX+UD+uEi7TUlSnyawcbhbR1I6bMjT
	jTybkjoy4niWRJSyQdHFHSI2m1fdZ+3yU/M/r0Mj7JkwhsmB7WlNg67zrPgwmHKB3dxPOoRc2Z/NJ
	3Cw9MI2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0dc-0000000DgEs-1jyv;
	Mon, 15 Jun 2026 06:17:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0dY-0000000DgET-3WbP
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 06:17:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wZ0dV-00015D-Jq; Mon, 15 Jun 2026 08:17:29 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wZ0dV-002of3-1p;
	Mon, 15 Jun 2026 08:17:29 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wZ0dV-00000006DIL-1zCk;
	Mon, 15 Jun 2026 08:17:29 +0200
Date: Mon, 15 Jun 2026 08:17:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <spsfdbp27aua5zlzxkvlqczwwsfrjsfj7j4fchabymiezspvyt@2jyk65fwxt3v>
References: <20260612055930.635833-1-o.rempel@pengutronix.de>
 <20260612055930.635833-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260612055930.635833-6-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_231732_905078_6CF4C8AA 
X-CRM114-Status: GOOD (  32.10  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 06/10] mci: atmel-sdhci: add Microchip LAN9691 /
 LAN969X SDHCI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-06-12, Oleksij Rempel wrote:
> Match the "microchip,lan9691-sdhci" compatible and allow building on
> ARCH_MICROCHIP (and COMPILE_TEST). LAN969X uses a different GCK rate
> (100 MHz) than the AT91 SAMA5D2 (240 MHz), so plumb the per-compatible
> rate through device_get_match_data() and fall back to the SAMA5D2 rate
> when no match data is supplied.
> 
> The LAN969X SDHCI binding doesn't expose the PMC base clock that
> sama5d2/sam9x60 carry as "baseclk" (the GCK driver handles the upstream
> source internally), so make that lookup optional.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/mci/Kconfig       |  6 +++---
>  drivers/mci/atmel-sdhci.c | 22 ++++++++++++++++++----
>  2 files changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index b38f7a3bdf8b..8108c7b14848 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -197,12 +197,12 @@ config MCI_ATMEL
>  	  Atmel AT91.
>  
>  config MCI_ATMEL_SDHCI
> -	bool "ATMEL SDHCI (sama5d2)"
> +	bool "ATMEL SDHCI (sama5d2, lan9691)"
>  	select MCI_SDHCI
> -	depends on ARCH_AT91
> +	depends on ARCH_AT91 || ARCH_MICROCHIP || COMPILE_TEST
>  	help
>  	  Enable this entry to add support to read and write SD cards on an
> -	  Atmel sama5d2
> +	  Atmel sama5d2 or Microchip LAN969X.
>  
>  config MCI_MMCI
>  	bool "ARM PL180 MMCI"
> diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
> index 462cf21bc25f..458d022fa3fa 100644
> --- a/drivers/mci/atmel-sdhci.c
> +++ b/drivers/mci/atmel-sdhci.c
> @@ -18,6 +18,7 @@
>  
>  #define ATMEL_SDHC_MIN_FREQ	400000
>  #define ATMEL_SDHC_GCK_RATE	240000000
> +#define LAN969X_GCK_RATE	100000000
>  
>  struct at91_sdhci_priv {
>  	struct at91_sdhci host;
> @@ -55,7 +56,8 @@ static int at91_sdhci_mci_init(struct mci_host *mci, struct device *dev)
>  			       priv->mci.non_removable, priv->cal_always_on);
>  }
>  
> -static int at91_sdhci_conf_clks(struct at91_sdhci_priv *priv)
> +static int at91_sdhci_conf_clks(struct at91_sdhci_priv *priv,
> +				unsigned long gck_rate)
>  {
>  	unsigned long real_gck_rate;
>  	int ret;
> @@ -66,7 +68,7 @@ static int at91_sdhci_conf_clks(struct at91_sdhci_priv *priv)
>  	 * base clock rate and the clock mult from capabilities.
>  	 */
>  	clk_enable(priv->hclock);
> -	ret = clk_set_rate(priv->gck, ATMEL_SDHC_GCK_RATE);
> +	ret = clk_set_rate(priv->gck, gck_rate);
>  	if (ret < 0) {
>  		clk_disable(priv->hclock);
>  		return ret;
> @@ -109,6 +111,11 @@ static int at91_sdhci_probe(struct device *dev)
>  {
>  	struct at91_sdhci_priv *priv;
>  	struct resource *iores;
> +	unsigned long gck_rate;
> +
> +	gck_rate = (uintptr_t)device_get_match_data(dev);
> +	if (!gck_rate)
> +		gck_rate = ATMEL_SDHC_GCK_RATE;

Could be set as of_device_data as well to avoid this default assingment.

>  	priv = xzalloc(sizeof(*priv));
>  	dev->priv = priv;
> @@ -119,7 +126,12 @@ static int at91_sdhci_probe(struct device *dev)
>  		return PTR_ERR(iores);
>  	}
>  
> -	priv->mainck = clk_get(dev, "baseclk");
> +	/*
> +	 * "baseclk" is the PMC base clock on sama5d2/sam9x60. The LAN969X
> +	 * SDHCI binding doesn't expose it (the GCK driver handles the upstream
> +	 * source internally), so treat it as optional.
> +	 */
> +	priv->mainck = clk_get_optional(dev, "baseclk");

This commit may introduce bugs in case the clock is not found and you're
running on a SoC which requires it. This is no longer covered.

Please see Linux commit 3976656d67c1 ("mmc: sdhci-of-at91: rework clocks
management to support SAM9x60 device"). This commits introduces a proper
driver struct and the optional internal clock handling.

Regards,
  Marco

>  	if (IS_ERR(priv->mainck)) {
>  		dev_err(dev, "failed to get baseclk\n");
>  		return PTR_ERR(priv->mainck);
> @@ -147,7 +159,7 @@ static int at91_sdhci_probe(struct device *dev)
>  	at91_sdhci_mmio_init(&priv->host, IOMEM(iores->start));
>  	priv->host.sdhci.mci = &priv->mci;
>  
> -	priv->gck_rate = at91_sdhci_conf_clks(priv);
> +	priv->gck_rate = at91_sdhci_conf_clks(priv, gck_rate);
>  	if (priv->gck_rate < 0)
>  		return priv->gck_rate;
>  
> @@ -164,6 +176,8 @@ static int at91_sdhci_probe(struct device *dev)
>  static const struct of_device_id at91_sdhci_dt_match[] = {
>  	{ .compatible = "atmel,sama5d2-sdhci"  },
>  	{ .compatible = "microchip,sam9x60-sdhci" },
> +	{ .compatible = "microchip,lan9691-sdhci",
> +	  .data = (void *)LAN969X_GCK_RATE },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, at91_sdhci_dt_match);
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



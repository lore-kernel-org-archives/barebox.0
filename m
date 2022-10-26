Delivery-date: Wed, 26 Oct 2022 06:22:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onXwD-002b9r-0O
	for lore@lore.pengutronix.de; Wed, 26 Oct 2022 06:22:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onXwB-000298-RN
	for lore@pengutronix.de; Wed, 26 Oct 2022 06:22:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y9Lkoynan324/fQrn3EeIGoysHybqzD9D7A+IQDhnEk=; b=OwdWWd0jc7KYRmxuj533m3vA0N
	3Hs1qRplkcj5URXhYop5AtMQbWH6hssjxsZIZcv0UfCqwOvWByMXXKHP0sVHbHdufG2scyIdDRH/n
	in7UBBghdkGO4rN7aabLRESiNvwi0ptcTD5+uZ/5elF+vz2jsivmkC0qVeMZEhN2sZ36MtSKCHObj
	SF2olM7j49pSFdENbL5O5gBZ2G3rvCLpjFr7lvnjXqChdDh14OQvsifMXZU2IR01E+5cc+eMhjSYy
	BdShOLWk++C11uDwJLCmwnUyoJjPxx4X540z/jknjmEmwfdRWzxMFyugpWdz92zt8QrLFV4JakFUe
	gfsyRSIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onXuI-007xf9-W8; Wed, 26 Oct 2022 04:20:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onXuE-007xdl-Kw
	for barebox@lists.infradead.org; Wed, 26 Oct 2022 04:20:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onXu3-0001s3-IU; Wed, 26 Oct 2022 06:20:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onXu3-0000WH-Ay; Wed, 26 Oct 2022 06:20:31 +0200
Date: Wed, 26 Oct 2022 06:20:31 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20221026042031.GO6702@pengutronix.de>
References: <20221024114940.26197-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221024114940.26197-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_212042_705660_48A669BA 
X-CRM114-Status: GOOD (  22.05  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: imx5: Add support for watchdog clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 24, 2022 at 02:49:40PM +0300, Alexander Shiyan wrote:
> This adds a dummy clock definition for i.MX-50/51/53 CPUs,
> what makes the driver work.
> 
> Fixes: 87cad179648 ("watchdog: imxwd: get and enable clock")
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/clk/imx/clk-imx5.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Applied to master, thanks

Sascha

> 
> diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
> index c7a1818bd7..81af9a9c88 100644
> --- a/drivers/clk/imx/clk-imx5.c
> +++ b/drivers/clk/imx/clk-imx5.c
> @@ -205,6 +205,8 @@ static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *ba
>  	writel(0xffffffff, base + CCM_CCGR6);
>  	writel(0xffffffff, base + CCM_CCGR7);
>  
> +	clks[IMX5_CLK_DUMMY] = clk_fixed("dummy", 0);
> +
>  	if (!IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER) || !dev->device_node) {
>  		clks[IMX5_CLK_CKIL] = clk_fixed("ckil", 32768);
>  		clks[IMX5_CLK_OSC] = clk_fixed("osc", 24000000);
> @@ -312,6 +314,7 @@ static int __init mx50_clocks_init(struct device_d *dev, void __iomem *regs)
>  	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM1_BASE_ADDR, "per");
>  	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM2_BASE_ADDR, "per");
>  	clkdev_add_physbase(clks[IMX5_CLK_AHB], MX50_OTG_BASE_ADDR, NULL);
> +	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX50_WDOG1_BASE_ADDR, NULL);
>  
>  	return 0;
>  }
> @@ -392,6 +395,8 @@ static int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
>  	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_ATA_BASE_ADDR, NULL);
>  	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM1_BASE_ADDR, "per");
>  	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM2_BASE_ADDR, "per");
> +	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX51_WDOG_BASE_ADDR, NULL);
> +	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX51_WDOG2_BASE_ADDR, NULL);
>  
>  	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
>  		mx51_clocks_ipu_init(regs);
> @@ -488,6 +493,8 @@ static int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
>  	clkdev_add_physbase(clks[IMX5_CLK_AHB], MX53_SATA_BASE_ADDR, NULL);
>  	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM1_BASE_ADDR, "per");
>  	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM2_BASE_ADDR, "per");
> +	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX53_WDOG1_BASE_ADDR, NULL);
> +	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX53_WDOG2_BASE_ADDR, NULL);
>  
>  	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
>  		mx53_clocks_ipu_init(regs);
> -- 
> 2.37.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



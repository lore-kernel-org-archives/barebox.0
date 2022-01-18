Delivery-date: Tue, 18 Jan 2022 08:59:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jOU-005NRl-5M
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 08:59:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jOS-0005iM-NZ
	for lore@pengutronix.de; Tue, 18 Jan 2022 08:59:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SIU+O7jLLwE/fJP8hQo2rxWlB9zBq/m4uiOJ2hgNn3Y=; b=cRm3sVlja0TwossC0O6CZK++lW
	491PTcI1NTHiZb1BGeXSkT4XT0IHqBuC/3xz/Gjp/Q8Rth1Hkt5B1sQgiUtiEjf3SGoQq9MAiTSeP
	OkjVkLSK4/EcBkkTJQr1u4rTk0n/rV9vmX1AFB+cgEN+qBzzPHh8EbY7p6AKb85RosCWKqy7+jW3I
	LM4m/BQ5cXAi0V4bYKD2XAFEqf13RJGbbW1lZ4pcma0Qm83Tz8ad29465VSTuM2ydUtsvyU3hfZtZ
	LJWsfXm1OxgqUUNb9vhDo2aFVx5TWN4YH0iE4q21e6WtdbhlqZqf6tpFuqbuC28Dl3AmlzKA1I73y
	PI4pdjtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9jN5-000eye-SH; Tue, 18 Jan 2022 07:57:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9jN0-000ey9-Lf
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 07:57:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9jMz-0005W3-Dd; Tue, 18 Jan 2022 08:57:33 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9jMz-0006Kr-2O; Tue, 18 Jan 2022 08:57:33 +0100
Date: Tue, 18 Jan 2022 08:57:33 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220118075733.GE23490@pengutronix.de>
References: <20220117120500.3556703-1-o.rempel@pengutronix.de>
 <20220117120500.3556703-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117120500.3556703-2-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:51:59 up 38 days, 16:37, 62 users,  load average: 0.19, 0.17, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_235734_735343_6D95A7B3 
X-CRM114-Status: GOOD (  27.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/4] ARM: rpi: move clk support to a separate driver
 and enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 17, 2022 at 01:04:58PM +0100, Oleksij Rempel wrote:
> To make deep-probe work properly, we need clock support be registered as
> driver to related device.
> 
> To avoid regression, deep-probe is enabled in the same patch.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 75 +-----------------
>  drivers/clk/Makefile                      |  1 +
>  drivers/clk/clk-rpi.c                     | 93 +++++++++++++++++++++++
>  3 files changed, 96 insertions(+), 73 deletions(-)
>  create mode 100644 drivers/clk/clk-rpi.c
> 
> +static int bcm2835_cprman_init(struct device_node *np)
> +{
> +	struct device_node *mbox_node;
> +	struct clk *clk;
> +	int ret;
> +
> +	mbox_node = of_find_compatible_node(NULL, NULL, "brcm,bcm2835-mbox");
> +	if (!mbox_node) {
> +		pr_err("Missing mbox node\n");
> +		return -ENOENT;
> +	}
> +
> +	ret = of_device_ensure_probed(mbox_node);
> +	if (ret) {
> +		pr_err("Can't probe mbox node. %i\n", ret);
> +		return ret;
> +	}
> +
> +	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
> +					 "bcm2835_mci0");
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	clkdev_add_physbase(clk, 0x20300000, NULL);
> +	clkdev_add_physbase(clk, 0x3f300000, NULL);
> +
> +	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
> +					  "bcm2835_sdhost");
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	clkdev_add_physbase(clk, 0x20202000, NULL);
> +	clkdev_add_physbase(clk, 0x3f202000, NULL);
> +
> +	clk = clk_fixed("apb_pclk", 0);
> +	clk_register_clkdev(clk, "apb_pclk", NULL);
> +
> +	clk = clk_fixed("uart0-pl0110", 48 * 1000 * 1000);
> +	clk_register_clkdev(clk, NULL, "uart0-pl0110");
> +	clkdev_add_physbase(clk, BCM2835_PL011_BASE, NULL);
> +	clkdev_add_physbase(clk, BCM2836_PL011_BASE, NULL);
> +
> +	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
> +					  "uart1-8250");
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	clkdev_add_physbase(clk, BCM2835_MINIUART_BASE, NULL);
> +	clkdev_add_physbase(clk, BCM2836_MINIUART_BASE, NULL);
> +
> +	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
> +	clk_register_clkdev(clk, NULL, "bcm2835-cs");
> +
> +	return 0;
> +}
> +/* CLK_OF_DECLARE should be used to make it probed before amba,pl011 */

We should finally switch to device tree based lookup for the clocks.
Given where we are already this seems to be only a small step left to
go.

Sascha

> +CLK_OF_DECLARE(bcm2835_cprman, "brcm,bcm2835-cprman", bcm2835_cprman_init);
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


Delivery-date: Mon, 28 Mar 2022 10:50:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYl4w-008oKy-70
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:50:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYl4y-0008Jd-77
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:50:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7A7MkF6AqabJLcyDJpSH58d+ithx7gihb27r5JvEZ3o=; b=sAUiDODBSLO0mU5mdPp1zQklLV
	jqGraRu/pa3/F1x6gqI1FU6qXqg1IZ3xX+elN0OrLcNhtTdJbR/O/MShFeZAT626F3Iqw9FDFJ9ka
	hA81hAS8lpxN/KSxQXM/tffb4ERffKSSrx9hCYvdIW6qsyCAPSPA/xtGL9AMwhJWH0rN+8f3DRO1w
	Ye3O7uPtMxm8P66OdyiCFj/GpPZMCOEGhVQB3cdBBfIonT7EvHVhsH35thUKB//q6ImC/S6hRJLNS
	xwHXU9cU69nmZwSEl8QBaZYIlD9FF8LgeOEHU81dfTLme3w2FHeHWA1ZA8o4YX1LSTRYXnnYj3Xqn
	ueKArkGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYl3d-007uUu-UC; Mon, 28 Mar 2022 08:49:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYl3X-007uTJ-PC
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:48:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYl3W-000872-6o; Mon, 28 Mar 2022 10:48:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYl3V-00053c-Ty; Mon, 28 Mar 2022 10:48:53 +0200
Date: Mon, 28 Mar 2022 10:48:53 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328084853.GI12181@pengutronix.de>
References: <20220321092103.1357659-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220321092103.1357659-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:48:45 up 107 days, 17:34, 85 users,  load average: 0.14, 0.14,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_014856_024355_9E163163 
X-CRM114-Status: GOOD (  25.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/2] ARM: boards: protonic-imx6: add board specific
 BBU SD handlers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 21, 2022 at 10:21:02AM +0100, Oleksij Rempel wrote:
> Add barebox update handler for the SD ports.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/protonic-imx6/board.c | 34 +++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> index adde1be8d9..5ca80bd306 100644
> --- a/arch/arm/boards/protonic-imx6/board.c
> +++ b/arch/arm/boards/protonic-imx6/board.c
> @@ -74,6 +74,7 @@ struct prt_machine_data {
>  	unsigned int i2c_addr;
>  	unsigned int i2c_adapter;
>  	unsigned int emmc_usdhc;
> +	unsigned int sd_usdhc;
>  	unsigned int flags;
>  	int (*init)(struct prt_imx6_priv *priv);
>  };
> @@ -442,6 +443,16 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
>  	if (ret)
>  		goto exit_bbu;
>  
> +	devicefile = basprintf("mmc%d", dcfg->sd_usdhc);
> +	if (!devicefile) {
> +		ret = -ENOMEM;
> +		goto exit_bbu;
> +	}
> +
> +	ret = imx6_bbu_internal_mmc_register_handler("SD", devicefile, 0);
> +	if (ret)
> +		goto exit_bbu;
> +
>  	return 0;
>  exit_bbu:
>  	dev_err(priv->dev, "Failed to register bbu: %pe\n", ERR_PTR(ret));
> @@ -850,6 +861,7 @@ static const struct prt_machine_data prt_imx6_cfg_alti6p[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_EMMC,
>  	}, {
>  		.hw_id = UINT_MAX
> @@ -863,6 +875,7 @@ static const struct prt_machine_data prt_imx6_cfg_victgo[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.init = prt_imx6_init_victgo,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
> @@ -877,6 +890,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1[] = {
>  		.i2c_addr = 0x50,
>  		.i2c_adapter = 1,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
>  		.hw_id = HW_TYPE_VICUT1,
> @@ -884,6 +898,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.init = prt_imx6_init_kvg_yaco,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
> @@ -892,6 +907,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.init = prt_imx6_init_kvg_new,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
> @@ -906,6 +922,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1q[] = {
>  		.i2c_addr = 0x50,
>  		.i2c_adapter = 1,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
>  		.hw_id = HW_TYPE_VICUT1,
> @@ -913,6 +930,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1q[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.init = prt_imx6_init_kvg_yaco,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
> @@ -921,6 +939,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1q[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.init = prt_imx6_init_kvg_yaco,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
> @@ -929,6 +948,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1q[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.init = prt_imx6_init_kvg_new,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
> @@ -943,6 +963,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicutp[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.init = prt_imx6_init_kvg_new,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
> @@ -957,6 +978,7 @@ static const struct prt_machine_data prt_imx6_cfg_lanmcu[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
>  	}, {
>  		.hw_id = UINT_MAX
> @@ -970,6 +992,7 @@ static const struct prt_machine_data prt_imx6_cfg_plybas[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR | PRT_IMX6_USB_LONG_DELAY,
>  	}, {
>  		.hw_id = UINT_MAX
> @@ -983,6 +1006,7 @@ static const struct prt_machine_data prt_imx6_cfg_plym2m[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR | PRT_IMX6_USB_LONG_DELAY,
>  	}, {
>  		.hw_id = UINT_MAX
> @@ -996,6 +1020,7 @@ static const struct prt_machine_data prt_imx6_cfg_prti6g[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 1,
> +		.sd_usdhc = 0,
>  		.init = prt_imx6_init_prti6g,
>  		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
>  	}, {
> @@ -1010,6 +1035,7 @@ static const struct prt_machine_data prt_imx6_cfg_prti6q[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 2,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
>  		.hw_id = HW_TYPE_PRTI6Q,
> @@ -1017,6 +1043,7 @@ static const struct prt_machine_data prt_imx6_cfg_prti6q[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
>  		.hw_id = UINT_MAX
> @@ -1030,6 +1057,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtmvt[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
>  		.hw_id = UINT_MAX
> @@ -1043,6 +1071,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtrvt[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
>  	}, {
>  		.hw_id = UINT_MAX
> @@ -1056,6 +1085,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtvt7[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.init = prt_imx6_init_prtvt7,
>  		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER |
>  			PRT_IMX6_USB_LONG_DELAY,
> @@ -1071,6 +1101,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtwd2[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_EMMC,
>  	}, {
>  		.hw_id = UINT_MAX
> @@ -1084,6 +1115,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtwd3[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 2,
> +		.sd_usdhc = 0,
>  		.flags = PRT_IMX6_BOOTSRC_EMMC,
>  	}, {
>  		.hw_id = UINT_MAX
> @@ -1097,6 +1129,7 @@ static const struct prt_machine_data prt_imx6_cfg_jozacp[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 0,
> +		.sd_usdhc = 2,
>  		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
>  	}, {
>  		.hw_id = HW_TYPE_JOZACPP,
> @@ -1104,6 +1137,7 @@ static const struct prt_machine_data prt_imx6_cfg_jozacp[] = {
>  		.i2c_addr = 0x51,
>  		.i2c_adapter = 0,
>  		.emmc_usdhc = 0,
> +		.sd_usdhc = 2,
>  		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
>  	}, {
>  		.hw_id = UINT_MAX
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


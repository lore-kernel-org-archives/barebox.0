Delivery-date: Tue, 18 Oct 2022 11:05:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okiXj-00CTMH-IT
	for lore@lore.pengutronix.de; Tue, 18 Oct 2022 11:05:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okiXg-0005eq-L1
	for lore@pengutronix.de; Tue, 18 Oct 2022 11:05:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OvUlJGYHOt1ofLVxR/UcBf7Po5CE5fDILZHPsNLU1qY=; b=VweWayQ8P5rKgPstOLW32lk6al
	+LSMAwSn8rRm26843OypEfMw5pXr7gEGLil2qRc1i16pYSh7WGEMLOwMOHvvzSOPZ/TDJPisbjDdS
	BO16MJlMGN9JEjBTXNnqJKUFpZNyYwstNVFA1q04Toowbedfvp798a9UDXGK7NAaPGIao92d2N9Fe
	dfnQAuCIJVZoFqI7mgK61HA3vckNo1B4HvztLr09ZPUwOpzYOr98QSiG81BGZ5x9EvyQSWMSmzsrq
	jZSopyU4vNsGcFtBEnmK1EtQw1B55hfeQJlBPRa/AcZztDvHUgZ2GU3MTqQgaeOWQ9IjiJrMJc0IJ
	nV1oXpMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiWA-004fu9-Nw; Tue, 18 Oct 2022 09:04:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiW2-004fmt-Jg
	for barebox@lists.infradead.org; Tue, 18 Oct 2022 09:04:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiW0-0005Le-Ko; Tue, 18 Oct 2022 11:04:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okiW0-0007aq-Db; Tue, 18 Oct 2022 11:04:00 +0200
Date: Tue, 18 Oct 2022 11:04:00 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221018090400.GO6702@pengutronix.de>
References: <20221017161818.333094-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221017161818.333094-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_020402_674696_B9EC6E22 
X-CRM114-Status: GOOD (  26.19  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH next 1/3] ARM: i.MX8MP: EVK: convert to board driver and
 enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 17, 2022 at 06:18:16PM +0200, Marco Felsch wrote:
> Convert the driver to the board driver mechanism. While on it enable the
> deep-probe support and add a comment about the ENET1_RGMII_EN bit
> setting.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mp-evk/board.c | 21 ++++++++++++++++-----
>  1 file changed, 16 insertions(+), 5 deletions(-)

Applied, thanks

(contrary to what you said I applied it to master)

Sascha

> 
> diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
> index 8f1c247109..57c41aa8d8 100644
> --- a/arch/arm/boards/nxp-imx8mp-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
> @@ -6,6 +6,7 @@
>  #include <asm/memory.h>
>  #include <bootsource.h>
>  #include <common.h>
> +#include <deep-probe.h>
>  #include <init.h>
>  #include <linux/phy.h>
>  #include <linux/sizes.h>
> @@ -14,15 +15,12 @@
>  #include <gpio.h>
>  #include <envfs.h>
>  
> -static int nxp_imx8mp_evk_init(void)
> +static int nxp_imx8mp_evk_probe(struct device_d *dev)
>  {
>  	int emmc_bbu_flag = 0;
>  	int sd_bbu_flag = 0;
>  	u32 val;
>  
> -	if (!of_machine_is_compatible("fsl,imx8mp-evk"))
> -		return 0;
> -
>  	if (bootsource_get() == BOOTSOURCE_MMC) {
>  		if (bootsource_get_instance() == 2) {
>  			of_device_enable_path("/chosen/environment-emmc");
> @@ -39,10 +37,23 @@ static int nxp_imx8mp_evk_init(void)
>  	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
>  	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
>  
> +	/* Enable RGMII TX clk output */
>  	val = readl(MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
>  	val |= MX8MP_IOMUXC_GPR1_ENET1_RGMII_EN;
>  	writel(val, MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
>  
>  	return 0;
>  }
> -coredevice_initcall(nxp_imx8mp_evk_init);
> +
> +static const struct of_device_id nxp_imx8mp_evk_of_match[] = {
> +	{ .compatible = "fsl,imx8mp-evk" },
> +	{ /* Sentinel */ }
> +};
> +BAREBOX_DEEP_PROBE_ENABLE(nxp_imx8mp_evk_of_match);
> +
> +static struct driver_d nxp_imx8mp_evk_board_driver = {
> +	.name = "board-nxp-imx8mp-evk",
> +	.probe = nxp_imx8mp_evk_probe,
> +	.of_compatible = nxp_imx8mp_evk_of_match,
> +};
> +coredevice_platform_driver(nxp_imx8mp_evk_board_driver);
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



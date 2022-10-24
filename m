Delivery-date: Mon, 24 Oct 2022 09:59:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsMq-000PiS-SY
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 09:59:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsMp-0008HQ-SW
	for lore@pengutronix.de; Mon, 24 Oct 2022 09:59:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KQoM2kuxJXpszEwiR5XE90n+7O53KOXN+dEdyOEdOkQ=; b=uijM/Zc/IphQ0SYp3nIKr6RybE
	XD5Ui57czJBnzNMGy6bjAfPDkY/ZzadqgjQxbmoK1kfm0Llc/mxwSNrwm9xdPVU0kbfrQ4yeA/klx
	RAQ3ypoxweMdYlUfw28PQ3qiVX6lYh5i9GdxKx/HwK9Av6uk/rfRxX7kGRuZZUDE8LC2qKVBZFGgS
	6KdO4iR+iv02iPsQsI1sZ0nLr4FGuYSXyS10wNTEsRrpcsWT3PtO3CNna28mezfeLjC1J/Dmi5w3q
	pyYhkcmBo7G4pr6AtB7PeSYsAEmdI9gChaQ+QRjIYd34oTo3Rz4GPsPyZFDpU13hI+M37RPVAYLZt
	VXPglV+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsLc-00HaDt-7V; Mon, 24 Oct 2022 07:58:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsLY-00HaCy-2G
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 07:58:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1omsLW-00083l-Qz; Mon, 24 Oct 2022 09:58:06 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1omsLW-0002Z9-K8; Mon, 24 Oct 2022 09:58:06 +0200
Date: Mon, 24 Oct 2022 09:58:06 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221024075806.7awd7guvy7mgz2oc@pengutronix.de>
References: <20221024063636.2150155-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221024063636.2150155-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_005808_120992_DF799A96 
X-CRM114-Status: GOOD (  18.18  )
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
Subject: Re: [PATCH 1/2] ARM: imx8mm-evk: Switch to deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 22-10-24, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mm-evk/board.c | 24 +++++++++++++++++++-----
>  1 file changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
> index 6e4df60065..3f14c05da1 100644
> --- a/arch/arm/boards/nxp-imx8mm-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
> @@ -8,6 +8,7 @@
>  #include <linux/phy.h>
>  #include <linux/sizes.h>
>  #include <mach/bbu.h>
> +#include <deep-probe.h>
>  
>  #include <envfs.h>
>  
> @@ -30,14 +31,11 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
>  	return 0;
>  }
>  
> -static int nxp_imx8mm_evk_init(void)
> +static int imx8mm_evk_probe(struct device_d *dev)
>  {
>  	int emmc_bbu_flag = 0;
>  	int sd_bbu_flag = 0;
>  
> -	if (!of_machine_is_compatible("fsl,imx8mm-evk"))
> -		return 0;
> -
>  	barebox_set_hostname("imx8mm-evk");
>  
>  	if (bootsource_get() == BOOTSOURCE_MMC) {
> @@ -60,4 +58,20 @@ static int nxp_imx8mm_evk_init(void)
>  				   ar8031_phy_fixup);
>  	return 0;
>  }
> -device_initcall(nxp_imx8mm_evk_init);
> +
> +static const struct of_device_id imx8mm_evk_of_match[] = {
> +	{
> +		.compatible = "fsl,imx8mm-evk",
> +	},
> +	{ /* sentinel */ },

Nit: No comma needed after this entry.

> +};
> +
> +

One to much.

> +static struct driver_d imx8mm_evk_board_driver = {
> +	.name = "board-imx8mm-evk",
> +	.probe = imx8mm_evk_probe,
> +	.of_compatible = imx8mm_evk_of_match,
> +};
> +coredevice_platform_driver(imx8mm_evk_board_driver);
> +
> +BAREBOX_DEEP_PROBE_ENABLE(imx8mm_evk_of_match);
> -- 
> 2.30.2
> 
> 
> 



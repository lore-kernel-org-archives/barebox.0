Delivery-date: Thu, 04 Mar 2021 12:17:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHlyw-00016H-40
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 12:17:26 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHlyv-0006Ut-Ax
	for lore@pengutronix.de; Thu, 04 Mar 2021 12:17:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3kFsgFn2nHNOJGZW2X69wmRoYQTUavpfjtz2el8BzfY=; b=pH1L60HxNMeSmiSuL9Uwxj54r
	uP2zGgpbYoLqygo8YizBEDgEX6+UROPA4SToxCfCm8BNvqOZAFNyxgwKK6hhEu7biw7txHn4v5l2u
	d7l9/8u18hMmZYCYiHan/aWbLiRP56y1FcEcOez1VM9/dWQN8H97Ct/G7eucRW8JmZukqllG5GCev
	j9xp1yycDz7XQEPZaQJh3mEPNUjtCeHyFChiQlmf10DEiK0O4kcnqYLQ3xDAlBb9iGNLEwUODDLXS
	HmuANVPZdcnuC+uhZlCIKlo9afACq8GT6QeoY2qiM8wkCAd+NkLzN8B2vygysc5peuzCoXBwF81s3
	WboWxJMGQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHlxo-008R1x-C2; Thu, 04 Mar 2021 11:16:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHlvt-008QpJ-BG
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 11:15:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHlvs-00061y-Sd; Thu, 04 Mar 2021 12:14:16 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHlvs-0006n9-Em; Thu, 04 Mar 2021 12:14:16 +0100
Date: Thu, 4 Mar 2021 12:14:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210304111416.GC12944@pengutronix.de>
References: <20210304063258.16080-1-user@vserver64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210304063258.16080-1-user@vserver64>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:14:08 up 14 days, 14:38, 80 users,  load average: 0.12, 0.20, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: bbu: fix variable name to used semantic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 04, 2021 at 06:32:58AM +0000, Alexander Kurz wrote:
> From: Alexander Kurz <akurz@blala.de>
> 
> Both flags handle BBU behavior and should be bbu_flags.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/boards/nxp-imx8mm-evk/board.c | 6 +++---
>  arch/arm/boards/nxp-imx8mp-evk/board.c | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
> index 2603a2ab0..6e4df6006 100644
> --- a/arch/arm/boards/nxp-imx8mm-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
> @@ -33,7 +33,7 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
>  static int nxp_imx8mm_evk_init(void)
>  {
>  	int emmc_bbu_flag = 0;
> -	int emmc_sd_flag = 0;
> +	int sd_bbu_flag = 0;
>  
>  	if (!of_machine_is_compatible("fsl,imx8mm-evk"))
>  		return 0;
> @@ -46,14 +46,14 @@ static int nxp_imx8mm_evk_init(void)
>  			emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
>  		} else {
>  			of_device_enable_path("/chosen/environment-sd");
> -			emmc_sd_flag = BBU_HANDLER_FLAG_DEFAULT;
> +			sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
>  		}
>  	} else {
>  		of_device_enable_path("/chosen/environment-emmc");
>  		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
>  	}
>  
> -	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", emmc_sd_flag);
> +	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
>  	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
>  
>  	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
> diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
> index f64f46681..a3ff59810 100644
> --- a/arch/arm/boards/nxp-imx8mp-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
> @@ -17,7 +17,7 @@
>  static int nxp_imx8mp_evk_init(void)
>  {
>  	int emmc_bbu_flag = 0;
> -	int emmc_sd_flag = 0;
> +	int sd_bbu_flag = 0;
>  	u32 val;
>  
>  	if (!of_machine_is_compatible("fsl,imx8mp-evk"))
> @@ -29,14 +29,14 @@ static int nxp_imx8mp_evk_init(void)
>  			emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
>  		} else {
>  			of_device_enable_path("/chosen/environment-sd");
> -			emmc_sd_flag = BBU_HANDLER_FLAG_DEFAULT;
> +			sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
>  		}
>  	} else {
>  		of_device_enable_path("/chosen/environment-emmc");
>  		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
>  	}
>  
> -	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", emmc_sd_flag);
> +	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
>  	imx8m_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
>  
>  	val = readl(MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
> -- 
> 2.20.1
> 
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


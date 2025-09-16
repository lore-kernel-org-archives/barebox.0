Delivery-date: Tue, 16 Sep 2025 11:39:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyS9h-003e0g-2u
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 11:39:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyS9h-00063M-8a
	for lore@pengutronix.de; Tue, 16 Sep 2025 11:39:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tjVOM/6bpFwB/nBwg4ExqstO6gCA1ypaaynE/J9qQZ0=; b=GPzeIgUNY7lpbsF6fcazJkDhhw
	o8qECBbd4NQm9VP8WGjMTEmdXEWrtcZhD4yFW7kL3amzeQDz6//zn2Oo6TzXA92Jf1aAM8HNxbw4U
	kwOSFP+O7etg94CItm/V2PhZL3/7uIKNotBWTAOuM10cJNhJOdeeEzojP2jAZMPxOFLN3Om66voqm
	oDetivJkgj55bOMO7Ii+3xmQI97mRYCud0XYm2fZ6ug5Wvs4Pd1rTiP+bRb+NqpcHXJ8IxRQdciFR
	mmvtHDfZAMoztetNeTNuj+JCnXLUZ4aOiGbPQPr0WSzYkMMDpSqmYoh7+B2IU22EzWt+b4CRQnSIx
	Lcqq5VuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyS9E-00000007PHj-1Flk;
	Tue, 16 Sep 2025 09:38:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyS9C-00000007PGV-26d9
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 09:38:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uyS9B-0005tn-1F; Tue, 16 Sep 2025 11:38:49 +0200
Message-ID: <48b12f11-a204-4aeb-9db3-dbc11b49f8ea@pengutronix.de>
Date: Tue, 16 Sep 2025 11:38:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250916093237.712407-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250916093237.712407-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_023850_546430_1F89F59A 
X-CRM114-Status: GOOD (  24.69  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: treewide: Do not use NULL as driver_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 9/16/25 11:32 AM, Sascha Hauer wrote:
> Several drivers in the tree use an enum for the chip type casted to int
> as driver_data. This comes with the problem that device_get_match_data()
> returns NULL for these devices and a potential error check bails out
> then.
> 
> This patch changes the enums used by the drivers to start from 1 instead
> of 0 so that the return value of device_get_match_data() can safely
> checked for being NULL.
> 
> Most drivers do not check the return value anyway, but fec_imx.c does
> which causes the driver to no longer work on i.MX27. This issue is fixed
> here.

If they don't check the return value, why bother changing it and risk a
regression?

Thanks,
Ahmad

> 
> Fixes: Fixes: 20d87123a6 ("treewide: replace dev_get_drvdata with device_get_match_data")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/nand/raw/nand_mxs.c | 2 +-
>  drivers/net/fec_imx.h           | 2 +-
>  drivers/net/fsl-fman.c          | 2 +-
>  drivers/regulator/fan53555.c    | 2 +-
>  include/linux/mfd/axp20x.h      | 2 +-
>  include/mfd/bd71837.h           | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_mxs.c b/drivers/mtd/nand/raw/nand_mxs.c
> index 02f8546b87..4293f4e0e0 100644
> --- a/drivers/mtd/nand/raw/nand_mxs.c
> +++ b/drivers/mtd/nand/raw/nand_mxs.c
> @@ -38,7 +38,7 @@
>  #include "internals.h"
>  
>  enum gpmi_type {
> -	GPMI_MXS,
> +	GPMI_MXS = 1,
>  	GPMI_IMX6,
>  };
>  
> diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
> index 1aaff87fdd..33b8db2745 100644
> --- a/drivers/net/fec_imx.h
> +++ b/drivers/net/fec_imx.h
> @@ -114,7 +114,7 @@ struct buffer_descriptor {
>  };
>  
>  enum fec_type {
> -	FEC_TYPE_IMX27,
> +	FEC_TYPE_IMX27 = 1,
>  	FEC_TYPE_IMX28,
>  	FEC_TYPE_IMX6,
>  };
> diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
> index bde054d751..ac716c7468 100644
> --- a/drivers/net/fsl-fman.c
> +++ b/drivers/net/fsl-fman.c
> @@ -123,7 +123,7 @@ struct fsl_fman_mdio {
>  };
>  
>  enum fman_port_type {
> -	FMAN_PORT_TYPE_RX = 0,	/* RX Port */
> +	FMAN_PORT_TYPE_RX = 1,	/* RX Port */
>  	FMAN_PORT_TYPE_TX,	/* TX Port */
>  };
>  
> diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
> index 2dcc6f5394..7477543915 100644
> --- a/drivers/regulator/fan53555.c
> +++ b/drivers/regulator/fan53555.c
> @@ -44,7 +44,7 @@ enum {
>  };
>  
>  enum fan53555_vendor {
> -	FAN53526_VENDOR_FAIRCHILD = 0,
> +	FAN53526_VENDOR_FAIRCHILD = 1,
>  	FAN53555_VENDOR_FAIRCHILD,
>  	FAN53555_VENDOR_ROCKCHIP,	/* RK8600, RK8601 */
>  	RK8602_VENDOR_ROCKCHIP,		/* RK8602, RK8603 */
> diff --git a/include/linux/mfd/axp20x.h b/include/linux/mfd/axp20x.h
> index 93d303c459..0ba4568faf 100644
> --- a/include/linux/mfd/axp20x.h
> +++ b/include/linux/mfd/axp20x.h
> @@ -11,7 +11,7 @@
>  #include <poweroff.h>
>  
>  enum axp20x_variants {
> -	AXP152_ID = 0,
> +	AXP152_ID = 1,
>  	AXP202_ID,
>  	AXP209_ID,
>  	AXP221_ID,
> diff --git a/include/mfd/bd71837.h b/include/mfd/bd71837.h
> index 4e285a647a..ab4cc57c88 100644
> --- a/include/mfd/bd71837.h
> +++ b/include/mfd/bd71837.h
> @@ -7,7 +7,7 @@
>  #define BD718XX_REGULATOR_DRIVER "bd718x7_regulator"
>  
>  enum {
> -	ROHM_CHIP_TYPE_BD71837 = 0,
> +	ROHM_CHIP_TYPE_BD71837 = 1,
>  	ROHM_CHIP_TYPE_BD71847,
>  	ROHM_CHIP_TYPE_BD70528,
>  	ROHM_CHIP_TYPE_AMOUNT

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




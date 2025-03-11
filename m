Delivery-date: Tue, 11 Mar 2025 12:03:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trxOf-00Ce7a-0t
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 12:03:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trxOe-0008RM-2C
	for lore@pengutronix.de; Tue, 11 Mar 2025 12:03:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rtcx/vZgVUBz6uRDNwet8m2LlWXmh17Z8jikdW/juZc=; b=bM0qQ95AIcWssxSUwLucZQ43Od
	+MgiaB2W2BNA41oODEX9K8j0O/OCYoxv19mAnhfdy9+Ohtaua8xdQbVMDkaaLDVhk1Hzf4hKMGX74
	zfqyiZWb2NtLx1HuoMGCQ+snu4fle6Xox2GegK9LFg5ox8m+LMgOq+IqYu734yPyaSXhTBVxwmnUF
	ROO9xsjN3MHqGMl9gSdC0ZHEp1w8xgNByrOMo1JQ4oDxwGMwnk2+v6leqgMMNTDLO+LMMa7DDgeVx
	O1biqyIqv88zzOkUGrP0MqfYCLI5WO1ufvnnWcSrAcObDMd0NViO52t1u6ER/zWexb2pc62Y5Wfrh
	J2H2GvBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trxOC-00000005PW2-3Dd4;
	Tue, 11 Mar 2025 11:03:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trxO9-00000005PUO-06sx
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 11:03:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1trxO7-0008Hw-Md; Tue, 11 Mar 2025 12:03:07 +0100
Message-ID: <f6277af8-56a9-4327-a299-d2e2d39cbc1a@pengutronix.de>
Date: Tue, 11 Mar 2025 12:03:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
 <20250311-pca9450-wdog-v1-2-45120abeae00@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250311-pca9450-wdog-v1-2-45120abeae00@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_040309_066775_A2EF85D5 
X-CRM114-Status: GOOD (  13.98  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: boards: remove obsolete PCA9450_RESET_CTRL setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/11/25 11:50, Jonas Rebmann wrote:
> Since a previous commit, PCA9450_RESET_CTRL is initialized to 0xA1 in
> pca9450_probe; explicitly setting this in board.c has no effect anymore.

Note that there is a number of i.MX8M boards that also use the PCA9450
and configure 0xA1 into PCA9450_RESET_CTRL in their lowlevel.c.

Any particular reason against or for dropping the configuration there?

Thanks,
Ahmad

> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  arch/arm/boards/phytec-phycore-imx93/board.c | 9 ---------
>  arch/arm/boards/tqma93xx/board.c             | 3 ---
>  2 files changed, 12 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-phycore-imx93/board.c b/arch/arm/boards/phytec-phycore-imx93/board.c
> index 149248ca654624826d0e8f6fe0f1f42c2747e248..03ba8cb5026d2a9eaa054fcfc69e18872fcd658e 100644
> --- a/arch/arm/boards/phytec-phycore-imx93/board.c
> +++ b/arch/arm/boards/phytec-phycore-imx93/board.c
> @@ -6,23 +6,14 @@
>  #include <init.h>
>  #include <linux/kernel.h>
>  #include <environment.h>
> -#include <mfd/pca9450.h>
>  #include <deep-probe.h>
>  #include <mach/imx/bbu.h>
>  #include <linux/pinctrl/consumer.h>
>  
> -static void phycore_imx93_init_pmic(struct regmap *map)
> -{
> -	/* set WDOG_B_CFG to cold reset */
> -	regmap_write(map, PCA9450_RESET_CTRL, 0xA1);
> -}
> -
>  static int phycore_imx93_probe(struct device *dev)
>  {
>  	struct device_node *np;
>  
> -	pca9450_register_init_callback(phycore_imx93_init_pmic);
> -
>  	/*
>  	 * The phy on the EQOS has its MDIO lines connected to the FEC. The phy
>  	 * registers can only be successfully read when the EQOS pinctrl setup
> diff --git a/arch/arm/boards/tqma93xx/board.c b/arch/arm/boards/tqma93xx/board.c
> index b181784079cf12e5a112d13f95c87c2cf5ebeba6..b4de6c2f6c347cb255537a3784a667a9c2607de3 100644
> --- a/arch/arm/boards/tqma93xx/board.c
> +++ b/arch/arm/boards/tqma93xx/board.c
> @@ -27,9 +27,6 @@ static void tqma93xx_init_pmic(struct regmap *map)
>  
>  	/* I2C_LT_EN*/
>  	regmap_write(map, 0xa, 0x3);
> -
> -	/* set WDOG_B_CFG to cold reset */
> -	regmap_write(map, PCA9450_RESET_CTRL, 0xA1);
>  }
>  
>  static int tqma93xx_probe(struct device *dev)
> 




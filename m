Delivery-date: Wed, 08 Feb 2023 08:57:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfKm-000LwI-Qe
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 08:57:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfKk-0002Vz-2X
	for lore@pengutronix.de; Wed, 08 Feb 2023 08:57:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eROyGhSSpU945LaLVoatN3FV4kkUuc1u5lNM6UMxYXo=; b=psq94t++SUfEaHNToVFYCEbhVu
	IgSaxviusx2JX32hadAIN36ar6Ak2QHrFJ5wKFryNMyGD/JCttC4k1Rskl5QjO1fjSYFoxlMGWSHG
	xYbv5mXXLd9lxXyPiStfbD6a2Z0Johu0oYzW8ji6KBhF6fF0SvDfn8Lyun8ecNVB2IBAHAE44xuOC
	elTXJ8ba2fSKPksf//JSNmhXpAd21iNthHFyQstLmWBYupiO/RQVg3PMgDejpadFJ/nBmd2ls1HZ1
	FK976cpPtpdSAERNap7iwMYd/Jwgu6voR8zWWAZQTf2gaFidXC2jRbhPjt/VXli4TZl53cffDM18u
	QFXP7PmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfJB-00EVFG-7c; Wed, 08 Feb 2023 07:56:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfJ5-00EVEf-V3
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 07:55:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPfJ0-00025W-FH; Wed, 08 Feb 2023 08:55:50 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPfJ0-00010c-7V; Wed, 08 Feb 2023 08:55:50 +0100
Date: Wed, 8 Feb 2023 08:55:50 +0100
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230208075550.GI10447@pengutronix.de>
References: <20230206205928.627270-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230206205928.627270-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_235556_017369_3114BBDE 
X-CRM114-Status: GOOD (  21.70  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP-EVK: increase VDD_ARM to OD voltage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 06, 2023 at 09:59:28PM +0100, Lucas Stach wrote:
> The Linux kernel or whatever is started from Barebox might switch the
> ARM frequency to OD level, without first reprogramming the PMIC as
> required. This might lead to system instability. To avoid this,
> increase VDD_ARM to OD level. When the kernel handles the PMIC properly
> it will drop the voltage back to ND level when appropriate.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mp-evk/lowlevel.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> index 3cb24df1ca3f..d6fc32e65b61 100644
> --- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> @@ -61,6 +61,12 @@ static struct pmic_config pca9450_cfg[] = {
>  	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
>  	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
>  	{ PCA9450_BUCK1CTRL, 0x59 },
> +	/*
> +	 * Increase VDD_ARM to 0.95V to avoid issues in case software after
> +	 * Barebox switches to the OD ARM frequency without reprogramming the
> +	 * PMIC first.
> +	 */
> +	{ PCA9450_BUCK2OUT_DVS0, 0x1C },
>  	/* set WDOG_B_CFG to cold reset */
>  	{ PCA9450_RESET_CTRL, 0xA1 },
>  };
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



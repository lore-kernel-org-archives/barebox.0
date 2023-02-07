Delivery-date: Tue, 07 Feb 2023 10:56:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPKi2-00GtZw-CR
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 10:56:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPKhz-0005SK-Mu
	for lore@pengutronix.de; Tue, 07 Feb 2023 10:56:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RGceKyZfLw1Q5SayCjR0+bUnawSXTRRUfFtSOZMDWwc=; b=1EaXF/mUYi9CY53SOmA3jnGkdu
	ZIaybaBYuYvSPum5+AQLR0kYI1uGrL8YP84e0p/i9usoMymdJD9j1zMXxE8T9CPRcO/JJhh9Xdqev
	EPjB2H9t1DnH0b8H7zNkGsxjjsF+c+9MxbOitgQJx2AHqrQiiZdSWNtbWO7NhNWdLjNU9ealrMbdW
	MjHeS7einSUf2mjom0WSbS4i2YBLoGK1eU7lhuQ8gbPJUgXIYooPhVJ009y1L8Z9g6ubOoyrnk/qs
	4U2tgTgzVqJFbROvCOalgS7en8AgKjv2VBG1MgpGAJPUIY00wMX9fj8PGYIGMzV6BzVXh/Tpq6MWz
	pKfHYieg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPKgM-00Bara-LR; Tue, 07 Feb 2023 09:54:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPKgH-00BapB-I2
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 09:54:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pPKgA-00055e-Fq; Tue, 07 Feb 2023 10:54:22 +0100
Message-ID: <5cfc32b4-21d1-35fd-eb33-037471dd1960@pengutronix.de>
Date: Tue, 7 Feb 2023 10:54:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org
References: <20230206205928.627270-1-l.stach@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230206205928.627270-1-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_015429_625899_7E536F18 
X-CRM114-Status: GOOD (  22.37  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP-EVK: increase VDD_ARM to OD voltage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lucas,

On 06.02.23 21:59, Lucas Stach wrote:
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

We use the same PMIC on nxp-imx8mn-evk and newer nxp-imx8mm-evk
as well. Should we do this there too? Do we need to change something
for the i.MX8M boards using Rohm PMICs?

>  	/* set WDOG_B_CFG to cold reset */
>  	{ PCA9450_RESET_CTRL, 0xA1 },
>  };

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




Delivery-date: Tue, 24 Jan 2023 09:30:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKEhD-000I4G-MC
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 09:30:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKEhA-0007no-TM
	for lore@pengutronix.de; Tue, 24 Jan 2023 09:30:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+5sJsF5RYBxCWwMYulb9ESez41o0B/0JRuLlI8ORk2c=; b=m2ZUw7iABDC317vSclV3YZKX/u
	mtEwaOug/nwdVkMwmgahLDFQzxQkPS1rc7KSvtdRngSp3CAJGh0tEdmCuQ3kkWqySFLA8XWMFsF0X
	4bjm7MLk4PpuP+GjsFvTqbndeRx0XtoLY3mwZ77XXEiW6fybNxmKlhrBb0IqYq23Yjbgf7aPCvppJ
	hZF0Fb70uRgKAoU+LXdmvPODdMcQxoN2LoOzv6swCIHCeT+93pp7q/qk5cZNgY7taliUmBch7HVRW
	DkUeDeaqKOm+VxcY8QaTWYjv0lrnm3ju2jAEhEZyf3HYwjeMk/adHwlFgxFnNnxXN3tv0dsbcIjr8
	LsDZxOmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKEg1-002kS6-Co; Tue, 24 Jan 2023 08:29:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKEfw-002kQq-Jh
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 08:29:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pKEfv-0007bf-AE; Tue, 24 Jan 2023 09:29:03 +0100
Message-ID: <eb9bd043-b6ee-4338-ac56-4f7836cecd04@pengutronix.de>
Date: Tue, 24 Jan 2023 09:29:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: John Watts <contact@jookia.org>, barebox@lists.infradead.org
References: <20230123201817.1084728-1-contact@jookia.org>
 <20230123201817.1084728-2-contact@jookia.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230123201817.1084728-2-contact@jookia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_002904_673280_0914249C 
X-CRM114-Status: GOOD (  24.48  )
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
Subject: Re: [PATCH 2/2] imx6-mmdc: Revert calibration configuration on
 failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23.01.23 21:18, John Watts wrote:
> When calibration fails it will clobber the existing configuration,
> even if the configuration was working but not ideal.
> 
> Reverting calibration from a known bad value to a possibly good value
> gives a better chance of the memory working.
> 
> I've tested this on the Novena board and had good success with it.
> U-Boot implements a similar solution in its write level calibration.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  arch/arm/mach-imx/imx6-mmdc.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
> index 908771626a..0d50b39566 100644
> --- a/arch/arm/mach-imx/imx6-mmdc.c
> +++ b/arch/arm/mach-imx/imx6-mmdc.c
> @@ -25,11 +25,18 @@ static bool wlcalib_failed(void __iomem *ips)
>  
>  int mmdc_do_write_level_calibration(void)
>  {
> +	u32 ldectrl[4] = {0};

Initial value never read back.

>  	u32 esdmisc_val, zq_val;
>  	int errorcount = 0;
>  	u32 val;
>  	u32 ddr_mr1 = 0x4;
>  
> +	/* Store current calibration data in case of failure */
> +	ldectrl[0] = readl(P0_IPS + MPWLDECTRL0);
> +	ldectrl[1] = readl(P0_IPS + MPWLDECTRL1);
> +	ldectrl[2] = readl(P1_IPS + MPWLDECTRL0);
> +	ldectrl[3] = readl(P1_IPS + MPWLDECTRL1);
> +
>  	/* disable DDR logic power down timer */
>  	val = readl((P0_IPS + MDPDC));
>  	val &= 0xffff00ff;
> @@ -69,8 +76,14 @@ int mmdc_do_write_level_calibration(void)
>  	while (readl(P0_IPS + MPWLGCR) & 0x00000001);
>  
>  	/* check for any errors on both PHYs */
> -	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS))
> +	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS)) {
> +		pr_debug("Calibration failed, rolling back calibration data\n");

Still you only restore P0 calibration data, even if it succeeded,
but P1 failed. Is this intended?

> +		writel(ldectrl[0], P0_IPS + MPWLDECTRL0);
> +		writel(ldectrl[1], P0_IPS + MPWLDECTRL1);
> +		writel(ldectrl[2], P1_IPS + MPWLDECTRL0);
> +		writel(ldectrl[3], P1_IPS + MPWLDECTRL1);
>  		errorcount++;
> +	}
>  
>  	pr_debug("Write leveling calibration completed\n");
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




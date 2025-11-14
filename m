Delivery-date: Fri, 14 Nov 2025 17:23:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJwa0-000y2F-1o
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 17:23:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJwZz-0005Ki-TZ
	for lore@pengutronix.de; Fri, 14 Nov 2025 17:23:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hIrPtDCeO9VhhKIkvG0tuj1qcnWytLRJgBuIIoRhqS0=; b=nfadEmnRBaW2ufDAseuvziDPOy
	RTi01QOaOGXqCobWZleFggHnC+/z7WIYIEq3kGKGGSIRSghFW49/1Oz6Citr9znJXf2l7s335vcUD
	VNB0q5fiFwWWrSLYnjhlrT0n6vhRGc9wwE9e8BXP6LR32Ht9Aqo7rtzF8AqSHjCYqhLn21cxXHbpe
	oo5sZx1CC5soNYska6sBE1aDyJe4AY/b4fZR4LVvamD5SlPa4t40Dp2KKzICy7eEeJRWug2yA30SV
	BnnD+WCwVEFcL8nzUvrhH4lNSqZevUD3hfctycFqMOxXjaUDSzWYKZJCfNDH7ocGng1KwrisplJAk
	3eWWJ5lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJwYz-0000000CjRH-0Lvt;
	Fri, 14 Nov 2025 16:22:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJwYw-0000000CjQY-3pVg
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 16:22:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vJwYv-00059f-AH; Fri, 14 Nov 2025 17:22:13 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vJwYv-000SAG-0P;
	Fri, 14 Nov 2025 17:22:13 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vJwYv-002kFW-05;
	Fri, 14 Nov 2025 17:22:13 +0100
Date: Fri, 14 Nov 2025 17:22:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20251114162213.tweck3zgcgot3t6t@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
 <20251113-soc-uid-v1-2-29a256e07144@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113-soc-uid-v1-2-29a256e07144@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_082214_953758_C7A1D7BD 
X-CRM114-Status: GOOD (  28.20  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/9] soc: imx8mp: Soc ID is 128bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 25-11-13, Sascha Hauer wrote:
> On i.MX8MP the SoC ID has 128 bits instead of 64 bits as on other i.MX8M
> SoCs. Read the remaining 64 bits which so far haven't been included in
> the SoC ID.

Linux fixed this as well in a non-backward compatible way. Don't get me
wrong this is the correct fix and we should fix it, but this change will
certainly influence in-field systems badly which rely on the the current
behavior e.g. to set the `systemd.machine` or which make use of the UID
to construct a hostname which is later on passed to the kernel cmdline
via `systemd.hostname`.

These systems now need to revert this change to archieve the same system
behavior. Can we add a Kconfig option or some function which can set the
soc_uid limit to keep these systems working.

Regards,
  Marco

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/soc/imx/soc-imx8m.c | 33 +++++++++++++++++++++++----------
>  1 file changed, 23 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
> index 3b83284fcbfd56d543cc300b8d42771202aa0bbb..b17f088ad04f3afbf06b823caaaefc1b19f664ea 100644
> --- a/drivers/soc/imx/soc-imx8m.c
> +++ b/drivers/soc/imx/soc-imx8m.c
> @@ -48,7 +48,7 @@ struct imx8_soc_data {
>  	void (*save_boot_loc)(void);
>  };
>  
> -static u64 soc_uid;
> +static u64 soc_uid[2];
>  
>  #ifdef CONFIG_HAVE_ARM_SMCCC
>  static u32 imx8mq_soc_revision_from_atf(void)
> @@ -99,9 +99,9 @@ static u32 __init imx8mq_soc_revision(void)
>  			rev = REV_B1;
>  	}
>  
> -	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
> -	soc_uid <<= 32;
> -	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
> +	soc_uid[0] = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
> +	soc_uid[0] <<= 32;
> +	soc_uid[0] |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
>  
>  	/* Keep the OCOTP clk on for the TF-A else the CPU stuck */
>  	of_node_put(np);
> @@ -109,13 +109,16 @@ static u32 __init imx8mq_soc_revision(void)
>  	return rev;
>  }
>  
> +#define IMX8MP_OCOTP_UID_2_LOW	0xe00
> +#define IMX8MP_OCOTP_UID_2_HIGH	0xe10
> +
>  static void __init imx8mm_soc_uid(void)
>  {
>  	void __iomem *ocotp_base;
>  	struct device_node *np;
>  	struct clk *clk;
> -	u32 offset = of_machine_is_compatible("fsl,imx8mp") ?
> -		     IMX8MP_OCOTP_UID_OFFSET : 0;
> +	bool is_imx8mp = of_machine_is_compatible("fsl,imx8mp");
> +	u32 offset = is_imx8mp ? IMX8MP_OCOTP_UID_OFFSET : 0;
>  
>  	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-ocotp");
>  	if (!np)
> @@ -131,9 +134,15 @@ static void __init imx8mm_soc_uid(void)
>  
>  	clk_prepare_enable(clk);
>  
> -	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
> -	soc_uid <<= 32;
> -	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
> +	soc_uid[0] = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
> +	soc_uid[0] <<= 32;
> +	soc_uid[0] |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
> +
> +	if (is_imx8mp) {
> +		soc_uid[1] = readl_relaxed(ocotp_base + IMX8MP_OCOTP_UID_2_HIGH);
> +		soc_uid[1] <<= 32;
> +		soc_uid[1] |= readl_relaxed(ocotp_base + IMX8MP_OCOTP_UID_2_LOW);
> +	}
>  
>  	/* Keep the OCOTP clk on for the TF-A else the CPU stuck */
>  	of_node_put(np);
> @@ -265,7 +274,11 @@ static int __init imx8_soc_init(void)
>  		goto free_soc;
>  	}
>  
> -	soc_dev_attr->serial_number = xasprintf("%016llX", soc_uid);
> +	if (soc_uid[1])
> +		soc_dev_attr->serial_number = xasprintf("%016llX%016llX",
> +							soc_uid[1], soc_uid[0]);
> +	else
> +		soc_dev_attr->serial_number = xasprintf("%016llX", soc_uid[0]);
>  	if (!soc_dev_attr->serial_number) {
>  		ret = -ENOMEM;
>  		goto free_rev;
> 
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



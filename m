Delivery-date: Thu, 12 Jan 2023 13:58:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFx9u-009nmQ-Dr
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 13:58:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFx9s-00047o-Ap
	for lore@pengutronix.de; Thu, 12 Jan 2023 13:58:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EUfcAPEVFcLtVrNxIfQpcRjeVNyHSqvU/BghttksLF8=; b=Jk/iSKdRIMVq9iyXKaGc44KFrz
	QXthbtkEAjeJoAje/mnnvoJYsk5x/KtGgcKD11oSMxjpt2pcWJhN37uUHQghF1u5IkSqZwg4HtIvd
	fedi9EAy2Vg05NmMJLhRdjYHX+wGarxqmhgn8AGoyyp4uhfWJh/GSY4whYLIIC35Gw2olxAP6bMvT
	U7dTf9uiMfXwAnB6Nbbs9YOKHWcZz0/krCLsWv8d89W8LIfFwFWL/Mjpe2Dff8itldPyp8IQdgo9a
	6Y2lP33slhlpaAD/I+7Xwc30OkUmskAjSX/xrSmOiAdEvCJuf58ncZaJTQbbTEi/d9AxGiDDijmf5
	x8kVX3YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8V-00F3u8-72; Thu, 12 Jan 2023 12:56:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8O-00F3r6-Ny
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 12:56:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pFx8N-0003YF-Eo; Thu, 12 Jan 2023 13:56:43 +0100
Message-ID: <e5b08ccf-0282-ae00-9675-e0ab3309eeab@pengutronix.de>
Date: Thu, 12 Jan 2023 13:56:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
References: <20230112081530.2684687-1-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230112081530.2684687-1-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_045644_856990_B3BDD04C 
X-CRM114-Status: GOOD (  21.79  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all
 imx8m variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Johannes,

On 12.01.23 09:15, Johannes Schneider wrote:
> By adding a common config switch, the imx8m_init code becomes generic
> for all board variants (and slightly less confusing).
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> 
> ---
> v4: add missing common switch
> 
> v3: redid patch with suggested common config switch

I am fine with either current_el() check or what you do here,
but given that you switched between them in revisions, I am
curious what the reasoning is.

Cheers,
Ahmad

> 
> v2: was:
> [PATCH v2 1/1] ARM: i.MX8M: smccc: fix firmware_atf check
> 
> v1: or'ed all IS_ENABLED(FIRMWARE_IMX8M[mnpq]_ATF
> ---
>  arch/arm/mach-imx/imx8m.c | 2 +-
>  firmware/Kconfig          | 7 +++++++
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index 9758525b54..4399dc7dd5 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -61,7 +61,7 @@ static int imx8m_init(const char *cputypestr)
>  	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
>  
>  	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
> -	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
> +	    IS_ENABLED(CONFIG_FIRMWARE_IMX8M_ATF)) {
>  		arm_smccc_smc(IMX_SIP_BUILDINFO,
>  			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
>  			      0, 0, 0, 0, 0, 0, &res);
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index b4a6fd9137..09ad85c539 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -12,17 +12,24 @@ config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  config FIRMWARE_IMX_DDR4_PMU_TRAIN
>         	bool
>  
> +config FIRMWARE_IMX8M_ATF
> +	bool
> +
>  config FIRMWARE_IMX8MM_ATF
>          bool
> +	select FIRMWARE_IMX8M_ATF

Your whitespacing are ok, but I see now that the file has
a mix of whitespace and tabs. I just sent out a patch for
this.

Cheers,
Ahmad

>  
>  config FIRMWARE_IMX8MN_ATF
>          bool
> +	select FIRMWARE_IMX8M_ATF
>  
>  config FIRMWARE_IMX8MP_ATF
>          bool
> +	select FIRMWARE_IMX8M_ATF
>  
>  config FIRMWARE_IMX8MQ_ATF
>          bool
> +	select FIRMWARE_IMX8M_ATF
>  
>  config FIRMWARE_CCBV2_OPTEE
>  	bool

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




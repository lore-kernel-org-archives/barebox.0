Delivery-date: Fri, 08 Nov 2024 13:08:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Nml-006JRf-1P
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 13:08:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Nmm-0006Sb-3b
	for lore@pengutronix.de; Fri, 08 Nov 2024 13:08:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xr0g7ErhpJev0wNH5ZdLDQRsD0eOBwEd228qZKd+Xho=; b=1RsMFlrJaeELW5ZCK7iYi7GJAk
	jUGsVgmgiNfZdXT2hb0GOC9G4cvXtTtyFvMKBYAaUYnqUwukCzSuRMXuZGtGc8XWhj1m6BQ2074Ka
	3rnf5bUAA52kM54E/mwP6xrmQ1dKg95+YJ+HK7mHrikfgt48dAuRV0/+doGiVWwePTfldSSO5PB9y
	br05nnuoUhYEmMLBV6+q2gv1JwUY2V/jTUGctJBxoen95lqoxrcSTSO/hIo8jPFkefRI9W0WCsPNn
	5muAlMdXAxZnbtC99pPQd4OwkaDxwGoR6kc/pRLABFW+lsnTuVtAyftYPtRPWB499ZI6Hqmei9wqy
	QDObquBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9NmJ-0000000ASVN-0N0L;
	Fri, 08 Nov 2024 12:07:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9NP8-0000000AO16-06U3
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 11:43:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t9NP5-0004YC-Qo; Fri, 08 Nov 2024 12:43:51 +0100
Message-ID: <6eb56bb2-9b61-457a-9cea-45bfa7075d08@pengutronix.de>
Date: Fri, 8 Nov 2024 12:43:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org
References: <20241108105751.1872681-1-h.assmann@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241108105751.1872681-1-h.assmann@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_034354_097424_53167CB2 
X-CRM114-Status: GOOD (  18.21  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP: disable NPU node if hardware is
 missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Holger,

Thanks for your fix.

On 08.11.24 11:57, Holger Assmann wrote:
> Besides its power domain, the NPU node itself also needs to be disabled
> in the kernel device tree if no respective hardware is present at the
> SoC.
> 
> The power domain has already been dealt with by upstream commit
> 924101c81d6e ("ARM: i.MX8MP: add feature controller support for Plus").
> This patch adds the necessary entry for the NPU node.
> > Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de

Cheers,
Ahmad

> ---
>  arch/arm/dts/imx8mp.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
> index 4d1f1bf588..1604fa13a5 100644
> --- a/arch/arm/dts/imx8mp.dtsi
> +++ b/arch/arm/dts/imx8mp.dtsi
> @@ -99,6 +99,10 @@ &vpumix_blk_ctrl {
>  	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
>  };
>  
> +&npu {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_NPU>;
> +};
> +
>  &pgc_mlmix {
>  	barebox,feature-gates = <&feat IMX8M_FEAT_NPU>;
>  };


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



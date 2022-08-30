Delivery-date: Tue, 30 Aug 2022 10:15:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSwPM-001VyN-MC
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 10:15:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSwPK-0002yI-MU
	for lore@pengutronix.de; Tue, 30 Aug 2022 10:15:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H4umyg0QdgFe4vp+Nm4ohsXwdrs9ErrilK0vzrCCWT8=; b=HvutzBjKMHKCQymQtM0i7NV+xq
	NL94XXsiAuors9o2Sw9XZDmsO31x3DDbkcU7DFxU2VwOAqAgaPlB6K+sfDp77IOTTDq/qJZcjNG/w
	EBL+YVDbz1n5N5WIKtd7ZbJ0qPxpX5yYbXmTGgJ2E9GPg5wJ6M82JQA/+90EgQ+iIdm6TIwyIKM5+
	RsdPCdlaodwA2xrHpGff1FRvd/i3qbQaU2ywlhSE3v4QjGmKu4xjLidv10gVTNuBggU7fzNVEurZB
	Yp1ZgXp3FxW04k+jC0ERFFSJEoJ4EwM58vQdESvKcE3txdOJDx5vePXDLK084jHeGeEksnWl4qsHl
	OnOIDbuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwNk-00F6CN-8g; Tue, 30 Aug 2022 08:14:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwKY-00F4Ye-2p
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 08:10:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oSwKU-00022t-Uy; Tue, 30 Aug 2022 10:10:38 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oSwKU-000292-MK; Tue, 30 Aug 2022 10:10:38 +0200
Date: Tue, 30 Aug 2022 10:10:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220830081038.w7ouzgodhqltw2cz@pengutronix.de>
References: <20220830075045.1052357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830075045.1052357-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_011042_149418_9D141E62 
X-CRM114-Status: GOOD (  19.33  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: dts: i.MX8MM: describe feature controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahamd,

On 22-08-30, Ahmad Fatoum wrote:
> Now with i.MX8M feature controller driver support available, have the
> OCOTP provide feature control on the i.MX8MM to ensure the kernel DT
> does not cause Linux to access the VPU and its power domains,
> when barebox knows them to be unavailable.
> 
> This is needed because the upstream kernel imx8mm.dtsi only
> describes the full-featured SoC, which can lead to hangs when
> instantiating drivers for hardware that's unavailable in a
> less-featureful variant of the SoC.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 was RFC patch 10/10 of:
> https://lore.barebox.org/barebox/20220818051955.2088238-11-a.fatoum@pengutronix.de/T/#u
> 
> Patches 01-08 are still applicable, this replaces the approach in v1
> with a standalone feature controller with having the OCOTP as feature
> controller, like is done for i.MX8MN in patch 08/10 of above referenced
> series.
> ---
>  arch/arm/dts/imx8mm.dtsi | 52 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
> index cdf212820594..1e81d03d6b84 100644
> --- a/arch/arm/dts/imx8mm.dtsi
> +++ b/arch/arm/dts/imx8mm.dtsi
> @@ -1,10 +1,18 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +#include <dt-bindings/features/imx8m.h>
> +
>  / {
>  	aliases {
>  		gpr.reboot_mode = &reboot_mode_gpr;
>  	};
>  };
>  
> +feat: &ocotp {
> +	#feature-cells = <1>;
> +	barebox,feature-controller;
> +};

Why not just appending the node like:

/ {
	aliases {
		gpr.reboot_mode = &reboot_mode_gpr;
	};

	feat: ocotp {
		#feature-cells = <1>;
		barebox,feature-controller;
	};
};

Regards,
  Marco

> +
>  &pgc_otg1 {
>  	barebox,allow-dummy;
>  };
> @@ -24,3 +32,47 @@
>  		mode-serial = <0x00000010>, <0x40000000>;
>  	};
>  };
> +
> +&A53_1 {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_CPU_DUAL>;
> +};
> +
> +&A53_2 {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_CPU_QUAD>;
> +};
> +
> +&A53_3 {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_CPU_QUAD>;
> +};
> +
> +&gpc {
> +	barebox,feature-gates = <&feat 0>;
> +};
> +
> +&vpu_g1 {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
> +};
> +
> +&vpu_g2 {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
> +};
> +
> +&vpu_blk_ctrl {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
> +};
> +
> +&pgc_vpumix {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
> +};
> +
> +&pgc_vpu_g1 {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
> +};
> +
> +&pgc_vpu_g2 {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
> +};
> +
> +&pgc_vpu_h1 {
> +	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
> +};
> -- 
> 2.30.2
> 
> 
> 



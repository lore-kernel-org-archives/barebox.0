Delivery-date: Wed, 15 Mar 2023 10:15:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcNE4-001LPz-0n
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 10:15:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcNE3-0004me-N1
	for lore@pengutronix.de; Wed, 15 Mar 2023 10:15:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a0Ipse/BxoNp7T8foHNscMd5FfZPMXjQjlje0djRIUo=; b=Dwpu4FSVbUhWu8fnIiuexaQe0c
	Qyycfe8+0ziSYkJjDjqINaNOLVZr4algljlRgPL0V0VbQD7j163vzG1IomZASCTjNFjP/9l0iHI6b
	8aOtVRTCgrYIqYFg9HjoKtDHzVJQ7edHGdf7Mb9QDgbtLQ9PG0IlEdlnzd1L4I+UdfOenV3f6bC0R
	piB6n1MiWnn+J3Ta2RTuJbeVawPDUeAQYjJJecjVoTzicBzcM58meN3PUrWflC1hJ6TJ6YQkRVCu1
	ekIdpE6GIBj1X2gmkxe0Dnp2lT/ZwJ7CUK+nklEKrJBH1xDReag75FcN4uFucb1UTjELq5U619cL3
	/v3V4Wwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcNCi-00CuEo-2S;
	Wed, 15 Mar 2023 09:13:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcNCe-00CuDL-2d
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 09:13:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pcNCZ-0004U8-EK; Wed, 15 Mar 2023 10:13:43 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pcNCZ-0002mS-1W; Wed, 15 Mar 2023 10:13:43 +0100
Date: Wed, 15 Mar 2023 10:13:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Hans Christian Lonstad <hcl@datarespons.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230315091343.4cf3v4ob3fyu3yha@pengutronix.de>
References: <20230315070531.9697-1-hcl@datarespons.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230315070531.9697-1-hcl@datarespons.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_021348_875503_CDCC316A 
X-CRM114-Status: GOOD (  16.39  )
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
Subject: Re: imx8 - gpc: Support IMX8 Lite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Hans,

the subject should be:

soc: imx: gpcv2: add i.MX8MP Lite support

On 23-03-15, Hans Christian Lonstad wrote:
> IMX8 Lite lacks some functionality and hence the corresponding
   ^
i.MX8MP Lite

> power domains (8, 11, 12, 13).
> This results in Barebox error messages and unfortunately a failed
> Linux kernel boot.
> Add a "Lite" specific table selected using device tree compatible
> clause.
> 
> Note that this should probably be related to the feature controller.

What did you mean by this note? Also do we need this support within
Linux as well?

> Signed-off-by: Hans Christian Lonstad <hcl@Datarespons.com>
> 
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> index b662363f79..40998c42c5 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -1053,6 +1053,192 @@ static const struct imx_pgc_domain imx8mp_pgc_domains[] = {
>  	},
>  };
>  
> +static const struct imx_pgc_domain imx8mpl_pgc_domains[] = {
> +	[IMX8MP_POWER_DOMAIN_MIPI_PHY1] = {
> +		.genpd = {
> +			.name = "mipi-phy1",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_MIPI_PHY1_SW_Pxx_REQ,
> +			.map = IMX8MP_MIPI_PHY1_A53_DOMAIN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_MIPI1),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_PCIE_PHY] = {
> +		.genpd = {
> +			.name = "pcie-phy1",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_PCIE_PHY_SW_Pxx_REQ,
> +			.map = IMX8MP_PCIE_PHY_A53_DOMAIN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_PCIE),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_USB1_PHY] = {
> +		.genpd = {
> +			.name = "usb-otg1",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_USB1_PHY_Pxx_REQ,
> +			.map = IMX8MP_USB1_PHY_A53_DOMAIN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_USB1),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_USB2_PHY] = {
> +		.genpd = {
> +			.name = "usb-otg2",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_USB2_PHY_Pxx_REQ,
> +			.map = IMX8MP_USB2_PHY_A53_DOMAIN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_USB2),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_MLMIX] = {
> +		.genpd = {
> +			.name = "mlmix",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_MLMIX_Pxx_REQ,
> +			.map = IMX8MP_MLMIX_A53_DOMAIN,
> +			.hskreq = IMX8MP_MLMIX_PWRDNREQN,
> +			.hskack = IMX8MP_MLMIX_PWRDNACKN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_MLMIX),
> +		.keep_clocks = true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_AUDIOMIX] = {
> +		.genpd = {
> +			.name = "audiomix",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_AUDIOMIX_Pxx_REQ,
> +			.map = IMX8MP_AUDIOMIX_A53_DOMAIN,
> +			.hskreq = IMX8MP_AUDIOMIX_PWRDNREQN,
> +			.hskack = IMX8MP_AUDIOMIX_PWRDNACKN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_AUDIOMIX),
> +		.keep_clocks = true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_GPU2D] = {
> +		.genpd = {
> +			.name = "gpu2d",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_GPU_2D_Pxx_REQ,
> +			.map = IMX8MP_GPU2D_A53_DOMAIN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_GPU2D),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_GPUMIX] = {
> +		.genpd = {
> +			.name = "gpumix",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_GPU_SHARE_LOGIC_Pxx_REQ,
> +			.map = IMX8MP_GPUMIX_A53_DOMAIN,
> +			.hskreq = IMX8MP_GPUMIX_PWRDNREQN,
> +			.hskack = IMX8MP_GPUMIX_PWRDNACKN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_GPUMIX),
> +		.keep_clocks = true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_GPU3D] = {
> +		.genpd = {
> +			.name = "gpu3d",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_GPU_3D_Pxx_REQ,
> +			.map = IMX8MP_GPU3D_A53_DOMAIN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_GPU3D),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_MEDIAMIX] = {
> +		.genpd = {
> +			.name = "mediamix",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_MEDIMIX_Pxx_REQ,
> +			.map = IMX8MP_MEDIAMIX_A53_DOMAIN,
> +			.hskreq = IMX8MP_MEDIAMIX_PWRDNREQN,
> +			.hskack = IMX8MP_MEDIAMIX_PWRDNACKN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_MEDIAMIX),
> +		.keep_clocks = true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_HDMIMIX] = {
> +		.genpd = {
> +			.name = "hdmimix",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_HDMIMIX_Pxx_REQ,
> +			.map = IMX8MP_HDMIMIX_A53_DOMAIN,
> +			.hskreq = IMX8MP_HDMIMIX_PWRDNREQN,
> +			.hskack = IMX8MP_HDMIMIX_PWRDNACKN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_HDMIMIX),
> +		.keep_clocks = true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_HDMI_PHY] = {
> +		.genpd = {
> +			.name = "hdmi-phy",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_HDMI_PHY_Pxx_REQ,
> +			.map = IMX8MP_HDMI_PHY_A53_DOMAIN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_HDMI),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_MIPI_PHY2] = {
> +		.genpd = {
> +			.name = "mipi-phy2",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_MIPI_PHY2_Pxx_REQ,
> +			.map = IMX8MP_MIPI_PHY2_A53_DOMAIN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_MIPI2),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_HSIOMIX] = {
> +		.genpd = {
> +			.name = "hsiomix",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_HSIOMIX_Pxx_REQ,
> +			.map = IMX8MP_HSIOMIX_A53_DOMAIN,
> +			.hskreq = IMX8MP_HSIOMIX_PWRDNREQN,
> +			.hskack = IMX8MP_HSIOMIX_PWRDNACKN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_HSIOMIX),
> +		.keep_clocks = true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_MEDIAMIX_ISPDWP] = {
> +		.genpd = {
> +			.name = "mediamix-isp-dwp",
> +		},
> +		.bits = {
> +			.pxx = IMX8MP_MEDIA_ISP_DWP_Pxx_REQ,
> +			.map = IMX8MP_MEDIA_ISPDWP_A53_DOMAIN,
> +		},
> +		.pgc = BIT(IMX8MP_PGC_MEDIA_ISP_DWP),
> +	},
> +};
> +
> +

delete one.

>  static const struct imx_pgc_regs imx8mp_pgc_regs = {
>  	.map = IMX8MP_GPC_PGC_CPU_MAPPING,
>  	.pup = IMX8MP_GPC_PU_PGC_SW_PUP_REQ,
> @@ -1065,6 +1251,12 @@ static const struct imx_pgc_domain_data imx8mp_pgc_domain_data = {
>  	.pgc_regs = &imx8mp_pgc_regs,
>  };
>  
> +static const struct imx_pgc_domain_data imx8mpl_pgc_domain_data = {
> +	.domains = imx8mpl_pgc_domains,
> +	.domains_num = ARRAY_SIZE(imx8mpl_pgc_domains),
> +	.pgc_regs = &imx8mp_pgc_regs,
> +};
> +
>  static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
>  	[IMX8MN_POWER_DOMAIN_HSIOMIX] = {
>  		.genpd = {
> @@ -1302,6 +1494,7 @@ static const struct of_device_id imx_gpcv2_dt_ids[] = {
>  	{ .compatible = "fsl,imx8mm-gpc", .data = &imx8mm_pgc_domain_data, },
>  	{ .compatible = "fsl,imx8mn-gpc", .data = &imx8mn_pgc_domain_data, },
>  	{ .compatible = "fsl,imx8mp-gpc", .data = &imx8mp_pgc_domain_data, },
> +	{ .compatible = "fsl,imx8mpl-gpc", .data = &imx8mpl_pgc_domain_data, },
				^
This compatible is does not exist.

Regards,
  Marco

>  	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
>  	{ }
>  };
> 
> 



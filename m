Delivery-date: Wed, 15 Mar 2023 10:24:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcNMl-001Lof-Ie
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 10:24:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcNMl-00069V-6m
	for lore@pengutronix.de; Wed, 15 Mar 2023 10:24:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LUA91ERarvfT5W3agsveS0Z/51A5189x/ITFS2d1TMk=; b=ZRj1G0t1aK2a7YTLwVsbtdEC9z
	WhvnmbH1pUICej0rv1aYcoeZs+DM5fyh/YOZ0ifEA7JkbGcIULWkIeHxOklrJQFXmjkF+uD1nhan9
	bq6C0Q8b6ayA9eDz8JA8mm9KH5N+VF4Dzs9cnOFW5IJkXILLeSn0NUpUF+46egwh4PNSzpjYnsZpf
	I7ck83GJiUIXRrZyk5bW7v97MIV6V0tfvOqGPeAaN38OKckAgTx8Db6pyWlmHGpR0AzbE1EZjNt2f
	qxAmNAT4fTAH2JM354t3jZvzxxK3WfgEsGa2/RyedADGN7q/0YkHHhhBZYfgDOipYcjYlX75JND8o
	K/hrwhyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcNLa-00CvXJ-1B;
	Wed, 15 Mar 2023 09:23:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcNLY-00CvX0-1M
	for barebox@bombadil.infradead.org;
	Wed, 15 Mar 2023 09:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=LUA91ERarvfT5W3agsveS0Z/51A5189x/ITFS2d1TMk=; b=dPDRU0jdUhvtgbXvgVjpEtBUNg
	pLpNdyiEhcHQ9GC018v7lBDbHpAY+gRQrV5Ou/q7eyBP97BkQEoS9WpQTYT7zMUPSdj9hIVJfB3vs
	gB56T4HK7uN/5gtzYanLenoyIHnf/wDcUa3W62lmO3YCaq9tJzBHPrF1bUchH2w5wCA+HPilvMGm+
	QkRzYSpPsmZNA395+8xGN4CpiZRr6XdfrwjBa3oFP4iQ9Lk+gKN2SgIaAXNAieCY8k2O5eu1VBM/Z
	ynv39VTLRPNGVBRFrrbHuupX7c9TUexm06qq/7sTxiMil/vstVfSX82AKaGZTHo3zUjL1IDZmsXn8
	wvUpHwZA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcNLU-0023xh-26
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 09:22:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1pcNLI-00060R-TT; Wed, 15 Mar 2023 10:22:44 +0100
Message-ID: <ae056bad7244d1e6bde760add8bf37c3c044e325.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Hans Christian Lonstad <hcl@datarespons.com>, barebox@lists.infradead.org
Date: Wed, 15 Mar 2023 10:22:44 +0100
In-Reply-To: <20230315070531.9697-1-hcl@datarespons.com>
References: <20230315070531.9697-1-hcl@datarespons.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_092256_887039_845E165D 
X-CRM114-Status: GOOD (  15.28  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: imx8 - gpc: Support IMX8 Lite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Hans Christian,

Am Mittwoch, dem 15.03.2023 um 08:05 +0100 schrieb Hans Christian Lonstad:
> IMX8 Lite lacks some functionality and hence the corresponding
> power domains (8, 11, 12, 13).
> This results in Barebox error messages and unfortunately a failed
> Linux kernel boot.
> Add a "Lite" specific table selected using device tree compatible
> clause.
>=20
> Note that this should probably be related to the feature controller.

Yes, the lite versions of the SoC are usually just fused down versions
of the SoC and the fuses should tell you which features are actually
available. Please try to use the feature controller to disable the non
existent features/DT nodes. Adding a specific compatible and all this
code not look like the right way to go to me.

Regards,
Lucas

>=20
> Signed-off-by: Hans Christian Lonstad <hcl@Datarespons.com>
>=20
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> index b662363f79..40998c42c5 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -1053,6 +1053,192 @@ static const struct imx_pgc_domain imx8mp_pgc_dom=
ains[] =3D {
>  	},
>  };
> =20
> +static const struct imx_pgc_domain imx8mpl_pgc_domains[] =3D {
> +	[IMX8MP_POWER_DOMAIN_MIPI_PHY1] =3D {
> +		.genpd =3D {
> +			.name =3D "mipi-phy1",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_MIPI_PHY1_SW_Pxx_REQ,
> +			.map =3D IMX8MP_MIPI_PHY1_A53_DOMAIN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_MIPI1),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_PCIE_PHY] =3D {
> +		.genpd =3D {
> +			.name =3D "pcie-phy1",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_PCIE_PHY_SW_Pxx_REQ,
> +			.map =3D IMX8MP_PCIE_PHY_A53_DOMAIN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_PCIE),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_USB1_PHY] =3D {
> +		.genpd =3D {
> +			.name =3D "usb-otg1",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_USB1_PHY_Pxx_REQ,
> +			.map =3D IMX8MP_USB1_PHY_A53_DOMAIN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_USB1),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_USB2_PHY] =3D {
> +		.genpd =3D {
> +			.name =3D "usb-otg2",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_USB2_PHY_Pxx_REQ,
> +			.map =3D IMX8MP_USB2_PHY_A53_DOMAIN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_USB2),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_MLMIX] =3D {
> +		.genpd =3D {
> +			.name =3D "mlmix",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_MLMIX_Pxx_REQ,
> +			.map =3D IMX8MP_MLMIX_A53_DOMAIN,
> +			.hskreq =3D IMX8MP_MLMIX_PWRDNREQN,
> +			.hskack =3D IMX8MP_MLMIX_PWRDNACKN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_MLMIX),
> +		.keep_clocks =3D true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_AUDIOMIX] =3D {
> +		.genpd =3D {
> +			.name =3D "audiomix",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_AUDIOMIX_Pxx_REQ,
> +			.map =3D IMX8MP_AUDIOMIX_A53_DOMAIN,
> +			.hskreq =3D IMX8MP_AUDIOMIX_PWRDNREQN,
> +			.hskack =3D IMX8MP_AUDIOMIX_PWRDNACKN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_AUDIOMIX),
> +		.keep_clocks =3D true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_GPU2D] =3D {
> +		.genpd =3D {
> +			.name =3D "gpu2d",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_GPU_2D_Pxx_REQ,
> +			.map =3D IMX8MP_GPU2D_A53_DOMAIN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_GPU2D),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_GPUMIX] =3D {
> +		.genpd =3D {
> +			.name =3D "gpumix",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_GPU_SHARE_LOGIC_Pxx_REQ,
> +			.map =3D IMX8MP_GPUMIX_A53_DOMAIN,
> +			.hskreq =3D IMX8MP_GPUMIX_PWRDNREQN,
> +			.hskack =3D IMX8MP_GPUMIX_PWRDNACKN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_GPUMIX),
> +		.keep_clocks =3D true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_GPU3D] =3D {
> +		.genpd =3D {
> +			.name =3D "gpu3d",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_GPU_3D_Pxx_REQ,
> +			.map =3D IMX8MP_GPU3D_A53_DOMAIN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_GPU3D),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_MEDIAMIX] =3D {
> +		.genpd =3D {
> +			.name =3D "mediamix",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_MEDIMIX_Pxx_REQ,
> +			.map =3D IMX8MP_MEDIAMIX_A53_DOMAIN,
> +			.hskreq =3D IMX8MP_MEDIAMIX_PWRDNREQN,
> +			.hskack =3D IMX8MP_MEDIAMIX_PWRDNACKN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_MEDIAMIX),
> +		.keep_clocks =3D true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_HDMIMIX] =3D {
> +		.genpd =3D {
> +			.name =3D "hdmimix",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_HDMIMIX_Pxx_REQ,
> +			.map =3D IMX8MP_HDMIMIX_A53_DOMAIN,
> +			.hskreq =3D IMX8MP_HDMIMIX_PWRDNREQN,
> +			.hskack =3D IMX8MP_HDMIMIX_PWRDNACKN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_HDMIMIX),
> +		.keep_clocks =3D true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_HDMI_PHY] =3D {
> +		.genpd =3D {
> +			.name =3D "hdmi-phy",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_HDMI_PHY_Pxx_REQ,
> +			.map =3D IMX8MP_HDMI_PHY_A53_DOMAIN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_HDMI),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_MIPI_PHY2] =3D {
> +		.genpd =3D {
> +			.name =3D "mipi-phy2",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_MIPI_PHY2_Pxx_REQ,
> +			.map =3D IMX8MP_MIPI_PHY2_A53_DOMAIN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_MIPI2),
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_HSIOMIX] =3D {
> +		.genpd =3D {
> +			.name =3D "hsiomix",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_HSIOMIX_Pxx_REQ,
> +			.map =3D IMX8MP_HSIOMIX_A53_DOMAIN,
> +			.hskreq =3D IMX8MP_HSIOMIX_PWRDNREQN,
> +			.hskack =3D IMX8MP_HSIOMIX_PWRDNACKN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_HSIOMIX),
> +		.keep_clocks =3D true,
> +	},
> +
> +	[IMX8MP_POWER_DOMAIN_MEDIAMIX_ISPDWP] =3D {
> +		.genpd =3D {
> +			.name =3D "mediamix-isp-dwp",
> +		},
> +		.bits =3D {
> +			.pxx =3D IMX8MP_MEDIA_ISP_DWP_Pxx_REQ,
> +			.map =3D IMX8MP_MEDIA_ISPDWP_A53_DOMAIN,
> +		},
> +		.pgc =3D BIT(IMX8MP_PGC_MEDIA_ISP_DWP),
> +	},
> +};
> +
> +
>  static const struct imx_pgc_regs imx8mp_pgc_regs =3D {
>  	.map =3D IMX8MP_GPC_PGC_CPU_MAPPING,
>  	.pup =3D IMX8MP_GPC_PU_PGC_SW_PUP_REQ,
> @@ -1065,6 +1251,12 @@ static const struct imx_pgc_domain_data imx8mp_pgc=
_domain_data =3D {
>  	.pgc_regs =3D &imx8mp_pgc_regs,
>  };
> =20
> +static const struct imx_pgc_domain_data imx8mpl_pgc_domain_data =3D {
> +	.domains =3D imx8mpl_pgc_domains,
> +	.domains_num =3D ARRAY_SIZE(imx8mpl_pgc_domains),
> +	.pgc_regs =3D &imx8mp_pgc_regs,
> +};
> +
>  static const struct imx_pgc_domain imx8mn_pgc_domains[] =3D {
>  	[IMX8MN_POWER_DOMAIN_HSIOMIX] =3D {
>  		.genpd =3D {
> @@ -1302,6 +1494,7 @@ static const struct of_device_id imx_gpcv2_dt_ids[]=
 =3D {
>  	{ .compatible =3D "fsl,imx8mm-gpc", .data =3D &imx8mm_pgc_domain_data, =
},
>  	{ .compatible =3D "fsl,imx8mn-gpc", .data =3D &imx8mn_pgc_domain_data, =
},
>  	{ .compatible =3D "fsl,imx8mp-gpc", .data =3D &imx8mp_pgc_domain_data, =
},
> +	{ .compatible =3D "fsl,imx8mpl-gpc", .data =3D &imx8mpl_pgc_domain_data=
, },
>  	{ .compatible =3D "fsl,imx8mq-gpc", .data =3D &imx8m_pgc_domain_data, }=
,
>  	{ }
>  };
>=20




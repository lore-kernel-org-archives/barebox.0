Delivery-date: Fri, 14 Apr 2023 10:00:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnEME-0036QX-Ii
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 10:00:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnEME-0007dw-4K
	for lore@pengutronix.de; Fri, 14 Apr 2023 10:00:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ss3bZrhy1TVgAQRtD1u1Mtuyge82u4rLKokzC3VCx+I=; b=MSgBt3AeaoYgltoFRtOL1fMQ43
	6eCfEp2KBWb81UivlcaHWOTSpo4w7ViJDcVZ+CxEUoOSzJ2S+hcEtKYqt57GMYmt9YKPW8FM+cs83
	4Scq5zAfISp/PK5XpPLlKb97kTxKsYUKa+ZzD/tJeBAFlaZeT07Df1v171Oi2YZwAF30NSHLva1NY
	PozccHMWPMZOBUSEyc1G+gdBUmZ5TU5hlXwfUXNc4U2dVY/16aXMuppfqZ+le1ZJVVL5Mot99Ub++
	vA1TwaT1mmMGBhzImh2C/w2hBmmV0D4R7kTama4ktxsqBPSJYY6x6HLg0tmiKq43cbzam9xV18Bkz
	KNBCw5Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEL1-008ceD-2S;
	Fri, 14 Apr 2023 07:59:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEKy-008cdC-1V
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 07:59:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pnEKw-0007Co-Sd; Fri, 14 Apr 2023 09:59:14 +0200
Message-ID: <e597040b-7c6e-0c65-878b-c47c768b242e@pengutronix.de>
Date: Fri, 14 Apr 2023 09:59:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: =?UTF-8?Q?Hans_Christian_L=c3=b8nstad?= <hcl@datarespons.no>,
 Marco Felsch <m.felsch@pengutronix.de>, Lucas Stach <lst@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20230315070531.9697-1-hcl@datarespons.com>
 <20230315091343.4cf3v4ob3fyu3yha@pengutronix.de>
 <D9091FED-AF96-4414-AF7D-0A0CB9F3A3FD@datarespons.no>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <D9091FED-AF96-4414-AF7D-0A0CB9F3A3FD@datarespons.no>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_005916_662686_19C78BB1 
X-CRM114-Status: GOOD (  23.66  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: imx8 - gpc: Support IMX8 Lite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Hans.

On 14.04.23 09:47, Hans Christian Lønstad wrote:
> After applying NXP kernel 6.1 branch (6.1-1.0-x-imx) I can confirm a fix is needed in kernel as well.
> In order to avoid specific DT for i.MX8MP Lite, the probe function in soc/imx/imx8m-blk-ctrl.c should consult fuse settings and skip the pm_genpd_init for functions not available.
> 
> I believe this should be properly handled as the Lite version is more applicable (and cost effective) for a broad range of applications.

The consensus is that this is the job of the device tree. i.MX8MPL users need
to either use a DT which omits the nodes in question or the bootloader needs
to patch these nodes away. The feature controller supports patching the kernel
DT, so what's missing is adding i.MX8MP Lite support to it.

Cheers,
Ahmad

> 
> Hans Christian Lønstad
> 
>> 15. mar. 2023 kl. 10:13 skrev Marco Felsch <m.felsch@pengutronix.de>:
>>
>> Hi Hans,
>>
>> the subject should be:
>>
>> soc: imx: gpcv2: add i.MX8MP Lite support
>>
>> On 23-03-15, Hans Christian Lonstad wrote:
>>> IMX8 Lite lacks some functionality and hence the corresponding
>>   ^
>> i.MX8MP Lite
>>
>>> power domains (8, 11, 12, 13).
>>> This results in Barebox error messages and unfortunately a failed
>>> Linux kernel boot.
>>> Add a "Lite" specific table selected using device tree compatible
>>> clause.
>>>
>>> Note that this should probably be related to the feature controller.
>>
>> What did you mean by this note? Also do we need this support within
>> Linux as well?
>>
>>> Signed-off-by: Hans Christian Lonstad <hcl@Datarespons.com>
>>>
>>> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
>>> index b662363f79..40998c42c5 100644
>>> --- a/drivers/soc/imx/gpcv2.c
>>> +++ b/drivers/soc/imx/gpcv2.c
>>> @@ -1053,6 +1053,192 @@ static const struct imx_pgc_domain imx8mp_pgc_domains[] = {
>>> 	},
>>> };
>>>
>>> +static const struct imx_pgc_domain imx8mpl_pgc_domains[] = {
>>> +	[IMX8MP_POWER_DOMAIN_MIPI_PHY1] = {
>>> +		.genpd = {
>>> +			.name = "mipi-phy1",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_MIPI_PHY1_SW_Pxx_REQ,
>>> +			.map = IMX8MP_MIPI_PHY1_A53_DOMAIN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_MIPI1),
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_PCIE_PHY] = {
>>> +		.genpd = {
>>> +			.name = "pcie-phy1",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_PCIE_PHY_SW_Pxx_REQ,
>>> +			.map = IMX8MP_PCIE_PHY_A53_DOMAIN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_PCIE),
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_USB1_PHY] = {
>>> +		.genpd = {
>>> +			.name = "usb-otg1",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_USB1_PHY_Pxx_REQ,
>>> +			.map = IMX8MP_USB1_PHY_A53_DOMAIN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_USB1),
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_USB2_PHY] = {
>>> +		.genpd = {
>>> +			.name = "usb-otg2",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_USB2_PHY_Pxx_REQ,
>>> +			.map = IMX8MP_USB2_PHY_A53_DOMAIN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_USB2),
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_MLMIX] = {
>>> +		.genpd = {
>>> +			.name = "mlmix",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_MLMIX_Pxx_REQ,
>>> +			.map = IMX8MP_MLMIX_A53_DOMAIN,
>>> +			.hskreq = IMX8MP_MLMIX_PWRDNREQN,
>>> +			.hskack = IMX8MP_MLMIX_PWRDNACKN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_MLMIX),
>>> +		.keep_clocks = true,
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_AUDIOMIX] = {
>>> +		.genpd = {
>>> +			.name = "audiomix",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_AUDIOMIX_Pxx_REQ,
>>> +			.map = IMX8MP_AUDIOMIX_A53_DOMAIN,
>>> +			.hskreq = IMX8MP_AUDIOMIX_PWRDNREQN,
>>> +			.hskack = IMX8MP_AUDIOMIX_PWRDNACKN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_AUDIOMIX),
>>> +		.keep_clocks = true,
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_GPU2D] = {
>>> +		.genpd = {
>>> +			.name = "gpu2d",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_GPU_2D_Pxx_REQ,
>>> +			.map = IMX8MP_GPU2D_A53_DOMAIN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_GPU2D),
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_GPUMIX] = {
>>> +		.genpd = {
>>> +			.name = "gpumix",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_GPU_SHARE_LOGIC_Pxx_REQ,
>>> +			.map = IMX8MP_GPUMIX_A53_DOMAIN,
>>> +			.hskreq = IMX8MP_GPUMIX_PWRDNREQN,
>>> +			.hskack = IMX8MP_GPUMIX_PWRDNACKN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_GPUMIX),
>>> +		.keep_clocks = true,
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_GPU3D] = {
>>> +		.genpd = {
>>> +			.name = "gpu3d",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_GPU_3D_Pxx_REQ,
>>> +			.map = IMX8MP_GPU3D_A53_DOMAIN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_GPU3D),
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_MEDIAMIX] = {
>>> +		.genpd = {
>>> +			.name = "mediamix",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_MEDIMIX_Pxx_REQ,
>>> +			.map = IMX8MP_MEDIAMIX_A53_DOMAIN,
>>> +			.hskreq = IMX8MP_MEDIAMIX_PWRDNREQN,
>>> +			.hskack = IMX8MP_MEDIAMIX_PWRDNACKN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_MEDIAMIX),
>>> +		.keep_clocks = true,
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_HDMIMIX] = {
>>> +		.genpd = {
>>> +			.name = "hdmimix",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_HDMIMIX_Pxx_REQ,
>>> +			.map = IMX8MP_HDMIMIX_A53_DOMAIN,
>>> +			.hskreq = IMX8MP_HDMIMIX_PWRDNREQN,
>>> +			.hskack = IMX8MP_HDMIMIX_PWRDNACKN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_HDMIMIX),
>>> +		.keep_clocks = true,
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_HDMI_PHY] = {
>>> +		.genpd = {
>>> +			.name = "hdmi-phy",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_HDMI_PHY_Pxx_REQ,
>>> +			.map = IMX8MP_HDMI_PHY_A53_DOMAIN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_HDMI),
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_MIPI_PHY2] = {
>>> +		.genpd = {
>>> +			.name = "mipi-phy2",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_MIPI_PHY2_Pxx_REQ,
>>> +			.map = IMX8MP_MIPI_PHY2_A53_DOMAIN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_MIPI2),
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_HSIOMIX] = {
>>> +		.genpd = {
>>> +			.name = "hsiomix",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_HSIOMIX_Pxx_REQ,
>>> +			.map = IMX8MP_HSIOMIX_A53_DOMAIN,
>>> +			.hskreq = IMX8MP_HSIOMIX_PWRDNREQN,
>>> +			.hskack = IMX8MP_HSIOMIX_PWRDNACKN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_HSIOMIX),
>>> +		.keep_clocks = true,
>>> +	},
>>> +
>>> +	[IMX8MP_POWER_DOMAIN_MEDIAMIX_ISPDWP] = {
>>> +		.genpd = {
>>> +			.name = "mediamix-isp-dwp",
>>> +		},
>>> +		.bits = {
>>> +			.pxx = IMX8MP_MEDIA_ISP_DWP_Pxx_REQ,
>>> +			.map = IMX8MP_MEDIA_ISPDWP_A53_DOMAIN,
>>> +		},
>>> +		.pgc = BIT(IMX8MP_PGC_MEDIA_ISP_DWP),
>>> +	},
>>> +};
>>> +
>>> +
>>
>> delete one.
>>
>>> static const struct imx_pgc_regs imx8mp_pgc_regs = {
>>> 	.map = IMX8MP_GPC_PGC_CPU_MAPPING,
>>> 	.pup = IMX8MP_GPC_PU_PGC_SW_PUP_REQ,
>>> @@ -1065,6 +1251,12 @@ static const struct imx_pgc_domain_data imx8mp_pgc_domain_data = {
>>> 	.pgc_regs = &imx8mp_pgc_regs,
>>> };
>>>
>>> +static const struct imx_pgc_domain_data imx8mpl_pgc_domain_data = {
>>> +	.domains = imx8mpl_pgc_domains,
>>> +	.domains_num = ARRAY_SIZE(imx8mpl_pgc_domains),
>>> +	.pgc_regs = &imx8mp_pgc_regs,
>>> +};
>>> +
>>> static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
>>> 	[IMX8MN_POWER_DOMAIN_HSIOMIX] = {
>>> 		.genpd = {
>>> @@ -1302,6 +1494,7 @@ static const struct of_device_id imx_gpcv2_dt_ids[] = {
>>> 	{ .compatible = "fsl,imx8mm-gpc", .data = &imx8mm_pgc_domain_data, },
>>> 	{ .compatible = "fsl,imx8mn-gpc", .data = &imx8mn_pgc_domain_data, },
>>> 	{ .compatible = "fsl,imx8mp-gpc", .data = &imx8mp_pgc_domain_data, },
>>> +	{ .compatible = "fsl,imx8mpl-gpc", .data = &imx8mpl_pgc_domain_data, },
>> 				^
>> This compatible is does not exist.
>>
>> Regards,
>>  Marco
>>
>>> 	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
>>> 	{ }
>>> };
>>>
>>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




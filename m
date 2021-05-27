Delivery-date: Thu, 27 May 2021 09:36:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmAZf-0003Jd-Jv
	for lore@lore.pengutronix.de; Thu, 27 May 2021 09:36:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmAZe-00087B-GG
	for lore@pengutronix.de; Thu, 27 May 2021 09:36:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PmLDxbm6cROt7A1CSsBYHBkns/PbKk4L59cZ+E5P0ik=; b=atCB6NVI7j+8+mzOi8PBCxqAKX
	pBTLr+boSopK3wUe/RG9U6mcqa3flXyTqQhSvHHZZ4AqiCO/zpcYDCzbV0WzzDwwafyTlmwb2Y3FK
	cnk6EWNZHiY7SndVQ1qhDFg9189HHFH1vpTCZicsa9oTHOcxHyga1Z1cZDGcmk4pHhqEdCVKksol2
	ISs8Mpuufa+/ZMmqWzpvtnSUMU2gh37zhn+N1gJy+Yx5lUesQvOSqKR62msrkUOJaS6X+A+t1ej63
	1XYaOYid3zNEVkDHnbWXFXcuuNFIJ1xUtwcwmwIoFpXRB7UMzFZAJwSyZr/wPhEq+HNUvKUrsBu7v
	HO8HUE+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmAYJ-003Pdt-49; Thu, 27 May 2021 07:35:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmAYD-003PcN-Ij
 for barebox@lists.infradead.org; Thu, 27 May 2021 07:35:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmAYB-0007qz-VQ; Thu, 27 May 2021 09:35:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lmAYB-0007dE-MV; Thu, 27 May 2021 09:35:27 +0200
Date: Thu, 27 May 2021 09:35:27 +0200
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210527073527.GF19819@pengutronix.de>
References: <20210525193624.3348572-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210525193624.3348572-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:26:07 up 98 days, 10:50, 110 users,  load average: 0.40, 0.53,
 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_003529_650280_30135F93 
X-CRM114-Status: GOOD (  25.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: protonic: add initial support for the Protonic
 PRT8MM family of boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Lucas,

On Tue, May 25, 2021 at 09:36:22PM +0200, Lucas Stach wrote:
> From: David Jander <david@protonic.nl>
> 
> This board is a low-cost 7" touchscreen virtual terminal for
> agricultural applications.
> 
> There is no upstream Linux DT yet, so we add a minimal DT for use with the
> bootloader in this patch.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> +
> +static const struct of_device_id prt_imx8mm_of_match[] = {
> +	{ .compatible = "prt,prt8mm", },
> +	{ /* sentinel */ },
> +};
> +
> +static struct driver_d prt_prt8mm_board_driver = {
> +	.name = "board-protonic-imx8mm",
> +	.probe = prt_prt8mm_probe,
> +	.of_compatible = DRV_OF_COMPAT(prt_imx8mm_of_match),
> +};
> +device_platform_driver(prt_prt8mm_board_driver);
> +
> +static int prt_prt8mm_late_init(void)
> +{
> +	setenv("global.boot.default", bootsource_get_alias_name());
> +
> +	return 0;
> +}
> +late_initcall(prt_prt8mm_late_init);

This not protected by any of_machine_is_compatible(). Can't this be done
as part of the driver above?

> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc2, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc3, "partname:barebox-environment";
> +			status = "disabled";
> +		};

I prefer using a phandle to the partition directly rather than using the
"partname:" syntax

> +&usdhc2 {
> +	assigned-clocks = <&clk IMX8MM_CLK_USDHC2>;
> +	assigned-clock-rates = <100000000>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> +	bus-width = <4>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	partition@10000 {
> +		label = "barebox-environment";
> +		reg = <0x10000 0x10000>;
> +	};

Let's hope you never do a 'saveenv' when starting barebox from this card ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


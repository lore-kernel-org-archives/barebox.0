Delivery-date: Fri, 06 Feb 2026 18:12:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voPNv-009YSe-1v
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 18:12:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voPNu-0000fV-GT
	for lore@pengutronix.de; Fri, 06 Feb 2026 18:12:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q3qDZWnfJGhrJcBu/W1tdR8f+wKE3a2wViUgyYAaats=; b=VBfVHWKBHtAvHYUO2TbZiuIKXN
	WEaXVF31kUbVVl+5Xer+vckRNheC1ptI41YTU1jale6e77Mwm6+PNjzNatgcHVMf6LtT9JT/Qd5pq
	jis9ZjQGke6uZqI5VKduG4HsxkAWKNdqNO/TJm/wSU7CXgZpWDCcJrRYCMaiPZHJ/KBUeutJvBxQa
	v0dn77zN0dg/0seEzW6dGbr+aNb9LgWy8rE2xP9Mo2ly+qoq+zrlNdfLy5G1B2mx/GK/ijtAnL1BB
	exmvwYwC+4pGvoKBnLFVkgjCp2dgpEb+bm7K++kzNdSlM1SbmsumOFpYz4Up4A+K2+dinbDhaU19E
	zsAtBvXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voPNS-0000000Bbel-3aek;
	Fri, 06 Feb 2026 17:12:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voPNQ-0000000BbeL-2UIc
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 17:12:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1voPNO-0000XS-KZ; Fri, 06 Feb 2026 18:12:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voPNP-004RIh-03;
	Fri, 06 Feb 2026 18:12:14 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voPNO-002PcP-0l;
	Fri, 06 Feb 2026 18:12:14 +0100
Date: Fri, 6 Feb 2026 18:12:14 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260206171214.x3n6ubr5shtylmwk@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-5-a80b234ce1a1@pengutronix.de>
 <9eb10c4b-6322-4b42-a155-aafa24f2fabd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9eb10c4b-6322-4b42-a155-aafa24f2fabd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_091216_633847_1CCE98E8 
X-CRM114-Status: GOOD (  27.59  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, Johannes Schneider <johannes.schneider@leica-geosystems.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] ARM: i.MX8MM: add Hexagon Geosystems GS05
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On 26-02-06, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/5/26 4:45 PM, Marco Felsch wrote:

...

> > +	};
> > +
> > +	/*
> > +	 * Prohibit OP-TEE from turning of the UART output if enabled via
> > +	 * CFG_UART_BASE. To do so we need to specify a stdout-path which
> > +	 * doesn't exist else OP-TEE turns off the UART.
> > +	 */
> > +	secure-chosen {
> > +		stdout-path = "/this-path/does/not/exist";
> 
> ... :/
> 
> > +&usdhc3 { /* eMMC */
> > +	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
> > +	assigned-clock-rates = <400000000>;
> > +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> > +	pinctrl-0 = <&pinctrl_usdhc3>;
> > +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> > +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> > +	bus-width = <8>;
> > +	non-removable;
> 
> no-sd;
> no-sdio;
> 
> to skip their detect?

Yes, thanks!

> > +	pinctrl_gpio1: gpio1grp {
> > +		fsl,pins = <
> > +			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x100
> 
> This looks a bit unconventional. Can't the consumer select this group?

Good catch, this was required before we had the EFI driver. I will adapt
the driver to request the pin accordingly.

> > +config BOARD_HGS
> > +	bool
> > +	select ARCH_IMX_ATF_PASS_BL_PARAMS
> > +	select ARM_SMCCC
> > +	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> > +	select I2C_IMX_EARLY
> > +	select IMX8M_DRAM
> > +	select HABV4
> 
> Do you need to select this one? I think it would be better without to
> allow it to be enabled in the defconfig without flipping HABv4 on for
> all other boards?

Good point albeit this is secure-boot only platform it makes sense to
enable it within the defconfig to benefit from the CI. We don't have a
good CI setup for secure-boot builds, right?

> > +static int hgs_console_open_fixup(struct device_node *root, void *context)
> > +{
> > +	struct hgs_machine *machine = context;
> > +	struct device_node *console_np;
> > +	struct property *property;
> > +
> > +	console_np = of_find_node_by_alias(root, machine->console_alias);
> > +	if (!console_np)
> > +		return -EINVAL;
> > +
> > +	property = of_rename_property(console_np, "pinctrl-1", "pinctrl-0");
> 
> Does this not yield an invalid DT when passed to the kernel?
> I think you want to either keep pinctrl-1 as is or shorten pinctrl-names
> as well.

FYI, what the kernel-DT is doing:

| pinctrl-names = "default";
| pinctrl-0 = <&pinctrl_uart3_gpio>;
| pinctrl-1 = <&pinctrl_uart3>;

The of_rename_property() will delete the pinctrl-0 first and and later
on renames pinctrl-1 to pinctrl-0. Therefore we don't have issues with
invalid DTs.

This is a bit different to the barebox-DT since for the barebox-DT but
could be aligned later in either way of course!

> > +	pinctrl = pinctrl_get_select(console->dev, "uart");
> 
> Nitpick: I think a name like "open" might be clearer?

IMHO pinctrl "uart" is easier to understand given the context that this
function is called within hgs_open_console(). What would be a "open"
console mean?

Regards,
  Marco

> 
> 
> Cheers,
> Ahmad
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



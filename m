Delivery-date: Wed, 29 Jun 2022 09:41:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6SKb-000yMx-HB
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 09:41:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6SKd-0000M3-CG
	for lore@pengutronix.de; Wed, 29 Jun 2022 09:41:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M2eIFQp6eplNS8gLKVLZv+sYoa/h6fBVksXfRazmRTc=; b=zG4Wbmd49mJ9WQjyNwfp4oPR/h
	Ps2QWOtgIKzh47D80etaSaT6smAwfJtLytZSKdJjBbCGxshA25LgaN3YBm+aE29wukIZrVQVLAW3h
	LSrsKMJP3XSmk6tA17Avqm3z4l7RMXj7JFfvgIE1Phvhkg0A1SquPUaxbeKDVAbxQAQkmPimFWP9q
	Ea3gtOrLs6xby48VPaWw+nbTK3KZBrQX5D6k5jrYPraDcm6wKRlF/XPtdUpeft4gbHkU+FtfX59TM
	aVvHR+y8GPKhw01Y4xe7X4VIHhesFd4txwIlgABOy2INXeLFzd/xc3DB9TdDTdoeAWuGcfE3SNpx+
	upF6kwmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6SJK-00A9ay-Hd; Wed, 29 Jun 2022 07:40:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6SJF-00A9Zl-0o
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 07:40:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6SJD-0008KO-6g; Wed, 29 Jun 2022 09:40:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6SJC-0003N0-TX; Wed, 29 Jun 2022 09:40:22 +0200
Date: Wed, 29 Jun 2022 09:40:22 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Barebox List <barebox@lists.infradead.org>
Message-ID: <20220629074022.GS19026@pengutronix.de>
References: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de>
 <20220627103358.34487-2-u.kleine-koenig@pengutronix.de>
 <CAP1tNvTAjA3xLXoO_vu3c6Sfgj=yGPrCeBvUp1a3gJsbhGNq0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvTAjA3xLXoO_vu3c6Sfgj=yGPrCeBvUp1a3gJsbhGNq0g@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_004025_101908_3AA08358 
X-CRM114-Status: GOOD (  14.98  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] clk: imx25: Add comments to clk list with offsets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 27, 2022 at 04:13:09PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> пн, 27 июн. 2022 г. в 13:34, Uwe Kleine-König <u.kleine-koenig@pengutronix.de>:
> > This greatly simplifies to determine the offset of a given clk.
> ...
> >  enum mx25_clks {
> > -       dummy, osc, mpll, upll, mpll_cpu_3_4, cpu_sel, cpu, ahb, usb_div, ipg,
> > -       per0_sel, per1_sel, per2_sel, per3_sel, per4_sel, per5_sel, per6_sel,
> > -       per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
> > -       per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, per5,
> > -       per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
> > -       csi_ipg_per, epit_ipg_per, esai_ipg_per, esdhc1_ipg_per, esdhc2_ipg_per,
> > -       gpt_ipg_per, i2c_ipg_per, lcdc_ipg_per, nfc_ipg_per, owire_ipg_per,
> > -       pwm_ipg_per, sim1_ipg_per, sim2_ipg_per, ssi1_ipg_per, ssi2_ipg_per,
> > -       uart_ipg_per, ata_ahb, reserved1, csi_ahb, emi_ahb, esai_ahb, esdhc1_ahb,
> > -       esdhc2_ahb, fec_ahb, lcdc_ahb, rtic_ahb, sdma_ahb, slcdc_ahb, usbotg_ahb,
> > -       reserved2, reserved3, reserved4, reserved5, can1_ipg, can2_ipg, csi_ipg,
> > -       cspi1_ipg, cspi2_ipg, cspi3_ipg, dryice_ipg, ect_ipg, epit1_ipg, epit2_ipg,
> > -       reserved6, esdhc1_ipg, esdhc2_ipg, fec_ipg, reserved7, reserved8, reserved9,
> > -       gpt1_ipg, gpt2_ipg, gpt3_ipg, gpt4_ipg, reserved10, reserved11, reserved12,
> > -       iim_ipg, reserved13, reserved14, kpp_ipg, lcdc_ipg, reserved15, pwm1_ipg,
> > -       pwm2_ipg, pwm3_ipg, pwm4_ipg, rngb_ipg, reserved16, scc_ipg, sdma_ipg,
> > -       sim1_ipg, sim2_ipg, slcdc_ipg, spba_ipg, ssi1_ipg, ssi2_ipg, tsc_ipg,
> > -       uart1_ipg, uart2_ipg, uart3_ipg, uart4_ipg, uart5_ipg, reserved17,
> > -       wdt_ipg, clk_max
> > +       /*   0 */ dummy, osc, mpll, upll, mpll_cpu_3_4, cpu_sel, cpu, ahb, usb_div, ipg,
> > +       /*  10 */ per0_sel, per1_sel, per2_sel, per3_sel, per4_sel, per5_sel, per6_sel,
> > +       /*  17 */ per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
> > +       /*  23 */ per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, per5,
> > +       /*  32 */ per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
> > +       /*  42 */ csi_ipg_per, epit_ipg_per, esai_ipg_per, esdhc1_ipg_per, esdhc2_ipg_per,
> > +       /*  47 */ gpt_ipg_per, i2c_ipg_per, lcdc_ipg_per, nfc_ipg_per, owire_ipg_per,
> > +       /*  52 */ pwm_ipg_per, sim1_ipg_per, sim2_ipg_per, ssi1_ipg_per, ssi2_ipg_per,
> > +       /*  57 */ uart_ipg_per, ata_ahb, reserved1, csi_ahb, emi_ahb, esai_ahb, esdhc1_ahb,
> > +       /*  64 */ esdhc2_ahb, fec_ahb, lcdc_ahb, rtic_ahb, sdma_ahb, slcdc_ahb, usbotg_ahb,
> > +       /*  71 */ reserved2, reserved3, reserved4, reserved5, can1_ipg, can2_ipg, csi_ipg,
> > +       /*  78 */ cspi1_ipg, cspi2_ipg, cspi3_ipg, dryice_ipg, ect_ipg, epit1_ipg, epit2_ipg,
> > +       /*  85 */ reserved6, esdhc1_ipg, esdhc2_ipg, fec_ipg, reserved7, reserved8, reserved9,
> > +       /*  92 */ gpt1_ipg, gpt2_ipg, gpt3_ipg, gpt4_ipg, reserved10, reserved11, reserved12,
> > +       /*  99 */ iim_ipg, reserved13, reserved14, kpp_ipg, lcdc_ipg, reserved15, pwm1_ipg,
> > +       /* 106 */ pwm2_ipg, pwm3_ipg, pwm4_ipg, rngb_ipg, reserved16, scc_ipg, sdma_ipg,
> > +       /* 113 */ sim1_ipg, sim2_ipg, slcdc_ipg, spba_ipg, ssi1_ipg, ssi2_ipg, tsc_ipg,
> > +       /* 120 */ uart1_ipg, uart2_ipg, uart3_ipg, uart4_ipg, uart5_ipg, reserved17,
> > +       /* 126 */ wdt_ipg, clk_max
> >  };
> 
> Maybe this enum should be updated from linux/drivers/clk/imx/clk-imx25.c first?

There should be no clocks changed, only added at the end. As we do not
support these additional clocks I don't think that's necessary.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



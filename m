Delivery-date: Mon, 27 Mar 2023 09:34:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pghMt-00GFfn-AE
	for lore@lore.pengutronix.de; Mon, 27 Mar 2023 09:34:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pghMs-0000k2-S4
	for lore@pengutronix.de; Mon, 27 Mar 2023 09:34:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3U5ZMpI12jPIDUgpGsfPJfy7MZDQ/ZOqs9GM2E0yvw0=; b=SYCk+dQjkxK8e535Cs1fyoA8l2
	whoMVycspXuP/bwRCIVhRbMCYF2DD7CvbOu2p7MNyACGM1UiojCQEBjFwE4iwjSjrBGxE1w8eERbe
	Wm7cnCr5W2dzfb79QL9N8Gus36DUOWhjMfzFRjQ3XPNrFbVVHt3J3SkGCEA5JN5JWqpjkF+NHSLE9
	a2l+dukc7oCKwkuaTcUHX4Zv8ejZufkaWw83EGEa+J29PRgu41gxbbZOqHM7Im7JvjmsPQawvIbH3
	F3NW51d4IfWSyFa07JpQ9YOvCmnRGygjk6b62MH93R057MGoksmugoAHMk0u0XtRlmSnnuDEmnkxH
	KYXzzmYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghLZ-00A4jc-2x;
	Mon, 27 Mar 2023 07:32:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghLV-00A4iW-32
	for barebox@lists.infradead.org;
	Mon, 27 Mar 2023 07:32:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pghLS-00005o-Hc; Mon, 27 Mar 2023 09:32:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pghLS-0002p9-7m; Mon, 27 Mar 2023 09:32:46 +0200
Date: Mon, 27 Mar 2023 09:32:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <20230327073246.GE19113@pengutronix.de>
References: <20230324140327.2154039-1-s.hauer@pengutronix.de>
 <20230324140327.2154039-3-s.hauer@pengutronix.de>
 <b931ac9b682e0cf5130f428d22b2e3f42544f3a7.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b931ac9b682e0cf5130f428d22b2e3f42544f3a7.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_003249_979460_810A73A2 
X-CRM114-Status: GOOD (  24.71  )
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
Subject: Re: [PATCH 2/5] ARM: Rockchip: implement memory read out from
 controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Mar 26, 2023 at 10:34:55AM +0200, Rouven Czerwinski wrote:
> Hi,
> 
> On Fri, 2023-03-24 at 15:03 +0100, Sascha Hauer wrote:
> > From: Ahmad Fatoum <ahmad@a3f.at>
> > 
> > Add a driver to read out the amount of memory from the DDR controller.
> > The decoding of the registers has been taken from U-Boot. Currently
> > supported are the RK3399 and the RK3568, but decoding should work on
> > other Rockchip SoCs as well.
> > 
> > Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-rockchip/Makefile     |   1 +
> >  arch/arm/mach-rockchip/dmc.c        | 232 ++++++++++++++++++++++++++++
> >  include/linux/sizes.h               |   3 +
> >  include/mach/rockchip/dmc.h         |  86 +++++++++++
> >  include/mach/rockchip/rk3399-regs.h |   1 +
> >  include/mach/rockchip/rk3568-regs.h |   1 +
> >  6 files changed, 324 insertions(+)
> >  create mode 100644 arch/arm/mach-rockchip/dmc.c
> >  create mode 100644 include/mach/rockchip/dmc.h
> > 

[...]

> > +
> > +resource_size_t rk3568_ram0_size(void)
> > +{
> > +       void __iomem *pmugrf = IOMEM(RK3568_PMUGRF_BASE);
> > +       u32 sys_reg2, sys_reg3;
> > +       resource_size_t size;
> > +
> > +       sys_reg2 = readl(pmugrf + RK3568_PMUGRF_OS_REG2);
> > +       sys_reg3 = readl(pmugrf + RK3568_PMUGRF_OS_REG3);
> > +
> > +       size = rockchip_sdram_size(sys_reg2, sys_reg3);
> > +       size = min_t(resource_size_t, SZ_4G - SZ_128M, size);
>                                            this ^
> Should be SZ_256M, The frist memory region for RK356x is from 0x0 to
> 0xf000_0000, not 0xf800_0000. Tested on Radxa CM3 RK3566.

True. Maybe we should better write 0xf0000000, because that's the
address value where the DDR stops.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



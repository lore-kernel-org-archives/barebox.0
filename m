Delivery-date: Wed, 26 May 2021 09:26:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnvo-0004uA-Em
	for lore@lore.pengutronix.de; Wed, 26 May 2021 09:26:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llnvn-0003uP-Bf
	for lore@pengutronix.de; Wed, 26 May 2021 09:26:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PC1w6syfKvm04KMEhu+2JdyAKnrz4hZkiPktCQ5fXNE=; b=YUSMaxF2ds6aZD
	9yQ8tdf0UZMnsO1j1PG9f5XFezwxj45IyUHppvbHa6OeqVY9abRn+GUN2pVflZgQ/OAQ2EpHlHoYj
	uvk/hrkArnHKqVlQD/NvP0XPoaPavDJJlZa9AR8AVKoIlUjHcNplt+3/GGnw8WtG61wEMNDOhOJlX
	4X4+eMolO32zlYoXNHpODlOMmZ/cceuj8g2ZL51Ar0NBkhrI86RfoXSj3AavV9Ehl6CogNt8aZFb4
	hnvoGdyAd1vPuyg99mVyXVYXNx1Yejpc8zrOAF9wimEBYdvd8kN2YPqXELULyP66Peqfz4oO/GJ+a
	fk0G7N10FP5tHwxKnGxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llnub-00C2TA-PV; Wed, 26 May 2021 07:25:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llnuW-00C2Nm-BH
 for barebox@lists.infradead.org; Wed, 26 May 2021 07:25:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llnuU-0003YG-ST; Wed, 26 May 2021 09:24:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llnuU-0006yL-JF; Wed, 26 May 2021 09:24:58 +0200
Date: Wed, 26 May 2021 09:24:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210526072458.GR31738@pengutronix.de>
References: <20210526064249.25378-1-s.hauer@pengutronix.de>
 <395d50ec-c2b6-94f8-ceff-bf76d3ec497b@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <395d50ec-c2b6-94f8-ceff-bf76d3ec497b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:22:50 up 97 days, 10:46, 111 users,  load average: 0.31, 0.38,
 0.32
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_002500_435502_CA6B69DA 
X-CRM114-Status: GOOD (  28.46  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] ARM: i.MX: sabresd: Add support for i.MX6QP board
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 26, 2021 at 09:22:41AM +0200, Ahmad Fatoum wrote:
> 
> 
> On 26.05.21 08:42, Sascha Hauer wrote:
> > The SabreSD comes with different SoC variants. This patch adds support
> > for the i.MX6QP based board. the DCD data has been taken from U-Boot
> > 2021.04
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Link: https://lore.barebox.org/20210415140313.29161-1-s.hauer@pengutronix.de
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> > 
> > Changes since v2:
> > - Fix board compatible checks to also match "fsl,imx6qp-sabresd"
> > 
> >  arch/arm/boards/freescale-mx6-sabresd/board.c |  6 +-
> >  ...mxcfg => flash-header-mx6q-sabresd.imxcfg} |  0
> >  .../flash-header-mx6qp-sabresd.imxcfg         | 96 +++++++++++++++++++
> >  .../boards/freescale-mx6-sabresd/lowlevel.c   | 16 ++++
> >  arch/arm/dts/Makefile                         |  2 +-
> >  arch/arm/dts/imx6qp-sabresd.dts               | 42 ++++++++
> >  images/Makefile.imx                           |  4 +-
> >  7 files changed, 162 insertions(+), 4 deletions(-)
> >  rename arch/arm/boards/freescale-mx6-sabresd/{flash-header-mx6-sabresd.imxcfg => flash-header-mx6q-sabresd.imxcfg} (100%)
> >  create mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg
> >  create mode 100644 arch/arm/dts/imx6qp-sabresd.dts
> > 
> > diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
> > index b710c05a47..4df6663775 100644
> > --- a/arch/arm/boards/freescale-mx6-sabresd/board.c
> > +++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
> > @@ -55,7 +55,8 @@ static int ar8031_phy_fixup(struct phy_device *dev)
> >  
> >  static int sabresd_devices_init(void)
> >  {
> > -	if (!of_machine_is_compatible("fsl,imx6q-sabresd"))
> > +	if (!of_machine_is_compatible("fsl,imx6q-sabresd") &&
> > +	    !of_machine_is_compatible("fsl,imx6q-sabresd"))
> 
> That's the same compatible string twice.

Yeah, just realized that as well when I tried to close the editor window and was
asked to save or discard the changes :). Fixed.

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


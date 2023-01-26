Delivery-date: Thu, 26 Jan 2023 08:27:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKwfd-002QUJ-Dp
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 08:27:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKwfa-0005Pf-My
	for lore@pengutronix.de; Thu, 26 Jan 2023 08:27:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W7NSWqYO/Mza8dPGPyVtKb+IDkp8a4MTGz0HUx3GxqE=; b=paJ4FPrp20qhdNTME13THNdiOh
	LcWOULTKqFHnGB+j9tM4tS6yGHwOvbsDehdgoX3GFPrQ9fPqloXm7REW3D8AwUIvEIEPMUnvQ9mOa
	D2UcwpDOi/1Unci2CVESkzB5Nyfohy0OkAI5Tv+Pd/4KRiztwzyvxMI0TiGEGOhDLlShvK9nbOsqR
	Pn3y3X/NK+TXDkBvvGw6k7qQix+L4J2fD69hL2T9LtmgVUGSo9fobuBdTsq3mfXxqF2sF8kfvIJj8
	ZEtvrcwag44UDYcmc4v0lRNqBmKlJysgEURMP4CslllyNd0I/VytXSyZ4+N0mtQHw05HAU+0Tol++
	rmJ++/jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKwdm-009pyc-Nm; Thu, 26 Jan 2023 07:25:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKwdh-009pxU-8u
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 07:25:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKwdc-0005AZ-2j; Thu, 26 Jan 2023 08:25:36 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKwdb-0001Jd-AJ; Thu, 26 Jan 2023 08:25:35 +0100
Date: Thu, 26 Jan 2023 08:25:35 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: John Watts <contact@jookia.org>, barebox@lists.infradead.org
Message-ID: <20230126072535.GE13319@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-2-contact@jookia.org>
 <20230125193357.tdtpryxe5au6vne6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125193357.tdtpryxe5au6vne6@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_232541_340045_AF11D77A 
X-CRM114-Status: GOOD (  26.54  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] ARM: novena: Add Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 08:33:57PM +0100, Marco Felsch wrote:
> Hi John,
> 
> thanks for your patch.
> 
> On 23-01-26, John Watts wrote:
> > The Kosagi Novena is an open source laptop released in 2014.
> > 
> > This patch adds the initial project skeleton for running the PBL
> > and debugging over the UART2 port (labeled DEBUG on the board.)
> > 
> > Signed-off-by: John Watts <contact@jookia.org>
> > ---
> >  arch/arm/boards/Makefile                      |  1 +
> >  arch/arm/boards/novena/Makefile               |  4 +
> >  arch/arm/boards/novena/board.c                | 26 +++++++
> >  .../boards/novena/flash-header-novena.imxcfg  |  6 ++
> >  arch/arm/boards/novena/lowlevel.c             | 73 +++++++++++++++++++
> >  arch/arm/configs/imx_v7_defconfig             |  1 +
> >  arch/arm/dts/Makefile                         |  1 +
> >  arch/arm/dts/imx6q-novena.dts                 |  4 +
> >  arch/arm/mach-imx/Kconfig                     |  6 ++
> >  images/Makefile.imx                           |  2 +
> >  10 files changed, 124 insertions(+)
> >  create mode 100644 arch/arm/boards/novena/Makefile
> >  create mode 100644 arch/arm/boards/novena/board.c
> >  create mode 100644 arch/arm/boards/novena/flash-header-novena.imxcfg
> >  create mode 100644 arch/arm/boards/novena/lowlevel.c
> >  create mode 100644 arch/arm/dts/imx6q-novena.dts
> > 
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index f47aea6602..50088886eb 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -19,6 +19,7 @@ obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
> >  obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
> >  obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
> >  obj-$(CONFIG_MACH_NITROGEN6)			+= boundarydevices-nitrogen6/
> > +obj-$(CONFIG_MACH_NOVENA)			+= novena/
> >  obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
> >  obj-$(CONFIG_MACH_CCMX53)			+= ccxmx53/
> >  obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
> > +	if (!running_from_ram()) {
> > +		imx6_ungate_all_peripherals();
> > +		setup_uart();
> > +		load_barebox();
> > +	} else {
> > +		boot_barebox();
> > +	}
> 
> This could be re-written to:
> 
> 	imx6_ungate_all_peripherals();
> 
> 	if (IS_ENABLED(CONFIG_DEBUG_LL))
> 		setup_uart();

setup_uart() also calls pbl_set_putc() to support PBL console. This is
useful without CONFIG_DEBUG_LL enabled, so please call it
unconditionally.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



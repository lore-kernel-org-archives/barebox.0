Delivery-date: Mon, 17 Nov 2025 20:17:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL4jN-0024ip-2Y
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 20:17:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL4jN-00020c-5o
	for lore@pengutronix.de; Mon, 17 Nov 2025 20:17:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:Message-ID:In-Reply-To:Subject:cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bmag4D2R7pj+fOOCcA6R1kTvYW7EoFcLuQkJUfR1kyw=; b=UapF5oc7lw4B0pM6Hs40gtLFPu
	HMOHF889IyHwg0UpHMXNzdtVjzFjpuc6JvAkY13f1Hnaen57XylUrtkwbku58QZDJhrVuYGm6nYx7
	DKBftQyuKx//pS/MzupW3kwfeTFDK5Dzx2YUfP1DzBcpHHK4shoRDBsgUYafUeFCK8jVGsG44pYks
	esLc4PIZIGIeoCXSyv7ex3tE0wLIXYrfrpV/xTLCuS7dcUSNAsxK/CsOwb59KLZ94O1SzIDA7H1cp
	9ND8/V/mzz/0BiriXbjPhScf4V61vcRnSi7H0pe8d+sMtPLaIwcK4Riy+yKnOwPryb30tbSt8M4QZ
	e4bGwo4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL4is-0000000Gjed-0uUr;
	Mon, 17 Nov 2025 19:17:10 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL4iq-0000000GjeC-0nvm
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 19:17:09 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id 5AHJNCGq013489;
	Mon, 17 Nov 2025 19:23:12 GMT
Received: from localhost (akurz@localhost)
	by blala.de (8.15.2/8.15.2/Submit) with ESMTP id 5AHJNCnd013485;
	Mon, 17 Nov 2025 19:23:12 GMT
Date: Mon, 17 Nov 2025 19:23:12 +0000 (UTC)
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
cc: barebox@lists.infradead.org
In-Reply-To: <aRrgLDG2tbcJ1dg0@pengutronix.de>
Message-ID: <alpine.DEB.2.21.2511171921070.8214@blala.de>
References: <20251117064601.30401-1-akurz@blala.de> <aRrgLDG2tbcJ1dg0@pengutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_111708_518992_78C971B1 
X-CRM114-Status: GOOD (  26.27  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/1] Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On Mon, 17 Nov 2025, Sascha Hauer wrote:

> On Mon, Nov 17, 2025 at 06:46:00AM +0000, Alexander Kurz wrote:
> > Changes in v2:
> > - Link to v1: https://lore.barebox.org/barebox/aRMOO3jH4a16GBI6@pengutronix.de/
> > - Remove explicit RAM size settings from lowlevel.c and dts since this can be
> >   autodetected. As consequence, both DP75SDI variants (Paperwhite 2 and 3) now
> >   share the same dts.
> > - Rebase to current
> > - Attempts to use barebox,deep-probe did unfortunately not work yet.
> >   Brief description of the problem:
> >   Device specific data is stored in /dev/mmc1.boot0.userdata, this data
> >   is read by barebox and passed as ATAGs to the vendor kernel, without this
> >   data, the device won't work properly.
> >   An attempt has been made to use barebox,deep-probe (see patch below), however,
> >   mmc1 will not be available later, resulting e.g. in an error
> >   > Could not read board info from /dev/mmc1.boot0.userdata
> >   during startup.
> >   Example patch:
> > # diff --git a/arch/arm/boards/kindle-mx6sl/board.c b/arch/arm/boards/kindle-mx6sl/board.c
> > index ff8083a756..5c18e074c9 100644
> > --- a/arch/arm/boards/kindle-mx6sl/board.c
> > +++ b/arch/arm/boards/kindle-mx6sl/board.c
> > @@ -194,15 +194,10 @@ late_initcall(kindle_mx6sl_late_init);
> >  
> >  static int kindle6_device_init(void)
> >  {
> > -       struct device *dev;
> > -
> >         if (!is_mx6sl_kindle())
> >                 return 0;
> >  
> > -       /* Probe the eMMC to allow reading the board serial and revision */
> > -       dev = get_device_by_name("mmc1");
> > -       if (dev)
> > -               dev_set_param(dev, "probe", "1");
> > +       of_device_ensure_probed_by_alias("mmc1");
> 
> On return of this function the MMC host is probed, but the card is not
> yet detected. You can do that by adding a:
> 
> 	device_detect_by_name("mmc1");
> 
> Does it work with this line added?
Thanks, with this change, the this works now with barebox,deep-probe.

> 
> Sascha

Thanks, Alexander
> 
> >  
> >         defaultenv_append_directory(defaultenv_kindle_mx6sl);
> >  
> > # diff --git a/arch/arm/dts/imx6sl-kindle-dp75sdi.dts b/arch/arm/dts/imx6sl-kindle-dp75sdi.dts
> > index 9dc4a0c867..05fdd77a47 100644
> > --- a/arch/arm/dts/imx6sl-kindle-dp75sdi.dts
> > +++ b/arch/arm/dts/imx6sl-kindle-dp75sdi.dts
> > @@ -12,7 +12,7 @@
> >  / {
> >         model = "kindle-dp75sdi";
> >         compatible = "amazon,imx6sl-kindle-dp75sdi",  "fsl,imx6sl";
> > -       barebox,disable-deep-probe;
> > +       barebox,deep-probe;
> >  };
> >  
> >  &iomuxc {
> > 
> > 



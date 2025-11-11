Delivery-date: Tue, 11 Nov 2025 11:22:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIlW8-0007Cg-3C
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 11:22:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIlW8-0000IV-A7
	for lore@pengutronix.de; Tue, 11 Nov 2025 11:22:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XI781SquWvqEOLx6Uthfixd0uvDKNFtAz83lZZZJKk8=; b=ymSNW1GLYueuTTTuU+KledKl1v
	V1PHVZ8IP2a6pnsExETmeq/By60+8unTZKZ/4SDtcQgAITo1S6W4uDlfeumt80YyhFdqcZ4Wzz1r7
	hPw/7YXeh1DnoeLKb/qngi620hPm9CN8fYha0BuTFa0nYRnHg/V709pjfGinoZBnH28oPHeqlp8i4
	FPHfv0SYVQKqR/RluSZBPmIRw6jvKSZkHZpxp3SYjcq/ibRGd7WFnA6D5dDmsGQK88ST6ZEyHIMiV
	UcoCk6/XGGUmy9T3my785gdvYeOCJkjN9BmunvxjFrmmPMezX6XQf6/lL9T7CL3ttP9taha2y0zzc
	6M995+Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIlVZ-00000006wVQ-22er;
	Tue, 11 Nov 2025 10:21:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIlVW-00000006wUu-3EoX
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 10:21:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vIlVT-0000BI-TF; Tue, 11 Nov 2025 11:21:47 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vIlVT-008BRc-22;
	Tue, 11 Nov 2025 11:21:47 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vIlVT-00ESVk-1f;
	Tue, 11 Nov 2025 11:21:47 +0100
Date: Tue, 11 Nov 2025 11:21:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org
Message-ID: <aRMOO3jH4a16GBI6@pengutronix.de>
References: <20251109180337.7809-1-akurz@blala.de>
 <aRGoWdjxowN3TTRA@pengutronix.de>
 <alpine.DEB.2.21.2511110711550.12061@blala.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2511110711550.12061@blala.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_022150_815177_2A05314E 
X-CRM114-Status: GOOD (  33.54  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM i.MX6SL: Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Nov 11, 2025 at 07:32:13AM +0000, Alexander Kurz wrote:
> Hi Sascha,
> 
> On Mon, 10 Nov 2025, Sascha Hauer wrote:
> 
> > 
> > Hi Alexander,
> > 
> > On Sun, Nov 09, 2025 at 06:03:37PM +0000, Alexander Kurz wrote:
> > > Four Amazon Kindle 6th and 7th generation e-book readers were considered
> ...
> > > diff --git a/Documentation/boards/imx/amazon-kindle-6-7.rst b/Documentation/boards/imx/amazon-kindle-6-7.rst
> > 
> > Thanks for the good documentation, very appreciated :)
> Thanks!
> 
> > 
> > > new file mode 100644
> > > index 0000000000..c7a5ef9424
> > > +ENTRY_FUNCTION(start_imx6sl_kindle6_dp75sdi, r0, r1, r2)
> > > +{
> > > +	void *fdt;
> > > +
> > > +	imx6_cpu_lowlevel_init();
> > > +
> > > +	arm_setup_stack(0x00920000);
> > > +
> > > +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> > > +		writel(0x4, 0x020e016c);
> > > +		imx6_uart_setup_ll();
> > > +	}
> > > +
> > > +	fdt = __dtb_imx6sl_kindle6_dp75sdi_start + get_runtime_offset();
> > > +	barebox_arm_entry(0x80000000, SZ_256M, fdt);
> > 
> > Does imx6ul_barebox_entry() work here instead? In that case you could
> > drop the memory nodes from the device trees.
> Replacing barebox_arm_entry() with imx6ul_barebox_entry() seems to work
> so far (have only tested it on one device), but will this really make the 
> memory nodes from the device trees obsolete as well? Some devices have 256 
> while others 512MB RAM, when the amount of memory is not hardcoded, is it 
> auto-determined?

Yes, the memory nodes will be autogenerated from the configuration read
back from the DRAM controller.

> 
> > 
> > > +++ b/arch/arm/dts/imx6sl-kindle-nm460gz.dts
> > > @@ -0,0 +1,69 @@
> > > +// SPDX-License-Identifier: GPL-2.0-or-later
> > > +/*
> > > + * Copyright (C) 2025 Alexander Kurz <akurz@blala.de>
> > > + */
> > > +
> > > +/dts-v1/;
> > > +#include "imx6sl-kindle-common.dtsi"
> > > +#include <dt-bindings/interrupt-controller/irq.h>
> > > +#include <dt-bindings/gpio/gpio.h>
> > > +#include <dt-bindings/input/input.h>
> > > +
> > > +/ {
> > > +	model = "kindle-nm460gz";
> > > +	compatible = "amazon,imx6sl-kindle-nm460gz", "fsl,imx6sl";
> > > +	barebox,disable-deep-probe;
> > 
> > Is this intentional? What doesn't work with deep probe enabled?
> With barebox,deep-probe mmc1 will not be available when kindle_rev_init()
> is called at late_initcall(kindle_mx6sl_late_init).
> This way, the required ATAGs will be missing.
> Will deep-probe influence device_initcall(kindle6_device_init)?

deep probe will probe devices on demand for you. What's left to do for
you is to say that you need the mmc1 device by doing a:

of_device_ensure_probed_by_alias("mmc1");

This will handle the dependencies like probing regulators or clocks
regardless of the initcall level you are in.

You also have this in your patch:

+       /* Probe the eMMC to allow reading the board serial and revision */
+       dev = get_device_by_name("mmc1");
+       if (dev)
+               dev_set_param(dev, "probe", "1");

which can be replaced by a:

device_detect_by_name("mmc1");

The different initcall levels in your board code shouldn't be necessary
anmore with this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



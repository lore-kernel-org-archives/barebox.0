Delivery-date: Tue, 11 Nov 2025 08:26:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIimC-0004Wg-3A
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 08:26:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIimC-0001uL-9q
	for lore@pengutronix.de; Tue, 11 Nov 2025 08:26:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:Message-ID:In-Reply-To:Subject:cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OK7UbWO7zPhi7tle5QTrih0phNYSx+PquMuFo2s5BFI=; b=McSKzBHwPNxAnXqJydGvJ7KWGg
	TKHwL9B+WJbQNM9ayhlYEvFTNDqz9LoEnX9Pz42b2lpUXpis/PG3Bmq5Ai20IujpRE/lullCN6zLa
	Jq7xlGPtyhWO8qzlqe3IXZ7/OoT51xUusIX6pr3m7DJ1kVtT7CTGm2aQOLMF1B6WSXk4ElUgGc+l7
	SIgGdSl5TWk8aAD6XO+I6rPAYVMAjhizq4mLVtWIdPss5ADjDRdDe18IrrpU6yRReps08wx0J6CrR
	I+R50tKWl40ocV17ZHWIaDlXzakeZgVqDxVQrY3WjWb43JLzTXIQOcWNTFOOoA3Td3tAQJIJP5i2E
	DjXhLyDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIild-00000006gVD-1kpy;
	Tue, 11 Nov 2025 07:26:17 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIila-00000006gUk-0iIt
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 07:26:16 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id 5AB7WDZ5012309;
	Tue, 11 Nov 2025 07:32:13 GMT
Received: from localhost (akurz@localhost)
	by blala.de (8.15.2/8.15.2/Submit) with ESMTP id 5AB7WDtJ012305;
	Tue, 11 Nov 2025 07:32:13 GMT
Date: Tue, 11 Nov 2025 07:32:13 +0000 (UTC)
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
cc: barebox@lists.infradead.org
In-Reply-To: <aRGoWdjxowN3TTRA@pengutronix.de>
Message-ID: <alpine.DEB.2.21.2511110711550.12061@blala.de>
References: <20251109180337.7809-1-akurz@blala.de> <aRGoWdjxowN3TTRA@pengutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_232614_498913_ABEA4F30 
X-CRM114-Status: GOOD (  20.14  )
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
Subject: Re: [PATCH] ARM i.MX6SL: Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On Mon, 10 Nov 2025, Sascha Hauer wrote:

> 
> Hi Alexander,
> 
> On Sun, Nov 09, 2025 at 06:03:37PM +0000, Alexander Kurz wrote:
> > Four Amazon Kindle 6th and 7th generation e-book readers were considered
...
> > diff --git a/Documentation/boards/imx/amazon-kindle-6-7.rst b/Documentation/boards/imx/amazon-kindle-6-7.rst
> 
> Thanks for the good documentation, very appreciated :)
Thanks!

> 
> > new file mode 100644
> > index 0000000000..c7a5ef9424
> > +ENTRY_FUNCTION(start_imx6sl_kindle6_dp75sdi, r0, r1, r2)
> > +{
> > +	void *fdt;
> > +
> > +	imx6_cpu_lowlevel_init();
> > +
> > +	arm_setup_stack(0x00920000);
> > +
> > +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> > +		writel(0x4, 0x020e016c);
> > +		imx6_uart_setup_ll();
> > +	}
> > +
> > +	fdt = __dtb_imx6sl_kindle6_dp75sdi_start + get_runtime_offset();
> > +	barebox_arm_entry(0x80000000, SZ_256M, fdt);
> 
> Does imx6ul_barebox_entry() work here instead? In that case you could
> drop the memory nodes from the device trees.
Replacing barebox_arm_entry() with imx6ul_barebox_entry() seems to work
so far (have only tested it on one device), but will this really make the 
memory nodes from the device trees obsolete as well? Some devices have 256 
while others 512MB RAM, when the amount of memory is not hardcoded, is it 
auto-determined?

> 
> > +++ b/arch/arm/dts/imx6sl-kindle-nm460gz.dts
> > @@ -0,0 +1,69 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Copyright (C) 2025 Alexander Kurz <akurz@blala.de>
> > + */
> > +
> > +/dts-v1/;
> > +#include "imx6sl-kindle-common.dtsi"
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +
> > +/ {
> > +	model = "kindle-nm460gz";
> > +	compatible = "amazon,imx6sl-kindle-nm460gz", "fsl,imx6sl";
> > +	barebox,disable-deep-probe;
> 
> Is this intentional? What doesn't work with deep probe enabled?
With barebox,deep-probe mmc1 will not be available when kindle_rev_init()
is called at late_initcall(kindle_mx6sl_late_init).
This way, the required ATAGs will be missing.
Will deep-probe influence device_initcall(kindle6_device_init)?

> 
> Sascha
> 
Cheers, Alexander



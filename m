Delivery-date: Thu, 16 Mar 2023 10:00:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcjSv-002YJy-FT
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 10:00:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcjSu-0005o8-Tz
	for lore@pengutronix.de; Thu, 16 Mar 2023 10:00:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j+o7gijsswX1UJ4PvDwlhmnltfFJRVvHbbMsTx/SoSw=; b=3HHW+1EsBJFCzbhXFG2HUrpmr/
	kJiPjS/fReBsWdWWEfpOm4vHQ572mWInL72CVnSAw3C/WLOntPRAK3+VGqCVRdcelu3Yw0jfLnpnw
	mLtpHm+dNJLwuWAc3l3jLjNAZ1d/rqnvkeYQdaT37IYZIAnOr+8E7kXxy3s7cNgu01b7pUzFoETIf
	ajwOKe6RrzF0RIu7rabQRD07jVxHW/WkRjgMlYmjigHZ5OM+7SbgJXz19vvqoxK9kD5mecpOfIs64
	RT0liKMTgMDk38UiKWTE6jgvHpxp0Juqg6WYeC6sidNcitoQjriZ7SG3XvOvXO2KuN1BjDYij+C67
	Lap6CLng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcjRd-00FnZX-0W;
	Thu, 16 Mar 2023 08:58:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcjRa-00FnYN-0J
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 08:58:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pcjRW-0005iU-PB; Thu, 16 Mar 2023 09:58:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pcjRW-0004rt-Cm; Thu, 16 Mar 2023 09:58:38 +0100
Date: Thu, 16 Mar 2023 09:58:38 +0100
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230316085838.GQ7446@pengutronix.de>
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
 <7488559d-b9bc-0482-0732-8ab1d794f3fa@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7488559d-b9bc-0482-0732-8ab1d794f3fa@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_015842_138781_25A56B56 
X-CRM114-Status: GOOD (  32.87  )
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
Subject: Re: [PATCH v3 0/7] support overlays to the barebox live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 15, 2023 at 05:09:47PM +0100, Michael Riesch wrote:
> Hi Sascha,
> 
> On 3/10/23 10:42, Sascha Hauer wrote:
> > Support for applying a device tree overlay to the barebox live tree
> > is already present. This series adds a few missing pieces:
> > 
> > - add support for applying overlays to the live tree from the command
> >   line
> > - add support for adding new I2C/SPI devices via overlays
> > - add Makefile magic to build dtbo files and dtbo.o files to include
> >   into the barebox binary from dtso files
> > 
> > Changes since v2:
> > - Don't build compressed dtbo files
> > - Do not build overlays for PBL
> > - rename symbols to __dtbo_ to avoid possible name clashes
> > 
> > Changes since v1:
> > - add a device_rescan() static inline wrapper
> > - add missing call to of_i2c_register_devices() in i2c_add_numbered_adapter()
> > - replace device_detect with device_rescan in of_device_create_on_demand()
> > 
> > Sascha Hauer (7):
> >   kbuild: Add target to build dtb overlay files
> >   driver: Add rescan hook to struct device
> >   i2c: implement rescan
> >   spi: Directly register SPI device
> >   spi: reduce scope of 'chip'
> >   spi: implement rescan
> >   of_overlay: Add option to apply overlay to live tree
> > 
> >  commands/of_overlay.c  | 38 ++++++++++++++++++++++++++++++++++----
> >  drivers/i2c/i2c.c      | 24 +++++++++---------------
> >  drivers/of/platform.c  | 12 +++++-------
> >  drivers/spi/spi.c      | 29 ++++++++++++++++++++++++-----
> >  include/driver.h       |  6 ++++++
> >  scripts/Makefile.build |  2 ++
> >  scripts/Makefile.lib   | 10 +++++++++-
> >  scripts/gen-dtbo-s     | 14 ++++++++++++++
> >  8 files changed, 103 insertions(+), 32 deletions(-)
> >  create mode 100755 scripts/gen-dtbo-s
> > 
> 
> With this series I can apply a device tree overlay, but a node with a
> "fixed-clock" does not lead to a corresponding clock showing up in clk_dump.
> 
> Any idea what went wrong here?

The fixed-clock is initialized with CLK_OF_DECLARE which results in a
linker list which is iterated over in of_clk_init() which is called
in an initcall during barebox startup.

The clocks registered via CLK_OF_DECLARE do not have a device associated
with them. The clocks also do not have a link to the device node they
provide the clock for, also the device node doesn't have a link to the
clock. This means we currently have no idea whether there already is
a clock registered for a particular node or if the node has just been
added by an overlay. There seems to be some work necessary to get this
working.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



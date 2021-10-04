Delivery-date: Mon, 04 Oct 2021 09:54:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXIns-0000H8-L6
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 09:54:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXInr-0000zr-H6
	for lore@pengutronix.de; Mon, 04 Oct 2021 09:54:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mx+/LyPiZhXmBtED3C3P613oIrwLmgrtbVFuQ12qBZo=; b=4IUJ46XZxyFBN9
	SseO1VZEhcBBNUwZM0h202EIgRJ359noFxJGy9zwl96dGcW7jHBk3dsONPTGIPbYLQ58vfs3EMB2O
	fatmsaYRwKfen0tGSq6A4JPXGsqNQdSnKX2M6K7d6m1AtfAP40aeXCz10W4AC48goy+IMRCWOZkzu
	+xMYK8vFSMD53k3NBwdRmYLaZ5qjBIdXRDwOEiUsGbQYUaGP0JsTCilvkUbsA/X6ShcyG1GzTwEH/
	ihT2AXbRCeMOlfFG1e8XjiCuYUQVAvKbbeGCBghRBp8c7qZRezNg+WxpOOEBbJ20Dg3/Il2U+5lHw
	MVTzTUvtfh2lafcoEbaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXImX-005XV0-H4; Mon, 04 Oct 2021 07:53:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXImS-005XTt-IA
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 07:53:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXImP-0000to-BC; Mon, 04 Oct 2021 09:52:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXImN-0001tu-Uh; Mon, 04 Oct 2021 09:52:55 +0200
Date: Mon, 4 Oct 2021 09:52:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20211004075255.GM28453@pengutronix.de>
References: <20211001142453.4a3c0ba9bd7bb909125e2a5f@gmail.com>
 <20211002084850.GA24834@pengutronix.de>
 <20211002124447.74a231c6c07697e9042b905e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211002124447.74a231c6c07697e9042b905e@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:47:38 up 228 days, 11:11, 130 users,  load average: 0.20, 0.34,
 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_005300_629905_7741C4F9 
X-CRM114-Status: GOOD (  33.46  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: 'of_compatible' and 'model' imd records are unusable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Oct 02, 2021 at 12:44:47PM +0300, Antony Pavlov wrote:
> On Sat, 2 Oct 2021 10:48:50 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> Hi Sascha!
> 
> > On Fri, Oct 01, 2021 at 02:24:53PM +0300, Antony Pavlov wrote:
> > > Hi all!
> > > 
> > > I have cloned barebox c67ada0024da (v2021.08.0) and found that
> > > 'of_compatible' and 'model' imd records are unusable.
> > > 
> > > E.g.
> > > 
> > > barebox$ make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- imx_v8_defconfig
> > > barebox$ make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu-
> > > ...
> > > images built:
> > > barebox-nxp-imx8mm-evk.img
> > > barebox-prt-prt8mm.img
> > > barebox-nxp-imx8mp-evk.img
> > > barebox-nxp-imx8mq-evk.img
> > > barebox-zii-imx8mq-dev.img
> > > barebox-phytec-phycore-imx8mq.img
> > > 
> > > barebox$ ./scripts/bareboximd images/barebox-nxp-imx8mm-evk.img
> > > build: #1 Fri Oct 1 10:16:30 UTC 2021
> > > buildsystem version: 
> > > crc32: 0x00000000
> > > release: 2021.08.0
> > > barebox$ 
> > > 
> > > There is no 'of_compatible' and 'model' imd records in bareboximd output.
> > > 
> > > So there is no chance to imd_find_type(..., IMD_TYPE_OF_COMPATIBLE)
> > > (see common/bbu.c) in a barebox image file.
> > > 
> > > scripts/gen-dtb-s puts IMD_TYPE_OF_COMPATIBLE and IMD_TYPE_MODEL
> > > records into barebox_imd_0 section.
> > > 
> > > BAREBOX_IMD macro (include/asm-generic/barebox.lds.h)
> > > does not KEEP barebox_imd_0 section":
> > 
> > This is done on purpose because otherwise...
> > 
> > > 
> > > #define BAREBOX_IMD                             \
> > >         STRUCT_ALIGN();                         \
> > >         KEEP(*(.barebox_imd_start))             \
> > >         KEEP(*(.barebox_imd_1*))                \
> > >         *(.barebox_imd_0*)                      \
> > >         KEEP(*(.barebox_imd_end))
> > > 
> > > KEEPing barebox_imd_0 leads to several 'of_compatible' and 'model' records
> > > in one barebox image file, e.g.:
> > 
> > ...exactly this would happen.
> > 
> > To get the of_compatible and model imd tags in an image you have to put
> > IMD_USED_OF() explicitly into the entry function of the image handling
> > this compatible, there's no way for the build process to know which
> > image handles which device tree. See below for an example which adds the
> > tags for the boards you are currently compiling.
> 
> There are two remarks:
> 
> 1. It looks like we still able to automatically add of_compatible and model imd tags.
> Please see my message http://lists.infradead.org/pipermail/barebox/2021-October/037412.html

I gave it a try, it works and looks like a good solution. We'll need
another

if [ "$imd" = "y" ]; then
       echo ".word __imd_${name}_start"
fi

at the end of scripts/gen-dtb-s to make it work with compressed dtbs as
well.

> 
> Can we automaticaly generate of_compatible and model imd tags for most of the boards
> and explicitly generate tags with IMD_USED_OF() just for selected boards?

With your approach we can drop IMD_USED_OF(), at least I see no more
need for it.

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


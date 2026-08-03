Delivery-date: Mon, 03 Aug 2026 15:45:45 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqszA-005tKJ-1O
	for lore@lore.pengutronix.de;
	Mon, 03 Aug 2026 15:45:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 734EC200B5C
	for <lore@pengutronix.de>; Mon, 03 Aug 2026 15:45:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=EceDyOS2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Clp2zW6yyvEurbc2KDkqwymi3gzeiTS5rNs1+McdafI=; b=EceDyOS2cOK0WEN1F5KvEpEICL
	6QjbIwuSara2rf3DTJdNvTAeM2tqUq85vcGxUubdWIUI2Clc0Z1RoJeCQK4zrUFrq6Pe451BZnkZH
	xqpJvwG2YWAI9xwR1dGUi/PiR/3KcKHFhT2XqWoD9XOEBUqkMOD3pe0antl5gEOFKRUrY5ownxWl6
	LaDYvn2NIu3VpnXWSFbpms4/Aq8iDQaawbRE0ImK7tXRmnrpbODFVdUnsqSaA3Dpzg4H4uunsd2N7
	8OX32UIuhwiUFITJzEVArq3GWm59WxmSicD7bOisxXYQJh+ttADF3ISpP4J69TgjeLsncVIDYbXgT
	b/m39oGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsxf-0000000HBfz-0phc;
	Mon, 03 Aug 2026 13:44:11 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsxb-0000000HBfD-3kKf
	for barebox@lists.infradead.org;
	Mon, 03 Aug 2026 13:44:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 17E2B2008C4;
	Mon, 03 Aug 2026 15:44:00 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wqsxU-002hw2-01;
	Mon, 03 Aug 2026 15:44:00 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wqsxT-00000007rSD-3ols;
	Mon, 03 Aug 2026 15:43:59 +0200
Date: Mon, 3 Aug 2026 15:43:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>, 
	"open list:BAREBOX" <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Subject: Re: [PATCH v3 01/15] ARM: mvebu: add Netgear RN102 support
Message-ID: <vcqxg6s7erwuuxe62wdhecqrqsuao427vigelmvkg5pqjamvz7@46g5a3zsbs43>
References: <20260802-rn102-rn104-series-v3-1-f7685a279fb5@gmail.com>
 <E1wqsAC-00000007q3I-490Q@pty.whiteo.stw.pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1wqsAC-00000007q3I-490Q@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_064408_080774_297E4FF2 
X-CRM114-Status: GOOD (  27.40  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-08-03, Sascha Hauer wrote: > On 2026-08-02 15:16, Luca
    Lauro via B4 Relay wrote: > > From: Luca Lauro <famlauro93l@gmail.com> >
   > > > This adds full support for the Netgear ReadyNAS 102, includi [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-4.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 734EC200B5C
X-Stat-Signature: a773h351cfqwfr78w4h7gtdw5ufemg84

On 26-08-03, Sascha Hauer wrote:
> On 2026-08-02 15:16, Luca Lauro via B4 Relay wrote:
> > From: Luca Lauro <famlauro93l@gmail.com>
> > 
> > This adds full support for the Netgear ReadyNAS 102, including:
> > 
> >  - board driver matching on "netgear,rn102"
> >  - lowlevel initialization
> >  - barebox overlay with environment, state backend and
> > 	NAND partition layout
> >  - Kconfig entry
> >  - image support
> > 
> > Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
> > ---
> >  arch/arm/boards/Makefile                 |   1 +
> >  arch/arm/boards/netgear-rn102/Makefile   |   4 +
> >  arch/arm/boards/netgear-rn102/board.c    | 243 +++++++++++++++++++++++++++++++
> >  arch/arm/boards/netgear-rn102/lowlevel.c |  58 ++++++++
> >  arch/arm/dts/Makefile                    |   1 +
> >  arch/arm/dts/armada-370-rn102-bb.dts     |  82 +++++++++++
> >  arch/arm/mach-mvebu/Kconfig              |   4 +
> >  images/Makefile.mvebu                    |  10 ++
> >  8 files changed, 403 insertions(+)
> > 
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index dd2f2c324e..aca1b45a81 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -64,6 +64,7 @@ obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB)		+= marvell-armada-xp-db/
> >  obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
> >  obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
> >  obj-$(CONFIG_MACH_MYIRTECH_X335X)		+= myirtech-x335x/
> > +obj-$(CONFIG_MACH_NETGEAR_RN102)		+= netgear-rn102/
> >  obj-$(CONFIG_MACH_NETGEAR_RN104)		+= netgear-rn104/
> >  obj-$(CONFIG_MACH_NETGEAR_RN2120)		+= netgear-rn2120/
> >  obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
> > diff --git a/arch/arm/boards/netgear-rn102/Makefile b/arch/arm/boards/netgear-rn102/Makefile
> > new file mode 100644
> > index 0000000000..da63d2625f
> > --- /dev/null
> > +++ b/arch/arm/boards/netgear-rn102/Makefile
> > @@ -0,0 +1,4 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +
> > +obj-y += board.o
> > +lwl-y += lowlevel.o
> > diff --git a/arch/arm/boards/netgear-rn102/board.c b/arch/arm/boards/netgear-rn102/board.c
> > new file mode 100644
> > index 0000000000..dba3d11518
> > --- /dev/null
> > +++ b/arch/arm/boards/netgear-rn102/board.c
> > @@ -0,0 +1,243 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <gpio.h>
> > +#include <driver.h>
> > +#include <of.h>
> > +#include <linux/device.h>
> > +#include <linux/mbus.h>
> > +#include <mach/mvebu/armada-370-xp-regs.h>
> > +#include <bbu.h>
> > +
> > +/*
> > + *  Early GPIO0 MMIO
> > + *
> > + * GPIO driver arrives too late for the disks to be
> > + * ready in time for AHCI driver probe.
> 
> barebox supports deep probe which means the devices are made available
> once needed or requested. Provided your dts carries the
> barebox,deep-probe property you can do this:
> 
> of_device_ensure_probed_by_alias("gpio0");
> of_device_ensure_probed_by_alias("gpio1");
> of_device_ensure_probed_by_alias("gpio2");
> 
> From that on the GPIO driver should be probed and you can use it.
> 
> It shouldn't be necessary to duplicate the GPIO driver here.
> 
> > +/*
> > + * RN102 board driver
> > + *
> > + * Preferred pattern: board-specific code as a platform driver
> > + * matching on the root DT node ("netgear,rn102").
> > + */
> > +static int rn102_probe(struct device *dev)
> > +{
> > +	/* CFU configuration */
> > +	writel(0xC6, 0xf1020228);
> > +
> > +	setup_usb0();
> > +	setup_bays();
> > +	init_disks();
> > +
> > +	/* Barebox Update handlers */
> > +	bbu_register_std_file_update("bootloader", 0,
> > +					 "/dev/nand0.bootloader",
> > +					 filetype_kwbimage_v1);
> > +
> > +	bbu_register_std_file_update("kernel", 0,
> > +					 "/dev/nand0.kernel",
> > +					 filetype_arm_zimage);
> > +
> > +	bbu_register_std_file_update("minirootfs", 0,
> > +					 "/dev/nand0.minirootfs",
> > +					 filetype_gzip);
> 
> That is a creative use of barebox update handlers. They are designed for
> updating barebox itself, not arbitrary other components.
> 
> I must think about this.

Hint:
You can expose the kernel and minirootfs via fastboot partitions to get
a nice user interface. Barebox can talk the fastboot protocol over USB
or NET.

Regards,
  Marco



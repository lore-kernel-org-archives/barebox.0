Delivery-date: Thu, 12 Jun 2025 10:10:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPd0n-006RQ2-2b
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 10:10:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPd0n-0008F4-6Z
	for lore@pengutronix.de; Thu, 12 Jun 2025 10:10:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SH7s3aVo3gHjFq0pE65E+8n3bhyfqBxs4dxv7if1KGw=; b=gXutZLQVVfA8vazBnfGnJd1xkB
	fep8y2QBqaGgjWD2VE8Bs9cbRxAAnaUifFW5t0K5Ab3z6R+ZPVbgKUlrbfRADx5xNzdvDx1LbqKoP
	iXnvz+fr2Eq2SkzQjpC521kaSNrHpNHq1QPiO1SIRlMLTjsPewURrzqn21Ts8VrjC7UR05bTQ/wt2
	i1r+HCiKg8Bwq1ZefJxe928sRhz9Wo/UQSTiMInkLqOTnnozXeFPFg2SbYIHBSq7vQ+DTPIIAZAB2
	2fgdJ3M/Wi7LRsAO6T2/stTL9Kr3HKTaGSfRQk27sBBbvqGtK7LXXl8bCnYs1JlgEHwaK/OkM/IbG
	5AhkHZvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPd0K-0000000CYpD-1mdB;
	Thu, 12 Jun 2025 08:09:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPcYW-0000000CTd3-3wgm
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 07:41:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uPcYU-0005GM-6G; Thu, 12 Jun 2025 09:40:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPcYU-0035HL-02;
	Thu, 12 Jun 2025 09:40:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPcYT-008nzo-2w;
	Thu, 12 Jun 2025 09:40:57 +0200
Date: Thu, 12 Jun 2025 09:40:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aEqEiWXb6jB0h9yz@pengutronix.de>
References: <20250611093622.1309016-1-l.schmidt@pengutronix.de>
 <13ed49a0-3e05-4fe7-9966-231229600f94@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13ed49a0-3e05-4fe7-9966-231229600f94@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_004100_976328_63BC95DE 
X-CRM114-Status: GOOD (  26.20  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: beagleplay: Enable 32k crystal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jun 11, 2025 at 08:24:22PM +0200, Ahmad Fatoum wrote:
> Hello Lars,
> 
> On 6/11/25 11:36, Lars Schmidt wrote:
> > Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
> 
> Would it make sense to describe the existence of the external 32K
> crystal in the DT, so we don't need to add code for every board?

Yes. For now it's ok though.

Sascha

> 
> Thanks,
> Ahmad
> 
> > ---
> >  arch/arm/boards/beagleplay/Makefile |  1 +
> >  arch/arm/boards/beagleplay/board.c  | 30 +++++++++++++++++++++++++++++
> >  2 files changed, 31 insertions(+)
> >  create mode 100644 arch/arm/boards/beagleplay/board.c
> > 
> > diff --git a/arch/arm/boards/beagleplay/Makefile b/arch/arm/boards/beagleplay/Makefile
> > index a8c7320bdb..2d257fb4b2 100644
> > --- a/arch/arm/boards/beagleplay/Makefile
> > +++ b/arch/arm/boards/beagleplay/Makefile
> > @@ -1,2 +1,3 @@
> >  pbl-y += lowlevel.o
> > +obj-y += board.o
> >  pbl-$(CONFIG_MACH_K3_CORTEX_R5) += entry-r5.o ddr.o
> > diff --git a/arch/arm/boards/beagleplay/board.c b/arch/arm/boards/beagleplay/board.c
> > new file mode 100644
> > index 0000000000..dd42f0b7f0
> > --- /dev/null
> > +++ b/arch/arm/boards/beagleplay/board.c
> > @@ -0,0 +1,30 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#define pr_fmt(fmt) "beagleplay: " fmt
> > +
> > +#include <linux/kernel.h>
> > +#include <mach/k3/common.h>
> > +#include <driver.h>
> > +#include <bbu.h>
> > +
> > +static int beagleplay_probe(struct device *dev)
> > +{
> > +	am625_enable_32k_crystal();
> > +
> > +	return 0;
> > +}
> > +
> > +static __maybe_unused struct of_device_id beagleplay_ids[] = {
> > +	{
> > +		.compatible = "beagle,am625-beagleplay",
> > +	}, {
> > +		/* sentinel */
> > +	}
> > +};
> > +
> > +static struct driver beagleplay_driver = {
> > +	.name = "beagleplay",
> > +	.probe = beagleplay_probe,
> > +	.of_compatible = beagleplay_ids,
> > +};
> > +coredevice_platform_driver(beagleplay_driver);
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



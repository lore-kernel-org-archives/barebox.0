Delivery-date: Fri, 15 Oct 2021 09:13:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mbHP0-0002Un-O3
	for lore@lore.pengutronix.de; Fri, 15 Oct 2021 09:13:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mbHOz-00078y-P8
	for lore@pengutronix.de; Fri, 15 Oct 2021 09:13:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=No/6l6jSHESl683y+LhwN0+/yJU/9vcb+TQAIQx1xKs=; b=LPWkdEtE9eAx5n0aM5bD0927Ix
	pmgiWfmrU1x6fHvedavrXU9XVt/4Z7Ge2V4/xkRxerQfuWXFr+bu9GPQIOmJsrNZF7I0tHOq+1PPh
	pX5ji5mobXEERDh3ZYBNo1vuTAPW7wv9SgHHMTO1fnSGnjDr7YuwvSHmBRF0JCgJYmNqEJbexRMq7
	CCBulAHNsu8RMVzPY1bttlgB0hdltDwB9YA1KHFyf2hdjO8nIvaRI4ey7iXwQ8wc8XY6MzH/BSo2N
	oxYK8PdnZ1KYM2J2zHYQsm5eTsD7i7r3wAn4VhHjdsC86L0u9fQFLlP+RjOn4+yKUCB7nklOH8ist
	Nq/jC1Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbHNQ-005fMx-OK; Fri, 15 Oct 2021 07:11:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbHNM-005fLy-04
 for barebox@lists.infradead.org; Fri, 15 Oct 2021 07:11:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mbHNK-0006fY-Jd; Fri, 15 Oct 2021 09:11:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mbHNK-0000QF-0g; Fri, 15 Oct 2021 09:11:30 +0200
Date: Fri, 15 Oct 2021 09:11:29 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Message-ID: <20211015071129.GD25698@pengutronix.de>
References: <20211013075327.28225-1-o.rempel@pengutronix.de>
 <20211013075327.28225-2-o.rempel@pengutronix.de>
 <CAMHeXxPE0Y71XOLLmMfSiVVA1T51+z_Afi9Kzn3-9qX=hxKOFQ@mail.gmail.com>
 <20211013111951.GD17532@pengutronix.de>
 <CAMHeXxMuEMF5yuBkxkNHBVNfO6Yk66mw+5++yesqsOOGSGrBeA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxMuEMF5yuBkxkNHBVNfO6Yk66mw+5++yesqsOOGSGrBeA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:44:31 up 239 days, 10:08, 115 users,  load average: 0.21, 0.22,
 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_001132_064877_CC5E6D22 
X-CRM114-Status: GOOD (  31.10  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] net: phy: micrel: sync init code for ksz80xx
 variants with the kernel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Oct 14, 2021 at 01:32:27PM -0700, Trent Piepho wrote:
> On Wed, Oct 13, 2021 at 4:19 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > On Wed, Oct 13, 2021 at 03:25:17AM -0700, Trent Piepho wrote:
> > > On Wed, Oct 13, 2021 at 2:43 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > > >
> > > > Sync part of barebox micrel driver with the kernel v5.15-rc1.
> > > > This change will affect most of by barebox supported 100Mbit/ksz80xx PHY
> > > > variants and provide unified devicetree support for LED and clock configuration.
> > >
> > > I already added LED mode OF support to this driver.
> >
> > Yes, it was partially incorrect. It attempted to write to not existing or not
> > documented register of PHY_ID_KS8737.
> 
> That is not true.  KS8737 would only attempt to set the led mode bits
> if the device tree tries to set the led mode.  Since KS8737 does not
> have a led mode selection, the device tree should not have this, and
> there is no problem.
> 
> If you want a device tree validator, then use the yaml dts spec to do
> this in the proper way, at build time.  The bootloader has the the
> most constrained size of any part of a Linux system and is also the
> most critical for device start up time.  It is the worst possible
> place to put a dts validator.
> 
> > This is the reason why I prefer to share driver code base with kernel,
> > where possible.
> 
> You again ignore there are two ways to do this.  Make the kernel match
> Barebox where the Barebox code is better.

Maybe Oleksij can split that patch up a little so that we can better see
which changes we want and which not.

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


Delivery-date: Fri, 15 Oct 2021 08:38:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mbGrk-0001L4-NC
	for lore@lore.pengutronix.de; Fri, 15 Oct 2021 08:38:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mbGrj-0002rk-GQ
	for lore@pengutronix.de; Fri, 15 Oct 2021 08:38:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2wgVQaxVtqZmKE9NdI0wu7y37Kx9QcuU1yFrs9+Hoc=; b=A//uAulhS1DWO6
	nT4uCT8KUlx13odNJ1fwSNd8kTQFn39Z7zSbeie2OHt31DwfHREVvi24FHmRaqeHrJxs2yTTXaICv
	pHLxvb6RW30mDPsDdo5TYLQ7FV2lei3b0BLcP50d7X4cjUuxoGr200IQjhkKDYALs5Vz25HWRVrd7
	Fu596y5ndD1X6gRHszfYYPdLIivelTksYMg6UYM47ZXmoo+9bObAZNbF5f2GSBqrnGTZgr/eL8jkS
	hC3XG4XLqeS/01EB/vJM+1Ct46eIdTivn9Ii4BMzRMdJOkymvJBxCRCv7jgWSb7dawS7nnd8hLkfr
	FDy6cwBlv5thgW042fLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbGq4-005YtK-2N; Fri, 15 Oct 2021 06:37:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbGpy-005Yqp-Ou
 for barebox@lists.infradead.org; Fri, 15 Oct 2021 06:37:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mbGpu-0002cn-Mq; Fri, 15 Oct 2021 08:36:58 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mbGpu-0005kr-1Q; Fri, 15 Oct 2021 08:36:58 +0200
Date: Fri, 15 Oct 2021 08:36:58 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211015063658.GB7427@pengutronix.de>
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
X-Uptime: 08:11:38 up 239 days,  9:35, 112 users,  load average: 0.25, 0.27,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_233702_871585_0D940FC2 
X-CRM114-Status: GOOD (  35.11  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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
> this in the proper way, at build time. 

Please, verify your suggestion.

> The bootloader has the the
> most constrained size of any part of a Linux system and is also the
> most critical for device start up time.  It is the worst possible
> place to put a dts validator.

After you'll spend time on verifying your previous suggestion. I'll be
able to explain, why this part has tiny problem.

> > This is the reason why I prefer to share driver code base with kernel,
> > where possible.
> 
> You again ignore there are two ways to do this.

Board code and phy fixups? Please reread my previous answer. But from
your yuml suggestion I hope to know main misunderstanding in this
discussion. 

> Make the kernel match Barebox where the Barebox code is better.

>From this discussion, i assume you are using linux kernel. This "bad"
kernel code runs on your system and many other devices in the world.
But, you actually do not care to send kernel patches. So, kernel code
quality is not a big issue for you? The code which actually runs on your
system?

Well, it looks like, your code quality concept seems to be limited by
definition of code size, at least for barebox. But, I hope, after you
understand the root of PHY related challenges, you'll understand why
most of your suggestion will work only on some limited amount of use
cases. 

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


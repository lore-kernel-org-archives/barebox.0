Delivery-date: Tue, 08 Jun 2021 08:30:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqVFq-0000as-KG
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 08:30:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqVFp-0000tN-LY
	for lore@pengutronix.de; Tue, 08 Jun 2021 08:30:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A1tR9zZ6/w1F4aw9/UxE6gqmFYSfKJnTJ+gP7NqeCIM=; b=z1YyxH5XZ3A9H/xCnFP2GfsI5+
	ACf8wu1Q7bHEuQbKR184C9ZMJ7nmUthg3dY8DHH6WQ5KN+c4IYawqO2IhcRbqcfQ2Ie1dXJhR33Dk
	JoaNq5KcUNECuem85dnBzkBR6XHg1JdV1VBaF2lMDNpg4da1M16udJI+tr9GY5PLxtttYvWxwzbeX
	n+U33fmxnSu5LH6584jJIlu1hj/NjRKDO/tWZAmNRT1mNY4QCKdEbwkUMdvw2uL1AFtejApDfCWkm
	Z/8aQz1V8F95CMaXAH4ICHwfYl/rCN3xFBv8iscDePFbJUV8NBzvM8MLxKjKYMKNXsUHnwKCRy9tY
	bTPAT0RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqVEJ-006iWY-53; Tue, 08 Jun 2021 06:28:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqVEE-006iVy-FC
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 06:28:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqVE7-0000eF-KH; Tue, 08 Jun 2021 08:28:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqVE6-00023i-Eo; Tue, 08 Jun 2021 08:28:38 +0200
Date: Tue, 8 Jun 2021 08:28:38 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Andrej Picej <andrej.picej@norik.com>,
 Barebox List <barebox@lists.infradead.org>
Message-ID: <20210608062838.GC5267@pengutronix.de>
References: <20210607090951.107269-1-andrej.picej@norik.com>
 <20210607090951.107269-2-andrej.picej@norik.com>
 <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 00:31:59 up 110 days,  1:55, 101 users,  load average: 0.14, 0.14,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_232846_537713_FB91E5E9 
X-CRM114-Status: GOOD (  40.82  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading
 page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 07, 2021 at 01:03:41PM -0700, Trent Piepho wrote:
> On Mon, Jun 7, 2021 at 2:32 AM Andrej Picej <andrej.picej@norik.com> wrote:
> > Some NAND update tools/flashers do not take the full advantage of NAND's
> > entire page area for ECC purposes. For example, they might only use 2112
> > bytes of available 2176 bytes. In this case, ECC parameters have to be
> > read from the FCB table and taken into account in GPMI NAND xloader to
> > properly calculate page data length so DMA chain can be executed
> > correctly.
> >
> > Tested on PHYTEC phyCARD i.MX6Q board with following NANDs:
> > - Samsung K9K8G08U0E (pagesize: 0x800, oobsize: 0x40)
> > - Winbond W29N08GVSIAA (pagesize: 0x800, oobsize: 0x40) and
> > - Spansion S34ML08G201FI00 (pagesize: 0x800, oobsize: 0x80).
> >
> > All NANDs having set ECC strength to 4 (13 bytes) despite Spansion NAND
> > chip supporting ECC strength of 9 (29 bytes).
> 
> There is a bug in NXP's latest imx kernel, lf-5.10.y-1.0.0, that
> results in the kernel driver incorrectly using the minimum ECC
> specified in the ONFI nand specs instead of calculating a maximal ecc
> value and using that, which is what prior kernels and the upstream
> kernel use.  It was caused by incorrectly resolving a conflict when
> they rebased one of their old patches to 5.10.
> 
> The common pagesize 0x800, oobsize 0x40 should use 8-bit ECC.  That's
> what the uboot, barebox, and linux drivers would do since the first
> mxs nand support years ago.  It's only the recent kernel bug in nxp's
> kernel that will choose 4.
> 
> So rather than switch to 4-bit, it would be better to fix these boards
> to use 8-bit like they should.  More reliable ECC, and it will work
> correctly on barebox, u-boot, old imx kernels, current upstream
> kernels, and hopefully future imx kernels.
> 
> Using the FCB data here might not be such a good idea.  While it seems
> like the right thing, there are some issues:
> The barebox main gpmi nand driver doesn't use the FCB
> U-boot doesn't use the FCB
> No Linux kernel uses the FCB
> 
> If you try to read/write nand from any of those places, it won't work.
> The only way to make it work, is to have the FCB match what those
> drivers do.
> 
> I think it would have been better if the original design had been for
> the bootloader to read the FCB, use that to load the kernel, and then
> fixup the ECC config into the device tree for the kernel to use too.
> One source, the FCB, which is propagated to all users.  Everyone will
> agree on the ECC and there are no independent settings to keep in
> sync.

We could still go that path. The properties are all there, we have
nand-ecc-strength, nand-ecc-step-size and even nand-ecc-maximize
properties. The Linux GPMI driver doesn't honour these flags of course,
but that could be changed. With that we could ensure that at least
barebox and the kernel are consistent.

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


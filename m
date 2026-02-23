Delivery-date: Mon, 23 Feb 2026 12:16:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTvS-004oOn-0l
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:16:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTvS-0006JL-Gm
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:16:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/A0UK1jmlbyc90z6hYHF1D0s9ogig/RSXB8Flu9pAcE=; b=H9sCzwgJUsRr0ZVQ8Y0ZQjv44d
	M+QZ8DYtgRbYkiflo5XycSwx0EOjHNbPjEf/47eqgWZKHVouajUUIVh6CnZaHYG+wX1GXprf4ouxL
	XhIBrz8PmAcZf05BMxNKfKAttUkOn40MyDPQHmBS07GywzOSyTfp7ktqYTy820RMFIN8V6J7ZYWGs
	IFb60qToKfnmmwAMwYyAyJGhdcLVC4EKjGBf6lKDzhomhuJdpjLZoYDStZySdpgyHWqf2k7nJ72Y2
	+Sgdrw7q+37/L8jSwthqM7sF97zhRnqneR4Bu7r4T8li8O17yQi1e4sWoupkM6vTZoMCd3vkrHyqL
	tzLb3FuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTv7-000000008ZP-0FTF;
	Mon, 23 Feb 2026 11:16:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTv4-000000008YS-28Kx
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:16:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuTv3-0006Ew-3R; Mon, 23 Feb 2026 12:16:05 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuTv1-002Diw-1r;
	Mon, 23 Feb 2026 12:16:04 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuTv2-000000017bc-3OTp;
	Mon, 23 Feb 2026 12:16:04 +0100
Date: Mon, 23 Feb 2026 12:16:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aZw29DD5JbThCooU@pengutronix.de>
References: <20260218124307.2358552-1-m.felsch@pengutronix.de>
 <aZwaydz8gMTJNv5W@pengutronix.de>
 <6lzj4bsgsi3f4afsysd42x3volfu5qni6dgm5qkt7adrwwcpoo@xcaj6fyr7v6z>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6lzj4bsgsi3f4afsysd42x3volfu5qni6dgm5qkt7adrwwcpoo@xcaj6fyr7v6z>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_031606_545269_23BEAC18 
X-CRM114-Status: GOOD (  29.96  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] eeprom: at24: verify that chip is accessible during probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 23, 2026 at 10:56:24AM +0100, Marco Felsch wrote:
> On 26-02-23, Sascha Hauer wrote:
> > On Wed, Feb 18, 2026 at 01:42:48PM +0100, Marco Felsch wrote:
> > > Perform a basic sanity check to verify that the EEPROM is actually
> > > accessible by reading 1-byte. Linux does the same sanity check for all
> > > non-ACPI platforms.
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >  drivers/eeprom/at24.c | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
> > > index 06a2a4b22697..a08d42fe3e14 100644
> > > --- a/drivers/eeprom/at24.c
> > > +++ b/drivers/eeprom/at24.c
> > > @@ -373,6 +373,7 @@ static int at24_probe(struct device *dev)
> > >  	unsigned i, num_addresses;
> > >  	const char *devname;
> > >  	const char *alias;
> > > +	u8 test_byte;
> > >  
> > >  	if (dev->platform_data) {
> > >  		chip = *(struct at24_platform_data *)dev->platform_data;
> > > @@ -487,6 +488,12 @@ static int at24_probe(struct device *dev)
> > >  	at24->nvmem_config.size = chip.byte_len;
> > >  	at24->nvmem_config.id = devid;
> > >  
> > > +	/* Perform a one-byte test read to verify that the chip is functional */
> > > +	if (at24_read(at24, &test_byte, 0, 1) != 1) {
> > > +		err = -ENODEV;
> > 
> > a return of -ENODEV from driver probe doesn't print an error. Is that
> > what we want here?
> 
> That's a good point, quickly checked the Linux implementation which
> doesn't print an error too. However, you're right and we should print a
> dev_err() or so here. Is this something you may add while applying or
> shall I send a new v2?

I can fix it up, but I wanted to push the thinking about the correct
error code to you ;)

How about returning the return value of at24_read()?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



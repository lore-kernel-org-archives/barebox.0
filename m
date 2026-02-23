Delivery-date: Mon, 23 Feb 2026 12:22:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuU1P-004oTX-0I
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:22:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuU1P-00071N-C2
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:22:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TjfqnxtYirZs9CFwe4hqRxNDG6mMou7xQuLdm+i0zZ8=; b=DDsWXrdOubIOYDVPhFaEKJTBIA
	fQBXPBzz3Wx1g9K3VT+5BP3RRQ/Jarr8m5SWj+xDvfxyjr0oIdGAyPPIUy85aASQuv/attltryCfD
	9olfGG1MsJu2rm1Qk7SD+jYzg8ot18V/Glifpadw6EUWBc5RcjntvmcJ+N6S60/C4AzF5XErlgagz
	7Wuynukl/zKwDrLfkKZkSHlROpZnFyjFPL15oTJZQFuTWWgMfXav4yheEuAFMRq74xC5WRVRE9ckA
	pJk2Wg1+KBhQygIkDIUobotTfjFfFCwqk3NhTaZcRXV5gFOhr6VAPv9/QUsVXMToWpHsIN5cBu4eo
	UeFMb1kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuU13-00000000AXP-3el0;
	Mon, 23 Feb 2026 11:22:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuU11-00000000AX5-0F7h
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:22:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuU0z-0006wk-DO; Mon, 23 Feb 2026 12:22:13 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuU0x-002DkS-2p;
	Mon, 23 Feb 2026 12:22:13 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuU0z-000000017cy-0X2T;
	Mon, 23 Feb 2026 12:22:13 +0100
Date: Mon, 23 Feb 2026 12:22:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <g6yfzt4frdocpttxigrmc2i3zlczcp4s3o4x33phijwqaqkdos@p3wenvxr7bqc>
References: <20260218124307.2358552-1-m.felsch@pengutronix.de>
 <aZwaydz8gMTJNv5W@pengutronix.de>
 <6lzj4bsgsi3f4afsysd42x3volfu5qni6dgm5qkt7adrwwcpoo@xcaj6fyr7v6z>
 <aZw29DD5JbThCooU@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZw29DD5JbThCooU@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_032215_100816_D652C5A1 
X-CRM114-Status: GOOD (  33.61  )
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

On 26-02-23, Sascha Hauer wrote:
> On Mon, Feb 23, 2026 at 10:56:24AM +0100, Marco Felsch wrote:
> > On 26-02-23, Sascha Hauer wrote:
> > > On Wed, Feb 18, 2026 at 01:42:48PM +0100, Marco Felsch wrote:
> > > > Perform a basic sanity check to verify that the EEPROM is actually
> > > > accessible by reading 1-byte. Linux does the same sanity check for all
> > > > non-ACPI platforms.
> > > > 
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > >  drivers/eeprom/at24.c | 7 +++++++
> > > >  1 file changed, 7 insertions(+)
> > > > 
> > > > diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
> > > > index 06a2a4b22697..a08d42fe3e14 100644
> > > > --- a/drivers/eeprom/at24.c
> > > > +++ b/drivers/eeprom/at24.c
> > > > @@ -373,6 +373,7 @@ static int at24_probe(struct device *dev)
> > > >  	unsigned i, num_addresses;
> > > >  	const char *devname;
> > > >  	const char *alias;
> > > > +	u8 test_byte;
> > > >  
> > > >  	if (dev->platform_data) {
> > > >  		chip = *(struct at24_platform_data *)dev->platform_data;
> > > > @@ -487,6 +488,12 @@ static int at24_probe(struct device *dev)
> > > >  	at24->nvmem_config.size = chip.byte_len;
> > > >  	at24->nvmem_config.id = devid;
> > > >  
> > > > +	/* Perform a one-byte test read to verify that the chip is functional */
> > > > +	if (at24_read(at24, &test_byte, 0, 1) != 1) {
> > > > +		err = -ENODEV;
> > > 
> > > a return of -ENODEV from driver probe doesn't print an error. Is that
> > > what we want here?
> > 
> > That's a good point, quickly checked the Linux implementation which
> > doesn't print an error too. However, you're right and we should print a
> > dev_err() or so here. Is this something you may add while applying or
> > shall I send a new v2?
> 
> I can fix it up, but I wanted to push the thinking about the correct
> error code to you ;)
> 
> How about returning the return value of at24_read()?

Ah now I got you :) Yeah we could do that to not cast the error provided
by at24_read().

I will send a new v2.

Regards,
  Marco


> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



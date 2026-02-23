Delivery-date: Mon, 23 Feb 2026 10:56:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSgN-004mu5-3C
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:56:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSgO-0005fN-94
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:56:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0jxcCn/u0dGi7cqzpLhosWQwvnSyNo98e3KIE24eA48=; b=RCmK3MTzOCHV8KZloUD2IrXc2x
	dZzUGyUC0gk+8zVTexY5mCa3MuoDAUGAnyOl7gRmQ81DTq5B8ug5mWoWUB/C9bHhLGBn4kPGU825B
	AKJyg02bHJJJPJXLcz1l2hZjemZMsXZeuJPXGcfOZvEB3PDt3vzq+99bwWBD+CRs9t9JvItHFaXfU
	a04A0B2nQbLNBDpyUgPiNXJrUuoGD0QnHtjiaipEDd/hLnrBeNPngpj3t9FfFUo8D3tn2GffX3Xr6
	R+sm4KF3cQ78th+Mq6tJTfraA5wY/C2HV3RnJ8NZrLsotCD/79lHhw/NJ6u8fU3ng/VTrAhW+LmBP
	dSfjKlgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSg1-0000000Hajq-0xs6;
	Mon, 23 Feb 2026 09:56:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSfz-0000000HajJ-1j7U
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:56:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuSfw-0005ab-CV; Mon, 23 Feb 2026 10:56:24 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuSfu-002CrK-2j;
	Mon, 23 Feb 2026 10:56:24 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuSfw-000000015Yk-0QNp;
	Mon, 23 Feb 2026 10:56:24 +0100
Date: Mon, 23 Feb 2026 10:56:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <6lzj4bsgsi3f4afsysd42x3volfu5qni6dgm5qkt7adrwwcpoo@xcaj6fyr7v6z>
References: <20260218124307.2358552-1-m.felsch@pengutronix.de>
 <aZwaydz8gMTJNv5W@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZwaydz8gMTJNv5W@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_015627_497703_DE925166 
X-CRM114-Status: GOOD (  25.74  )
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
> On Wed, Feb 18, 2026 at 01:42:48PM +0100, Marco Felsch wrote:
> > Perform a basic sanity check to verify that the EEPROM is actually
> > accessible by reading 1-byte. Linux does the same sanity check for all
> > non-ACPI platforms.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/eeprom/at24.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
> > index 06a2a4b22697..a08d42fe3e14 100644
> > --- a/drivers/eeprom/at24.c
> > +++ b/drivers/eeprom/at24.c
> > @@ -373,6 +373,7 @@ static int at24_probe(struct device *dev)
> >  	unsigned i, num_addresses;
> >  	const char *devname;
> >  	const char *alias;
> > +	u8 test_byte;
> >  
> >  	if (dev->platform_data) {
> >  		chip = *(struct at24_platform_data *)dev->platform_data;
> > @@ -487,6 +488,12 @@ static int at24_probe(struct device *dev)
> >  	at24->nvmem_config.size = chip.byte_len;
> >  	at24->nvmem_config.id = devid;
> >  
> > +	/* Perform a one-byte test read to verify that the chip is functional */
> > +	if (at24_read(at24, &test_byte, 0, 1) != 1) {
> > +		err = -ENODEV;
> 
> a return of -ENODEV from driver probe doesn't print an error. Is that
> what we want here?

That's a good point, quickly checked the Linux implementation which
doesn't print an error too. However, you're right and we should print a
dev_err() or so here. Is this something you may add while applying or
shall I send a new v2?

Regards,
  Marco


> 
> Sascha
> 
> > +		goto err_devfs_create;
> > +	}
> > +
> >  	at24->nvmem = nvmem_register(&at24->nvmem_config);
> >  	err = PTR_ERR_OR_ZERO(at24->nvmem);
> >  	if (err)
> > -- 
> > 2.47.3
> > 
> > 
> > 
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



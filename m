Delivery-date: Mon, 03 May 2021 13:44:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWzp-0002xw-VH
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:44:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWzp-0007IF-4K
	for lore@pengutronix.de; Mon, 03 May 2021 13:44:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JzU6N2YE+rPso24qxKLfJE/VebiojrL203UoIsnZdf0=; b=RLyzk8mJ7dsGUnwwp47DAZXDx
	hobLa3jSmIbHExgFVMdf7n4YUev5bvnk5DPEPgqmRNVpbulavkz9J+ZF+vtD7ftoRg0KTV2GRrAOU
	TI07wMLivx/7YyJNrjudSBCbx3x3qK2yyWWOgxn4o+5c5G7Ejev/VrkgfLXv4XxrSOCdDbRyQZbks
	7lwnVt8DAgsYZFhsKJwuZnXuTF1acejWZyeKZAyC4jX4IQrKQLN69J2mbNrlUUkBW7DLCdvpQdfRp
	8BfaRjqr8r6kn4pqbzCFuiqaDGVxOvrWX/5eapf3qBuLal4rJn2btIvGyhyHc9ASz3tjJ6vkFZTfz
	ZbLcVRdIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldWw8-00DlzW-NH; Mon, 03 May 2021 11:40:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWvV-00DlvH-SS
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BkjSbKl+EUK+yS1PAKU6GjxqFtBtdgDP0234AR6T/ZM=; b=meJW4kx2kd4b5LBKBb81P1PFGH
 gONGmEptaWSgbtPNNGvURD4QIpnFHJDusDnfZ4DSabLOGoMUY2pUTW0pM2Qk/2CYlGEdsZi01f8Yh
 9L/Cs8vZERaH7J3iutbo8p0DK44cpTNCICSliIax3H4szGlkTNjg4DHll1wRu97TNEaHIxYpnNj3e
 FYfyL9qIGfIc8V9Yy4UsxEzXUKT/u6iPCmZXxUIcbytKeMEX6IwP8CddiWBV5dgfwFw/+N87ukdGH
 ULTg6br+sxSXRdgYLwmFZPlvKDM/op/yMIjR7pPaLV/qC6sgaclrHfICNtsOjWfJQfenyIQC33Dhb
 Cfbt8veg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWvT-0031Hr-1i
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:39:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWvR-0006nJ-7q; Mon, 03 May 2021 13:39:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWvQ-0001ka-V3; Mon, 03 May 2021 13:39:44 +0200
Date: Mon, 3 May 2021 13:39:44 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210503113944.GC19819@pengutronix.de>
References: <20210409131149.2184-1-o.rempel@pengutronix.de>
 <20210409131149.2184-2-o.rempel@pengutronix.de>
 <20210413045810.GE6950@pengutronix.de>
 <20210423141444.weoblw75ooeukowr@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423141444.weoblw75ooeukowr@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:38:17 up 74 days, 15:02, 100 users,  load average: 0.16, 0.15,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_043947_111512_CFCB2E1D 
X-CRM114-Status: GOOD (  24.41  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/6] mci: atmel_mci: add PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 23, 2021 at 04:14:44PM +0200, Oleksij Rempel wrote:
> On Tue, Apr 13, 2021 at 06:58:10AM +0200, Sascha Hauer wrote:
> > On Fri, Apr 09, 2021 at 03:11:44PM +0200, Oleksij Rempel wrote:
> > > +int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
> > > +		      unsigned int clock, unsigned int slot)
> > > +{
> > > +	struct atmel_mci_priv *priv = &atmci_sdcard;
> > > +	struct atmel_mci *host = &priv->host;
> > > +	struct mci_ios ios = { .bus_width = MMC_BUS_WIDTH_4, .clock = 25000000 };
> > > +
> > > +	bio->priv = priv;
> > > +	bio->read = at91_mci_bio_read;
> > > +
> > > +	host->regs = base;
> > > +
> > > +	atmci_get_cap(host);
> > > +
> > > +	/* get real HZ */
> > > +	host->bus_hz = clock;
> > > +
> > > +	host->slot_b = slot;
> > > +	if (host->slot_b)
> > > +		host->sdc_reg = ATMCI_SDCSEL_SLOT_B;
> > > +	else
> > > +		host->sdc_reg = ATMCI_SDCSEL_SLOT_A;
> > > +
> > > +	atmci_writel(host, ATMCI_DTOR, 0x7f);
> > > +
> > > +	atmci_common_set_ios(host, &ios);
> > 
> > Is it necessary to call this? The ROM should have already configured the
> > controller. By relying on this you could drop the controller
> > initialization code from PBL.
> 
> We get MCI controller in disabled state. I do not see any way to avoid
> reconfiguration.

So on Atmel the ROM cleans up after itself, so in that case you have to
re-initialize it of course. i.MX doesn't do this, so I asked.

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


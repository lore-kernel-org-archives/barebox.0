Delivery-date: Mon, 09 Feb 2026 14:47:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpRbR-00AZTu-2p
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 14:47:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpRbQ-00073z-SL
	for lore@pengutronix.de; Mon, 09 Feb 2026 14:47:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=olW/CzZ6LIC1WCoRx0VzIqunym5037caYaJ1s/KlQCk=; b=2UMypsFCmY4K4D5Z4a3H6X5L0r
	VDdcvbKJOgn2oMo50/5WLJgxLRaBy762Y54kYQrD675WjSAJ1+vzRBgNzg6tdoplGkQAf9VTnKNYf
	osCH3/2QpFsZo59VhcU7dqHT++DyLIbx4kFsKh4iuaWxq4ttVGlThDcC7gJy3GxZqawBtilJQCu1l
	NkkLLgn+GnS3YQowBB3J76jKR5/vd+MmkA5siYKwcqVV5G44eT9bNZgNg2v9oq46Ksjh+SX5/1zdV
	dCYdudzHqlsdiI4fYhXJNHUo/eGTwXI3pVQEtZ/x2xktdleAq4GQ7BuEHzA3UDaHQniIhJ7CvLCtc
	u37kbi5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRax-0000000FSSO-0d2N;
	Mon, 09 Feb 2026 13:46:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRat-0000000FSS0-26Q7
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 13:46:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vpRar-0006z7-QE; Mon, 09 Feb 2026 14:46:25 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vpRas-004tnr-0x;
	Mon, 09 Feb 2026 14:46:25 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vpRar-0080e8-1i;
	Mon, 09 Feb 2026 14:46:25 +0100
Date: Mon, 9 Feb 2026 14:46:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aYnlMYEYCX5DNxeR@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-3-a80b234ce1a1@pengutronix.de>
 <aYmiyyuM-0o17VfI@pengutronix.de>
 <20260209111305.iy3cja5l2ixudzh5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209111305.iy3cja5l2ixudzh5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_054627_558479_6644969D 
X-CRM114-Status: GOOD (  18.22  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] mfd: Add Hexagon EFI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 09, 2026 at 12:13:05PM +0100, Marco Felsch wrote:
> > > +hgs_sep_process_ascii_frame(struct hgs_efi *efi, void *_buf, size_t size)
> > > +{
> > > +	struct device *dev = efi->serdev->dev;
> > > +	unsigned char *payload;
> > > +	unsigned int copy_bytes;
> > > +	unsigned int msgid;
> > > +	size_t payload_len;
> > > +	u8 *buf = _buf;
> > > +	size_t hdrlen;
> > > +	char *p;
> > > +	int ret;
> > > +
> > > +	/*
> > > +	 * Non addressing ASCII format:
> > > +	 * S[MsgType][MsgID](,[CRC]):[Payload]
> > > +	 */
> > > +	if (buf[1] != HGS_EFI_SEP_ASCII_MSG_TYPE_REPLY) {
> > 
> > check buf[0] != 0 before looking at buf[1]?
> 
> I could do this, but this function is only called if buf[0] has the
> correct value (see: HGS_EFI_SEP_EXPECT_SOF).

By adding the check you can prevent other people from spending the few
minutes it takes to check that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



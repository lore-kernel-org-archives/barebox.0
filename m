Delivery-date: Wed, 15 Apr 2026 08:39:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtu9-00CKKE-1e
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:39:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtu8-0007la-Um
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:39:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sIvVoGqFnulT4T7QmcCFAJzt7BFi1SDuBGiDKMjGuPM=; b=jh0L4xWWGPhknelVOVqpa/3n9d
	hnZqJCHX/1XTLe4I00a5msU4t4T1yww7nIXmNowtoCDzUsLdvJvBWNjorYuiKzhVtjVq4v5wdNVFJ
	iUQtsinLRJuX1P0EXZhqO+Nl9jMVcNwQgcBjnnDiPgIuyFMuz3t2NfhZ3OCmZdM/Hl+cUe3ko4qaQ
	HIQr9Jmuz9iX/scBc8Dz0uFzSXgv/4GAljsjwQjNd4EqyHfOHUNiko00mbPoCEi8N8KhJwe+elO3v
	l6fB20gMEL33WsPrd3KZiEWjnakkWlXL1+eLADuIuPErWE+51sY0LPTKXw4vmehzFo7Oz837uC0Yc
	DM3Ldkcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtto-00000000eln-1v1B;
	Wed, 15 Apr 2026 06:38:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCttl-00000000el2-3LL7
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:38:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wCttj-0007b8-Iw; Wed, 15 Apr 2026 08:38:51 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wCttj-005Szj-1G;
	Wed, 15 Apr 2026 08:38:51 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wCttj-0000000BU8I-1EeO;
	Wed, 15 Apr 2026 08:38:51 +0200
Date: Wed, 15 Apr 2026 08:38:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: anis chali <chalianis1@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <ad8ye9r314LrcynU@pengutronix.de>
References: <20260331031723.195128-1-chalianis1@gmail.com>
 <a7593c0f-07ae-476b-846e-3dbaf2ab75d7@pengutronix.de>
 <CAL+1fyCM9baNW9ziBQSxO0AtkmWehBBoYEV_O2SwY3WQ5VV4Ew@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL+1fyCM9baNW9ziBQSxO0AtkmWehBBoYEV_O2SwY3WQ5VV4Ew@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_233853_837087_8A6CD703 
X-CRM114-Status: GOOD (  21.31  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc2: core: add no-csftrst-wait DT property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Mon, Apr 13, 2026 at 01:41:28PM -0400, anis chali wrote:
> and I ended by removing it since it works for now without handling the versions.
> 
> > > -     ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
> > > -     if (ret) {
> > > -             dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
> > > +     /* Wait for at least 3 PHY Clocks */
> > > +     udelay(1);
> > > +
> > > +     if (!of_property_read_bool(np, "no-csftrst-wait")) {
> >
> > barebox-specific Device Tree properties should be documented in
> > Documentation/devicetree/bindings/.
> Okay, ack.
> 
> > Alternatively, you can check of_machine_is_compatible("brcm,bcm2711")
> I choosed to add something in the device tree to not hard code a
> specific machine in
> dwc2 in that case we let the machine dts or users facing the same
> issue to add the dts
> property without even submitting patch, but if you prefer manage this
> with checking the
> machine compatible I can make the change???

The downside with the dts approach is that we never realize that it's
needed when that person doesn't submit a patch.

I prefer a machine compatible check at least until a pattern evolved
where this is needed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



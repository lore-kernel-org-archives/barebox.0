Delivery-date: Wed, 05 Apr 2023 14:28:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2Fc-00As4g-Nm
	for lore@lore.pengutronix.de; Wed, 05 Apr 2023 14:28:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2Fc-0005vD-2h
	for lore@pengutronix.de; Wed, 05 Apr 2023 14:28:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zp/aH1RVe5GtESB4P8D4f7ElVO3H5Wtmqu3wIQ84ORg=; b=BVUgSW0JjqNXZnixwZYDN1ltNZ
	kTlwrbkBcQ4suTUj1Rvhiih2rXZzC8Ria2+GA5XDFOrcKvpTG9RiqN1ZtjSsHA+9lgXL/LiYpXjVY
	DvCFH/XaZFTgeAbeD6wsTmai7yfShZwkpbO4RmzpJDR/y015lUrvMsO9mrNP67yT1kV6epsrQP8c6
	6nv9qqYWcc4mgoSJjm014bITGpsuiu4h2NxGkeDXiZ9ItfvBkBBDGHsAbI/5BOkzweotzHzXFvEdK
	moXJE7N0WxzyZCXwk+GEXN74sjCMslp7sUe1hZg0uTouBrsqZQc91xcAf6Qd21JiRe9FfUuSGTRFm
	9jZBLfeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2EU-004Odp-24;
	Wed, 05 Apr 2023 12:27:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2ER-004Od4-1b
	for barebox@lists.infradead.org;
	Wed, 05 Apr 2023 12:27:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pk2EQ-0005XT-9u; Wed, 05 Apr 2023 14:27:18 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pk2EP-00992k-NC; Wed, 05 Apr 2023 14:27:17 +0200
Received: from pza by lupine with local (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pk2EO-00064A-Mb; Wed, 05 Apr 2023 14:27:16 +0200
Message-ID: <c014e29c02e3ef16fbdfb79ae3fb27b047eb21a6.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Wed, 05 Apr 2023 14:27:16 +0200
In-Reply-To: <20230405111356.GZ19113@pengutronix.de>
References: <20230403121844.3447836-1-p.zabel@pengutronix.de>
	 <20230403121844.3447836-2-p.zabel@pengutronix.de>
	 <20230405111356.GZ19113@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_052719_529275_13E64E14 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] video: fbconsole: add optional damage tracking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mi, 2023-04-05 at 13:13 +0200, Sascha Hauer wrote:
> On Mon, Apr 03, 2023 at 02:18:43PM +0200, Philipp Zabel wrote:
[...]
> > +	gu_screen_blit_area(priv->sc, rect.x1, rect.y1,
> > =C2=A0			priv->font->width, priv->font->height);
> > +	fb_damage(priv->fb, &rect);
>=20
> Does it make sense to call fb_damage() from gu_screen_blit_area() and
> gu_screen_blit() instead?

Makes sense to me, changed in v2.

regards
Philipp



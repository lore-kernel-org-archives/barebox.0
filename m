Delivery-date: Mon, 28 Apr 2025 09:46:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9JCD-0006Vj-0X
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 09:46:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9JCC-0007v8-Km
	for lore@pengutronix.de; Mon, 28 Apr 2025 09:46:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JTjsUOT1U86BRiB0sLo5VUtI4eEXmb/4cR15Op8n4R8=; b=kRvjzcHRtwtNpN13IHRKqJ6fC4
	OBtOd11K2IaA+jZRboTbE5FHD8ei3RauOvSJUcq2UZKdSLdydq5M8Gcm+ZDgRacxQS+V27YtXZmB1
	y1i10Rv9ttRkpdYfqd1dZSxakmXD+QsdOZ46CueypXsDxp/4KieDeG22aNQUAJBFHexlfrJeEOIFJ
	tjexRuiasGwmQL1S/8oCWqpJpX4OZrI+f/K/oD21NWajt0zpQZT3ZsI/Lh3HN8xNAOP7eOLMUqOeD
	UiQ4r+AaWi9rmMMc2HZWoZ4b9+DADKj9e4L/3gRS81FaJi80YSeTtng94ipC5EVUYgUdSQ6BWYXMj
	4/X44nZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9JBX-00000005IQY-1GA7;
	Mon, 28 Apr 2025 07:45:51 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Ivx-00000005Fgx-1S5T
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 07:29:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1745825380;
	bh=JTjsUOT1U86BRiB0sLo5VUtI4eEXmb/4cR15Op8n4R8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IuJsOWzr1PCKKb0DbdgEN1aKaC3DX2iArFkLhpOvCkQhf1hvnMMOkW1TBs+X1t7kZ
	 Z24Mgs5KIenyNPUT31wKA+S7UExxFaVsB7APnd0fXLYYYTftjKh1w6k0ma4yp5/Mpx
	 ObhQCVEu8bbqStSQmuwZQTdA1l8+3LTVKalfv1JQa3tWY0OQjHE7ugfcmcWyx0y3Bg
	 XzxP+B3RNejypwVkSwFvqDfoG5q+9aoXHMKETvQMgd/6gkohEro6kznNMWsL1eo+df
	 EXGj0y6fRV9MTziSQ4iA47vyLU65/nT0dQvEWTBpmiPzi94sD1SLmNa6j35FTv+v4J
	 CtNKzoxd+lC2Q==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 8F137FF6105; Mon, 28 Apr 2025 09:29:40 +0200 (CEST)
Date: Mon, 28 Apr 2025 09:29:40 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <phxkokwkn7utkoqksvmxtnp4nrazlz5g25kyu55w3s6yephumc@zyvdy77os4ac>
References: <20250426081415.3553913-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bubi6znbxuxu36zb"
Content-Disposition: inline
In-Reply-To: <20250426081415.3553913-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_002945_558342_F3823E7D 
X-CRM114-Status: GOOD (  11.68  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] linux/iopoll: fix inverted condition in
 read_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--bubi6znbxuxu36zb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH master] linux/iopoll: fix inverted condition in
 read_poll_timeout
MIME-Version: 1.0

Hello Ahmad,

On Sat, Apr 26, 2025 at 10:14:15AM +0200, Ahmad Fatoum wrote:
> If there is no timeout, we wait indefinitely and don't care for the
> initial time. A fixup to silence a warning because of multiplication in
> boolean context added an explicit comparison and this ended up omitting
> get_time_ns() in the wrong case.
>=20
> Flip it to fix, among others, MDIO on RK3568.
>=20
> Fixes: 554bbc479c09 ("include: linux/iopoll.h: add optional PBL support")
> Reported-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

This indeed fixes networking for me. Thanks a lot for your patch.

Tested-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
Reviewed-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

Best regards
Uwe

--bubi6znbxuxu36zb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmgPLmAACgkQj4D7WH0S
/k75+wf8C1OCFEbByTPN4lpUGFJ9rYV2OS7dF3pjnq4bwSq+Br1gDwC5longqrat
GsuT+muNloLvhHgt+AyXB0nQfQNxWIAdv8HiaYYeAJnWwUlOmJxfOg0v7qmLUgqs
R10stnfm3ogiDib1Vlna9UcybDt+EbexhezEzm4J8s34Z5K7l0vHnIFjf/tcvrvy
OFKcLgJEYOXFgzyeTbPMPeZDpphpHDut4R1OMr/1wklfS8mgFzk5JpqUfl/zQJNU
qW5cg9W2spb4FG4BB6VWR29yEHlG7MgujZa3ZGQ4c+Q01sQjaBgtz/7PvO9rhqBK
hDGu8A01KpsikL5hKsjHa6RVQGVgYg==
=c6gE
-----END PGP SIGNATURE-----

--bubi6znbxuxu36zb--



Delivery-date: Wed, 26 Jul 2023 21:02:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOjmH-00BAjI-7A
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 21:02:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOjmE-0006v2-FN
	for lore@pengutronix.de; Wed, 26 Jul 2023 21:02:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bp0LsS1H9z5l+roUNCbH9/J7gnGF6ymRHUlGHQdgH0k=; b=C0lS2vVvxOlAQKDkUD3tLOmGuD
	+kn0EHoFlDHXQ57pxBVHSSD6X8xV71wWa6gQsdYwhXgA129JtCErLjqVPtrkzr1M+rWaJfcnFTj1P
	Bnwxe5BT1wXQ1Ul4oShdt9xuruuuXt0nNKz25Es3sXAddzuupKSygddZqMttpk6rAYjsIemH+C3+R
	oYsbseN7b/bNRoCJ8li96/fmSGqemcy8/XqsCOx/eMFIOtOGThflC8NTfFslhwasWXBSr0j8jfL/i
	zWkR7G6n4Vo6JJl6A8AV4uQkQSg0Zx0jiLEPf4A9X21zih3diA7SXcqPQlJu6qjPNGAh2DTJe8PzM
	ig8Xd28w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOjkp-00BL2C-28;
	Wed, 26 Jul 2023 19:00:59 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOjkl-00BL0M-37
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 19:00:57 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6D8691C0006;
	Wed, 26 Jul 2023 19:00:47 +0000 (UTC)
Date: Wed, 26 Jul 2023 21:00:44 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org, Sascha Hauer <sha@pengutronix.de>
User-Agent: K-9 Mail for Android
In-Reply-To: <20230726122638.GQ18491@pengutronix.de>
References: <20230711091123.19111-1-jmaselbas@kalray.eu> <20230711091123.19111-3-jmaselbas@kalray.eu> <20230726122638.GQ18491@pengutronix.de>
Message-ID: <B3F2512E-030D-4851-8703-B87A96234469@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_120056_136741_3A96BFEB 
X-CRM114-Status: GOOD (  19.83  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] soc: kvx: Add board_sn global var from OTP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On July 26, 2023 2:26:38 PM GMT+02:00, Sascha Hauer <sha@pengutronix=2Ede>=
 wrote:
> On Tue, Jul 11, 2023 at 11:11:23AM +0200, Jules Maselbas wrote:
> > Add the magic variable "kvx=2Eboard_sn" that will reflect the board se=
rial
> > number stored in OTP=2E
> >=20
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray=2Eeu>
> > ---
> >  drivers/soc/kvx/kvx_socinfo=2Ec | 33 ++++++++++++++++++++++++++++++++=
-
> >  1 file changed, 32 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/soc/kvx/kvx_socinfo=2Ec b/drivers/soc/kvx/kvx_soc=
info=2Ec
> > index 496e817755=2E=2E87c20c327b 100644
> > --- a/drivers/soc/kvx/kvx_socinfo=2Ec
> > +++ b/drivers/soc/kvx/kvx_socinfo=2Ec
> > @@ -33,9 +33,11 @@
> > =20
> >  static char *kvx_mppa_id;
> >  static char *kvx_arch_rev;
> > +static char *kvx_board_sn;
> > =20
> >  BAREBOX_MAGICVAR(kvx=2Earch_rev, "KVX architecture revision");
> >  BAREBOX_MAGICVAR(kvx=2Emppa_id, "KVX MPPA chip id");
> > +BAREBOX_MAGICVAR(kvx=2Eboard_sn, "KVX board sn");
> > =20
> >  static void kvx_soc_info_read_revision(void)
> >  {
> > @@ -123,11 +125,40 @@ static int kvx_read_mppa_id(struct device_node *=
socinfo)
> >  	return 0;
> >  }
> > =20
> > +static int kvx_read_board_sn(struct device_node *socinfo)
> > +{
> > +	struct nvmem_cell *cell;
> > +	size_t len;
> > +	char *sn;
> > +
> > +	cell =3D of_nvmem_cell_get(socinfo, "board_sn");
> > +	if (IS_ERR(cell)) {
> > +		pr_debug("Fail to get board_sn cell\n");
> > +		return PTR_ERR(cell);
> > +	}
> > +
> > +	sn =3D (char *)nvmem_cell_read(cell, &len);
> > +	nvmem_cell_put(cell);
> > +	if (IS_ERR(sn)) {
> > +		pr_debug("Fail to read board_sn\n");
> > +		return PTR_ERR(sn);
> > +	}
> > +
> > +	kvx_board_sn =3D xzalloc(len + 1);
> > +	memcpy(kvx_board_sn, sn, len);
> > +	globalvar_add_simple_string("kvx=2Eboard_sn", &kvx_board_sn);
> > +	free(sn);
> > +
> > +	return 0;
> > +}
> > +
> >  static int kvx_socinfo_probe(struct device *dev)
> >  {
> >  	kvx_soc_info_read_revision();
> > =20
> > -	return kvx_read_serial(dev->of_node);
> > +	kvx_read_board_sn(dev->device_node);
> > +
> > +	return kvx_read_mppa_id(dev->device_node);
> >  }
>=20
> Ah, ok=2E Here is the missing hunk from patch 1=2E I just fixed this up
> while applying=2E
Thanks

>=20
> Sascha
>=20



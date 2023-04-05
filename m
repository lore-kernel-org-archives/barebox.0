Delivery-date: Wed, 05 Apr 2023 14:28:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2FG-00As2y-VX
	for lore@lore.pengutronix.de; Wed, 05 Apr 2023 14:28:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2FG-0005rr-Td
	for lore@pengutronix.de; Wed, 05 Apr 2023 14:28:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p3c/x+pwqPJDFp12FwM6cMVtvRk8hh6YAyL7ViW61gs=; b=qkqU3sVeKxtNEib9qtWTApNxOx
	qek5hOCEJhLjsQU9c9ck5c9XNNhCQdsB03/QUt7BFgY1y/jwci/HeaSq/Zmtnfdm06fZhPfZE3Ub8
	6tFPulcgviMOa6vi1IVtkzLJO8jaLiZAVg6BWGhmDREI6P7CjJBoohk6t2oJRrz678tkFi6+3ef0B
	S7m5sEgOBPqqN9Od4Hf1UGFcbP2AMTGrN7pVSj4xtjHDkkIGxH7iYq9s1Ibn3SzzsDmLjZzWWCs+r
	RyyaeEpQketUzIy52FRCN3zI5s2gf8KR2QDDsfxxwKtUoVJD59rMOZHEPIYma//z6z9vd8tH8xfLJ
	s5AGyoog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2E1-004OXo-0S;
	Wed, 05 Apr 2023 12:26:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2Dx-004OWh-2c
	for barebox@lists.infradead.org;
	Wed, 05 Apr 2023 12:26:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pk2Du-0005VA-UP; Wed, 05 Apr 2023 14:26:46 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pk2Du-00992d-9o; Wed, 05 Apr 2023 14:26:46 +0200
Received: from pza by lupine with local (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pk2Dt-00062b-IX; Wed, 05 Apr 2023 14:26:45 +0200
Message-ID: <013b899a6c8647489b3aa7c2b344c2d08cd6d36d.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Wed, 05 Apr 2023 14:26:45 +0200
In-Reply-To: <7a08e414-95d1-0d81-64b4-9772ceb6f680@pengutronix.de>
References: <20230403121844.3447836-1-p.zabel@pengutronix.de>
	 <7a08e414-95d1-0d81-64b4-9772ceb6f680@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_052649_846958_70CD27FB 
X-CRM114-Status: GOOD (  17.93  )
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
Subject: Re: [PATCH 1/3] video: fb: add optional damage tracking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Di, 2023-04-04 at 14:24 +0200, Ahmad Fatoum wrote:
> On 03.04.23 14:18, Philipp Zabel wrote:
> > Add an optional fb_damage operation that drivers may use to accumulate
> > damage on the framebuffer until fb_flush is called. The accumulated
> > damage can be used to support partial updates for displays with an
> > integrated framebuffer.
> >=20
> > Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> > =C2=A0drivers/video/fb.c | 6 ++++++
> > =C2=A0include/fb.h       | 9 +++++++++
> > =C2=A02 files changed, 15 insertions(+)
> >=20
> > diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> > index 44754065e7d9..6f412d62c434 100644
> > --- a/drivers/video/fb.c
> > +++ b/drivers/video/fb.c
> > @@ -43,6 +43,12 @@ static int fb_close(struct cdev *cdev)
> > =C2=A0	return 0;
> > =C2=A0}
> > =C2=A0
> >=20
> > +void fb_damage(struct fb_info *info, struct fb_rect *rect)
> > +{
> > +	if (info->fbops->fb_damage)
> > +		info->fbops->fb_damage(info, rect);
> > +}
> > +
> > =C2=A0static int fb_op_flush(struct cdev *cdev)
> > =C2=A0{
> > =C2=A0	struct fb_info *info =3D cdev->priv;
> > diff --git a/include/fb.h b/include/fb.h
> > index 15bb74b99576..4e3eb611db48 100644
> > --- a/include/fb.h
> > +++ b/include/fb.h
> > @@ -80,6 +80,13 @@ struct fb_bitfield {
> > =C2=A0
> >=20
> > =C2=A0struct fb_info;
> > =C2=A0
> >=20
> > +struct fb_rect {
> > +	u32 x1;
> > +	u32 y1;
> > +	u32 x2;
> > +	u32 y2;
> > +};
> > +
> > =C2=A0struct fb_ops {
> > =C2=A0	/* set color register */
> > =C2=A0	int (*fb_setcolreg)(unsigned regno, unsigned red, unsigned green=
,
> > @@ -87,6 +94,7 @@ struct fb_ops {
> > =C2=A0	void (*fb_enable)(struct fb_info *info);
> > =C2=A0	void (*fb_disable)(struct fb_info *info);
> > =C2=A0	int (*fb_activate_var)(struct fb_info *info);
> > +	void (*fb_damage)(struct fb_info *info, struct fb_rect *rect);
>=20
> const struct fb_rect * ?

Yes, changed to const in v2.

regards
Philipp



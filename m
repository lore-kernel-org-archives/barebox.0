Delivery-date: Mon, 15 Jun 2026 11:17:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ3RZ-0065RM-2x
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 11:17:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ3RZ-0002zE-8F
	for lore@pengutronix.de; Mon, 15 Jun 2026 11:17:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=9+a3ijcw4WjjMzWr+fTPpBP7rCCd1aPiAMnFmxHHYps=; b=lEJGcImUFk0KnU1GIjzpWJIGWF
	GRkX6qmBGrdYp80A3L/VNslqkmURbk1pET+SVnjeVSqHxfO3fk7Yku4UnkGz0YLlKZacNcQh2phBV
	S7TmUnADNSg0ip0aVQQfO2xikOsTq/nnQcza/sEKLn01cehYJfdkl2nDY/TrqsopNec08leihyaRZ
	ZQyBNdNqcIS/LjoG16cuAQmfphtbQD/fYnWjGVDKaOeivAfkdU/xIYaCXDkkjLb2nS8Ih9i0aeILd
	U7eebGyxv/IJfqrvFLyXx2Tz3fSqffIogpL7/iLS6GfxI/DQJ3eFONLwniOliXQ75cWy6/MJ/f4sH
	Bk6U/WPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3QV-0000000DxZJ-0phe;
	Mon, 15 Jun 2026 09:16:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3QS-0000000DxYo-13al
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 09:16:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ3QQ-0002cX-BM; Mon, 15 Jun 2026 11:16:10 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ3QQ-002q9S-0Y;
	Mon, 15 Jun 2026 11:16:10 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ3QQ-00000006H31-0HKf;
	Mon, 15 Jun 2026 11:16:10 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Johannes Schneider" <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260604065006.2933142-9-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 09:16:10 +0000
Message-Id: <E1wZ3QQ-00000006H31-0HKf@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_021612_286767_A42BD8D1 
X-CRM114-Status: GOOD (  22.32  )
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
Cc: barebox@lists.infradead.org, thomas.haemmerle@leica-geosystems.com, a.fatoum@pengutronix.de, mgr@kernel.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 08/11] video: lcdif: register simplefb fixup and
 enable framebuffer at probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-04 06:50, Johannes Schneider wrote:
> From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
>=20
> Two changes are needed to use lcdif_drv as the primary barebox boot
> framebuffer:
>=20
>   - register_framebuffer() leaves the cdev disabled; the splash command
>     opens fb0 via the fb API and never goes through the cdev open path
>     that triggers fb_enable lazily, so it bails on
>     "fb_open: No such file or directory".  fb_enable() at the end of
>     register_fb so the controller is up by the time anything blits.
>=20
>   - Set info->register_simplefb and call fb_register_simplefb() so
>     DRM_SIMPLEDRM in Linux sees the boot framebuffer as a
>     simple-framebuffer DT node and keeps the splash visible until its
>     native LCDIF driver binds.
>=20
> Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> ---
>  drivers/video/lcdif_kms.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/video/lcdif_kms.c b/drivers/video/lcdif_kms.c
> index 5487d1298c..e3d1985dc9 100644
> --- a/drivers/video/lcdif_kms.c
> +++ b/drivers/video/lcdif_kms.c
> @@ -459,6 +459,16 @@ static int lcdif_register_fb(struct lcdif_drm_privat=
e *lcdif)
>  	if (ret)
>  		return ret;
> =20
> +	/* expose as simple-framebuffer for Linux DRM_SIMPLEDRM handoff */
> +	info->register_simplefb =3D 1;
> +	fb_register_simplefb(info);

fb_register_simplefb() is already called during register_framebuffer(),
so it shouldn't be necessary to call it here.

If you wish to actually use simple fb in Linux that's a board specific
decision and you should set nv.dev.fb0.register_simplefb (not sure if
the variable name is 100% correct).

> +
> +	/* enable now so the splash command can blit into a live fb */
> +	ret =3D fb_enable(info);

The idea is rather that the splash command renders in a disabled
framebuffer so that the splash screen is there immediately when you
enable the framebuffer. This reduces flickering as compared to first
enable the framebuffer and render afterwards.

There might be pieces missing upstream, but these changes shouldn't be
in the driver, but in the generic code.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



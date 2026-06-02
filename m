Delivery-date: Tue, 02 Jun 2026 14:14:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUO0v-001Zte-13
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 14:14:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUO0u-0005BA-JR
	for lore@pengutronix.de; Tue, 02 Jun 2026 14:14:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d/iSZ1v6NJwVQrWlbKegxSFMYXjI1UwfP50BJ2e1pHU=; b=xsFRNBtyCJkLJXSLnopOBcGtW4
	O7YpkNjGLmBNB7gdxGjCAEvoV3mGXe0cei7pKA0L8z4vMaAKzaH6Wt8o93Xsg3FRGg1LVKlfq3Fm2
	GeCq/Ov3gZKs44oKFylhos02XGrty9yM+eXDlee2cER+wlamTxPspmIh9GUNUay38adbEgInCplC7
	UeYPqlmN+0F8IlqQpiUo0+5oxc3AejAazGQmYC59x2gVuPPBsLRnfvzu7DWb5/K5GG2MzDJJvJ+0G
	LPGBmS698TyDpHjYz4sc8wUSihlTE8SUuscv/fPWb1nnmDiqQb//qOuD4kEvs2BULWnSPKvNvh/pd
	LzL438Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUNzF-0000000Cwyb-06eS;
	Tue, 02 Jun 2026 12:12:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUNzC-0000000Cwy5-2GgT
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 12:12:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wUNzA-0004ns-6q; Tue, 02 Jun 2026 14:12:44 +0200
Message-ID: <9bf1b5920ca2c986533c5f17d10aa774aa60c895.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Johannes Schneider
	 <johannes.schneider@leica-geosystems.com>, barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue, 02 Jun 2026 14:12:43 +0200
In-Reply-To: <679f1823-5edd-4a8f-8a8e-caf6db7dd483@pengutronix.de>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
	 <20260602040953.1060278-7-johannes.schneider@leica-geosystems.com>
	 <54467182b9e4f15a1ac068533e73aaac5f21bf46.camel@pengutronix.de>
	 <679f1823-5edd-4a8f-8a8e-caf6db7dd483@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_051246_585892_DDB410F0 
X-CRM114-Status: GOOD (  30.76  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] video: imx-lcdif: drain write-combine buffer before
 LCDIF DMA reads pixels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Dienstag, dem 02.06.2026 um 11:37 +0200 schrieb Ahmad Fatoum:
>=20
> On 6/2/26 10:12 AM, Lucas Stach wrote:
> > Am Dienstag, dem 02.06.2026 um 04:09 +0000 schrieb Johannes Schneider:
> > > From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> > >=20
> > > The LCDIF framebuffer is allocated as Normal Non-Cacheable (write-com=
bine)
> > > memory.  After the splash command calls gu_screen_blit(), which copie=
s the
> > > decoded PNG via memcpy() from a cached shadow buffer into the hardwar=
e
> > > framebuffer, writes may still reside in the CPU write buffer and not =
yet
> > > be visible to the LCDIF DMA engine.  On hardware this manifests as
> > > partial or corrupted rendering =E2=80=94 the bottom portion of the sp=
lash image
> > > renders black or shows garbage.
> > >=20
> > > Implement fb_damage() to execute a DSB SY barrier after each blit,
> > > ensuring all pending write-combine writes are committed to DRAM befor=
e
> > > the LCDIF reads the pixel data.
> > >=20
> > > Assisted-by: Claude:claude-sonnet-4-6
> > > Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com=
>
> > > ---
> > >  drivers/video/imx-lcdif.c | 13 +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > >=20
> > > diff --git a/drivers/video/imx-lcdif.c b/drivers/video/imx-lcdif.c
> > > index ae5976c771..8d9b40be0f 100644
> > > --- a/drivers/video/imx-lcdif.c
> > > +++ b/drivers/video/imx-lcdif.c
> > > @@ -20,6 +20,7 @@
> > >  #include <of_graph.h>
> > >  #include <video/media-bus-format.h>
> > >  #include <video/vpl.h>
> > > +#include <asm/system.h>
> > > =20
> > >  /* LCDIF V8 register map */
> > >  #define LCDC_V8_CTRL			0x00
> > > @@ -262,9 +263,21 @@ static void lcdif_fb_disable(struct fb_info *inf=
o)
> > >  	clk_disable_unprepare(priv->clk_axi);
> > >  }
> > > =20
> > > +static void lcdif_fb_damage(struct fb_info *info, struct fb_rect *re=
ct)
> > > +{
> > > +	/*
> > > +	 * The hardware framebuffer is Normal Non-Cacheable (write-combine)=
.
> > > +	 * Writes from the shadow-buffer memcpy may sit in the CPU write bu=
ffer
> > > +	 * and not yet be visible to the LCDIF DMA engine. Execute DSB SY t=
o
> > > +	 * drain the write buffer to DRAM before the LCDIF reads the pixels=
.
> > > +	 */
> > > +	dsb();
> >=20
> > This will probably work in practice, but it doesn't exactly do what the
> > comment above states. A dsb does not drain the write combine buffers,
> > it just makes sure that they are drained before the next instruction is
> > executed.
> > So if the fb_damage is the last thing that gets executed, this will not
> > ensure that the writes will actually become visible to external agents.
> >=20
> > A more robust way to drain the write combine buffers is to execute a
> > readback of a memory location within the WC region.
>=20
> Would that on its own suffice though? If we have just the single buffer,
> flushing the write buffer only reduces the race window, but doesn't
> remove it as the framebuffer write may still happen in parallel to the
> scanout.

Updating the (front-)framebuffer will always be racy against the
scanout. The flushes just ensure that the writes eventually reach
memory visible to the scanout DMA master. Without any flushes there is
nothing in the memory model which would prohibit writes from being
stuck in the write buffers indefinitely.=20

Regards,
Lucas

>=20
> Cheers,
> Ahmad
>=20
> >=20
> > Regards,
> > Lucas
> > > +}
> > > +
> > >  static struct fb_ops lcdif_fb_ops =3D {
> > >  	.fb_enable  =3D lcdif_fb_enable,
> > >  	.fb_disable =3D lcdif_fb_disable,
> > > +	.fb_damage  =3D lcdif_fb_damage,
> > >  };
> > > =20
> > >  static int lcdif_probe(struct device *dev)
> >=20
> >=20



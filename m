Delivery-date: Thu, 21 May 2026 13:20:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ1SI-002DeI-2B
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 13:20:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ1SI-00051S-0e
	for lore@pengutronix.de; Thu, 21 May 2026 13:20:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=uKm+E6bm0I+UO8DTcVDOwYL65kc2U+LFO/SwzaBQysc=; b=GBIxsGTYa+H2OcBeOgCulg51b5
	M5132Cyr1MM9r1eOEzBiofDBOg/ilDFjfh/YHFgMAqzMTjJ6tULi3FW2i0v2FATqHRd2eEcxMmb8V
	j6yaxNNBapcpPx7hcIdgkm61YBvdAlWHJjV/M1+LioDsqm2Nqg4mJ+mK7Y3vRE+7E4dOLvWJQj8fn
	bs0RMqziCyodqIIejoOk9ruPvVpCiowbSZhPQ6MiqXIUI8sLGWQsoyNzb9VXomHBYyapqZDFkCJpP
	0AE9ou33iIoby2M9WQkrs1fzjWEERYYEGmasHqjUip+vMnqEycSf+IyZSEcQRe7HkHwcMeBtE7fyi
	n197ji9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ1Qv-00000007Zx7-2Ov6;
	Thu, 21 May 2026 11:19:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ1Qr-00000007Zvj-38lK
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 11:19:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ1Qp-0004m5-5G; Thu, 21 May 2026 13:19:15 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ1Qo-0015wg-1G;
	Thu, 21 May 2026 13:19:14 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ1Qo-00000004UWm-3b4F;
	Thu, 21 May 2026 13:19:14 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <ea3676f3-b120-483b-af13-c51de628cbaa@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 11:19:14 +0000
Message-Id: <E1wQ1Qo-00000004UWm-3b4F@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_041917_869718_C27F0517 
X-CRM114-Status: GOOD (  22.76  )
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
Cc: Barebox List <barebox@lists.infradead.org>, Alexander
 Shiyan <eagle.alexander923@gmail.com>
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
Subject: Re: [PATCH] ARM: rockchip: atf: move PBL malloc space away from
 OP-TEE memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-21 11:27, Ahmad Fatoum wrote:
> Hello Sascha,
>=20
> On 5/21/26 11:17 AM, Sascha Hauer wrote:
> > We recently introduced initializing the PBL early memory pool which
> > might be needed for decompressing the BL31/BL32 firmware files. We
> > used the end of the first DRAM region for the pool and with this we
> > ended up exactly in the default OP-TEE memory region which is mapped
> > as faulting. Move the pool directly beneath the OP-TEE memory.
> >=20
> > Fixes: 76b1f31275 ("ARM: rockchip: initialize PBL malloc")
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-rockchip/atf.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> > index 14797a1e06..96a891847b 100644
> > --- a/arch/arm/mach-rockchip/atf.c
> > +++ b/arch/arm/mach-rockchip/atf.c
> > @@ -173,7 +173,8 @@ static void rockchip_atf_load_bl31(void *fdt)
> >  	unsigned long bl31_ep;
> > =20
> >  	mmu_early_enable(membase[0], memsize[0]);
> > -	pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MALLOC=
_SIZE);
> > +	pbl_malloc_init(membase[0] + memsize[0] - OPTEE_SIZE - PBL_MALLOC_SIZ=
E,
> > +			PBL_MALLOC_SIZE);
>=20
> This would overlap the scratch area and possibly corrupt things there,
> wouldn't it?

:(

>=20
> I think this may need to move again...
>=20
> Is it not possible to read input_data/input_data_end here and determine
> barebox_base and reuse the same memory area that barebox_pbl_start()
> would use when TF-A returns?

Unfortunately not as barebox_base depends on the handoff data size which
might change between calls.

We could move the PBL malloc pool above the barebox image at the cost of
losing 128KiB of usable space.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



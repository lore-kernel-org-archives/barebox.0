Delivery-date: Mon, 18 May 2026 12:39:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvNu-0016OA-08
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:39:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvNt-0006yD-Cg
	for lore@pengutronix.de; Mon, 18 May 2026 12:39:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=2m7IzlHbH1yAz+OhvsRTuwniXnojeWrDZyEMdlf6DNk=; b=zArnaaztmAf/AATrOSRwBNRIxQ
	eRuy4ej/OHCYpKIinW0A7hsxaDeu+OjTPW/3KMnf22SSQn0g5LXS39CYUqBNqrwCVEXqZzn2mrnWA
	syJ5QKuH2lo5+t4iHtm1p4SCWs3MVYaU+VMV0Nko8PsU0MH6EF9Tpf8LQnXePC/CuX7/IAwjOvXSj
	ns6A8TnQA2XUb6GdlqPuBl8JncPgB8gXzmW9WQlPY5uDkDG5AjDCmLCX2k3jrd2I68/IY8De+Fm0j
	SXYa3EQfWluI4jrHvJ1Mo+h7ocwAJhZwYnEad3OY6vcecEZs3AO0AHK1s0K31kTw6wvJRym0npF4F
	yF/gCjHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvMd-0000000FH4C-13W4;
	Mon, 18 May 2026 10:38:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvMa-0000000FH2l-1Uof
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 10:38:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wOvMX-0006pG-8L; Mon, 18 May 2026 12:38:17 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wOvMW-000Zs7-23;
	Mon, 18 May 2026 12:38:17 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wOvMX-0000000EsYJ-0RpE;
	Mon, 18 May 2026 12:38:17 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <3d28313c-9695-416f-8d86-66ac050624b7@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 10:38:17 +0000
Message-Id: <E1wOvMX-0000000EsYJ-0RpE@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_033820_392523_025008D9 
X-CRM114-Status: GOOD (  16.19  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
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
Subject: Re: [PATCH 3/3] ARM: k3: k3-r5_defconfig: limit image size to
 maximum available space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-18 11:37, Ahmad Fatoum wrote:
> Hello,
>=20
> On 5/18/26 11:26 AM, Sascha Hauer wrote:
> > On the AM62x we have 0x3e000 bytes available for SBL usage. The upper
>=20
> What's a SBL?

Secondary Boot Loader I guess. TI speak

Sascha

>=20
> > 0x1000 bytes are used by the DMDATA, so set maximum image size to
> > 0x3d000.
>=20
> Cheers,
> Ahmad
>=20
> >=20
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/configs/k3-r5_defconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm/configs/k3-r5_defconfig b/arch/arm/configs/k3-r5_=
defconfig
> > index ece3d00947..6d8391c55e 100644
> > --- a/arch/arm/configs/k3-r5_defconfig
> > +++ b/arch/arm/configs/k3-r5_defconfig
> > @@ -8,7 +8,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
> >  CONFIG_NAME=3D"k3-r5_defconfig"
> >  CONFIG_ENVIRONMENT_VARIABLES=3Dy
> >  CONFIG_IMAGE_COMPRESSION_XZKERN=3Dy
> > -CONFIG_BAREBOX_MAX_IMAGE_SIZE=3D0x10000000
> > +CONFIG_BAREBOX_MAX_IMAGE_SIZE=3D0x3d000
> >  CONFIG_MALLOC_SIZE=3D0x0
> >  CONFIG_MALLOC_TLSF=3Dy
> >  CONFIG_KALLSYMS=3Dy
> >=20
>=20
> --=20
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



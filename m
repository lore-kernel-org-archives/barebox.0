Delivery-date: Mon, 18 May 2026 20:25:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP2f1-001E4z-12
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 20:25:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP2f0-0003CE-My
	for lore@pengutronix.de; Mon, 18 May 2026 20:25:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=FF40WsXYjm8z15qJPIrvMDxhKDsY7STCtgsUU0rEfcU=; b=2SJLANtHH/hT0xmytrRHGY3eDL
	slwtWgDfJc5jjMY1BPPBrjVQwBpOwXwqqmWNzJj2R1T5kgGRjoiEK1nhsrWpoP7VWsSxb5YTTA7YU
	JEQ3mwd2aQVKeSa5KZtVnxO5JA4CzuGE+SlOkOtpb5UPsYA++kmXvimbkJX/WC8jCc+D6F3O9ocdD
	PWvbevKHRZ/k9zypdpx4U50oURNw2iXorFObWWuKY09coGFh41zD1g9cD1QCnq/C1jCOT3NPubh5C
	M1zNPGDwR4x5FLI6drIC/OP8iuLARwn1YKKOa4V8zUQJmdazwhsbeoj479CbxDS7jk+mAQFjKYc/H
	6TMgmR3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2dw-0000000GYRq-0Hz9;
	Mon, 18 May 2026 18:24:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2dt-0000000GYR3-0Gkl
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 18:24:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wP2dr-00033V-AJ; Mon, 18 May 2026 20:24:39 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wP2dq-000dXH-2F;
	Mon, 18 May 2026 20:24:39 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wP2dr-0000000Exmj-0iVY;
	Mon, 18 May 2026 20:24:39 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <da2a16d6-324c-4649-aa55-ef3afc6678db@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 18:24:38 +0000
Message-Id: <E1wP2dr-0000000Exmj-0iVY@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_112441_103832_6CCDB8C1 
X-CRM114-Status: GOOD (  22.69  )
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
Cc: Barebox List <barebox@lists.infradead.org>
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
Subject: Re: [PATCH 2/2] ARM: rockchip: initialize PBL malloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-18 18:20, Ahmad Fatoum wrote:
> Hello,
>=20
> On 5/18/26 5:32 PM, Sascha Hauer wrote:
> > Rockchip uses compressed firmware binaries. Depending on the compression
> > algorithm we might use early malloc space for decompressing. Initialize
> > the PBL malloc space to the memory end to make pbl_malloc() work. This
> > memory area will be overwritten later in barebox_pbl_start(), but it's
> > ok as the memory is only needed during decompression of the firmware
> > files.
> >=20
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>=20
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>=20
> > ---
> >  arch/arm/mach-rockchip/atf.c | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> > index 3e2e18ac29..03e03c9122 100644
> > --- a/arch/arm/mach-rockchip/atf.c
> > +++ b/arch/arm/mach-rockchip/atf.c
> > @@ -173,6 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
> >  	unsigned long bl31_ep;
> > =20
> >  	mmu_early_enable(membase[0], memsize[0]);
> > +	pbl_malloc_init(membase[0] + memsize[0] - SZ_128K, SZ_128K);
>=20
> It would be cool if we could use the same malloc area that would be used
> in barebox_pbl_start(), but I guess that's not possible, because it's
> unfortunately based on the barebox proper load address, which is now
> known here. Let's hope this won't clash with any future use..

Yes, that's the problem. I am not exactly happy with this solution
either, but haven't found anything better.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



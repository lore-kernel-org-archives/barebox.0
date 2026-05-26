Delivery-date: Tue, 26 May 2026 09:36:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRmL0-003vbN-0W
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 09:36:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRmKz-0000A5-G9
	for lore@pengutronix.de; Tue, 26 May 2026 09:36:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=M5HLW6I1BrctFzxNgXPaYjq3lkduD1V8G8sJpy8Ywvg=; b=DtvDalUfprK8ZQPQaFEGCKESSt
	zgHiN2EfrTg881lSTQBiKxfrEJ5R7sTbZeu5EC9wDbUVho4Gl59UGlNFb0gdo5kevk8OzvVe7U8X9
	DWLlpdlQCGnUQSH52OgzBfigjpbm2OYf5VIkB4UdIfXPRDcXZs9V5s1wG1wHwNGzQWJwyBzratKjp
	wDjk0dXqbJm1tQHLYYjQKtrJ0QHHKq9NvVG7x+k11LNMVMU+gD21cxS16g0HvZzoXQ0vr/AdEexyg
	HbjwG4gCdhiKt0+n7DD6aELiyASBkOteAeM/PoVi/q+fcnoL/i/l65vN2V5hZxDOUMFpfvsyv4gPx
	FNrlXltg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRliF-00000001D9E-0Un6;
	Tue, 26 May 2026 06:56:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRliB-00000001D8t-3HnU
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:56:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wRliA-0004r3-5L; Tue, 26 May 2026 08:56:22 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wRli9-001sCQ-1k;
	Tue, 26 May 2026 08:56:22 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wRliA-0000000GFNm-02hm;
	Tue, 26 May 2026 08:56:22 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <8ca9c8ba-374c-4ded-80ef-1d3f151a72be@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 06:56:21 +0000
Message-Id: <E1wRliA-0000000GFNm-02hm@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_235623_875539_0CF094CB 
X-CRM114-Status: GOOD (  18.08  )
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
Cc: barebox@lists.infradead.org, str@pengutronix.de
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
Subject: Re: [PATCH] ARM: i.MX: prevent use of imx_cpu_type in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-26 08:41, Ahmad Fatoum wrote:
> Hello Sascha,
>=20
> On 5/26/26 08:35, Sascha Hauer wrote:
> > On 2026-05-22 15:48, Ahmad Fatoum wrote:
> >> Functions like cpu_is_mx6q internally call cpu_is_mx6() first,
> >> which can be evaluated at compile-time if only i.MX6 boards are enable=
d.
> >>
> >> This allowed calling cpu_is_mx6q in PBL entry points as long as barebo=
x was
> >> compiled for only a single SoC.
> >>
> >> Since the multi-arch/multi-platform support was added however,
> >> cpu_is_mx6 became a runtime check that's never true in PBL, leading all
> >> cpu_is_mx* in 32-boards to silently fail at runtime.
> >>
> >> We have no in-tree boards that are affected by this, so until some
> >> out-of-tree user is bothered enough to fix is, acknowledge that this no
> >> longer works and turn the silent breakage into a loud compile-time err=
or
> >> whenever anything ends up referencing __imx_cpu_type.
> >=20
> > imx_set_cpu_type() has users in PBL:
> >=20
> > arch/arm/mach-imx/atf.c:280:    imx_set_cpu_type(IMX_CPU_IMX8MM);
> > arch/arm/mach-imx/atf.c:343:    imx_set_cpu_type(IMX_CPU_IMX8MP);
> > arch/arm/mach-imx/atf.c:406:    imx_set_cpu_type(IMX_CPU_IMX8MN);
> > arch/arm/mach-imx/atf.c:463:    imx_set_cpu_type(IMX_CPU_IMX8MQ);
> > arch/arm/mach-imx/atf.c:492:    imx_set_cpu_type(IMX_CPU_IMX93);
> >=20
> > Also several consumers rely on it in PBL:
> >=20
> > arch/arm/mach-imx/tzasc.c:358:  if (cpu_is_mx8mm() || cpu_is_mx8mn() ||=
 cpu_is_mx8mp())
> > arch/arm/mach-imx/tzasc.c:365:  if (cpu_is_mx8mn() || cpu_is_mx8mp())
> > arch/arm/mach-imx/atf.c:90:     if (cpu_is_mx8mn())
> > arch/arm/mach-imx/atf.c:143:    if (cpu_is_mx8mn())
> > arch/arm/mach-imx/atf.c:198:    if (!IS_ENABLED(CONFIG_ARCH_IMX_ATF_PAS=
S_BL_PARAMS) || cpu_is_mx8mq()) {
>=20
> Yes and the definition is still emitted for CONFIG_ARCH_IMX_ATF=3Dy.
> The change here onl affects 32-bit i.MX.

Alright, I have overlooked the || defined(CONFIG_ARCH_IMX_ATF).

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



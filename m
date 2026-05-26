Delivery-date: Tue, 26 May 2026 08:36:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlPI-003uea-30
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:36:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlPI-0002oS-AR
	for lore@pengutronix.de; Tue, 26 May 2026 08:36:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=SL9ocjo/I01jUF8aPKlG+3eFl4kFAKu+1cLYIinE2a4=; b=yBlCGeGFVKdT+c1b5REDJknUb0
	6a6JSZYCXKq/5izigHfbX3QIlN74Xk8dpLwg7XgQJPhUKcjjIKnZOB4s+pF4/eoe0K4VffUZsjOYx
	9Ny6ueimAAdQc8REkTeor0npMXCWPcMhMtT22xuaYA6oGosW8iCMhITMREz7TBBFpRfc2TOXAlbBJ
	hvFZtcl1vGUlR3DohupYvhJv9mXdZpu0gQo0PgrVWGfJuRvD6jjwcsOLuvt887tFyLY69run9nrFB
	atZ9ma2D6UwhiDdnQFJyHjUDXs7B2RYIb6lfzN+MZAABL758PWnPrBKid7SVNrCrAaxXeeakJhEhF
	skfY+TpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlOE-00000001B5p-2C1G;
	Tue, 26 May 2026 06:35:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlOA-00000001B4f-43Ff
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:35:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wRlO9-0002gs-8d; Tue, 26 May 2026 08:35:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wRlO8-001s9r-25;
	Tue, 26 May 2026 08:35:41 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wRlO9-0000000GFFg-0VaP;
	Tue, 26 May 2026 08:35:41 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, str@pengutronix.de, "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <20260522134803.2988021-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 06:35:41 +0000
Message-Id: <E1wRlO9-0000000GFFg-0VaP@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_233543_003353_3FA010BF 
X-CRM114-Status: GOOD (  12.57  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: prevent use of imx_cpu_type in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-22 15:48, Ahmad Fatoum wrote:
> Functions like cpu_is_mx6q internally call cpu_is_mx6() first,
> which can be evaluated at compile-time if only i.MX6 boards are enabled.
>=20
> This allowed calling cpu_is_mx6q in PBL entry points as long as barebox w=
as
> compiled for only a single SoC.
>=20
> Since the multi-arch/multi-platform support was added however,
> cpu_is_mx6 became a runtime check that's never true in PBL, leading all
> cpu_is_mx* in 32-boards to silently fail at runtime.
>=20
> We have no in-tree boards that are affected by this, so until some
> out-of-tree user is bothered enough to fix is, acknowledge that this no
> longer works and turn the silent breakage into a loud compile-time error
> whenever anything ends up referencing __imx_cpu_type.

imx_set_cpu_type() has users in PBL:

arch/arm/mach-imx/atf.c:280:    imx_set_cpu_type(IMX_CPU_IMX8MM);
arch/arm/mach-imx/atf.c:343:    imx_set_cpu_type(IMX_CPU_IMX8MP);
arch/arm/mach-imx/atf.c:406:    imx_set_cpu_type(IMX_CPU_IMX8MN);
arch/arm/mach-imx/atf.c:463:    imx_set_cpu_type(IMX_CPU_IMX8MQ);
arch/arm/mach-imx/atf.c:492:    imx_set_cpu_type(IMX_CPU_IMX93);

Also several consumers rely on it in PBL:

arch/arm/mach-imx/tzasc.c:358:  if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu=
_is_mx8mp())
arch/arm/mach-imx/tzasc.c:365:  if (cpu_is_mx8mn() || cpu_is_mx8mp())
arch/arm/mach-imx/atf.c:90:     if (cpu_is_mx8mn())
arch/arm/mach-imx/atf.c:143:    if (cpu_is_mx8mn())
arch/arm/mach-imx/atf.c:198:    if (!IS_ENABLED(CONFIG_ARCH_IMX_ATF_PASS_BL=
_PARAMS) || cpu_is_mx8mq()) {

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



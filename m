Delivery-date: Mon, 15 Jun 2026 10:50:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ31r-0064to-2K
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 10:50:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ31r-0004Rz-2u
	for lore@pengutronix.de; Mon, 15 Jun 2026 10:50:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=EiYtLSnaYw/E8z8HVaF8AULEUubVGidbZbzvTWKg/k0=; b=nh1mvWBoWsbO+vxf69GYp1rO+g
	pW8M3Lxoso60epEdr7vxEKNtCHracJyftVx3Sg3NFjpzuQ7xl81q2rZuPBU7HdE/xj+aLX2bVcevL
	CX7cynNHj/ND8/T91z5yFCfqws1mkIeEATzPzYjyCHWZSMbFI6rjYzFn+BHgPgM0jAc/Uw9m0gISG
	eb0c3oxMSjVzZeXQPSStNtCqTkZg2BS9SYPWX+aSay7sf0jFCP4sTrfieN6Or2X5ReHiyvj2k1An9
	3iGkArDDDFIi9hedMYrrVJg58LvuJO9/7rg6+nkVSeWg4JWaBbELKRLDRhK8h5rLk29lVTQWYAmOV
	oMcNf2Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ30f-0000000DuFw-0FIw;
	Mon, 15 Jun 2026 08:49:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ30b-0000000DuF9-3Bfq
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 08:49:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ30Z-00042M-Sa; Mon, 15 Jun 2026 10:49:27 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ30Z-002po1-2f;
	Mon, 15 Jun 2026 10:49:27 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ30Z-00000006Gk9-35a3;
	Mon, 15 Jun 2026 10:49:27 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
Cc: "Andrei Lalaev" <andrey.lalaev@gmail.com>, barebox@lists.infradead.org
In-Reply-To: <7d47871b-989a-4ad0-bfb1-4d449fd13ceb@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 08:49:27 +0000
Message-Id: <E1wZ30Z-00000006Gk9-35a3@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_014929_819931_B0C26844 
X-CRM114-Status: GOOD (  18.04  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: iMX ddrphy_utils difference with U-boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-08 19:26, Ahmad Fatoum wrote:
> Hello Andrei,
>=20
> On 6/8/26 16:24, Andrei Lalaev wrote:
> > Hi,
> >=20
> > I am moving an iMX8MP module from vendor U-Boot 2024.04 to Barebox 2025=
.02
>=20
> Sidenote: You'll probably want to use one of the still supported
> v2026.04 or v2026.06 releases.
>=20
> > and found a strange difference in the DDR training code:
> >=20
> >   vim drivers/ddr/imx/ddrphy_utils.c +94
> >=20
> > And the corresponding line in U-Boot:
> >=20
> >   vim drivers/ddr/imx/phy/ddrphy_utils.c +101
> >=20
> > Is there any chance that somebody knows/remembers why "return -1" was r=
eplaced with "hang()"?
>=20
> I can't speak for Sascha, but having looked at the code, I see no reason
> why not to propagate the error.
>=20
> > I couldn't find any explanation in the commits/mailing lists.
>=20
> My guess is that it wasn't anticipated that boards would handle
> the error gracefully to fall back to a different DDR init.

That's my guess as well. Note the callers of
imx8m_wait_ddrphy_training_complete() which is only a wrapper around
calling wait_ddrphy_training_complete() do not check the error code, so
when changing it back to return an error code we likely want to add
error checking where missing.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



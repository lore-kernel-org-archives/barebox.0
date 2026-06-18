Delivery-date: Thu, 18 Jun 2026 09:10:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6tF-007B8n-0D
	for lore@lore.pengutronix.de;
	Thu, 18 Jun 2026 09:10:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6tE-0003nF-9e
	for lore@pengutronix.de; Thu, 18 Jun 2026 09:10:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=9TLtIaV/yyaY7Y6IwipRLoyY2CX5Eucf62cHc3YxdxM=; b=qqEaO/r6ZO/E7oVoGkxzwhlVJE
	J+d7qQ5jluPZwKVvxHjCXtRtdG5ygjoEhHKbHG8NJ2sZ7t5R5mg4Yvl1Gh936+BBPGdY3lTJrVUGX
	IpTsChjjVTZPjp9i+eZUQQ4FfQeH3XJFbuYT/21CmMyaj0RV3DSKtIKr9+OrMvajSkTyRGbmrpuYR
	L1g6SOXQ4NldhVdCrue1SEmCMVHL4pLfDuwFxC6OYO1ReTB3Jrgtyd48TJrZa+vhhX7v7I0CGqXhx
	jMDbZO3F+1Hr85Cm/GQDlGdkRyjp4y9mz0VTF6v1Le69E3SOSTHZPZiskdhyZbTCYQFgTaEBwXjct
	Os5Nrlyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6sB-00000000jhE-30vx;
	Thu, 18 Jun 2026 07:09:11 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6s8-00000000jgs-2jt3
	for barebox@lists.infradead.org;
	Thu, 18 Jun 2026 07:09:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E04C3200B9E;
	Thu, 18 Jun 2026 09:09:05 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wa6s5-003Ove-2d;
	Thu, 18 Jun 2026 09:09:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wa6s5-0000000DfRi-31Jx;
	Thu, 18 Jun 2026 09:09:05 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
Cc: "Bastian Krause" <bst@pengutronix.de>, barebox@lists.infradead.org, "Marco
 Felsch" <mfe@pengutronix.de>
In-Reply-To: <c3ffa653-e2e8-4b11-a5b4-4a9e1c60e2e9@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 07:09:05 +0000
Message-Id: <E1wa6s5-0000000DfRi-31Jx@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_000908_868170_15AC3828 
X-CRM114-Status: GOOD (  21.05  )
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
Subject: Re: [PATCH] ARM: dts: i.MX8MP FRDM: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-12 16:15, Ahmad Fatoum wrote:
> Hello,
>=20
> On 6/12/26 13:58, Bastian Krause wrote:
> > Since f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") the esdctl
> > driver is used. This causes the errors below since barebox tries to add
> > the memory twice:
> >=20
> >   imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Devi=
ce or resource busy
> >   initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device
>=20
> Can you share the full output? -EBUSY here is not expected for
> the issues you describe. barebox has been tolerant of the same
> memory bank being registered by different means for a number
> of years now.
>=20
> > Remove the memory node to fix this.
> >=20
> > 604c974c968 ("ARM: dts: i.MX8MP: remove memory node") already fixed this
> > for the i.MX8MP EVK and the TQMa8MPxL on the MBa8MPxL.
>=20
> This commit doesn't exist upstream.

This is upstream as e3b5c9b604 ("ARM: dts: i.MX8MP: remove memory node")

Fixed while applying.

>=20
> >=20
> > Fixes: f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles")
>=20
> This commit is 3 years old and the FRDM was only added this year.
> Was the error message there all the time..?
>=20
> Thanks,
> Ahmad
>=20
>=20
> > Signed-off-by: Bastian Krause <bst@pengutronix.de>
> > ---
> >  arch/arm/dts/imx8mp-frdm.dts | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/arch/arm/dts/imx8mp-frdm.dts b/arch/arm/dts/imx8mp-frdm.dts
> > index b1870213baf..7d770c3e456 100644
> > --- a/arch/arm/dts/imx8mp-frdm.dts
> > +++ b/arch/arm/dts/imx8mp-frdm.dts
> > @@ -11,3 +11,5 @@
> >  / {
> >  	barebox,deep-probe;
> >  };
> > +
> > +/delete-node/ &{/memory@40000000};
>=20
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



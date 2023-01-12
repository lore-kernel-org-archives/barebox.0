Delivery-date: Thu, 12 Jan 2023 09:43:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFtBR-009fhO-Dt
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 09:43:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFtBP-0006yj-DW
	for lore@pengutronix.de; Thu, 12 Jan 2023 09:43:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JBZPu8Q2cdun9A4HZWcu7+Wl0bHdDEW9hmuPsFnZvY0=; b=etrYUCRPH5EY8tRkWCiN7/WmEp
	tOP4ketL0T5MvwQw7f9psj4EvUEk/FfuftX5xBlaX3lHddIPqZm+7DRHgkQ99OyCnq84OusWOUm28
	yIB7TJE1yfm73BrFKExg+hIq7zo6IBard2Fp0+upr6Vzesu7zHvYJhQ+8dgRkLmfI9EAUv18PK3zP
	5/rmr2wHnoPM+UMyCnVzr9/qKypcj7CQQobQYNV8Nhu7NUWJOx/gQYqfTwtB0ZZbY10sPf4H/2J0a
	oLgZfvlUlfUK8TIKoeoewTnKOTZOUHNEGZQZ6jOcMlq1S6mpAcCxdg28wBwhUCt69TqyjyTmh5WbQ
	jTEfO6qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFtA3-00EAit-N7; Thu, 12 Jan 2023 08:42:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFt9w-00EAcG-Eo
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 08:42:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1pFt9k-0006k9-PK; Thu, 12 Jan 2023 09:41:52 +0100
Message-ID: <c1864924c708b6ce14b3afead30d777cd58a365e.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Thu, 12 Jan 2023 09:41:52 +0100
In-Reply-To: <72d6d708-3fef-83a5-812e-85be67615eda@pengutronix.de>
References: <20230111182157.1702865-1-l.stach@pengutronix.de>
	 <20230111182157.1702865-2-l.stach@pengutronix.de>
	 <428fb95a-1d48-734d-a715-8d6cd5bae4bc@pengutronix.de>
	 <cfd9006148fbf8c5978f0b8fb395a5c3a54d8e09.camel@pengutronix.de>
	 <72d6d708-3fef-83a5-812e-85be67615eda@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_004204_534159_E2A59F1C 
X-CRM114-Status: GOOD (  27.79  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: dts: i.MX8MP: move MAC address description to
 common location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Mittwoch, dem 11.01.2023 um 21:13 +0100 schrieb Ahmad Fatoum:
> On 11.01.23 21:00, Lucas Stach wrote:
> > Hi Ahmad,
> >=20
> > Am Mittwoch, dem 11.01.2023 um 20:03 +0100 schrieb Ahmad Fatoum:
> > > Hello Lucas,
> > >=20
> > > On 11.01.23 19:21, Lucas Stach wrote:
> > > > All i.MX8MP boards should consult the common fuse locations for the
> > > > MAC address of the network interfaces. Also add the second location
> > > > for the EQOS network interface.
> > >=20
> > > Do we really want to extend use of this binding? The upstream kernel
> > > DT already has nvmem-cells for the MAC addresses and we have support
> > > for reading that out.
> > >=20
> > I thought about this too, but...
> >=20
> > >  Only thing missing is the equivalent of
> > >=20
> > > Linux commit d0221a780cbc ("nvmem: imx-ocotp: add support for post pr=
ocessing")
> > >=20
> > This isn't the only thing missing. To handle the second MAC address via
> > NMEM, we would need to add unaligned read/write support to the OCOTP
> > driver. The currently used regmap_read/write_bulk API does only work
> > with register aligned accesses. The benefit of NVMEM didn't look that
> > tempting anymore when looking at the cost of the necessary OCOTP driver
> > changes, so I choose to go with the more minimal change.
>=20
> You can switch the driver over to use nvmem_regmap_register(), which will
> take care of the alignment for you. I still think it's worth it.
>=20
Thanks, didn't know about this one. I'll take a stab at converting the
OCOTP driver.

Regards,
Lucas

> Cheers,
> Ahmad
>=20
> >=20
> > Regards,
> > Lucas
> >=20
> > > Cheers,
> > > Ahmad
> > >=20
> > > >=20
> > > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > > ---
> > > >  arch/arm/dts/imx8mp-evk.dts                | 4 ----
> > > >  arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts | 4 ----
> > > >  arch/arm/dts/imx8mp.dtsi                   | 1 +
> > > >  3 files changed, 1 insertion(+), 8 deletions(-)
> > > >=20
> > > > diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.=
dts
> > > > index d992b14882a3..28d8c5f9292e 100644
> > > > --- a/arch/arm/dts/imx8mp-evk.dts
> > > > +++ b/arch/arm/dts/imx8mp-evk.dts
> > > > @@ -68,7 +68,3 @@
> > > >  		reg =3D <0xe0000 0x20000>;
> > > >  	};
> > > >  };
> > > > -
> > > > -&ocotp {
> > > > -	barebox,provide-mac-address =3D <&fec 0x640>;
> > > > -};
> > > > diff --git a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm/=
dts/imx8mp-tqma8mpql-mba8mpxl.dts
> > > > index c47e7285a703..6e81f58e2786 100644
> > > > --- a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> > > > +++ b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> > > > @@ -53,7 +53,3 @@
> > > >  		reg =3D <0xe0000 0x20000>;
> > > >  	};
> > > >  };
> > > > -
> > > > -&ocotp {
> > > > -	barebox,provide-mac-address =3D <&fec 0x640>;
> > > > -};
> > > > diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
> > > > index 5da79f13d339..379fa49d6042 100644
> > > > --- a/arch/arm/dts/imx8mp.dtsi
> > > > +++ b/arch/arm/dts/imx8mp.dtsi
> > > > @@ -13,6 +13,7 @@
> > > >  feat: &ocotp {
> > > >  	#feature-cells =3D <1>;
> > > >  	barebox,feature-controller;
> > > > +	barebox,provide-mac-address =3D <&fec 0x640 &eqos 0x650>;
> > > >  };
> > > > =20
> > > >  &pgc_mipi_phy1 {
> > >=20
> >=20
> >=20
>=20




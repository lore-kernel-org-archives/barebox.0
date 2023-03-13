Delivery-date: Mon, 13 Mar 2023 14:05:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbhro-005nBG-EJ
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:05:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbhro-0007Dc-7w
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:05:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xUcEoVJljc4iiZa5st+96jXnBhzIMtBZ9oEJaY5RQww=; b=dFwy0LmNm7umGqAwVXE4RwZDOQ
	V1y862Odco6sXMZr0RTuhkJwij0myotSkEIPsntodGI0Q7pUOHpGh3OfEx/xjbHqrDrftz6nm0klw
	r+gNR5igmqx1nBU5ZE1fJ3nWf7UPk4rfznLuV3rQL9D/SdwVh2+Fct53c+fj9ozPHcr6serdQDWAU
	0cSScqaMqL/rQ/bxHKNhQnx+do70uwb2kP2rjn1sH2g8koL6RiJNK3Wp2Q+T/8IQ5VM3qnyASDiQD
	+PYd/mRprSpmF9n1GYze4y0J4MEFsTr1JgbvuwbpOCNN7ntVcLdIre7MBmB19UqCn3ZsC2oxbWwmU
	B4T4M2VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbhqC-005mEw-BU; Mon, 13 Mar 2023 13:03:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbhq6-005mDV-CP
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:03:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1pbhq1-0006nG-Vj; Mon, 13 Mar 2023 14:03:42 +0100
Message-ID: <0fa19455f9f6473c263eced4e5d0f672e9fe135a.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Date: Mon, 13 Mar 2023 14:03:41 +0100
In-Reply-To: <20230312162928.2110697-1-m.felsch@pengutronix.de>
References: <20230312162928.2110697-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_060346_436152_1BBE649A 
X-CRM114-Status: GOOD (  15.23  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Sonntag, dem 12.03.2023 um 17:29 +0100 schrieb Marco Felsch:
> since commit f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") we
> make use of the esdctl driver. This cause the below error since barebox
> try to add the memory twice.
>=20
> > imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device=
 or resource busy
> > initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device
>=20
I wonder why I didn't hit this. Probably some probe order thing.

> Remove the memory node to fix this.
>=20
> This behaviour was seen on a i.mx8mp-evk but the
> imx8mp-tqma8mpql-mba8mpxl also has a memory node and includes the
> barebox.dtsi.
>=20
> Fixes: f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-evk.dts                | 2 ++
>  arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts | 2 ++
>  2 files changed, 4 insertions(+)
>=20
> diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
> index 0acc3731d5..c7e1f35d2d 100644
> --- a/arch/arm/dts/imx8mp-evk.dts
> +++ b/arch/arm/dts/imx8mp-evk.dts
> @@ -30,6 +30,8 @@
>  	};
>  };
> =20
> +/delete-node/ &{/memory@40000000};
> +
Why not add this to arch/arm/dts/imx8mp.dtsi?

Regards,
Lucas

>  &ethphy1 {
>  	reset-assert-us =3D <15000>;
>  	reset-deassert-us =3D <100000>;
> diff --git a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm/dts/im=
x8mp-tqma8mpql-mba8mpxl.dts
> index 6e81f58e27..bf23e40489 100644
> --- a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> +++ b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -24,6 +24,8 @@
>  	};
>  };
> =20
> +/delete-node/ &{/memory@40000000};
> +
>  &usdhc2 {
>  	#address-cells =3D <1>;
>  	#size-cells =3D <1>;




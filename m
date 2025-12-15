Delivery-date: Mon, 15 Dec 2025 20:44:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVEUi-00Bqys-2Y
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 20:44:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVEUh-0003ET-Ss
	for lore@pengutronix.de; Mon, 15 Dec 2025 20:44:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abUQvRA+jHEqh1JKEQZz+wrimh08nBQhMEsoNkfIU24=; b=PjU30ybrCgW/Lc
	V9ZMdB30C6zZe8ny+dOAJcxRg0x32Bq8kuS4zRUZQ3xfT2HUQqN/KkcPD7agkWc3HmdKtBlRmmrT0
	zG18ZBNXnOX1x5hmLaYc/pU0ClVEEpjnDdX72LvnPbt9VOJyjfFXihypANC4E+kVDVdwA/iPjfs4v
	MpI11p0ItmtJM6x3v6UoGM+CzU9NZWqc56Btl9P0Wjk7DQ/wD+MGmVe8zN8jlfKJ78r6kdYMLDAiu
	mmJ98pheMNZRyIBiO/WJE7JzdUudBrL2lfiT9+7XN6SMbpAfuw1fm7LyHgzXTYs720Tjkf3yYntxY
	KSD66z4cKYiWfILeojNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVETw-00000004BpG-0sGn;
	Mon, 15 Dec 2025 19:43:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVETr-00000004BoJ-2Upz
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 19:43:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 24717442E3
	for <barebox@lists.infradead.org>; Mon, 15 Dec 2025 19:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05799C4AF09
	for <barebox@lists.infradead.org>; Mon, 15 Dec 2025 19:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765827819;
	bh=QAMKKq+/07OKE2edah45Zywl8LeTi9tuqwkGpLjZYEw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=KsEyoZ7G5Ju7kqFhPvG3H8KQOT7gqgJ5WG2uMk9wC7nQLYLUWAVco8lSu9AfiGLWo
	 3OZCkta4fv4QT+oI0vwA22vfY5ayWBzNy9GvGiTS7US5pZeJ/xa8KS0lVg5gnG0fnM
	 wiTQ56MmpJx2A2ylThkfE6Kfr7d6CgrhfXvFhv/rSHG9crpPAuaGqVxTHjxUVYQg/Y
	 bKm8i2nuAj4aP9DJrZh1LGhqi9TN+Fu2ESkK3VL/Atag4Hi2s99ujH0vIn6xtcPjqt
	 cvLkHXEf2h0YyIbTfIMpTOeVhVoMuDYcQrXO+Bm8OaBkKKUSpzIeqUZ7/dxjTFocpP
	 6cvnycQKd3HOw==
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b79d6a70fc8so680602566b.0
        for <barebox@lists.infradead.org>; Mon, 15 Dec 2025 11:43:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUxDp8zyJp2YmMqhpHOX9Dgwvo+BZdsifVHmmMuvpw1FtajTmMGRZ9GrdlncwWmqp26cxjdUSqO@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4qZdrax6+Pn8VJ3GZ93HPrIzYtEieqlPBv5RCoZBRYDEl7uqC
	2oSOMlsvfLt76yq0hKcQQ0zEPBJ7Ec1HWX254BJm8RPLkJWoMAv6v70Fn3Gj7oI8oh8MEm22Nuv
	sJE5CwchKt7yH/1aBPH8PfKWC77y87A==
X-Google-Smtp-Source: AGHT+IHPOvW2BGVu2D4Ir+xTf+ZrZ0oTHwKdRBT3jQdNMTbk0Ko9WuWTep47Nqx4mbBndw2hB+2iEYVbKpnnkmMFsi4=
X-Received: by 2002:a17:907:7e97:b0:b74:983b:4056 with SMTP id
 a640c23a62f3a-b7d235c8495mr1177908366b.8.1765827817406; Mon, 15 Dec 2025
 11:43:37 -0800 (PST)
MIME-Version: 1.0
References: <20251212203226.458694-5-robh@kernel.org> <20251213181324.u32ztfblkknfpz44@pengutronix.de>
 <CAL_JsqK9OREenZjBHrDh7AqsyUXYOzTOhY4e0qHGzYkX8tacWQ@mail.gmail.com> <20251214185750.tzt6jf4zg5gtex63@pengutronix.de>
In-Reply-To: <20251214185750.tzt6jf4zg5gtex63@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Mon, 15 Dec 2025 13:43:25 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLfVemq9k3x5J1pTz--Z+VYLeEQrFdbtdS7Pc-HkRui=w@mail.gmail.com>
X-Gm-Features: AQt7F2oiZD_a6RbSn-VyOWgON7AhmUCDA0yS1ZH9l8th1WHWsPTGvW7f6u1q7WA
Message-ID: <CAL_JsqLfVemq9k3x5J1pTz--Z+VYLeEQrFdbtdS7Pc-HkRui=w@mail.gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_114339_732632_30CA0820 
X-CRM114-Status: GOOD (  27.29  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, imx@lists.linux.dev, Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de, oualid.derouiche@kontron.de, linux-renesas-soc@vger.kernel.org, eberhard.stoll@kontron.de, Pengutronix Kernel Team <kernel@pengutronix.de>, barebox@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, annette.kobou@kontron.de, Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: nxp/imx6: Drop unused .dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sun, Dec 14, 2025 at 12:58=E2=80=AFPM Marco Felsch <m.felsch@pengutronix=
.de> wrote:
>
> On 25-12-14, Rob Herring wrote:
> > On Sat, Dec 13, 2025 at 12:13=E2=80=AFPM Marco Felsch <m.felsch@pengutr=
onix.de> wrote:
> > >
> > > Hi Rob,
> > >
> > > On 25-12-12, Rob Herring (Arm) wrote:
> > > > These .dtsi files are not included anywhere in the tree and can't b=
e
> > > > tested.
> > >
> > > not in the tree but by other projects, please see below.
> > >
> > > > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > > > ---
> > > >  .../dts/nxp/imx/imx6dl-kontron-samx6i.dtsi    | 12 -----
> > > >  .../dts/nxp/imx/imx6q-kontron-samx6i.dtsi     | 12 -----
> > > >  .../boot/dts/nxp/imx/imx6qdl-pico-dwarf.dtsi  | 45 ---------------=
-
> > > >  .../boot/dts/nxp/imx/imx6qdl-pico-nymph.dtsi  | 54 ---------------=
----
> > > >  4 files changed, 123 deletions(-)
> > > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i=
.dtsi
> > > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.=
dtsi
> > > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6qdl-pico-dwarf.dt=
si
> > > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6qdl-pico-nymph.dt=
si
> > > >
> > > > diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi b=
/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > > > deleted file mode 100644
> > > > index 5a9b819d7ee8..000000000000
> > > > --- a/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > > > +++ /dev/null
> > > > @@ -1,12 +0,0 @@
> > > > -// SPDX-License-Identifier: GPL-2.0 OR X11
> > > > -/*
> > > > - * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutroni=
x.de>
> > > > - */
> > > > -
> > > > -#include "imx6dl.dtsi"
> > > > -#include "imx6qdl-kontron-samx6i.dtsi"
> > > > -
> > > > -/ {
> > > > -     model =3D "Kontron SMARC-sAMX6i Dual-Lite/Solo";
> > > > -     compatible =3D "kontron,imx6dl-samx6i", "fsl,imx6dl";
> > > > -};
> > > > diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi b/=
arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > > > deleted file mode 100644
> > > > index e76963436079..000000000000
> > > > --- a/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > > > +++ /dev/null
> > > > @@ -1,12 +0,0 @@
> > > > -// SPDX-License-Identifier: GPL-2.0 OR X11
> > > > -/*
> > > > - * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutroni=
x.de>
> > > > - */
> > > > -
> > > > -#include "imx6q.dtsi"
> > > > -#include "imx6qdl-kontron-samx6i.dtsi"
> > > > -
> > > > -/ {
> > > > -     model =3D "Kontron SMARC-sAMX6i Quad/Dual";
> > > > -     compatible =3D "kontron,imx6q-samx6i", "fsl,imx6q";
> > > > -};
> > >
> > > I can't speak for the other two .dtsi files but both kontron .dtsi fi=
les
> > > are used by barebox:
> > >
> > >  - https://elixir.bootlin.com/barebox/v2025.11.0/source/arch/arm/dts/=
imx6dl-samx6i.dts#L8
> > >  - https://elixir.bootlin.com/barebox/v2025.11.0/source/arch/arm/dts/=
imx6q-samx6i.dts#L8
> > >
> > > Removing them here will cause a regression for barebox.
> >
> > Please upstream something that uses the .dtsi. Other than the
> > undocumented barebox property, no reason these can't be.
>
> My intention wasn't to point to the barebox-only
> "barebox,disable-deep-probe" property. I was refering to the include
> line.
>
> The two .dtsi files we're talking about are SoM .dtsi files. We don't
> have access to the Kontron EVK baseboard which uses this SoM.
>
> I've added a few Kontron devs which may can add the missing baseboard
> support.
>
> +Cc: frieder.schrempf@kontron.de
> +Cc: annette.kobou@kontron.de
> +Cc: oualid.derouiche@kontron.de
> +Cc: eberhard.stoll@kontron.de
>
> I could also add the imx6dl-samx6i.dts and imx6q-samx6i.dts like we do
> in barebox. But as said, this would be a devicetree for a SoM which
> makes sense for the bootloader but not for the kernel.

Why not? People use the kernel as a bootloader. There's also some
discussions about splitting SoMs and baseboards into overlays for
baseboards (and also even into SoC base DT plus overlay for boards).

Rob



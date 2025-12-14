Delivery-date: Sun, 14 Dec 2025 15:42:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vUnJH-00BPE2-0y
	for lore@lore.pengutronix.de;
	Sun, 14 Dec 2025 15:42:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vUnJG-0000VC-PF
	for lore@pengutronix.de; Sun, 14 Dec 2025 15:42:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xAYIybz6RXAuMfc63mvTtUvJpNs4ZOFCF/rqWwLHNBk=; b=xeSPA4ZtBldG2L
	VGbb3i/hBHeC4qDr4xqic/nG6t/fK2QU6YnJaJguBAJJhvvXzKGWqg0cZWI35+WrqsO6D8zZQEIc8
	4QfJyJ+nN3Doq+12aUvG9rZWP2p9rZfod/IxS3IySE9Y/ABiGOMsBvfG+9FWJm2CALsAVVb0iKhz7
	bLpcek1JFLwgT4VBgl7spenNlgjUcwOYk/UvjZPIw8bF757kMInU2IvNJtgU1hmD53iSZt5jRh9ek
	fb4ofeAC/iATzHOzgHEabwJzjBVLJve2ligffWWl4FXXWoMeh4W9lI4XW1le3eJXcuO/i+qHrIdc3
	Rede7P8FVZxnjAMES8ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUnIZ-00000002Wc4-3KvI;
	Sun, 14 Dec 2025 14:42:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUnIY-00000002Wbj-2tlC
	for barebox@lists.infradead.org;
	Sun, 14 Dec 2025 14:42:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B4CA460172
	for <barebox@lists.infradead.org>; Sun, 14 Dec 2025 14:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B005C2BCAF
	for <barebox@lists.infradead.org>; Sun, 14 Dec 2025 14:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765723329;
	bh=oD/KggYabkmpbLwMi9JfkWOU4h7CawiUNWnQZdptfFE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=A2NEGrJ8Ca/wyaS8iRk2pzHKLF/U3QmLusVXaZzxtH9hznjnkyrH6Q/SO6I737Qxx
	 1fnX7nPsD0UrqCV3BjIUBod3S7jfToHWUitD6rzVImFvrO0lFbm/NjP6mXRiqEI8Kg
	 5RayiPIrLIuvSKmWEqIm/eyoTPZJzFE3Tdrcwb9QtM0xtgOQNsKcp9KV0Fv7/xm7nA
	 hoADE0vZQgXHuxAv4KjtwdWC5e9aXv5ESFuJNjcCF23fKz1TOw51W4sNiz8JvB+kKK
	 4m+lkZRUyp3K39p/uLOzqFgk47oFMmO68FQdxZpYgAlkCgcEpj0gVf2XDyK1bEC0dR
	 Mp/ViGbY8qe1w==
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b79f98adea4so401278366b.0
        for <barebox@lists.infradead.org>; Sun, 14 Dec 2025 06:42:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWdxvH4KQgza7ZGqVlQBcUxkv8D8xe3M6warJa1AL3q0N00jxSBy0AKMFv4s7dr5YNzkTMBosPy@lists.infradead.org
X-Gm-Message-State: AOJu0YwiLoO6oCp6vsTnAYd2eKAF69C0Lh/I98TvyUqanGp1JUISYyvv
	KH0vGZDY6dppBnRgwFdTfaLleI4/HCd/xjHTz45yKH0/y+9HjsDp8oNIDYR3OkyOjPjJxU4Y6q6
	Shifl9EaDG0sJDxYIGc4JTndo7QsolA==
X-Google-Smtp-Source: AGHT+IH/UNXJVVIzYMzF70T0zT2ePS4CZo3kLeaqHyUCNx7LNUsqU6Z3vZR8gWlhInbPYIFxkyNcgz3+uHF1VkK6TAw=
X-Received: by 2002:a17:907:3f28:b0:b73:8903:f4b9 with SMTP id
 a640c23a62f3a-b7d23a813bdmr836277766b.24.1765723327827; Sun, 14 Dec 2025
 06:42:07 -0800 (PST)
MIME-Version: 1.0
References: <20251212203226.458694-5-robh@kernel.org> <20251213181324.u32ztfblkknfpz44@pengutronix.de>
In-Reply-To: <20251213181324.u32ztfblkknfpz44@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Sun, 14 Dec 2025 08:41:56 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK9OREenZjBHrDh7AqsyUXYOzTOhY4e0qHGzYkX8tacWQ@mail.gmail.com>
X-Gm-Features: AQt7F2o1cvCAKghlM7oUFNsydZljaReVAverYw-RqgPCazmU6RqIU2uWyYXg6mg
Message-ID: <CAL_JsqK9OREenZjBHrDh7AqsyUXYOzTOhY4e0qHGzYkX8tacWQ@mail.gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, imx@lists.linux.dev, Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>, barebox@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: nxp/imx6: Drop unused .dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, Dec 13, 2025 at 12:13=E2=80=AFPM Marco Felsch <m.felsch@pengutronix=
.de> wrote:
>
> Hi Rob,
>
> On 25-12-12, Rob Herring (Arm) wrote:
> > These .dtsi files are not included anywhere in the tree and can't be
> > tested.
>
> not in the tree but by other projects, please see below.
>
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> >  .../dts/nxp/imx/imx6dl-kontron-samx6i.dtsi    | 12 -----
> >  .../dts/nxp/imx/imx6q-kontron-samx6i.dtsi     | 12 -----
> >  .../boot/dts/nxp/imx/imx6qdl-pico-dwarf.dtsi  | 45 ----------------
> >  .../boot/dts/nxp/imx/imx6qdl-pico-nymph.dtsi  | 54 -------------------
> >  4 files changed, 123 deletions(-)
> >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dts=
i
> >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6qdl-pico-dwarf.dtsi
> >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6qdl-pico-nymph.dtsi
> >
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi b/arc=
h/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > deleted file mode 100644
> > index 5a9b819d7ee8..000000000000
> > --- a/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > +++ /dev/null
> > @@ -1,12 +0,0 @@
> > -// SPDX-License-Identifier: GPL-2.0 OR X11
> > -/*
> > - * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de=
>
> > - */
> > -
> > -#include "imx6dl.dtsi"
> > -#include "imx6qdl-kontron-samx6i.dtsi"
> > -
> > -/ {
> > -     model =3D "Kontron SMARC-sAMX6i Dual-Lite/Solo";
> > -     compatible =3D "kontron,imx6dl-samx6i", "fsl,imx6dl";
> > -};
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi b/arch=
/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > deleted file mode 100644
> > index e76963436079..000000000000
> > --- a/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > +++ /dev/null
> > @@ -1,12 +0,0 @@
> > -// SPDX-License-Identifier: GPL-2.0 OR X11
> > -/*
> > - * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de=
>
> > - */
> > -
> > -#include "imx6q.dtsi"
> > -#include "imx6qdl-kontron-samx6i.dtsi"
> > -
> > -/ {
> > -     model =3D "Kontron SMARC-sAMX6i Quad/Dual";
> > -     compatible =3D "kontron,imx6q-samx6i", "fsl,imx6q";
> > -};
>
> I can't speak for the other two .dtsi files but both kontron .dtsi files
> are used by barebox:
>
>  - https://elixir.bootlin.com/barebox/v2025.11.0/source/arch/arm/dts/imx6=
dl-samx6i.dts#L8
>  - https://elixir.bootlin.com/barebox/v2025.11.0/source/arch/arm/dts/imx6=
q-samx6i.dts#L8
>
> Removing them here will cause a regression for barebox.

Please upstream something that uses the .dtsi. Other than the
undocumented barebox property, no reason these can't be.

Rob



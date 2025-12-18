Delivery-date: Thu, 18 Dec 2025 17:43:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWH5q-00Cti1-1C
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 17:43:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWH5p-0002M0-Kg
	for lore@pengutronix.de; Thu, 18 Dec 2025 17:43:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=33fwawFMb+N81U+Q09j4/hd21k/vRj0ovuwAQpS9ufs=; b=1VUnL6vjWZqR95yy7wZj6JGuEB
	JSXIY+782L8d8leF97Pt55QZPoQ8dF2NpNJqkvoM7gKNhKhzM1PsWXdOa44xwTyu5l+QA1irgTG2n
	zviD7BBjC+B2EOELavlIIpqhjxnleTbFZ8Vbb+gwC/gKnH198PnNUjqzoGxabUsWurdsfDxCbAMY5
	Z4W0yIj23lqCzz2cY92Wil1XFMOaDGy246Ut6q663uqm8kMhCC3DnfxBeLjw0AbScXLox0bUjfsd2
	0R4kItR71eR4dU36QohvCQCvYQXrZTAbUxkdiOE5yCimEuXd9SWySpt571aau1J3tB5t4hWA5e/ED
	qE0LJSRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWH5E-00000008qTV-2q7K;
	Thu, 18 Dec 2025 16:42:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWH59-00000008qRb-37Kf
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 16:42:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWH4s-00029z-19; Thu, 18 Dec 2025 17:42:10 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWH4r-006Jmi-1h;
	Thu, 18 Dec 2025 17:42:09 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWH4r-00EcKV-1D;
	Thu, 18 Dec 2025 17:42:09 +0100
Date: Thu, 18 Dec 2025 17:42:09 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Message-ID: <20251218164209.6ombc6g4gy7tuwcz@pengutronix.de>
References: <20251212203226.458694-5-robh@kernel.org>
 <20251213181324.u32ztfblkknfpz44@pengutronix.de>
 <CAL_JsqK9OREenZjBHrDh7AqsyUXYOzTOhY4e0qHGzYkX8tacWQ@mail.gmail.com>
 <20251214185750.tzt6jf4zg5gtex63@pengutronix.de>
 <CAL_JsqLfVemq9k3x5J1pTz--Z+VYLeEQrFdbtdS7Pc-HkRui=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqLfVemq9k3x5J1pTz--Z+VYLeEQrFdbtdS7Pc-HkRui=w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_084227_780710_5620E285 
X-CRM114-Status: GOOD (  34.60  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: nxp/imx6: Drop unused .dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-12-15, Rob Herring wrote:
> On Sun, Dec 14, 2025 at 12:58 PM Marco Felsch <m.felsch@pengutronix.de> wrote:
> >
> > On 25-12-14, Rob Herring wrote:
> > > On Sat, Dec 13, 2025 at 12:13 PM Marco Felsch <m.felsch@pengutronix.de> wrote:
> > > >
> > > > Hi Rob,
> > > >
> > > > On 25-12-12, Rob Herring (Arm) wrote:
> > > > > These .dtsi files are not included anywhere in the tree and can't be
> > > > > tested.
> > > >
> > > > not in the tree but by other projects, please see below.
> > > >
> > > > > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > > > > ---
> > > > >  .../dts/nxp/imx/imx6dl-kontron-samx6i.dtsi    | 12 -----
> > > > >  .../dts/nxp/imx/imx6q-kontron-samx6i.dtsi     | 12 -----
> > > > >  .../boot/dts/nxp/imx/imx6qdl-pico-dwarf.dtsi  | 45 ----------------
> > > > >  .../boot/dts/nxp/imx/imx6qdl-pico-nymph.dtsi  | 54 -------------------
> > > > >  4 files changed, 123 deletions(-)
> > > > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > > > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > > > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6qdl-pico-dwarf.dtsi
> > > > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6qdl-pico-nymph.dtsi
> > > > >
> > > > > diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi b/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > > > > deleted file mode 100644
> > > > > index 5a9b819d7ee8..000000000000
> > > > > --- a/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > > > > +++ /dev/null
> > > > > @@ -1,12 +0,0 @@
> > > > > -// SPDX-License-Identifier: GPL-2.0 OR X11
> > > > > -/*
> > > > > - * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de>
> > > > > - */
> > > > > -
> > > > > -#include "imx6dl.dtsi"
> > > > > -#include "imx6qdl-kontron-samx6i.dtsi"
> > > > > -
> > > > > -/ {
> > > > > -     model = "Kontron SMARC-sAMX6i Dual-Lite/Solo";
> > > > > -     compatible = "kontron,imx6dl-samx6i", "fsl,imx6dl";
> > > > > -};
> > > > > diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > > > > deleted file mode 100644
> > > > > index e76963436079..000000000000
> > > > > --- a/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > > > > +++ /dev/null
> > > > > @@ -1,12 +0,0 @@
> > > > > -// SPDX-License-Identifier: GPL-2.0 OR X11
> > > > > -/*
> > > > > - * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de>
> > > > > - */
> > > > > -
> > > > > -#include "imx6q.dtsi"
> > > > > -#include "imx6qdl-kontron-samx6i.dtsi"
> > > > > -
> > > > > -/ {
> > > > > -     model = "Kontron SMARC-sAMX6i Quad/Dual";
> > > > > -     compatible = "kontron,imx6q-samx6i", "fsl,imx6q";
> > > > > -};
> > > >
> > > > I can't speak for the other two .dtsi files but both kontron .dtsi files
> > > > are used by barebox:
> > > >
> > > >  - https://elixir.bootlin.com/barebox/v2025.11.0/source/arch/arm/dts/imx6dl-samx6i.dts#L8
> > > >  - https://elixir.bootlin.com/barebox/v2025.11.0/source/arch/arm/dts/imx6q-samx6i.dts#L8
> > > >
> > > > Removing them here will cause a regression for barebox.
> > >
> > > Please upstream something that uses the .dtsi. Other than the
> > > undocumented barebox property, no reason these can't be.
> >
> > My intention wasn't to point to the barebox-only
> > "barebox,disable-deep-probe" property. I was refering to the include
> > line.
> >
> > The two .dtsi files we're talking about are SoM .dtsi files. We don't
> > have access to the Kontron EVK baseboard which uses this SoM.
> >
> > I've added a few Kontron devs which may can add the missing baseboard
> > support.
> >
> > +Cc: frieder.schrempf@kontron.de
> > +Cc: annette.kobou@kontron.de
> > +Cc: oualid.derouiche@kontron.de
> > +Cc: eberhard.stoll@kontron.de
> >
> > I could also add the imx6dl-samx6i.dts and imx6q-samx6i.dts like we do
> > in barebox. But as said, this would be a devicetree for a SoM which
> > makes sense for the bootloader but not for the kernel.
> 
> Why not? People use the kernel as a bootloader. There's also some

Using the kernel as bootloader is a good point, which I didn't had in my
mind!

I will add the som.dts, please don't remove the kontron dtsi files yet.

> discussions about splitting SoMs and baseboards into overlays for
> baseboards (and also even into SoC base DT plus overlay for boards).

Do you have pointers?

Regards,
  Marco


> 
> Rob
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



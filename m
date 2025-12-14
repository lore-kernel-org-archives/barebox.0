Delivery-date: Sun, 14 Dec 2025 19:59:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vUrJr-00BTDC-1L
	for lore@lore.pengutronix.de;
	Sun, 14 Dec 2025 19:59:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vUrJq-0002W5-Nu
	for lore@pengutronix.de; Sun, 14 Dec 2025 19:59:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zdiQTkAOufiIvzEhYaWnGreg+5cG/Js0Yz3ZDHwcCpI=; b=sK5A3h4lwNZIRNLqTdj/cSnij1
	XN3/n35QUrcA+uKB58aY3THrY+uJ0H8WZFY3z8lyuhzu2U/qPhhXwIx9zvHk4YVos5JRWWTWJ246T
	n/i4hOvQDAIGS4QyeW/WnOW7C2iidB6UGWMqxZW1m6vUmfY13HPnN22iSeE/JCz3YwvF2RlEy4m2A
	PQF+saNhQE72DGD1yUnH/ZbgCo+/5zH8T8kWYBikMRJaYHt6rdvXeR0048c9qxi+qofyZl5OhR3B/
	h+ZuXnCnZtRqRaH5uxnVH1MGHtyE4xaZpZeCd1xDGOMwVXWdaV+LIFtH4+dEF+JbMHmovfdCgptsd
	tJLM6yRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUrIi-00000002fDq-2w6u;
	Sun, 14 Dec 2025 18:58:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUrIc-00000002fD5-2soB
	for barebox@lists.infradead.org;
	Sun, 14 Dec 2025 18:58:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vUrI0-0002HV-1N; Sun, 14 Dec 2025 19:57:52 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vUrHy-005enG-16;
	Sun, 14 Dec 2025 19:57:50 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vUrHy-00786O-0Y;
	Sun, 14 Dec 2025 19:57:50 +0100
Date: Sun, 14 Dec 2025 19:57:50 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Message-ID: <20251214185750.tzt6jf4zg5gtex63@pengutronix.de>
References: <20251212203226.458694-5-robh@kernel.org>
 <20251213181324.u32ztfblkknfpz44@pengutronix.de>
 <CAL_JsqK9OREenZjBHrDh7AqsyUXYOzTOhY4e0qHGzYkX8tacWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqK9OREenZjBHrDh7AqsyUXYOzTOhY4e0qHGzYkX8tacWQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_105830_794612_A493C047 
X-CRM114-Status: GOOD (  25.73  )
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

On 25-12-14, Rob Herring wrote:
> On Sat, Dec 13, 2025 at 12:13 PM Marco Felsch <m.felsch@pengutronix.de> wrote:
> >
> > Hi Rob,
> >
> > On 25-12-12, Rob Herring (Arm) wrote:
> > > These .dtsi files are not included anywhere in the tree and can't be
> > > tested.
> >
> > not in the tree but by other projects, please see below.
> >
> > > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > > ---
> > >  .../dts/nxp/imx/imx6dl-kontron-samx6i.dtsi    | 12 -----
> > >  .../dts/nxp/imx/imx6q-kontron-samx6i.dtsi     | 12 -----
> > >  .../boot/dts/nxp/imx/imx6qdl-pico-dwarf.dtsi  | 45 ----------------
> > >  .../boot/dts/nxp/imx/imx6qdl-pico-nymph.dtsi  | 54 -------------------
> > >  4 files changed, 123 deletions(-)
> > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6qdl-pico-dwarf.dtsi
> > >  delete mode 100644 arch/arm/boot/dts/nxp/imx/imx6qdl-pico-nymph.dtsi
> > >
> > > diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi b/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > > deleted file mode 100644
> > > index 5a9b819d7ee8..000000000000
> > > --- a/arch/arm/boot/dts/nxp/imx/imx6dl-kontron-samx6i.dtsi
> > > +++ /dev/null
> > > @@ -1,12 +0,0 @@
> > > -// SPDX-License-Identifier: GPL-2.0 OR X11
> > > -/*
> > > - * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de>
> > > - */
> > > -
> > > -#include "imx6dl.dtsi"
> > > -#include "imx6qdl-kontron-samx6i.dtsi"
> > > -
> > > -/ {
> > > -     model = "Kontron SMARC-sAMX6i Dual-Lite/Solo";
> > > -     compatible = "kontron,imx6dl-samx6i", "fsl,imx6dl";
> > > -};
> > > diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > > deleted file mode 100644
> > > index e76963436079..000000000000
> > > --- a/arch/arm/boot/dts/nxp/imx/imx6q-kontron-samx6i.dtsi
> > > +++ /dev/null
> > > @@ -1,12 +0,0 @@
> > > -// SPDX-License-Identifier: GPL-2.0 OR X11
> > > -/*
> > > - * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de>
> > > - */
> > > -
> > > -#include "imx6q.dtsi"
> > > -#include "imx6qdl-kontron-samx6i.dtsi"
> > > -
> > > -/ {
> > > -     model = "Kontron SMARC-sAMX6i Quad/Dual";
> > > -     compatible = "kontron,imx6q-samx6i", "fsl,imx6q";
> > > -};
> >
> > I can't speak for the other two .dtsi files but both kontron .dtsi files
> > are used by barebox:
> >
> >  - https://elixir.bootlin.com/barebox/v2025.11.0/source/arch/arm/dts/imx6dl-samx6i.dts#L8
> >  - https://elixir.bootlin.com/barebox/v2025.11.0/source/arch/arm/dts/imx6q-samx6i.dts#L8
> >
> > Removing them here will cause a regression for barebox.
> 
> Please upstream something that uses the .dtsi. Other than the
> undocumented barebox property, no reason these can't be.

My intention wasn't to point to the barebox-only
"barebox,disable-deep-probe" property. I was refering to the include
line.

The two .dtsi files we're talking about are SoM .dtsi files. We don't
have access to the Kontron EVK baseboard which uses this SoM.

I've added a few Kontron devs which may can add the missing baseboard
support.

+Cc: frieder.schrempf@kontron.de
+Cc: annette.kobou@kontron.de
+Cc: oualid.derouiche@kontron.de
+Cc: eberhard.stoll@kontron.de

I could also add the imx6dl-samx6i.dts and imx6q-samx6i.dts like we do
in barebox. But as said, this would be a devicetree for a SoM which
makes sense for the bootloader but not for the kernel.

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



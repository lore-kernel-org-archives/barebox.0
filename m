Delivery-date: Fri, 19 May 2023 12:53:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzxk1-006Zr1-CQ
	for lore@lore.pengutronix.de; Fri, 19 May 2023 12:53:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzxjx-0002gI-5o
	for lore@pengutronix.de; Fri, 19 May 2023 12:53:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5M/X6+24EGDTex/mIH1YzcyGF/lDZZfYs/JqkXw86/g=; b=UidErgVC0Vr8Ylw8TNwLAjB5IS
	aeAH+49ZDI1iOlFRKCnYvbP5aOjJ4IwPJSJhbsxBieFmxHFtGdvphmGN20Uzj9l2bmW52dlzptaxL
	PxoT9SLshPLOihxtvNO+k3O08XuP8JpiBNVamMG8Qclwh1nuAqNcLGCtVspcHUlhboTpDQhBellMw
	ruld6D0Oh/DBZmypChu9IL4qmQoB1a64DYon5pKfAppnTrm0a6wfGuYo6SABAnsLgN8IzETGVaaIt
	aUU3dtVYxk5U889CdvoeU+iHKZ1fAQcn/4i14OXB8zSv6JnHj9B/jvTMAbuGYv1iei3QuuqEMeaES
	kgcqyw4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzxiW-00FxvQ-2y;
	Fri, 19 May 2023 10:52:12 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzxiP-00Fxnj-2M
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 10:52:11 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id B223BE0003;
	Fri, 19 May 2023 10:52:02 +0000 (UTC)
Date: Fri, 19 May 2023 12:52:01 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZGdU0WGtffUtF6IY@tour>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-8-jmaselbas@zdiv.net>
 <dd60800e-da47-9160-3e44-c241ee45f596@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dd60800e-da47-9160-3e44-c241ee45f596@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_035206_174579_7228081E 
X-CRM114-Status: GOOD (  23.53  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 07/11] pinctrl: Add sun50i-a64 pinctrl driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 18, 2023 at 09:10:27PM +0200, Ahmad Fatoum wrote:
> On 11.05.23 01:37, Jules Maselbas wrote:
> > sunxi pinctrl driver, adapted from Linux, is split in two parts:
> >  - pinctrl-sunxi.c that implement sunxi-generic gpio and function mux
> >  - pinctrl-sun50i-a64.c that only declare sun50i's pin functions
> 
> Could you describe why the pin functions is needed? Is this just sanity
> checking?
The pin functions are needed: for uart and SD/MMC.
The "only declare" part might be misleading: I meant that pinctrl-sun50i-a64.c
has no code, all logic is in the pinctrl-sunxi.c but actual pin functions
are not described in the device-tree but by structures in pinctrl-sun50i-a64.c
(which is almost a direct copy from Linux)

 
> > ---
> >  drivers/pinctrl/Kconfig                    |   2 +
> >  drivers/pinctrl/Makefile                   |   1 +
> >  drivers/pinctrl/sunxi/Kconfig              |  15 +
> >  drivers/pinctrl/sunxi/Makefile             |   3 +
> >  drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c | 593 +++++++++++++++++++++
> >  drivers/pinctrl/sunxi/pinctrl-sunxi.c      | 371 +++++++++++++
> >  drivers/pinctrl/sunxi/pinctrl-sunxi.h      | 224 ++++++++
> >  7 files changed, 1209 insertions(+)
> >  create mode 100644 drivers/pinctrl/sunxi/Kconfig
> >  create mode 100644 drivers/pinctrl/sunxi/Makefile
> >  create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c
> >  create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.c
> >  create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.h
> > 
> > diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> > index 2ff99a39c8..0b3d79d1cc 100644
> > --- a/drivers/pinctrl/Kconfig
> > +++ b/drivers/pinctrl/Kconfig
> > @@ -105,6 +105,8 @@ config PINCTRL_STM32
> >  	default y if ARCH_STM32
> >  	help
> >  	  Pinmux and GPIO controller found on STM32 family
> > +
> > +source "drivers/pinctrl/sunxi/Kconfig"
> >  endif
> >  
> >  endmenu
> > diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
> > index f1a5fa5715..3bc718d355 100644
> > --- a/drivers/pinctrl/Makefile
> > +++ b/drivers/pinctrl/Makefile
> > @@ -16,3 +16,4 @@ obj-$(CONFIG_PINCTRL_VF610) += pinctrl-vf610.o
> >  obj-$(CONFIG_PINCTRL_STM32) += pinctrl-stm32.o
> >  
> >  obj-$(CONFIG_ARCH_MVEBU) += mvebu/
> > +obj-$(CONFIG_ARCH_SUNXI) += sunxi/
> > diff --git a/drivers/pinctrl/sunxi/Kconfig b/drivers/pinctrl/sunxi/Kconfig
> > new file mode 100644
> > index 0000000000..36168dc2bb
> > --- /dev/null
> > +++ b/drivers/pinctrl/sunxi/Kconfig
> > @@ -0,0 +1,15 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +if ARCH_SUNXI
> > +
> > +config PINCTRL_SUNXI
> > +	bool
> > +	select PINMUX
> 
> Undefined
> 
> > +	select GENERIC_PINCONF
> 
> Undefined
> 
> > +	select GPIOLIB
> > +
> > +config PINCTRL_SUN50I_A64
> > +	bool "Support for the Allwinner A64 PIO"
> > +	default ARM64 && ARCH_SUNXI
> 
> ARM64 undefined
> 
> > +	select PINCTRL_SUNXI
> > +
> > +endif
> > diff --git a/drivers/pinctrl/sunxi/Makefile b/drivers/pinctrl/sunxi/Makefile
> > new file mode 100644
> > index 0000000000..db0ff5b50b
> > --- /dev/null
> > +++ b/drivers/pinctrl/sunxi/Makefile
> > @@ -0,0 +1,3 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +obj-$(CONFIG_ARCH_SUNXI)		+= pinctrl-sunxi.o
> > +obj-$(CONFIG_PINCTRL_SUN50I_A64)	+= pinctrl-sun50i-a64.o
> > diff --git a/drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c b/drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c
> > new file mode 100644
> > index 0000000000..4a087802c8
> > --- /dev/null
> > +++ b/drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c
> > @@ -0,0 +1,593 @@
> > +/*
> > + * Allwinner A64 SoCs pinctrl driver.
> > + *
> > + * Copyright (C) 2016 - ARM Ltd.
> > + * Author: Andre Przywara <andre.przywara@arm.com>
> > + *
> > + * Based on pinctrl-sun7i-a20.c, which is:
> > + * Copyright (C) 2014 Maxime Ripard <maxime.ripard@free-electrons.com>
> > + *
> > + * This file is licensed under the terms of the GNU General Public
> > + * License version 2.  This program is licensed "as is" without any
> > + * warranty of any kind, whether express or implied.
> 
> SPDX?
> 
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +
> > +#include "pinctrl-sunxi.h"
> > +
> > +static const struct sunxi_desc_pin a64_pins[] = {
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 0),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart2"),		/* TX */
> > +		  SUNXI_FUNCTION(0x4, "jtag"),		/* MS0 */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 0)),	/* EINT0 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 1),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart2"),		/* RX */
> > +		  SUNXI_FUNCTION(0x4, "jtag"),		/* CK0 */
> > +		  SUNXI_FUNCTION(0x5, "sim"),		/* VCCEN */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 1)),		/* EINT1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 2),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart2"),		/* RTS */
> > +		  SUNXI_FUNCTION(0x4, "jtag"),		/* DO0 */
> > +		  SUNXI_FUNCTION(0x5, "sim"),		/* VPPEN */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 2)),		/* EINT2 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 3),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart2"),		/* CTS */
> > +		  SUNXI_FUNCTION(0x3, "i2s0"),		/* MCLK */
> > +		  SUNXI_FUNCTION(0x4, "jtag"),		/* DI0 */
> > +		  SUNXI_FUNCTION(0x5, "sim"),		/* VPPPP */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 3)),		/* EINT3 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 4),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "aif2"),		/* SYNC */
> > +		  SUNXI_FUNCTION(0x3, "i2s0"),		/* SYNC */
> > +		  SUNXI_FUNCTION(0x5, "sim"),		/* CLK */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 4)),		/* EINT4 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 5),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "aif2"),		/* BCLK */
> > +		  SUNXI_FUNCTION(0x3, "i2s0"),		/* BCLK */
> > +		  SUNXI_FUNCTION(0x5, "sim"),		/* DATA */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 5)),		/* EINT5 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 6),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "aif2"),		/* DOUT */
> > +		  SUNXI_FUNCTION(0x3, "i2s0"),		/* DOUT */
> > +		  SUNXI_FUNCTION(0x5, "sim"),		/* RST */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 6)),		/* EINT6 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 7),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "aif2"),		/* DIN */
> > +		  SUNXI_FUNCTION(0x3, "i2s0"),		/* DIN */
> > +		  SUNXI_FUNCTION(0x5, "sim"),		/* DET */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 7)),		/* EINT7 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 8),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x4, "uart0"),		/* TX */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 8)),		/* EINT8 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 9),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x4, "uart0"),		/* RX */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 9)),		/* EINT9 */
> > +	/* Hole */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 0),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NWE */
> > +		  SUNXI_FUNCTION(0x4, "spi0")),		/* MOSI */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 1),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NALE */
> > +		  SUNXI_FUNCTION(0x3, "mmc2"),		/* DS */
> > +		  SUNXI_FUNCTION(0x4, "spi0")),		/* MISO */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 2),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NCLE */
> > +		  SUNXI_FUNCTION(0x4, "spi0")),		/* SCK */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 3),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NCE1 */
> > +		  SUNXI_FUNCTION(0x4, "spi0")),		/* CS */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 4),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0")),	/* NCE0 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 5),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NRE# */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* CLK */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 6),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NRB0 */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* CMD */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 7),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0")),	/* NRB1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 8),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NDQ0 */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* D0 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 9),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NDQ1 */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* D1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 10),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NDQ2 */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* D2 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 11),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NDQ3 */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* D3 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 12),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NDQ4 */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* D4 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 13),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NDQ5 */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* D5 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 14),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NDQ6 */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* D6 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 15),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NDQ7 */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* D7 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 16),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "nand0"),		/* NDQS */
> > +		  SUNXI_FUNCTION(0x3, "mmc2")),		/* RST */
> > +	/* Hole */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 0),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D2 */
> > +		  SUNXI_FUNCTION(0x3, "uart3"),		/* TX */
> > +		  SUNXI_FUNCTION(0x4, "spi1"),		/* CS */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* CLK */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 1),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D3 */
> > +		  SUNXI_FUNCTION(0x3, "uart3"),		/* RX */
> > +		  SUNXI_FUNCTION(0x4, "spi1"),		/* CLK */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* DE */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 2),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D4 */
> > +		  SUNXI_FUNCTION(0x3, "uart4"),		/* TX */
> > +		  SUNXI_FUNCTION(0x4, "spi1"),		/* MOSI */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* HSYNC */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 3),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D5 */
> > +		  SUNXI_FUNCTION(0x3, "uart4"),		/* RX */
> > +		  SUNXI_FUNCTION(0x4, "spi1"),		/* MISO */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* VSYNC */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 4),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D6 */
> > +		  SUNXI_FUNCTION(0x3, "uart4"),		/* RTS */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* D0 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 5),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D7 */
> > +		  SUNXI_FUNCTION(0x3, "uart4"),		/* CTS */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* D1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 6),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D10 */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* D2 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 7),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D11 */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* D3 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 8),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D12 */
> > +		  SUNXI_FUNCTION(0x4, "emac"),		/* ERXD3 */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* D4 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 9),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D13 */
> > +		  SUNXI_FUNCTION(0x4, "emac"),		/* ERXD2 */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* D5 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 10),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D14 */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ERXD1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 11),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D15 */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ERXD0 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 12),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D18 */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VP0 */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ERXCK */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 13),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D19 */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VN0 */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ERXCTL */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 14),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D20 */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VP1 */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ENULL */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 15),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D21 */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VN1 */
> > +		  SUNXI_FUNCTION(0x4, "emac"),		/* ETXD3 */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* D6 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 16),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D22 */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VP2 */
> > +		  SUNXI_FUNCTION(0x4, "emac"),		/* ETXD2 */
> > +		  SUNXI_FUNCTION(0x5, "ccir")),		/* D7 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 17),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D23 */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VN2 */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ETXD1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 18),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* CLK */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VPC */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ETXD0 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 19),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* DE */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VNC */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ETXCK */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 20),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* HSYNC */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VP3 */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ETXCTL */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 21),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "lcd0"),		/* VSYNC */
> > +		  SUNXI_FUNCTION(0x3, "lvds0"),		/* VN3 */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* ECLKIN */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 22),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "pwm"),		/* PWM0 */
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* EMDC */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 23),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x4, "emac")),		/* EMDIO */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 24),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out")),
> > +	/* Hole */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 0),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* PCK */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* CLK */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 1),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* CK */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* ERR */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 2),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* HSYNC */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* SYNC */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 3),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* VSYNC */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* DVLD */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 4),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* D0 */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* D0 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 5),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* D1 */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* D1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 6),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* D2 */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* D2 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 7),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* D3 */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* D3 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 8),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* D4 */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* D4 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 9),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* D5 */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* D5 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 10),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* D6 */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* D6 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 11),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi"),		/* D7 */
> > +		  SUNXI_FUNCTION(0x4, "ts")),		/* D7 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 12),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi")),		/* SCK */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 13),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "csi")),		/* SDA */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 14),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "pll"),		/* LOCK_DBG */
> > +		  SUNXI_FUNCTION(0x3, "i2c2")),		/* SCK */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 15),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x3, "i2c2")),		/* SDA */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 16),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out")),
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 17),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out")),
> > +	/* Hole */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 0),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc0"),		/* D1 */
> > +		  SUNXI_FUNCTION(0x3, "jtag")),		/* MSI */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 1),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc0"),		/* D0 */
> > +		  SUNXI_FUNCTION(0x3, "jtag")),		/* DI1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 2),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc0"),		/* CLK */
> > +		  SUNXI_FUNCTION(0x3, "uart0")),	/* TX */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 3),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc0"),		/* CMD */
> > +		  SUNXI_FUNCTION(0x3, "jtag")),		/* DO1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 4),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc0"),		/* D3 */
> > +		  SUNXI_FUNCTION(0x3, "uart0")),	/* RX */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 5),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc0"),		/* D2 */
> > +		  SUNXI_FUNCTION(0x3, "jtag")),		/* CK1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 6),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out")),
> > +	/* Hole */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 0),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc1"),		/* CLK */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 0)),	/* EINT0 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 1),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc1"),		/* CMD */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 1)),	/* EINT1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 2),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc1"),		/* D0 */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 2)),	/* EINT2 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 3),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc1"),		/* D1 */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 3)),	/* EINT3 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 4),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc1"),		/* D2 */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 4)),	/* EINT4 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 5),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mmc1"),		/* D3 */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 5)),	/* EINT5 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 6),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart1"),		/* TX */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 6)),	/* EINT6 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 7),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart1"),		/* RX */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 7)),	/* EINT7 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 8),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart1"),		/* RTS */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 8)),	/* EINT8 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 9),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart1"),		/* CTS */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 9)),	/* EINT9 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 10),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "aif3"),		/* SYNC */
> > +		  SUNXI_FUNCTION(0x3, "i2s1"),		/* SYNC */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 10)),	/* EINT10 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 11),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "aif3"),		/* BCLK */
> > +		  SUNXI_FUNCTION(0x3, "i2s1"),		/* BCLK */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 11)),	/* EINT11 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 12),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "aif3"),		/* DOUT */
> > +		  SUNXI_FUNCTION(0x3, "i2s1"),		/* DOUT */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 12)),	/* EINT12 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 13),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "aif3"),		/* DIN */
> > +		  SUNXI_FUNCTION(0x3, "i2s1"),		/* DIN */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 13)),	/* EINT13 */
> > +	/* Hole */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 0),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "i2c0"),		/* SCK */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 0)),	/* EINT0 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 1),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "i2c0"),		/* SDA */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 1)),	/* EINT1 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 2),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "i2c1"),		/* SCK */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 2)),	/* EINT2 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 3),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "i2c1"),		/* SDA */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 3)),	/* EINT3 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 4),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart3"),		/* TX */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 4)),	/* EINT4 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 5),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart3"),		/* RX */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 5)),	/* EINT5 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 6),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart3"),		/* RTS */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 6)),	/* EINT6 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 7),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "uart3"),		/* CTS */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 7)),	/* EINT7 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 8),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "spdif"),		/* OUT */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 8)),	/* EINT8 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 9),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 9)),	/* EINT9 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 10),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mic"),		/* CLK */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 10)),	/* EINT10 */
> > +	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 11),
> > +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> > +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> > +		  SUNXI_FUNCTION(0x2, "mic"),		/* DATA */
> > +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 11)),	/* EINT11 */
> > +};
> > +
> > +static const struct sunxi_pinctrl_desc a64_pinctrl_data = {
> > +	.pins = a64_pins,
> > +	.npins = ARRAY_SIZE(a64_pins),
> > +};
> > +
> > +static const struct of_device_id a64_pinctrl_dt_match[] = {
> > +	{
> > +		.compatible = "allwinner,sun50i-a64-pinctrl",
> > +		.data = &a64_pinctrl_data
> > +	}, {
> > +		/* sentinel */
> > +	}
> > +};
> > +
> > +static struct driver a64_pinctrl_driver = {
> > +	.name		= "sun50i-a64-pinctrl",
> > +	.probe		= sunxi_pinctrl_probe,
> > +	.of_compatible	= DRV_OF_COMPAT(a64_pinctrl_dt_match),
> > +};
> > +core_platform_driver(a64_pinctrl_driver);
> > diff --git a/drivers/pinctrl/sunxi/pinctrl-sunxi.c b/drivers/pinctrl/sunxi/pinctrl-sunxi.c
> > new file mode 100644
> > index 0000000000..e2bde96c70
> > --- /dev/null
> > +++ b/drivers/pinctrl/sunxi/pinctrl-sunxi.c
> > @@ -0,0 +1,371 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#define pr_fmt(fmt) "pinctrl-sunxi: " fmt
> > +
> > +#include <common.h>
> > +#include <io.h>
> > +#include <of.h>
> > +#include <of_address.h>
> > +#include <malloc.h>
> > +#include <linux/clk.h>
> > +
> > +#include "pinctrl-sunxi.h"
> > +
> > +/* This driver assumes the gpio function mux value will not change */
> > +#define FUNC_GPIO_IN	0
> > +#define FUNC_GPIO_OUT	1
> > +
> > +static struct sunxi_pinctrl *to_sunxi_pinctrl(struct pinctrl_device *pdev)
> > +{
> > +	return container_of(pdev, struct sunxi_pinctrl, pdev);
> > +}
> > +
> > +static void sunxi_pinctrl_set_pull(struct sunxi_pinctrl *pinctrl,
> > +				   u16 pin, u32 pull)
> > +{
> > +	u32 reg = sunxi_pull_reg(pin);
> > +	u32 off = sunxi_pull_offset(pin);
> > +	u32 msk = MUX_PINS_MASK << off;
> > +	u32 val = readl(pinctrl->base + reg);
> > +
> > +	val &= ~msk;
> > +	val |= (pull << off) & msk;
> > +	writel(val, pinctrl->base + reg);
> > +}
> > +
> > +static void sunxi_pinctrl_set_dlevel(struct sunxi_pinctrl *pinctrl,
> > +				   u16 pin, u32 lvl)
> > +{
> > +	u32 reg = sunxi_dlevel_reg(pin);
> > +	u32 off = sunxi_dlevel_offset(pin);
> > +	u32 msk = MUX_PINS_MASK << off;
> > +	u32 val = readl(pinctrl->base + reg);
> > +
> > +	val &= ~msk;
> > +	val |= (lvl << off) & msk;
> > +	writel(val, pinctrl->base + reg);
> > +}
> > +
> > +static void sunxi_pinctrl_set_mux(struct sunxi_pinctrl *pinctrl,
> > +				  u16 pin, u8 mux)
> > +{
> > +	u32 reg = sunxi_mux_reg(pin);
> > +	u32 off = sunxi_mux_offset(pin);
> > +	u32 msk = MUX_PINS_MASK << off;
> > +	u32 val = readl(pinctrl->base + reg);
> > +
> > +	val &= ~msk;
> > +	val |= (mux << off) & msk;
> > +	writel(val, pinctrl->base + reg);
> > +}
> > +
> > +static u8 sunxi_pinctrl_get_mux(struct sunxi_pinctrl *pinctrl, u16 pin)
> > +{
> > +	u32 reg = sunxi_mux_reg(pin);
> > +	u32 off = sunxi_mux_offset(pin);
> > +	u32 val = readl(pinctrl->base + reg);
> > +
> > +	return (val >> off) & MUX_PINS_MASK;
> > +}
> > +
> > +static void sunxi_pinctrl_set_conf(struct sunxi_pinctrl *pinctrl,
> > +				  u16 pin, struct device_node *node)
> > +{
> > +	u32 val;
> > +
> > +	if (of_find_property(node, "bias-pull-up", NULL))
> > +		sunxi_pinctrl_set_pull(pinctrl, pin, 1);
> > +	if (of_find_property(node, "bias-pull-down", NULL))
> > +		sunxi_pinctrl_set_pull(pinctrl, pin, 2);
> > +	if (of_find_property(node, "bias-disable", NULL))
> > +		sunxi_pinctrl_set_pull(pinctrl, pin, 0);
> > +
> > +	if (!of_property_read_u32(node, "drive-strength", &val)) {
> > +		val = rounddown(val, 10) / 10 - 1;
> > +		sunxi_pinctrl_set_dlevel(pinctrl, pin, val);
> > +	}
> > +}
> > +
> > +static const char *sunxi_pinctrl_parse_function_prop(struct device_node *node)
> > +{
> > +	const char *function;
> > +	int ret;
> > +
> > +	/* Try the generic binding */
> > +	ret = of_property_read_string(node, "function", &function);
> > +	if (!ret)
> > +		return function;
> > +
> > +	/* And fall back to our legacy one */
> > +	ret = of_property_read_string(node, "allwinner,function", &function);
> > +	if (!ret)
> > +		return function;
> > +
> > +	return NULL;
> > +}
> > +
> > +static struct property *sunxi_pinctrl_find_pins_prop(struct device_node *node)
> > +{
> > +	struct property *prop;
> > +
> > +	/* Try the generic binding */
> > +	prop = of_find_property(node, "pins", NULL);
> > +	if (prop)
> > +		return prop;
> > +
> > +	/* And fall back to our legacy one */
> > +	prop = of_find_property(node, "allwinner,pins", NULL);
> > +	if (prop)
> > +		return prop;
> > +
> > +	return NULL;
> > +}
> > +
> > +#define sunxi_pinctrl_of_pins_for_each_string(np, prop, s)	\
> > +	for (prop = sunxi_pinctrl_find_pins_prop(np),		\
> > +		s = of_prop_next_string(prop, NULL);		\
> > +		s;						\
> > +		s = of_prop_next_string(prop, s))
> > +
> > +
> > +static const struct sunxi_desc_pin *
> > +sunxi_pinctrl_find_pin(struct sunxi_pinctrl *pinctrl, const char *pin_name)
> > +{
> > +	const struct sunxi_desc_pin *pin;
> > +	int i;
> > +
> > +	for (i = 0; i < pinctrl->desc->npins; i++) {
> > +		pin = &pinctrl->desc->pins[i];
> > +		if (!strcmp(pin->pin.name, pin_name))
> > +			return pin;
> > +	}
> > +
> > +	return NULL;
> > +}
> > +
> > +static const struct sunxi_desc_function *
> > +sunxi_pinctrl_find_func(struct sunxi_pinctrl *pinctrl,
> > +			const char *pin_name, const char *func_name)
> > +{
> > +	const struct sunxi_desc_pin *pin;
> > +	const struct sunxi_desc_function *func;
> > +
> > +	pin = sunxi_pinctrl_find_pin(pinctrl, pin_name);
> > +	if (!pin)
> > +		return NULL;
> > +
> > +	for (func = pin->functions; func->name; func++)
> > +		if (!strcmp(func->name, func_name))
> > +			return func;
> > +
> > +	return NULL;
> > +}
> > +
> > +static int sunxi_pinctrl_set_func(struct sunxi_pinctrl *pinctrl,
> > +				  struct device_node *np,
> > +				  const char *pin_name, const char *func_name)
> > +{
> > +	struct device *dev = pinctrl->pdev.dev;
> > +	const struct sunxi_desc_pin *pin;
> > +	const struct sunxi_desc_function *func;
> > +
> > +	dev_dbg(dev, "setfunc %s @ %s\n", func_name, pin_name);
> > +
> > +	pin = sunxi_pinctrl_find_pin(pinctrl, pin_name);
> > +	if (!pin) {
> > +		dev_err(dev, "pin %s not found\n", pin_name);
> > +		return -EINVAL;
> > +	}
> > +
> > +	func = sunxi_pinctrl_find_func(pinctrl, pin_name, func_name);
> > +	if (!func) {
> > +		dev_err(dev, "func %s not found\n", func_name);
> > +		return -EINVAL;
> > +	}
> > +
> > +	sunxi_pinctrl_set_mux(pinctrl, pin->pin.number, func->muxval);
> > +	sunxi_pinctrl_set_conf(pinctrl, pin->pin.number, np);
> > +
> > +	return 0;
> > +}
> > +
> > +static int sunxi_pinctrl_set_state(struct pinctrl_device *pdev, struct device_node *np)
> > +{
> > +	struct sunxi_pinctrl *pinctrl = to_sunxi_pinctrl(pdev);
> > +	struct device *dev = pinctrl->pdev.dev;
> > +	struct property *prop;
> > +	const char *func_name;
> > +	const char *pin_name;
> > +
> > +	func_name = sunxi_pinctrl_parse_function_prop(np);
> > +	if (!func_name) {
> > +		dev_err(dev, "%s: missing 'function' property\n", np->full_name);
> > +		return -EINVAL;
> > +	}
> > +
> > +	sunxi_pinctrl_of_pins_for_each_string(np, prop, pin_name) {
> > +		sunxi_pinctrl_set_func(pinctrl, np, pin_name, func_name);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int sunxi_pinctrl_set_direction(struct pinctrl_device *pdev, unsigned int gpio, bool in)
> > +{
> > +	struct sunxi_pinctrl *pinctrl = to_sunxi_pinctrl(pdev);
> > +	u32 func = in ? FUNC_GPIO_IN : FUNC_GPIO_OUT;
> > +
> > +	sunxi_pinctrl_set_mux(pinctrl, gpio, func);
> > +
> > +	return 0;
> > +}
> > +
> > +static int sunxi_gpio_get(struct gpio_chip *chip, unsigned gpio)
> > +{
> > +	struct sunxi_pinctrl *pinctrl = chip->dev->priv;
> > +	u32 reg = sunxi_data_reg(gpio);
> > +	u32 bit = sunxi_data_offset(gpio);
> > +	u32 val = readl(pinctrl->base + reg);
> > +
> > +	return val & BIT(bit);
> > +}
> > +
> > +static void sunxi_gpio_set(struct gpio_chip *chip, unsigned gpio, int value)
> > +{
> > +	struct sunxi_pinctrl *pinctrl = chip->dev->priv;
> > +	u32 reg = sunxi_data_reg(gpio);
> > +	u32 bit = sunxi_data_offset(gpio);
> > +	u32 val = readl(pinctrl->base + reg);
> > +
> > +	if (value)
> > +		val |= BIT(bit);
> > +	else
> > +		val &= ~BIT(bit);
> > +	writel(val, pinctrl->base + reg);
> > +}
> > +
> > +static int sunxi_gpio_direction_output(struct gpio_chip *chip,
> > +				       unsigned gpio, int value)
> > +{
> > +	struct sunxi_pinctrl *pinctrl = chip->dev->priv;
> > +
> > +	sunxi_gpio_set(chip, gpio, value);
> > +	sunxi_pinctrl_set_mux(pinctrl, gpio, FUNC_GPIO_OUT);
> > +
> > +	return 0;
> > +}
> > +
> > +static int sunxi_gpio_direction_input(struct gpio_chip *chip,
> > +					unsigned gpio)
> > +{
> > +	struct sunxi_pinctrl *pinctrl = chip->dev->priv;
> > +
> > +	sunxi_pinctrl_set_mux(pinctrl, gpio, FUNC_GPIO_IN);
> > +
> > +	return 0;
> > +}
> > +
> > +static int sunxi_gpio_get_direction(struct gpio_chip *chip, unsigned gpio)
> > +{
> > +	struct sunxi_pinctrl *pinctrl = chip->dev->priv;
> > +	u32 func = sunxi_pinctrl_get_mux(pinctrl, gpio);
> > +
> > +	if (func == FUNC_GPIO_IN)
> > +		return GPIOF_DIR_IN;
> > +	if (func == FUNC_GPIO_OUT)
> > +		return GPIOF_DIR_OUT;
> > +	return -EINVAL;
> > +}
> > +
> > +static int sunxi_gpio_of_xlate(struct gpio_chip *chip,
> > +			       const struct of_phandle_args *gpiospec,
> > +			       u32 *flags)
> > +{
> > +	int pin, base;
> > +
> > +	if (gpiospec->args_count != 3)
> > +		return -EINVAL;
> > +
> > +	base = PINS_PER_BANK * gpiospec->args[0];
> > +	pin = base + gpiospec->args[1];
> > +
> > +	if (pin > chip->ngpio)
> > +		return -EINVAL;
> > +
> > +	if (flags)
> > +		*flags = gpiospec->args[2];
> > +
> > +	return pin;
> > +}
> > +
> > +static struct pinctrl_ops sunxi_pinctrl_ops = {
> > +	.set_state = sunxi_pinctrl_set_state,
> > +	.set_direction = sunxi_pinctrl_set_direction,
> > +};
> > +
> > +static struct gpio_ops sunxi_gpio_ops = {
> > +	.request = sunxi_gpio_direction_input, /* switch to input function */
> > +	.direction_input = sunxi_gpio_direction_input,
> > +	.direction_output = sunxi_gpio_direction_output,
> > +	.get_direction = sunxi_gpio_get_direction,
> > +	.get = sunxi_gpio_get,
> > +	.set = sunxi_gpio_set,
> > +	.of_xlate = sunxi_gpio_of_xlate,
> > +};
> > +
> > +int sunxi_pinctrl_probe(struct device *dev)
> > +{
> > +	const struct sunxi_pinctrl_desc *desc;
> > +	struct sunxi_pinctrl *pinctrl;
> > +	struct resource *iores;
> > +	int ret;
> > +
> > +	if (!IS_ENABLED(CONFIG_PINCTRL))
> > +		return 0;
> > +
> > +	desc = device_get_match_data(dev);
> > +	if (!desc)
> > +                return -EINVAL;
> > +
> > +	iores = dev_request_mem_resource(dev, 0);
> > +	if (IS_ERR(iores))
> > +		return PTR_ERR(iores);
> > +
> > +	pinctrl = xzalloc(sizeof(*pinctrl));
> > +	dev->priv = pinctrl;
> > +	pinctrl->base = IOMEM(iores->start);
> > +
> > +	pinctrl->desc = desc;
> > +	pinctrl->pdev.dev = dev;
> > +	pinctrl->pdev.ops = &sunxi_pinctrl_ops;
> > +
> > +	ret = pinctrl_register(&pinctrl->pdev);
> > +	if (ret) {
> > +		dev_err(dev, "couldn't register %s driver\n", "pinctrl");
> > +		goto err;
> > +	}
> > +	dev_dbg(dev, "sunxi %s registered\n", "pinctrl");
> > +
> > +	pinctrl->chip.dev = dev;
> > +	pinctrl->chip.ops = &sunxi_gpio_ops;
> > +	/* only the first 8 bank are supported */
> > +	pinctrl->chip.base = 0;
> > +	pinctrl->chip.ngpio = 8 * PINS_PER_BANK;
> > +
> > +	if (of_property_read_bool(dev->of_node, "gpio-controller")) {
> > +		ret = gpiochip_add(&pinctrl->chip);
> > +		if (ret) {
> > +			dev_err(dev, "couldn't register %s driver\n", "gpio-chip");
> > +			goto pinctrl_unregister;
> > +		}
> > +		dev_dbg(dev, "sunxi %s registered\n", "gpio-chip");
> > +	}
> > +	return 0;
> > +
> > +pinctrl_unregister:
> > +	pinctrl_unregister(&pinctrl->pdev);
> > +err:
> > +	release_region(iores);
> > +	free(pinctrl);
> > +	return ret;
> > +}
> > diff --git a/drivers/pinctrl/sunxi/pinctrl-sunxi.h b/drivers/pinctrl/sunxi/pinctrl-sunxi.h
> > new file mode 100644
> > index 0000000000..630f1ef98e
> > --- /dev/null
> > +++ b/drivers/pinctrl/sunxi/pinctrl-sunxi.h
> > @@ -0,0 +1,224 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Allwinner A1X SoCs pinctrl driver.
> > + *
> > + * Copyright (C) 2012 Maxime Ripard
> > + *
> > + * Maxime Ripard <maxime.ripard@free-electrons.com>
> > + *
> > + * This file is licensed under the terms of the GNU General Public
> > + * License version 2.  This program is licensed "as is" without any
> > + * warranty of any kind, whether express or implied.
> > + */
> > +
> > +#ifndef __PINCTRL_SUNXI_H
> > +#define __PINCTRL_SUNXI_H
> > +
> > +#include <pinctrl.h>
> > +#include <gpio.h>
> > +
> > +#define PA_BASE	0
> > +#define PB_BASE	32
> > +#define PC_BASE	64
> > +#define PD_BASE	96
> > +#define PE_BASE	128
> > +#define PF_BASE	160
> > +#define PG_BASE	192
> > +#define PH_BASE	224
> > +#define PI_BASE	256
> > +#define PL_BASE	352
> > +#define PM_BASE	384
> > +#define PN_BASE	416
> > +
> > +#define SUNXI_PIN_NAME_MAX_LEN	5
> > +
> > +#define BANK_MEM_SIZE		0x24
> > +#define MUX_REGS_OFFSET		0x0
> > +#define DATA_REGS_OFFSET	0x10
> > +#define DLEVEL_REGS_OFFSET	0x14
> > +#define PULL_REGS_OFFSET	0x1c
> > +
> > +#define PINS_PER_BANK		32
> > +#define MUX_PINS_PER_REG	8
> > +#define MUX_PINS_BITS		4
> > +#define MUX_PINS_MASK		0x0f
> > +#define DATA_PINS_PER_REG	32
> > +#define DATA_PINS_BITS		1
> > +#define DATA_PINS_MASK		0x01
> > +#define DLEVEL_PINS_PER_REG	16
> > +#define DLEVEL_PINS_BITS	2
> > +#define DLEVEL_PINS_MASK	0x03
> > +#define PULL_PINS_PER_REG	16
> > +#define PULL_PINS_BITS		2
> > +#define PULL_PINS_MASK		0x03
> > +
> > +#define GRP_CFG_REG		0x300
> > +
> > +#define IO_BIAS_MASK		GENMASK(3, 0)
> > +
> > +#define SUN4I_FUNC_INPUT	0
> > +#define SUN4I_FUNC_IRQ		6
> > +
> > +#define PINCTRL_SUN5I_A10S	BIT(1)
> > +#define PINCTRL_SUN5I_A13	BIT(2)
> > +#define PINCTRL_SUN5I_GR8	BIT(3)
> > +#define PINCTRL_SUN6I_A31	BIT(4)
> > +#define PINCTRL_SUN6I_A31S	BIT(5)
> > +#define PINCTRL_SUN4I_A10	BIT(6)
> > +#define PINCTRL_SUN7I_A20	BIT(7)
> > +#define PINCTRL_SUN8I_R40	BIT(8)
> > +#define PINCTRL_SUN8I_V3	BIT(9)
> > +#define PINCTRL_SUN8I_V3S	BIT(10)
> > +
> > +#define PIO_POW_MOD_SEL_REG	0x340
> > +
> > +enum sunxi_desc_bias_voltage {
> > +	BIAS_VOLTAGE_NONE,
> > +	/*
> > +	 * Bias voltage configuration is done through
> > +	 * Pn_GRP_CONFIG registers, as seen on A80 SoC.
> > +	 */
> > +	BIAS_VOLTAGE_GRP_CONFIG,
> > +	/*
> > +	 * Bias voltage is set through PIO_POW_MOD_SEL_REG
> > +	 * register, as seen on H6 SoC, for example.
> > +	 */
> > +	BIAS_VOLTAGE_PIO_POW_MODE_SEL,
> > +};
> > +
> > +struct sunxi_desc_function {
> > +	const char	*name;
> > +	u8		muxval;
> > +};
> > +
> > +struct sunxi_desc_pin {
> > +	struct {
> > +		const char		name[6];
> > +		u16			number;
> > +	} pin;
> > +	const struct sunxi_desc_function	*functions;
> > +};
> > +
> > +struct sunxi_pinctrl_desc {
> > +	const struct sunxi_desc_pin	*pins;
> > +	size_t				npins;
> > +	unsigned			pin_base;
> > +	bool				disable_strict_mode;
> > +	enum sunxi_desc_bias_voltage	io_bias_cfg_variant;
> > +};
> > +
> > +struct sunxi_pinctrl {
> > +	void __iomem			*base;
> > +	struct gpio_chip		chip;
> > +	struct pinctrl_device		pdev;
> > +	const struct sunxi_pinctrl_desc	*desc;
> > +};
> > +
> > +#define SUNXI_PIN(_pin, ...)					\
> > +	{							\
> > +		.pin = _pin,					\
> > +		.functions = (struct sunxi_desc_function[]){	\
> > +			__VA_ARGS__, { } },			\
> > +	}
> > +
> > +#define SUNXI_PINCTRL_PIN(bank, pin)				\
> > +	{							\
> > +		.name = "P" #bank #pin,				\
> > +		.number = P ## bank ## _BASE + (pin)		\
> > +	}
> > +
> > +#define SUNXI_FUNCTION(_val, _name)				\
> > +	{							\
> > +		.name = _name,					\
> > +		.muxval = _val,					\
> > +	}
> > +
> > +#define SUNXI_FUNCTION_IRQ_BANK(...)  {}
> > +
> > +/*
> > + * The sunXi PIO registers are organized as is:
> > + * 0x00 - 0x0c	Muxing values.
> > + *		8 pins per register, each pin having a 4bits value
> > + * 0x10		Pin values
> > + *		32 bits per register, each pin corresponding to one bit
> > + * 0x14 - 0x18	Drive level
> > + *		16 pins per register, each pin having a 2bits value
> > + * 0x1c - 0x20	Pull-Up values
> > + *		16 pins per register, each pin having a 2bits value
> > + *
> > + * This is for the first bank. Each bank will have the same layout,
> > + * with an offset being a multiple of 0x24.
> > + *
> > + * The following functions calculate from the pin number the register
> > + * and the bit offset that we should access.
> > + */
> > +static inline u32 sunxi_mux_reg(u16 pin)
> > +{
> > +	u8 bank = pin / PINS_PER_BANK;
> > +	u32 offset = bank * BANK_MEM_SIZE;
> > +	offset += MUX_REGS_OFFSET;
> > +	offset += pin % PINS_PER_BANK / MUX_PINS_PER_REG * 0x04;
> > +	return round_down(offset, 4);
> > +}
> > +
> > +static inline u32 sunxi_mux_offset(u16 pin)
> > +{
> > +	u32 pin_num = pin % MUX_PINS_PER_REG;
> > +	return pin_num * MUX_PINS_BITS;
> > +}
> > +
> > +static inline u32 sunxi_data_reg(u16 pin)
> > +{
> > +	u8 bank = pin / PINS_PER_BANK;
> > +	u32 offset = bank * BANK_MEM_SIZE;
> > +	offset += DATA_REGS_OFFSET;
> > +	offset += pin % PINS_PER_BANK / DATA_PINS_PER_REG * 0x04;
> > +	return round_down(offset, 4);
> > +}
> > +
> > +static inline u32 sunxi_data_offset(u16 pin)
> > +{
> > +	u32 pin_num = pin % DATA_PINS_PER_REG;
> > +	return pin_num * DATA_PINS_BITS;
> > +}
> > +
> > +static inline u32 sunxi_dlevel_reg(u16 pin)
> > +{
> > +	u8 bank = pin / PINS_PER_BANK;
> > +	u32 offset = bank * BANK_MEM_SIZE;
> > +	offset += DLEVEL_REGS_OFFSET;
> > +	offset += pin % PINS_PER_BANK / DLEVEL_PINS_PER_REG * 0x04;
> > +	return round_down(offset, 4);
> > +}
> > +
> > +static inline u32 sunxi_dlevel_offset(u16 pin)
> > +{
> > +	u32 pin_num = pin % DLEVEL_PINS_PER_REG;
> > +	return pin_num * DLEVEL_PINS_BITS;
> > +}
> > +
> > +static inline u32 sunxi_pull_reg(u16 pin)
> > +{
> > +	u8 bank = pin / PINS_PER_BANK;
> > +	u32 offset = bank * BANK_MEM_SIZE;
> > +	offset += PULL_REGS_OFFSET;
> > +	offset += pin % PINS_PER_BANK / PULL_PINS_PER_REG * 0x04;
> > +	return round_down(offset, 4);
> > +}
> > +
> > +static inline u32 sunxi_pull_offset(u16 pin)
> > +{
> > +	u32 pin_num = pin % PULL_PINS_PER_REG;
> > +	return pin_num * PULL_PINS_BITS;
> > +}
> > +
> > +static inline u32 sunxi_grp_config_reg(u16 pin)
> > +{
> > +	u8 bank = pin / PINS_PER_BANK;
> > +
> > +	return GRP_CFG_REG + bank * 0x4;
> > +}
> > +
> > +int sunxi_pinctrl_probe(struct device *dev);
> > +
> > +#endif /* __PINCTRL_SUNXI_H */
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 



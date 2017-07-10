Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUaay-0004uB-03
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 15:27:34 +0000
Date: Mon, 10 Jul 2017 17:27:06 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170710152706.GA12108@ravnborg.org>
References: <20170710152108.23601-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170710152108.23601-1-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: imx: phyCORE i.MX7 on phyBOARD-Zeta support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Lucas

> index 000000000000..b1608dd9c730
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
> @@ -0,0 +1,76 @@
> +/*
> + * Copyright (C) 2016 NXP Semiconductors
> + *
> + * SPDX-License-Identifier:	GPL-2.0
> + *
> + * Refer docs/README.imxmage for more details about how-to configure
> + * and create imximage boot image
> + *
> + * The syntax is taken as close as possible with the kwbimage
> + */
> +
> +soc imx7
> +loadaddr 0x80000000
> +dcdofs 0x400
> +
> +wm 32 0x30340004 0x4F400005
> +/* Clear then set bit30 to ensure exit from DDR retention */
> +wm 32 0x30360388 0x40000000
> +wm 32 0x30360384 0x40000000
> +
> +wm 32 0x30391000 0x00000002
> +wm 32 0x307a0000 0x01040001


Uwe posted a patch the other day to replace all these
constants with defines across the tree.
Looks like a step backward to introduce a new file where this approach is not used.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

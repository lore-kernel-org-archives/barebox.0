Delivery-date: Mon, 23 Jan 2023 10:21:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJt1W-002yNb-Ts
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 10:21:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJt1U-00009u-Vh
	for lore@pengutronix.de; Mon, 23 Jan 2023 10:21:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HbwXanVx3aP0gkcjEY8rqkA5HzHXYr6RP2WDzkHr95c=; b=RsbsrcEnAZMpzbJxk1LVJo6SGF
	8FMsf3RtGYF61U2mTtaOAQusVli2hwYfDfwcuMpv3bStIJxAhn8CZMu2wf+D+SmUFSGR2EvUl7nr1
	vsqILmEAUkwK2FxNaQS/YhtSaah2osrrTRTGSgM2InDPpxBCoPoj2bf/FvpZ2YQVNvmriGrlyJqS2
	KalqsUVdJsq9KUX0Nq69pz8bIcuGNy2+2y1lBexmGrXJpIfA9qKbT8Es8Axjcs9ZzHNcxtOey4JuI
	NrL0Eacm87SQMqNK2Cz9nIlEHb/t1AOt/0OMCZskpzoJ4rdqW7eDXN8Vmj7zRm2PYBaNfYZ0NEvRS
	lXDPzP+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJt0I-00GVGr-UR; Mon, 23 Jan 2023 09:20:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJt0D-00GVGA-CC
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 09:20:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJt0B-0008MU-4t; Mon, 23 Jan 2023 10:20:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJt0A-0000kB-Ft; Mon, 23 Jan 2023 10:20:30 +0100
Date: Mon, 23 Jan 2023 10:20:30 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230123092030.GR24755@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-2-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230122175141.119834-2-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_012033_451661_D9392244 
X-CRM114-Status: GOOD (  29.14  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] ARM: novena: Add Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 23, 2023 at 04:51:37AM +1100, John Watts wrote:
> The Kosagi Novena is an open source laptop released in 2014.
> 
> This patch adds the initial project skeleton for running the PBL
> and debugging over the UART2 port (labeled DEBUG on the board.)
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  arch/arm/boards/Makefile                      |  1 +
>  arch/arm/boards/novena/Makefile               |  4 +
>  arch/arm/boards/novena/board.c                | 13 ++++
>  .../boards/novena/flash-header-novena.imxcfg  |  6 ++
>  arch/arm/boards/novena/lowlevel.c             | 73 +++++++++++++++++++
>  arch/arm/configs/imx_v7_defconfig             |  1 +
>  arch/arm/dts/Makefile                         |  1 +
>  arch/arm/dts/imx6q-novena.dts                 |  4 +
>  arch/arm/mach-imx/Kconfig                     |  6 ++
>  images/Makefile.imx                           |  2 +
>  10 files changed, 111 insertions(+)
>  create mode 100644 arch/arm/boards/novena/Makefile
>  create mode 100644 arch/arm/boards/novena/board.c
>  create mode 100644 arch/arm/boards/novena/flash-header-novena.imxcfg
>  create mode 100644 arch/arm/boards/novena/lowlevel.c
>  create mode 100644 arch/arm/dts/imx6q-novena.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 0f4339ebed..177c1da2c5 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -19,6 +19,7 @@ obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
>  obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
>  obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
>  obj-$(CONFIG_MACH_NITROGEN6)			+= boundarydevices-nitrogen6/
> +obj-$(CONFIG_MACH_NOVENA)			+= novena/
>  obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
>  obj-$(CONFIG_MACH_CCMX53)			+= ccxmx53/
>  obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
> diff --git a/arch/arm/boards/novena/Makefile b/arch/arm/boards/novena/Makefile
> new file mode 100644
> index 0000000000..da63d2625f
> --- /dev/null
> +++ b/arch/arm/boards/novena/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
> new file mode 100644
> index 0000000000..186f91093f
> --- /dev/null
> +++ b/arch/arm/boards/novena/board.c
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2023 John Watts
> +
> +#include <common.h>
> +
> +static int novena_device_init(void)
> +{
> +	if (!of_machine_is_compatible("kosagi,imx6q-novena"))
> +		return 0;
> +
> +	return 0;
> +}
> +device_initcall(novena_device_init);

The new way to register board code is to register a driver that matches
to OF root node, see arch/arm/boards/nxp-imx8mm-evk/board.c:74 for an
example.

Also we have a mechanism in place that probes devices on demand when
they are needed and no longer in a fixed order. As this requires some
support by the board it must be enabled per board using:

BAREBOX_DEEP_PROBE_ENABLE(novema_of_match);

It would be great if you could switch to that. As said the board code
needs to support this, I'll comment to that in the next patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



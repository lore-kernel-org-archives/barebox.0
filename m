Delivery-date: Mon, 15 Jun 2026 09:47:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ22e-0063st-1F
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 09:47:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ22d-0004iL-Lc
	for lore@pengutronix.de; Mon, 15 Jun 2026 09:47:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=qgGIQAV0WfNmr3bg3r/9N8IaVVxKmYOMtZHSVT7sdTs=; b=tzWD7eQGCJH/PbIi5Y0FpGFQD/
	yk0ZfJh83X9g6S8pYuctKVCOLQ4bOo9/YCcfh9eGIslJRwZAVrdTgh9/Xi5qSK3Ic0QCpSX1YvOJQ
	486WnFAq6LEuqacN8Tv8gWTzZaKErIXy/d5q7fXEOp3PpW0c5uCVlhtUmmpfjMvflvxqLOz90wzdK
	T9tHytYCaD95NEJBe2KjbpxImnD145iB58Cdo/94QMdv+cBDx9y33ygcs8Y2HFPQxkD9VLpnjlWtF
	lIWUFWvqBOsmJGJKynbCXtIrLOaOmhs4QXU+gfPOiNm+7GYR7q0vCKuDdfikN6s96o4A1pbvbisDX
	9Z4PlGow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ21Y-0000000DoJj-2hje;
	Mon, 15 Jun 2026 07:46:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ21W-0000000DoJO-1BCC
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 07:46:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ21U-0004RC-NQ; Mon, 15 Jun 2026 09:46:20 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ21U-002pIi-2B;
	Mon, 15 Jun 2026 09:46:20 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ21U-00000006G4m-2Squ;
	Mon, 15 Jun 2026 09:46:20 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Oleksij Rempel" <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, "Oleksij Rempel" <o.rempel@pengutronix.de>
In-Reply-To: <20260612055930.635833-3-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 07:46:20 +0000
Message-Id: <E1wZ21U-00000006G4m-2Squ@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_004622_928328_EBDA273E 
X-CRM114-Status: GOOD (  22.20  )
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
Subject: Re: [PATCH v1 03/10] clk: add Microchip LAN966X / LAN969X generic
 clock controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-12 07:59, Oleksij Rempel wrote:
> Port the Microchip LAN966X Generic Clock Controller (GCK) driver from
> the Linux kernel. GCK generates and supplies clocks to peripherals on
> the LAN966X and LAN969X switch SoCs (UART, SDHCI, QSPI, SGPIO, ...).
>=20
> Ported from Linux drivers/clk/clk-lan966x.c at tag v7.1-rc7
> Barebox-specific deltas:
> - probe() takes `struct device *` instead of `platform_device`
> - no devm_* - explicit kfree on probe failure
> - clk_parent_data carries both `.fw_name` (for Linux source-compat) and
>   `.name` (used by barebox at register time, since barebox's clk
>   framework does not resolve `fw_name` via clock-names).
> - Linux's `.determine_rate` is implemented here as `.round_rate`.
>=20
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/clk/Kconfig       |   9 ++
>  drivers/clk/Makefile      |   1 +
>  drivers/clk/clk-lan966x.c | 325 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 335 insertions(+)
>  create mode 100644 drivers/clk/clk-lan966x.c
>=20
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index d2a61329e125..fe7056f8971b 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -84,4 +84,13 @@ config COMMON_CLK_GPIO
> =20
>  source "drivers/clk/sifive/Kconfig"
> =20
> +config COMMON_CLK_LAN966X
> +	bool "Generic Clock Controller driver for LAN966X SoC"
> +	depends on OFDEVICE
> +	depends on COMMON_CLK
> +	help
> +	  Microchip LAN966X and LAN969X SoC Generic Clock Controller (GCK).
> +	  GCK generates and supplies clocks to various peripherals within the
> +	  SoC.
> +
>  endif
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index 4fda2c1e0dd3..d7e06de04230 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -33,3 +33,4 @@ obj-$(CONFIG_COMMON_CLK_SCMI)	+=3D clk-scmi.o
>  obj-$(CONFIG_COMMON_CLK_GPIO)   +=3D clk-gpio.o
>  obj-$(CONFIG_TI_SCI_CLK)	+=3D ti-sci-clk.o
>  obj-$(CONFIG_ARCH_K3)		+=3D k3/
> +obj-$(CONFIG_COMMON_CLK_LAN966X)	+=3D clk-lan966x.o
> diff --git a/drivers/clk/clk-lan966x.c b/drivers/clk/clk-lan966x.c
> new file mode 100644
> index 000000000000..a2f43b2f8dce
> --- /dev/null
> +++ b/drivers/clk/clk-lan966x.c
> @@ -0,0 +1,325 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Microchip LAN966x SoC Clock driver.
> + *
> + * Copyright (C) 2021 Microchip Technology, Inc. and its subsidiaries
> + *
> + * Author: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
> + *
> + * Ported from Linux drivers/clk/clk-lan966x.c. Structure and identifiers
> + * are kept aligned with Linux so future fixes can be backported with
> + * minimal context churn.

We have a new // SPDX-Comment: Origin-URL: tag which you could use here
and other code you are adding from Linux.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



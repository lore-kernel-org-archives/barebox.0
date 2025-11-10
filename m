Delivery-date: Mon, 10 Nov 2025 09:55:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vINgQ-00HJyG-2f
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 09:55:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vINgQ-0000a8-5G
	for lore@pengutronix.de; Mon, 10 Nov 2025 09:55:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ERrKTM+CLZH3O9mi50dxCMV0wFTwNE0K20tEu5hSiCw=; b=O8GQJs/ixapeIhe1RiH1OUUCNy
	ji+7A5dBLNpBNd1ooyREwjl+kpvYQA/p7//pQSvVkVgBgTanJiJpkR/4iC4pqe2EFg3gXodn/VMlT
	ewdmxZdR2uIrwq167sJBIgSJGlexHjLpOI7CQv/ck44o43f2HLnzlxl/yubfIHwichUrzKxWiNHFl
	6KcWILcNvmEjUWECIH5wdX3K099fDibT2AqakFEi9ZPe7a98zgwSbShZT+ChecnNauBi/jyRvWp2v
	O+KRwG/ZVXYGKeDSQUmxDb7gqxrpykwXlnztTYPuyG0GFJanusgbeLqtDgJwZsw9eClV2cIHX2nKr
	m5mKx79w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vINfr-000000051qD-2xQT;
	Mon, 10 Nov 2025 08:54:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vINfp-000000051pk-0Fao
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 08:54:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vINfm-0000Vn-4s; Mon, 10 Nov 2025 09:54:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vINfl-007zYZ-2v;
	Mon, 10 Nov 2025 09:54:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vINfl-00CTbg-2U;
	Mon, 10 Nov 2025 09:54:49 +0100
Date: Mon, 10 Nov 2025 09:54:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org
Message-ID: <aRGoWdjxowN3TTRA@pengutronix.de>
References: <20251109180337.7809-1-akurz@blala.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251109180337.7809-1-akurz@blala.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_005453_125993_0C20E3E4 
X-CRM114-Status: GOOD (  28.74  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM i.MX6SL: Add Kindle generation 6/7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi Alexander,

On Sun, Nov 09, 2025 at 06:03:37PM +0000, Alexander Kurz wrote:
> Four Amazon Kindle 6th and 7th generation e-book readers were considered
> for this patch, referred by their models
> * DP75SDI "PINOT_WFO" (256MB) "Kindle Paperwhite 2" 6th gen
> * DP75SDI "Muscat WFO" (512MB) "Kindle Paperwhite 3" 7th gen
> * WP63GW "Kindle" 7th gen (512MB)
> * NM460GZ "Voyage" 7th gen (512MB)
> Kindle e-book readers from generation 6 and 7 use the i.MX6SL and an
> are shipped with a factory-adapted u-boot image. Vendor software image
> updates for these models stopped around 2021 to 2023.
> 
> Add experimental support for the kindle gen 6/7 models and make barebox
> an optional drop-in replacement for the original bootloader.
> Required PMIC settings are implemented as script.
> 
> Notable features tested on all models:
> - Support for eMMC, USB, UART, I2C and SPI.
> - LPDDR2 setup is done via DCD, the same imximage may be used
>   for USB-startup and for installation.
> - Support for vendor specific ATAGs that are required by the Kindle-System.
> - usbserial barebox console access for 10 seconds after startup.
> 
> Known issues:
> - Reset on models kindle6-dp75sdi and nm460gz does not work and triggers
>   microcode USB download boot.
> - No recovery (without soldering) like USB boot known after e.g. a failed
>   flashing attempt.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  .../boards/imx/amazon-kindle-6-7.rst          |  94 ++++++++
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/kindle-mx6sl/Makefile         |   5 +
> diff --git a/Documentation/boards/imx/amazon-kindle-6-7.rst b/Documentation/boards/imx/amazon-kindle-6-7.rst

Thanks for the good documentation, very appreciated :)

> new file mode 100644
> index 0000000000..c7a5ef9424
> +ENTRY_FUNCTION(start_imx6sl_kindle6_dp75sdi, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	imx6_cpu_lowlevel_init();
> +
> +	arm_setup_stack(0x00920000);
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> +		writel(0x4, 0x020e016c);
> +		imx6_uart_setup_ll();
> +	}
> +
> +	fdt = __dtb_imx6sl_kindle6_dp75sdi_start + get_runtime_offset();
> +	barebox_arm_entry(0x80000000, SZ_256M, fdt);

Does imx6ul_barebox_entry() work here instead? In that case you could
drop the memory nodes from the device trees.

> +++ b/arch/arm/dts/imx6sl-kindle-nm460gz.dts
> @@ -0,0 +1,69 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2025 Alexander Kurz <akurz@blala.de>
> + */
> +
> +/dts-v1/;
> +#include "imx6sl-kindle-common.dtsi"
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model = "kindle-nm460gz";
> +	compatible = "amazon,imx6sl-kindle-nm460gz", "fsl,imx6sl";
> +	barebox,disable-deep-probe;

Is this intentional? What doesn't work with deep probe enabled?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



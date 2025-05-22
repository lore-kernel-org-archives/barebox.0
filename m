Delivery-date: Thu, 22 May 2025 22:23:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uICS4-001eQb-2z
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 22:23:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uICS4-0002Jm-Bd
	for lore@pengutronix.de; Thu, 22 May 2025 22:23:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TBUQytjn7OYicucDEI15HOw5GUvIFgka1z+J1luWIdU=; b=wtkYKbOoDkM9Sm9TbQdxg4fwdI
	i6Y7QqgfPa5tUEA7L3oPYiVY8xfXXiTUkzcweqDuby+0Og1Hhnc8PDodGjkfdlxU/ZmGD+4CNKdP8
	kMxEcmSFlMy7ovs1/WflzDd2tlWr6KOVyjJ5mXlIlEJJlNxf5GKYkF0jq+3LpRrmy+QP2j4uT6VgZ
	99UyhBaK4LH9kO/aWdz32Jr1G7epNXD6avIqpoGd1U3N9DS39CW/aWbdKSdjtioXgzOn/lp9fhgZY
	VU2xf/FxrIIj2uRrise7WnZWnidJb4zBRMsv07Njl2aFTf/H5o4MswvhwZajgAOnmmfi3Egis2frT
	kO457dtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uICRa-000000027L9-1kZx;
	Thu, 22 May 2025 20:23:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uICRX-000000027KT-1aZT
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 20:23:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uICRV-0001zn-Fv; Thu, 22 May 2025 22:23:05 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uICRV-000n6p-0k;
	Thu, 22 May 2025 22:23:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uICRV-002qzm-0Q;
	Thu, 22 May 2025 22:23:05 +0200
Date: Thu, 22 May 2025 22:23:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>
Message-ID: <aC-HqY6SKkLLtGeE@pengutronix.de>
References: <VI1PR02MB44291219773B2D4E4D4D2777AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <VI1PR02MB44291219773B2D4E4D4D2777AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_132307_413569_AABF0F29 
X-CRM114-Status: GOOD (  24.30  )
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
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "m.tretter@pengutronix.de" <m.tretter@pengutronix.de>, "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "johannes@gnu-linux.rocks" <johannes@gnu-linux.rocks>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] added zynq 7000 usb support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, May 19, 2025 at 07:09:06AM +0000, Michael Graichen wrote:
> This adds support to use the USB interface on Zynq-7000 SoC.
> 
> Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
> ---
>  drivers/usb/host/Kconfig     |  8 ++++++++
>  drivers/usb/host/Makefile    |  1 +
>  drivers/usb/host/ehci-zynq.c | 36 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 45 insertions(+)
>  create mode 100644 drivers/usb/host/ehci-zynq.c
> 
> diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
> index d38b4dcac4..812270f869 100644
> --- a/drivers/usb/host/Kconfig
> +++ b/drivers/usb/host/Kconfig
> @@ -14,6 +14,14 @@ config USB_EHCI_ATMEL
>  	select USB_OHCI_AT91
>  	bool "Atmel EHCI driver"
>  
> +config USB_EHCI_ZYNQ
> +	bool "Support for Xilinx Zynq on-chip EHCI USB controller"
> +	depends on ARCH_ZYNQ
> +	select USB_EHCI

Please use "depends on USB_EHCI" rather than selecting it.

> +	select USB_ULPI
> +	help
> +	  Enable support for Zynq on-chip EHCI USB controller
> +
>  config USB_OHCI
>  	bool "OHCI driver"
>  	depends on !MMU && HAS_DMA
> diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
> index e55dff4580..cbddfbe923 100644
> --- a/drivers/usb/host/Makefile
> +++ b/drivers/usb/host/Makefile
> @@ -2,6 +2,7 @@
>  obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
>  obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
>  obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
> +obj-$(CONFIG_USB_EHCI_ZYNQ)	+= ehci-zynq.o
>  obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
>  obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
>  obj-$(CONFIG_USB_XHCI)		+= xhci.o xhci-mem.o xhci-ring.o
> diff --git a/drivers/usb/host/ehci-zynq.c b/drivers/usb/host/ehci-zynq.c
> new file mode 100644
> index 0000000000..f08e9a3c5c
> --- /dev/null
> +++ b/drivers/usb/host/ehci-zynq.c
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * USB Low level initialization(Specific to Zynq 7000)
> + */
> +
> +#include <common.h>
> +#include <linux/usb/ulpi.h>
> +
> +static int zynq_ehci_probe(struct device_d *dev)
> +{
> +	struct resource *res;
> +	void __iomem *base;
> +
> +	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
> +	if (!res)
> +		return -EINVAL;

dev_get_resource() returns an ERR_PTR. Test the result with

	if (IS_ERR(ret))
		return PTR_ERR(res);

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



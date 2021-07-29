Delivery-date: Thu, 29 Jul 2021 12:13:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m932k-00082j-V7
	for lore@lore.pengutronix.de; Thu, 29 Jul 2021 12:13:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m932k-000369-0u
	for lore@pengutronix.de; Thu, 29 Jul 2021 12:13:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D3gj8+EAgNEeolmYNf+H9beAYOuSf83eLnA0UwHqxZU=; b=tj0xEOwz84oJI4Oh8WltoQuMOH
	hnpbw8I7hf/NQZ9vYL6J46esKq1bi7qoaEX+LPWulPKym2qH9r12CeH2YJddpfBIRO92au/3cjo9b
	GwUPmPsg5nXr8dcF+ZtH0TkqhIm+Di5WAvOSIGfdPbv11nF3lEzRoc56mp51oxhpuJGRNHqdP0MHm
	cPFni4dyL7Bd3q60vK7KmPtjC3c9MAMaglC0R1q3rLN8P/p9KOMFuCVcQf9YsTYGrJpfmlAvYSOtp
	nGROjaRKkPNjMgYahhGBbyRWC+mWgWefsaytDEQp6ZxO1fOX6NKcHak4DdcXi6PQrSdUE2MeFI3L1
	66z0+wrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m931F-003nkD-I6; Thu, 29 Jul 2021 10:12:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m931A-003njq-Cf
 for barebox@lists.infradead.org; Thu, 29 Jul 2021 10:11:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1m9318-0002mO-QV; Thu, 29 Jul 2021 12:11:54 +0200
To: Renaud Barbier <renaud.barbier@abaco.com>, barebox@lists.infradead.org
References: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
 <1627476428-16318-4-git-send-email-renaud.barbier@abaco.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2b7ebb39-c70a-b02e-767d-cedb90494d7a@pengutronix.de>
Date: Thu, 29 Jul 2021 12:11:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1627476428-16318-4-git-send-email-renaud.barbier@abaco.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_031156_486919_6B24C176 
X-CRM114-Status: GOOD (  26.47  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/4] nand: add NXP IFC nand driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.07.21 14:47, Renaud Barbier wrote:
> Add the NXP IFC nand driver support. This driver
> can be used with the NXP QorIQ cores.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  .../mach-layerscape/include/mach/fsl_ifc.h    |   16 +
>  .../mach-layerscape/include/mach/layerscape.h |    3 +
>  drivers/mtd/nand/Kconfig                      |    6 +
>  drivers/mtd/nand/Makefile                     |    1 +
>  drivers/mtd/nand/fsl_ifc.h                    |  116 ++
>  drivers/mtd/nand/nand_fsl_ifc.c               | 1037 +++++++++++++++++
>  include/linux/fsl_ifc.h                       |  306 +++++
>  7 files changed, 1485 insertions(+)
>  create mode 100644 arch/arm/mach-layerscape/include/mach/fsl_ifc.h
>  create mode 100644 drivers/mtd/nand/fsl_ifc.h
>  create mode 100644 drivers/mtd/nand/nand_fsl_ifc.c
>  create mode 100644 include/linux/fsl_ifc.h
> 
> diff --git a/arch/arm/mach-layerscape/include/mach/fsl_ifc.h b/arch/arm/mach-layerscape/include/mach/fsl_ifc.h
> new file mode 100644
> index 0000000000..385d07cb1f
> --- /dev/null
> +++ b/arch/arm/mach-layerscape/include/mach/fsl_ifc.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier:     GPL-2.0+ */
> +/*
> + * Copyright 2021 Abaco Systems, Inc
> + */
> +
> +#ifndef __MACH_MTD_FSL_IFC
> +#define __MACH_MTD_FSL_IFC
> +
> +#include <mach/layerscape.h>
> +#include <linux/fsl_ifc.h>
> +
> +
> +struct fsl_ifc_data {
> +	uint32_t cs;
> +};
> +#endif

Header can be dropped as the Layerscape support is DT-only.

> diff --git a/arch/arm/mach-layerscape/include/mach/layerscape.h b/arch/arm/mach-layerscape/include/mach/layerscape.h
> index 1f1da0f66e..cb7bbc56b0 100644
> --- a/arch/arm/mach-layerscape/include/mach/layerscape.h
> +++ b/arch/arm/mach-layerscape/include/mach/layerscape.h
> @@ -3,6 +3,9 @@
>  
>  #define LS1046A_DDR_SDRAM_BASE	0x80000000
>  #define LS1046A_DDR_FREQ	2100000000
> +#define LS10146A_IFC_ADDR	0x01530000
> +
> +#define IFC_ADDR	LS10146A_IFC_ADDR

That's a too generic macro name. You should retrieve the base address
from device tree in the driver. Otherwise, if a new Layerscape SoC
is added, you won't be able to have a multi-image barebox build
that supports both.


> +static int fsl_ifc_nand_probe(struct device_d *dev)
> +{
> +	struct device_node *np = dev->device_node;
> +	struct fsl_ifc_data *pdata = dev->platform_data;
> +	struct fsl_ifc_mtd *priv;
> +	struct resource *iores;
> +	struct mtd_info *mtd;
> +	int ret = 0;
> +
> +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->dev = dev;
> +	if (!np) {

I'd remove the PPC non-DT support. It doesn't compile now anyway.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


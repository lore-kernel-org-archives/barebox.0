Delivery-date: Fri, 14 Jan 2022 11:22:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8JjT-001x7C-8s
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 11:22:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8JjR-0006ZQ-Ab
	for lore@pengutronix.de; Fri, 14 Jan 2022 11:22:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EmDQEGaTnfAPLMRkMSf+AWqIffVewoG/+frDrmU1l9w=; b=D+jsVRrH76wPIfjdo3vKUcV/+K
	gq3TkDmiy3HrvjyuTAs/AQHgKI7XVGP8WrpBHeJTJLDMg5yDgMx6sdzdV5xPZJxL+LsMExW2bbozv
	3yiYYiyMX6C64yN8fW9IRP9ie/XDfc/SpYlgy/tTgTG4B4wvkSVher8X4jCWPBWhMQxG+OdgKrl35
	OwxFiulSqAVn+g40NTqqwgfmoOVFoRV8bBH5W8hZyzpjf+31/iMVKIdJmYX9XFbvUuTGku0xBp/ec
	IcS8OWMqgNwHDf6ocje/CxlHWoXM6MZOGX7FdP3FO3Mdf3eJCOHKGrtwAlVA6EQWdzYxjRMhFnaUp
	oKKRDuag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Ji6-008gdx-MM; Fri, 14 Jan 2022 10:21:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Jhz-008gcj-Nz
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 10:21:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8Jhy-0006T7-EZ; Fri, 14 Jan 2022 11:21:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8Jhy-0005E6-5j; Fri, 14 Jan 2022 11:21:22 +0100
Date: Fri, 14 Jan 2022 11:21:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220114102122.GW26619@pengutronix.de>
References: <20220114085046.313677-1-a.fatoum@pengutronix.de>
 <20220114085046.313677-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114085046.313677-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:46:28 up 34 days, 18:32, 79 users,  load average: 0.19, 0.42, 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_022123_827292_F8324855 
X-CRM114-Status: GOOD (  31.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] nvmem: add Rockchip eFuse support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 09:50:46AM +0100, Ahmad Fatoum wrote:
> The driver allows read-only support to e.g. the Hardware UID, which
> could in future be used to derive a MAC like U-Boot does.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/nvmem/Kconfig          |   8 +
>  drivers/nvmem/Makefile         |   1 +
>  drivers/nvmem/rockchip-efuse.c | 299 +++++++++++++++++++++++++++++++++
>  3 files changed, 308 insertions(+)
>  create mode 100644 drivers/nvmem/rockchip-efuse.c
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index 7b1ebe1d689d..ea1156918a34 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -84,4 +84,12 @@ config STARFIVE_OTP
>  	  This adds support for the StarFive OTP controller. Only reading
>  	  is currently supported.
>  
> +config ROCKCHIP_EFUSE
> +	tristate "Rockchip eFuse Support"
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on OFDEVICE
> +	help
> +	  This is a simple drive to dump specified values of Rockchip SoC
> +	  from eFuse, such as CPU ID.
> +
>  endif
> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> index 586591961215..2261816c189c 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -25,3 +25,4 @@ obj-$(CONFIG_STM32_BSEC)	+= nvmem_bsec.o
>  nvmem_bsec-y			:= bsec.o
>  
>  obj-$(CONFIG_STARFIVE_OTP)	+= starfive-otp.o
> +obj-$(CONFIG_ROCKCHIP_EFUSE)	+= rockchip-efuse.o
> diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-efuse.c
> new file mode 100644
> index 000000000000..24e7de0aa9ce
> --- /dev/null
> +++ b/drivers/nvmem/rockchip-efuse.c
> @@ -0,0 +1,299 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Rockchip eFuse Driver
> + *
> + * Copyright (c) 2015 Rockchip Electronics Co. Ltd.
> + * Author: Caesar Wang <wxt@rock-chips.com>
> + */
> +
> +#include <common.h>
> +#include <linux/clk.h>
> +#include <linux/overflow.h>
> +#include <clock.h>
> +#include <driver.h>
> +#include <io.h>
> +#include <linux/nvmem-provider.h>
> +#include <of.h>
> +#include <init.h>
> +
> +#define clk_prepare_enable clk_enable
> +#define clk_disable_unprepare clk_disable

Please use the functions directly.

> +static int rockchip_efuse_probe(struct device_d *dev)
> +{
> +	struct resource *res;
> +	struct nvmem_device *nvmem;
> +	struct rockchip_efuse_chip *efuse;
> +	const void *data;
> +
> +	data = device_get_match_data(dev);
> +	if (!data) {
> +		dev_err(dev, "failed to get match data\n");
> +		return -EINVAL;
> +	}
> +
> +	efuse = kzalloc(sizeof(struct rockchip_efuse_chip), GFP_KERNEL);
> +	if (!efuse)
> +		return -ENOMEM;
> +
> +	res = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(res))
> +		return PTR_ERR(res);
> +
> +	efuse->base = IOMEM(res->start);
> +
> +	efuse->clk = clk_get(dev, "pclk_efuse");
> +	if (IS_ERR(efuse->clk))
> +		return PTR_ERR(efuse->clk);
> +
> +	efuse->dev = dev;
> +	if (of_property_read_u32(dev->device_node, "rockchip,efuse-size",
> +				 &econfig.size))
> +		econfig.size = resource_size(res);

resource_size(res) is the size of the register space which has nothing
to do with the size of the provided nvmem space.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


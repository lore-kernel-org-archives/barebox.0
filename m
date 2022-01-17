Delivery-date: Mon, 17 Jan 2022 11:24:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9PC6-004UG3-B6
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 11:24:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9PC5-0006k4-0t
	for lore@pengutronix.de; Mon, 17 Jan 2022 11:24:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FccZVUBr+kloKac+Vi57qF5JLlb7d/JmHFi8/yZgQEQ=; b=N8PE5kt0mTZUpMuUfl6IZfoQ9X
	UB375TNrLPn4eQAelSjkr8iJSX/7jXW+JthZSXtFVqUdJ6pNh0+HLC0w4y4fGuBGa9lLfPG4ti9/K
	/DPemaSyOPljQw0RKjn3zPJI9g9QIJDwkyfBkCK6YukOvX803buc2xjdkR0Mk1r6wvE8gfnmr5BdG
	1OTbZa1GsvW5wotI6f2Zp2UAis/XxORUCvb0gKEwzeWOA193MJPxUqIl5QwpdPFz3i9LmVS9DU+Pa
	eITTyJoNuo6QxhTcIvj84MHD6Q4tXOPuVr3VpV3AtuIuCjpRlFH+HcusWVuu/xYjP2zSxcs3/mtFj
	p8ZwpumA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9PAm-00ETRJ-AD; Mon, 17 Jan 2022 10:23:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9PAd-00ETPw-8W
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 10:23:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9PAc-0006XM-2O; Mon, 17 Jan 2022 11:23:26 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9PAb-0000NQ-QA; Mon, 17 Jan 2022 11:23:25 +0100
Date: Mon, 17 Jan 2022 11:23:25 +0100
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220117102325.GI1121@pengutronix.de>
References: <20220117085908.36460-1-jbe@pengutronix.de>
 <20220117085908.36460-2-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117085908.36460-2-jbe@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:13:59 up 37 days, 18:59, 81 users,  load average: 0.52, 0.66, 0.54
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_022327_336298_5FE51822 
X-CRM114-Status: GOOD (  33.69  )
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
Subject: Re: [PATCH 1/2] Add the base Ricoh RN5T568 PMIC driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 17, 2022 at 09:59:07AM +0100, Juergen Borleis wrote:
> ---
>  drivers/mfd/Kconfig   |   6 ++
>  drivers/mfd/Makefile  |   1 +
>  drivers/mfd/rn5t568.c | 165 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 172 insertions(+)
>  create mode 100644 drivers/mfd/rn5t568.c
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 8468a2d..1602480 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -68,6 +68,12 @@ config MFD_STPMIC1
>  	help
>  	  Select this to support communication with the STPMIC1.
>  
> +config MFD_RN568PMIC
> +	depends on I2C
> +	bool "Ricoh RN5T568 MFD driver"
> +	help
> +	  Select this to support communication with the Ricoh RN5T568 PMIC.
> +
>  config MFD_SUPERIO
>  	bool
>  
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index 2bcf900..50f54cf 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -13,6 +13,7 @@ obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
>  obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
>  obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
>  obj-$(CONFIG_MFD_STPMIC1)	+= stpmic1.o
> +obj-$(CONFIG_MFD_RN568PMIC)	+= rn5t568.o
>  obj-$(CONFIG_MFD_SUPERIO)	+= superio.o
>  obj-$(CONFIG_FINTEK_SUPERIO)	+= fintek-superio.o
>  obj-$(CONFIG_SMSC_SUPERIO)	+= smsc-superio.o
> diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
> new file mode 100644
> index 0000000..ad53d7b
> --- /dev/null
> +++ b/drivers/mfd/rn5t568.c
> @@ -0,0 +1,165 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * MFD core driver for Ricoh RN5T618 PMIC
> + * Note: Manufacturer is now Nisshinbo Micro Devices Inc.
> + *
> + * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
> + * Copyright (C) 2016 Toradex AG
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <i2c/i2c.h>
> +#include <init.h>
> +#include <of.h>
> +#include <regmap.h>
> +#include <reset_source.h>
> +#include <restart.h>
> +
> +#define RN5T568_LSIVER 0x00
> +#define RN5T568_OTPVER 0x01
> +#define RN5T568_PONHIS 0x09
> +# define RN5T568_PONHIS_ON_EXTINPON BIT(3)
> +# define RN5T568_PONHIS_ON_REPWRPON BIT(1)
> +# define RN5T568_PONHIS_ON_PWRONPON BIT(0)
> +#define RN5T568_POFFHIS 0x0a
> +# define RN5T568_POFFHIS_N_OEPOFF BIT(7)
> +# define RN5T568_POFFHIS_DCLIMPOFF BIT(6)
> +# define RN5T568_POFFHIS_WDGPOFF BIT(5)
> +# define RN5T568_POFFHIS_CPUPOFF BIT(4)
> +# define RN5T568_POFFHIS_IODETPOFF BIT(3)
> +# define RN5T568_POFFHIS_VINDETPOFF BIT(2)
> +# define RN5T568_POFFHIS_TSHUTPOFF BIT(1)
> +# define RN5T568_POFFHIS_PWRONPOFF BIT(0)
> +#define RN5T568_SLPCNT 0x0e
> +# define RN5T568_SLPCNT_SWPPWROFF BIT(0)
> +#define RN5T568_REPCNT 0x0f
> +# define RN5T568_REPCNT_OFF_RESETO_16MS 0x30
> +# define RN5T568_REPCNT_OFF_REPWRTIM_1000MS 0x06
> +# define RN5T568_REPCNT_OFF_REPWRON BIT(0)
> +#define RN5T568_MAX_REG 0xbc
> +
> +struct rn5t568 {
> +	struct restart_handler restart;
> +	struct regmap *regmap;
> +};
> +
> +static struct rn5t568 single_pmic;

Please do not artificially limit the driver to a single instance only.

> +
> +static void rn5t568_restart(struct restart_handler *rst)
> +{
> +	struct rn5t568 *rn5t568 = container_of(rst, struct rn5t568, restart);
> +
> +	regmap_write(rn5t568->regmap, RN5T568_SLPCNT, RN5T568_SLPCNT_SWPPWROFF);
> +}
> +
> +static int rn5t568_reset_reason_detect(struct device_d *dev, struct regmap *regmap)
> +{
> +	unsigned int reg;
> +	int ret;
> +
> +	ret = regmap_read(regmap, RN5T568_PONHIS, &reg);
> +	if (ret)
> +		return ret;
> +
> +	dev_dbg(dev, "Power-on history: %x\n", reg);
> +
> +	if (reg == 0) {
> +		dev_info(dev, "No power-on reason available\n");
> +		return 0;
> +	}
> +
> +	if (reg & RN5T568_PONHIS_ON_EXTINPON) {
> +		reset_source_set_device(dev, RESET_POR);
> +		return 0;
> +	} else if (reg & RN5T568_PONHIS_ON_PWRONPON) {
> +		reset_source_set_device(dev, RESET_POR);
> +		return 0;
> +	} else if (!(reg & RN5T568_PONHIS_ON_REPWRPON))
> +		return -EINVAL;
> +
> +	ret = regmap_read(regmap, RN5T568_POFFHIS, &reg);
> +	if (ret)
> +		return ret;
> +
> +	dev_dbg(dev, "Power-off history: %x\n", reg);
> +
> +	if (reg & RN5T568_POFFHIS_PWRONPOFF)
> +		reset_source_set_device(dev, RESET_POR);
> +	else if (reg & RN5T568_POFFHIS_TSHUTPOFF)
> +		reset_source_set_device(dev, RESET_THERM);
> +	else if (reg & RN5T568_POFFHIS_VINDETPOFF)
> +		reset_source_set_device(dev, RESET_BROWNOUT);
> +	else if (reg & RN5T568_POFFHIS_IODETPOFF)
> +		reset_source_set_device(dev, RESET_UKWN);
> +	else if (reg & RN5T568_POFFHIS_CPUPOFF)
> +		reset_source_set_device(dev, RESET_RST);
> +	else if (reg & RN5T568_POFFHIS_WDGPOFF)
> +		reset_source_set_device(dev, RESET_WDG);
> +	else if (reg & RN5T568_POFFHIS_DCLIMPOFF)
> +		reset_source_set_device(dev, RESET_BROWNOUT);
> +	else if (reg & RN5T568_POFFHIS_N_OEPOFF)
> +		reset_source_set_device(dev, RESET_EXT);
> +	else
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static const struct regmap_config rn5t568_regmap_config = {
> +	.reg_bits	= 8,
> +	.val_bits	= 8,
> +	.max_register	= RN5T568_MAX_REG,
> +};
> +
> +static int __init rn5t568_i2c_probe(struct device_d *dev)
> +{
> +	static const unsigned int val = RN5T568_REPCNT_OFF_RESETO_16MS | RN5T568_REPCNT_OFF_REPWRTIM_1000MS | RN5T568_REPCNT_OFF_REPWRON;

val is used only once. Maybe drop the variable and use the value
directly?

> +	unsigned char reg[4];

reg[2] should be enough. This doesn't matter much but might be a bit
confusing otherwise.

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


Delivery-date: Wed, 04 Oct 2023 10:25:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnxC5-004fsE-5s
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 10:25:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnxC3-0003ss-Ih
	for lore@pengutronix.de; Wed, 04 Oct 2023 10:25:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CbOya4VnkuAufH95p67pmcG6Kv8tv3d8hDpU0BX/cVk=; b=o3L01TDWKrXo/VU5DB2VZmNl5D
	QgAa0fDHUdWDPm+AniNTOfeb+6NKk2WTcUvKLBD1cbWIgCSCZKGgm8GG+yHMqbYq6hCsxeBKxOchF
	gD/DQKpKDr5O2nnontIKiBf5AGo85N+XMm0CITUjoD137aVkNTDESfP+rvrhdZTcUZIrnTAKKQpK5
	ca5X2LqwBQE4w+ixkVYsIA3xT/9ftjq20n7KIPwrMD4idUhDCmdRyHwd8mp6fC7k5oPW9jwkkPFKp
	vO78kMeNYC6z8+gLQy8H1/IA5gnMpldYqlWdaX5jZuoc9syZnCo/jJ0TDEyLwpgP6qWwPsuuh0ix7
	IyNa2Lkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxAq-00GnYr-1o;
	Wed, 04 Oct 2023 08:24:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxAo-00GnYD-0s
	for barebox@bombadil.infradead.org;
	Wed, 04 Oct 2023 08:24:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=CbOya4VnkuAufH95p67pmcG6Kv8tv3d8hDpU0BX/cVk=; b=aSexO7aPCJHYC+3U5yFHJ8iOO4
	9e4UevVsT7wwV+tKt/fEYyVtKYQ0Px5dcYyFQ35/Qjd2xjoEmC/r11sPkszyuaNKCNd0FYS8OSS13
	TcdxhBiRBCC7FWCb7ohjyjwS1YKmc8sqt24xItq1CnTtMX9EZ2EI87RXD2dxn5i0jrGD5J5wTyqT9
	ikzUhRayxfl2nE1GIL8eHw9ZW4/v1QIIfUFwY2FBSl+VbqNLVQ7xSX+wPU0W3SjdRmRafztm//ZQ9
	J7coLtAvnjpGtoAOusgU51HfGYXXNFWH8OP+UhesZaLaKyRx/SLKBUT3uV6VlEefdfXNlt5Fr8b8+
	IsA98c1g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxAF-00Abfx-1B
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 08:23:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnxAB-0003bh-1o; Wed, 04 Oct 2023 10:23:23 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qnxAA-00Az0w-KW; Wed, 04 Oct 2023 10:23:22 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnxAA-00Cj74-Hy; Wed, 04 Oct 2023 10:23:22 +0200
Date: Wed, 4 Oct 2023 10:23:22 +0200
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231004082322.GL637806@pengutronix.de>
References: <20230929085726.1897008-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929085726.1897008-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_092331_136811_6F1E3097 
X-CRM114-Status: GOOD (  32.44  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] mfd: regulator: initial support for pca9450
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 29, 2023 at 10:57:26AM +0200, Holger Assmann wrote:
> The PCA9450 PMIC by NXP can be communicated with via I2C; this driver uses
> that do determine the reset source that caused the PMIC to perform its
> latest power cycle.
> 
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> ---
> 
> Changes v1 -> v2:
> 
> 1. removed unnecessary whitespaces
> 2. code re-arrangement
> 
> ---
>  drivers/mfd/Kconfig   |   7 +++
>  drivers/mfd/Makefile  |   1 +
>  drivers/mfd/pca9450.c | 107 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 115 insertions(+)
>  create mode 100644 drivers/mfd/pca9450.c

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 39a40c2a3f..5189364c2c 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -69,6 +69,13 @@ config MFD_STPMIC1
>  	help
>  	  Select this to support communication with the STPMIC1.
>  
> +config MFD_PCA9450
> +	depends on I2C
> +	select REGMAP_I2C
> +	bool "PCA9450 MFD driver"
> +	help
> +	  Select this to support communication with the PCA9450 PMIC.
> +
>  config MFD_RN568PMIC
>  	depends on I2C
>  	select REGMAP_I2C
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index f19bf53655..00f3eacf3c 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -25,3 +25,4 @@ obj-$(CONFIG_MFD_RK808)		+= rk808.o
>  obj-$(CONFIG_MFD_AXP20X_I2C)	+= axp20x-i2c.o axp20x.o
>  obj-$(CONFIG_MFD_ATMEL_SMC)	+= atmel-smc.o
>  obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
> +obj-$(CONFIG_MFD_PCA9450)	+= pca9450.o
> diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
> new file mode 100644
> index 0000000000..929c4f68da
> --- /dev/null
> +++ b/drivers/mfd/pca9450.c
> @@ -0,0 +1,107 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2023 Holger Assmann, Pengutronix
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <i2c/i2c.h>
> +#include <init.h>
> +#include <mfd/pca9450.h>
> +#include <of.h>
> +#include <regmap.h>
> +#include <reset_source.h>
> +
> +#define REASON_PMIC_RST		0x10
> +#define REASON_SW_RST		0x20
> +#define REASON_WDOG		0x40
> +#define REASON_PWON		0x80
> +
> +static const struct regmap_config pca9450_regmap_i2c_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.max_register = 0x2E,
> +};
> +
> +static int pca9450_get_reset_source(struct device *dev, struct regmap *map)
> +{
> +	enum reset_src_type type;
> +	int reg;
> +	int ret;
> +
> +	ret = regmap_read(map, PCA9450_PWRON_STAT, &reg);
> +
> +	if (ret)
> +		return ret;
> +
> +	switch (reg) {
> +	case REASON_PWON:
> +		dev_dbg(dev, "Power ON triggered by PMIC_ON_REQ.\n");
> +		type = RESET_POR;
> +		break;
> +	case REASON_WDOG:
> +		dev_dbg(dev, "Detected cold reset by WDOGB pin\n");
> +		type = RESET_WDG;
> +		break;
> +	case REASON_SW_RST:
> +		dev_dbg(dev, "Detected cold reset by SW_RST\n");
> +		type = RESET_RST;
> +		break;
> +	case REASON_PMIC_RST:
> +		dev_dbg(dev, "Detected cold reset by PMIC_RST_B\n");
> +		type = RESET_EXT;
> +		break;
> +	default:
> +		dev_warn(dev, "Could not determine reset reason.\n");
> +		type = RESET_UKWN;
> +	}
> +
> +	reset_source_set_device(dev, type);
> +
> +	return 0;
> +};
> +
> +static int __init pca9450_probe(struct device *dev)
> +{
> +	struct regmap *regmap;
> +	int reg;
> +	int ret;
> +
> +	regmap = regmap_init_i2c(to_i2c_client(dev), &pca9450_regmap_i2c_config);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	ret = regmap_register_cdev(regmap, NULL);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_read(regmap, PCA9450_REG_DEV_ID, &reg);
> +
> +	if (ret) {
> +		dev_err(dev, "Unable to read PMIC Chip ID\n");
> +		return ret;
> +	}
> +
> +	/* Chip ID defined in bits [7:4] */
> +	dev_info(dev, "PMIC Chip ID: 0x%x\n", (reg >> 4));
> +
> +	pca9450_get_reset_source(dev,regmap);
> +
> +	return of_platform_populate(dev->of_node, NULL, dev);
> +}
> +
> +static __maybe_unused struct of_device_id pca9450_dt_ids[] = {
> +	{ .compatible = "nxp,pca9450a" },
> +	{ .compatible = "nxp,pca9450c" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, pca9450_dt_ids);
> +
> +static struct driver pca9450_i2c_driver = {
> +	.name		= "pca9450-i2c",
> +	.probe		= pca9450_probe,
> +	.of_compatible	= DRV_OF_COMPAT(pca9450_dt_ids),
> +};
> +
> +coredevice_i2c_driver(pca9450_i2c_driver);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Wed, 24 Jan 2024 09:28:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSYcj-00FcAt-1e
	for lore@lore.pengutronix.de;
	Wed, 24 Jan 2024 09:28:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSYcj-0006co-SO
	for lore@pengutronix.de; Wed, 24 Jan 2024 09:28:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zHuY2ynXAECC0QBdjE9XBFQO+1immnxmVBr3UrS3l64=; b=fL4LEuSq7+LKMAKrwLooIf5Rxy
	QXfMUGIgs7ue+NWvk0OMAr2Ekmpu+MWtDmNzHbiLHO7vVq5+cub5sw3Qb+PfhoLpXT3GRH9LfODL5
	rttHPgLbfP6eoRTOm0jNt3ptL0ifBEvv7YNGfL9FitJyoGRgEXENOBrGlqiXQrWnQwowZk7MMgivx
	p3fKxJI4ntbK3Sf+I637UjmmzF1vj6dsHJEQpz6PRKMn5U33+xsPYf6jzYnBM8z7jU9OobUFK4BHX
	ywtvUrtigJAJDynPsa5Myph2Mt2WqzmSiZ3BZctSjl/APH9iDukStcxvZVH6YPoE/7qDCxm5txRdN
	/dUMRnRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYbY-0020i7-2W;
	Wed, 24 Jan 2024 08:27:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYbU-0020hH-2p
	for barebox@lists.infradead.org;
	Wed, 24 Jan 2024 08:27:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rSYbS-0006XQ-9v; Wed, 24 Jan 2024 09:27:22 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rSYbR-0020xA-Te; Wed, 24 Jan 2024 09:27:21 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rSYbR-001VTQ-RL; Wed, 24 Jan 2024 09:27:21 +0100
Date: Wed, 24 Jan 2024 09:27:21 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240124082721.GD324503@pengutronix.de>
References: <20240116171026.290415-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240116171026.290415-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_002725_098032_CA4EC114 
X-CRM114-Status: GOOD (  35.32  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] Port SoC framework from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

Looks good to me. Can you rebase on current master?

Sascha

On Tue, Jan 16, 2024 at 06:10:25PM +0100, Marco Felsch wrote:
> This adds the initial support for the Linux soc framework which can be
> used to register all SoC relevant informations. The framework can be
> used by driver to check for errata for an specific soc(-revision) in the
> future since this require porting the matching function.
> 
> For now it gathers all required SoC information and provide a standard
> interface to query the data via device params.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog:
> v2:
>  - nothing
> 
>  drivers/base/Kconfig    |   3 +
>  drivers/base/Makefile   |   1 +
>  drivers/base/soc.c      | 123 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/sys_soc.h |  39 +++++++++++++
>  4 files changed, 166 insertions(+)
>  create mode 100644 drivers/base/soc.c
>  create mode 100644 include/linux/sys_soc.h
> 
> diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
> index 612a84be33e7..21a4793cfa47 100644
> --- a/drivers/base/Kconfig
> +++ b/drivers/base/Kconfig
> @@ -6,4 +6,7 @@ config PM_GENERIC_DOMAINS
>  config FEATURE_CONTROLLER
>  	bool "Feature controller support" if COMPILE_TEST || SANDBOX
>  
> +config SOC_BUS
> +	bool
> +
>  source "drivers/base/regmap/Kconfig"
> diff --git a/drivers/base/Makefile b/drivers/base/Makefile
> index e8e354cdaabc..acc53763da35 100644
> --- a/drivers/base/Makefile
> +++ b/drivers/base/Makefile
> @@ -7,3 +7,4 @@ obj-y	+= regmap/
>  
>  obj-$(CONFIG_PM_GENERIC_DOMAINS) += power.o
>  obj-$(CONFIG_FEATURE_CONTROLLER) += featctrl.o
> +obj-$(CONFIG_SOC_BUS) += soc.o
> diff --git a/drivers/base/soc.c b/drivers/base/soc.c
> new file mode 100644
> index 000000000000..a481f8987b56
> --- /dev/null
> +++ b/drivers/base/soc.c
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2024 Marco Felsch, Pengutronix
> +/*
> + * Based on Linux drivers/base/soc.c:
> + * Copyright (C) ST-Ericsson SA 2011
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <of.h>
> +
> +#include <linux/slab.h>
> +#include <linux/sys_soc.h>
> +#include <linux/err.h>
> +
> +struct soc_device {
> +	struct device dev;
> +	struct soc_device_attribute *attr;
> +};
> +
> +static struct bus_type soc_bus_type = {
> +	.name  = "soc",
> +};
> +static bool soc_bus_registered;
> +
> +static void soc_device_add_params(struct soc_device *soc_dev)
> +{
> +	struct soc_device_attribute *attr = soc_dev->attr;
> +	struct device *dev = &soc_dev->dev;
> +
> +	if (attr->machine)
> +		dev_add_param_string_fixed(dev, "machine", attr->machine);
> +	if (attr->family)
> +		dev_add_param_string_fixed(dev, "family", attr->family);
> +	if (attr->revision)
> +		dev_add_param_string_fixed(dev, "revision", attr->revision);
> +	if (attr->serial_number)
> +		dev_add_param_string_fixed(dev, "serial_number", attr->serial_number);
> +	if (attr->soc_id)
> +		dev_add_param_string_fixed(dev, "soc_id", attr->soc_id);
> +}
> +
> +static void soc_device_get_machine(struct soc_device_attribute *soc_dev_attr)
> +{
> +	struct device_node *np;
> +
> +	if (soc_dev_attr->machine)
> +		return;
> +
> +	np = of_find_node_by_path("/");
> +	of_property_read_string(np, "model", &soc_dev_attr->machine);
> +	of_node_put(np);
> +}
> +
> +static struct soc_device_attribute *early_soc_dev_attr;
> +
> +struct soc_device *soc_device_register(struct soc_device_attribute *soc_dev_attr)
> +{
> +	struct soc_device *soc_dev;
> +	int ret;
> +
> +	soc_device_get_machine(soc_dev_attr);
> +
> +	if (!soc_bus_registered) {
> +		if (early_soc_dev_attr)
> +			return ERR_PTR(-EBUSY);
> +		early_soc_dev_attr = soc_dev_attr;
> +		return NULL;
> +	}
> +
> +	soc_dev = kzalloc(sizeof(*soc_dev), GFP_KERNEL);
> +	if (!soc_dev) {
> +		ret = -ENOMEM;
> +		goto out1;
> +	}
> +
> +	soc_dev->attr = soc_dev_attr;
> +	soc_dev->dev.bus = &soc_bus_type;
> +	soc_dev->dev.id = DEVICE_ID_DYNAMIC;
> +
> +	dev_set_name(&soc_dev->dev, "soc");
> +
> +	ret = device_register(&soc_dev->dev);
> +	if (ret) {
> +		put_device(&soc_dev->dev);
> +		goto out2;
> +	}
> +
> +	soc_device_add_params(soc_dev);
> +
> +	return soc_dev;
> +
> +out2:
> +	kfree(soc_dev);
> +out1:
> +	return ERR_PTR(ret);
> +}
> +EXPORT_SYMBOL_GPL(soc_device_register);
> +
> +/* Ensure soc_dev->attr is freed after calling soc_device_unregister. */
> +void soc_device_unregister(struct soc_device *soc_dev)
> +{
> +	device_unregister(&soc_dev->dev);
> +	kfree(soc_dev);
> +	early_soc_dev_attr = NULL;
> +}
> +EXPORT_SYMBOL_GPL(soc_device_unregister);
> +
> +static int __init soc_bus_register(void)
> +{
> +	int ret;
> +
> +	ret = bus_register(&soc_bus_type);
> +	if (ret)
> +		return ret;
> +	soc_bus_registered = true;
> +
> +	if (early_soc_dev_attr)
> +		return PTR_ERR(soc_device_register(early_soc_dev_attr));
> +
> +	return 0;
> +}
> +core_initcall(soc_bus_register);
> diff --git a/include/linux/sys_soc.h b/include/linux/sys_soc.h
> new file mode 100644
> index 000000000000..fd597ae54096
> --- /dev/null
> +++ b/include/linux/sys_soc.h
> @@ -0,0 +1,39 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) ST-Ericsson SA 2011
> + * Author: Lee Jones <lee.jones@linaro.org> for ST-Ericsson.
> + */
> +#ifndef __SOC_BUS_H
> +#define __SOC_BUS_H
> +
> +#include <linux/device.h>
> +
> +struct soc_device_attribute {
> +	const char *machine;
> +	const char *family;
> +	const char *revision;
> +	const char *serial_number;
> +	const char *soc_id;
> +	const void *data;
> +};
> +
> +/**
> + * soc_device_register - register SoC as a device
> + * @soc_plat_dev_attr: Attributes passed from platform to be attributed to a SoC
> + */
> +struct soc_device *soc_device_register(
> +	struct soc_device_attribute *soc_plat_dev_attr);
> +
> +/**
> + * soc_device_unregister - unregister SoC device
> + * @dev: SoC device to be unregistered
> + */
> +void soc_device_unregister(struct soc_device *soc_dev);
> +
> +/**
> + * soc_device_to_device - helper function to fetch struct device
> + * @soc: Previously registered SoC device container
> + */
> +struct device *soc_device_to_device(struct soc_device *soc);
> +
> +#endif /* __SOC_BUS_H */
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



Delivery-date: Mon, 08 Aug 2022 16:24:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3fr-00GG3E-1C
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 16:24:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3fr-00029S-Ji
	for lore@pengutronix.de; Mon, 08 Aug 2022 16:24:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yCo8+HuEkgzGMmC5453C+/IbtVLDbCEQPVGNnax/q1A=; b=mffw2BkGOIh1zVLTSWko9PlqBd
	eX8gpzM50qxRYw0HIoL/uDlcGDIC817rQNiBXRkZGGz9lDWf+QLt6nHTqEXsFlqS5ZOJ+cj0cP6GP
	/gZAHA5iyJGOiQ7EJokew+6K/7kOJqbB1G21Mf0w/TA+xexwVnUgDe3rtaWbxlnYDW6oF3uw61dOr
	lfP1EmdPEsuTXR/7aBTvSRVBjwJcQAzw+caPWLuL0KH8Lxh5iaekX0KTSYU8jiBdFuQuB3VKTz76G
	x6HKtFzxkG9zta6a1GB+oQq7GS4RLYyoyO4fgDMqhBJkcE2JOuBAnTSnwRZY3phOhRvzJqtbdUgbm
	aZkvWQMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3eg-00ELlj-6x; Mon, 08 Aug 2022 14:22:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3eb-00ELjR-Ab
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 14:22:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL3ea-00020n-3c; Mon, 08 Aug 2022 16:22:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL3eZ-0007VS-Qv; Mon, 08 Aug 2022 16:22:47 +0200
Date: Mon, 8 Aug 2022 16:22:47 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808142247.GW31528@pengutronix.de>
References: <20220724190006.2160802-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220724190006.2160802-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_072249_388421_44440869 
X-CRM114-Status: GOOD (  31.49  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 1/6] mfd: implement mfd_add_devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Jul 24, 2022 at 09:00:01PM +0200, Ahmad Fatoum wrote:
> This makes it easier to port Linux drivers like PMICs, where a device
> tree probed MFD node exists and the driver matching against it then
> registers a number of MFD cell devices, which don't have their own
> DT compatibles.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v3 -> v4:
>   - no change
> v2 -> v3:
>   - no change
> v1 -> v2:
>   - no change
> v0 (before folding into series) -> v1:
>   - call device_add_data before platform_device_register, which
>     may immediately probe (Sascha)
> ---
>  drivers/base/resource.c  |  2 +-
>  drivers/mfd/Makefile     |  2 ++
>  drivers/mfd/core.c       | 25 +++++++++++++++++++++++++
>  include/driver.h         |  2 +-
>  include/linux/mfd/core.h | 23 +++++++++++++++++++++++
>  5 files changed, 52 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/mfd/core.c
>  create mode 100644 include/linux/mfd/core.h

Applied, thanks

Sascha

> 
> diff --git a/drivers/base/resource.c b/drivers/base/resource.c
> index d0d39620772e..0134456ffac2 100644
> --- a/drivers/base/resource.c
> +++ b/drivers/base/resource.c
> @@ -20,7 +20,7 @@ struct device_d *device_alloc(const char *devname, int id)
>  	return dev;
>  }
>  
> -int device_add_data(struct device_d *dev, void *data, size_t size)
> +int device_add_data(struct device_d *dev, const void *data, size_t size)
>  {
>  	free(dev->platform_data);
>  
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index 50f54cfcf21c..2b988bdc9a3d 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -1,4 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +obj-y				+= core.o
> +
>  obj-$(CONFIG_MFD_ACT8846)	+= act8846.o
>  obj-$(CONFIG_MFD_DA9053)	+= da9053.o
>  obj-$(CONFIG_MFD_DA9063)	+= da9063.o
> diff --git a/drivers/mfd/core.c b/drivers/mfd/core.c
> new file mode 100644
> index 000000000000..495427ae9c87
> --- /dev/null
> +++ b/drivers/mfd/core.c
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#include <linux/mfd/core.h>
> +#include <driver.h>
> +
> +int mfd_add_devices(struct device_d *parent, const struct mfd_cell *cells, int n_devs)
> +{
> +	struct device_d *dev;
> +	int ret, i;
> +
> +	for (i = 0; i < n_devs; i++) {
> +		dev = device_alloc(cells[i].name, DEVICE_ID_DYNAMIC);
> +		dev->parent = parent;
> +
> +		ret = device_add_data(dev, &cells[i], sizeof(cells[i]));
> +		if (ret)
> +			return ret;
> +
> +		ret = platform_device_register(dev);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> diff --git a/include/driver.h b/include/driver.h
> index a89ce7af9ddd..67ffbba6be80 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -243,7 +243,7 @@ int device_add_resources(struct device_d *dev, const struct resource *res, int n
>  int device_add_resource(struct device_d *dev, const char *resname,
>  		resource_size_t start, resource_size_t size, unsigned int flags);
>  
> -int device_add_data(struct device_d *dev, void *data, size_t size);
> +int device_add_data(struct device_d *dev, const void *data, size_t size);
>  
>  /*
>   * register a generic device
> diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
> new file mode 100644
> index 000000000000..2b3b51c69e5f
> --- /dev/null
> +++ b/include/linux/mfd/core.h
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2006 Ian Molton
> + * Copyright (c) 2007 Dmitry Baryshkov
> + */
> +
> +#ifndef MFD_CORE_H
> +#define MFD_CORE_H
> +
> +struct device_d;
> +
> +/*
> + * This struct describes the MFD part ("cell").
> + * After registration the copy of this structure will become the platform data
> + * of the resulting device_d
> + */
> +struct mfd_cell {
> +	const char		*name;
> +};
> +
> +int mfd_add_devices(struct device_d *parent, const struct mfd_cell *cells, int n_devs);
> +
> +#endif
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



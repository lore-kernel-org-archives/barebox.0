Delivery-date: Mon, 17 Jan 2022 10:31:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9OLz-004SKz-Rh
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 10:31:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9OLy-0007VD-6D
	for lore@pengutronix.de; Mon, 17 Jan 2022 10:31:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CIN04mNnesa1+QLSIalbKyOBNVEWOMEQWJ4c9XThnd4=; b=eX9nGhZ5dKpovVe7NtRIwdQ7sW
	NkQ8qLrvg0DpYsBjWSBOR7YL8H85TirURm7UW8aV6gRdUj7sKpUo/G8mgFNu3eCJkLqBVpRHI+dMZ
	rb67jQUeVsXHImz2RQ5cFlC3yFPg0yb6EojyVBi6GjHuUYu1PSfN5XDUtxHZcuL7dwO6c2VJcqNUG
	8Lge9/o+/WUDx01ZhvMmonDw/lqj7XfpY/z1rarXOzG0i/fVHxhfBemTlHAHhmo5X6TWMaF6zqxGt
	lfNMdMloykIgNlIoCPpq8v94EtKDqTxQ5K0kx1UMFCi2w4w3KYF2OdfDSulP6wYdHkeU+c1Iub91s
	0N/gpuhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9OKb-00EGG4-6b; Mon, 17 Jan 2022 09:29:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9OKV-00EGEM-EW
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 09:29:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9OKU-000725-7Q; Mon, 17 Jan 2022 10:29:34 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9OKT-0003F8-V2; Mon, 17 Jan 2022 10:29:33 +0100
Date: Mon, 17 Jan 2022 10:29:33 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220117092933.GG1121@pengutronix.de>
References: <20220114084728.311277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114084728.311277-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:28:03 up 37 days, 18:13, 77 users,  load average: 0.04, 0.10, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_012935_517130_B45ED6A0 
X-CRM114-Status: GOOD (  28.50  )
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
Subject: Re: [PATCH] mfd: implement mfd_add_devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 09:47:28AM +0100, Ahmad Fatoum wrote:
> This makes it easier to port Linux drivers like PMICs, where a device
> tree probed MFD node exists and the driver matching against it then
> registers a number of MFD cell devices, which don't have their own
> DT compatibles.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/base/resource.c  |  2 +-
>  drivers/mfd/Makefile     |  2 ++
>  drivers/mfd/core.c       | 25 +++++++++++++++++++++++++
>  include/driver.h         |  2 +-
>  include/linux/mfd/core.h | 23 +++++++++++++++++++++++
>  5 files changed, 52 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/mfd/core.c
>  create mode 100644 include/linux/mfd/core.h
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
> index 2bcf90078ab4..a00119a1d5f4 100644
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
> index 000000000000..fa6aa1c74a18
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
> +		ret = platform_device_register(dev);
> +		if (ret)
> +			return ret;
> +
> +		ret = device_add_data(dev, &cells[i], sizeof(cells[i]));
> +		if (ret)
> +			return ret;

Calling platform_device_register() might result in probing the device.
You should call device_add_data() before registering the device.

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


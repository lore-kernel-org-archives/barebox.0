Delivery-date: Mon, 14 Apr 2025 12:43:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HIF-000bfP-1v
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 12:43:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HIE-0000D4-EE
	for lore@pengutronix.de; Mon, 14 Apr 2025 12:43:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NseFysfQ/Zbt8R7DGbwsWNWeMnIYKkZs+FWOIXcx2YU=; b=xEhq+rTsa+g0+UTJpL5v47r4t7
	xa9A75ZFtEf/W+TjQvTuh1Pza5jIYHAhmdLVhm4mkjmbh/aymjT81G/5FeYjLlud4hGpvem2m6vBY
	XTSr4shmemd/ZxqXmJ9L0evy98WldlgNK7AJF7NH6Z2ETxdpnYUyxbhO8F6PKRVKGwUT9Dcm1uxkK
	xb2SnnRn5R5/KxCQ7HgUMSC8p+3oA9YHJWvbR1kl+hPSp77Ts4hwzef9nYAb8jq0euayJmc801BkM
	qlHQ+U9ywZzjA1iMLBtneY5MWGvYDyjWXGEmBd8pFgmVKMyFaViCUJ79jDwuXqZSD+HNcvqyVdw0F
	D/b+dOTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HHk-00000001asx-1gX5;
	Mon, 14 Apr 2025 10:43:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4H63-00000001Xxz-1zlN
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:31:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4H61-0004EU-SE; Mon, 14 Apr 2025 12:31:21 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4H61-000EZ9-2B;
	Mon, 14 Apr 2025 12:31:21 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4H61-000G7a-1t;
	Mon, 14 Apr 2025 12:31:21 +0200
Date: Mon, 14 Apr 2025 12:31:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250414103121.tak6wi5ze7k3qy5g@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-13-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414063152.2736649-13-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_033123_681203_113A1459 
X-CRM114-Status: GOOD (  26.00  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 12/18] misc: storage-by-uuid: prepare for generalizing to
 different aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-04-14, Ahmad Fatoum wrote:
> Besides the probe function and the check_exist function, there is
> nothing UUID specific about the code. As preparation for making it
> reusable for arbitrary cdev aliases, rename it to storage-by-alias
> instead as I couldn't figure out a proper backronym for sbu.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/misc/storage-by-uuid.c | 204 ++++++++++++++++++---------------
>  1 file changed, 114 insertions(+), 90 deletions(-)
> 
> diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
> index 7bb987dffbec..2795ff93c07c 100644
> --- a/drivers/misc/storage-by-uuid.c
> +++ b/drivers/misc/storage-by-uuid.c
> @@ -1,4 +1,13 @@
>  // SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * cdev aliases for existing block devices. In future, this should
> + * likely be replaced by a more generic device mapper support.
> + *
> + * Currently supported targets:
> + * - barebox,storage-by-uuid
> + *   Useful for referencing existing EFI disks and their partition
> + *   from device tree by offset
> + */
>  #include <common.h>
>  #include <init.h>
>  #include <io.h>
> @@ -7,200 +16,215 @@
>  #include <envfs.h>
>  #include <fs.h>
>  
> -static LIST_HEAD(sbu_list);
> +static LIST_HEAD(sba_list);
>  
> -struct sbu {
> -	char *uuid;
> +struct sba {
> +	char *alias;
>  	struct device *dev;
>  	struct cdev *rcdev;
>  	struct cdev cdev;
>  	struct list_head list;
>  };
>  
> -void storage_by_uuid_check_exist(struct cdev *cdev);
> -
> -static ssize_t sbu_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
> +static ssize_t sba_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_read(sbu->rcdev, buf, count, offset, flags);
> +	return cdev_read(sba->rcdev, buf, count, offset, flags);
>  }
>  
> -static ssize_t sbu_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
> +static ssize_t sba_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_write(sbu->rcdev, buf, count, offset, flags);
> +	return cdev_write(sba->rcdev, buf, count, offset, flags);
>  }
>  
> -static int sbu_ioctl(struct cdev *cdev, unsigned int request, void *buf)
> +static int sba_ioctl(struct cdev *cdev, unsigned int request, void *buf)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_ioctl(sbu->rcdev, request, buf);
> +	return cdev_ioctl(sba->rcdev, request, buf);
>  }
>  
> -static int sbu_open(struct cdev *cdev, unsigned long flags)
> +static int sba_open(struct cdev *cdev, unsigned long flags)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_open(sbu->rcdev, flags);
> +	return cdev_open(sba->rcdev, flags);
>  }
>  
> -static int sbu_close(struct cdev *cdev)
> +static int sba_close(struct cdev *cdev)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	cdev_close(sbu->rcdev);
> +	cdev_close(sba->rcdev);
>  
>  	return 0;
>  }
>  
> -static int sbu_flush(struct cdev *cdev)
> +static int sba_flush(struct cdev *cdev)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_flush(sbu->rcdev);
> +	return cdev_flush(sba->rcdev);
>  }
>  
> -static int sbu_erase(struct cdev *cdev, loff_t count, loff_t offset)
> +static int sba_erase(struct cdev *cdev, loff_t count, loff_t offset)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_erase(sbu->rcdev, count, offset);
> +	return cdev_erase(sba->rcdev, count, offset);
>  }
>  
> -static int sbu_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
> +static int sba_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_protect(sbu->rcdev, count, offset, prot);
> +	return cdev_protect(sba->rcdev, count, offset, prot);
>  }
>  
> -static int sbu_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
> +static int sba_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_discard_range(sbu->rcdev, count, offset);
> +	return cdev_discard_range(sba->rcdev, count, offset);
>  }
>  
> -static int sbu_memmap(struct cdev *cdev, void **map, int flags)
> +static int sba_memmap(struct cdev *cdev, void **map, int flags)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_memmap(sbu->rcdev, map, flags);
> +	return cdev_memmap(sba->rcdev, map, flags);
>  }
>  
> -static int sbu_truncate(struct cdev *cdev, size_t size)
> +static int sba_truncate(struct cdev *cdev, size_t size)
>  {
> -	struct sbu *sbu = cdev->priv;
> +	struct sba *sba = cdev->priv;
>  
> -	return cdev_truncate(sbu->rcdev, size);
> +	return cdev_truncate(sba->rcdev, size);
>  }
>  
> -static struct cdev_operations sbu_ops = {
> -	.read = sbu_read,
> -	.write = sbu_write,
> -	.ioctl = sbu_ioctl,
> -	.open = sbu_open,
> -	.close = sbu_close,
> -	.flush = sbu_flush,
> -	.erase = sbu_erase,
> -	.protect = sbu_protect,
> -	.discard_range = sbu_discard_range,
> -	.memmap = sbu_memmap,
> -	.truncate = sbu_truncate,
> +static struct cdev_operations sba_ops = {
> +	.read = sba_read,
> +	.write = sba_write,
> +	.ioctl = sba_ioctl,
> +	.open = sba_open,
> +	.close = sba_close,
> +	.flush = sba_flush,
> +	.erase = sba_erase,
> +	.protect = sba_protect,
> +	.discard_range = sba_discard_range,
> +	.memmap = sba_memmap,
> +	.truncate = sba_truncate,
>  };
>  
> -static void storage_by_uuid_add_partitions(struct sbu *sbu, struct cdev *rcdev)
> +static void sba_add_partitions(struct sba *sba, struct cdev *rcdev)
>  {
>  	int ret;
>  
> -	if (sbu->rcdev)
> +	if (sba->rcdev)
>  		return;
>  
> -	sbu->rcdev = rcdev;
> -	sbu->cdev.name = sbu->uuid;
> -	sbu->cdev.size = rcdev->size;
> -	sbu->cdev.ops = &sbu_ops;
> -	sbu->cdev.dev = sbu->dev;
> -	sbu->cdev.priv = sbu;
> +	sba->rcdev = rcdev;
> +	sba->cdev.name = sba->alias;
> +	sba->cdev.size = rcdev->size;
> +	sba->cdev.ops = &sba_ops;
> +	sba->cdev.dev = sba->dev;
> +	sba->cdev.priv = sba;
>  
>  	if (rcdev->flags & DEVFS_WRITE_AUTOERASE)
> -		sbu->cdev.flags |= DEVFS_WRITE_AUTOERASE;
> +		sba->cdev.flags |= DEVFS_WRITE_AUTOERASE;
>  
> -	ret = devfs_create(&sbu->cdev);
> +	ret = devfs_create(&sba->cdev);
>  	if (ret) {
> -		dev_err(sbu->dev, "Failed to create cdev: %s\n", strerror(-ret));
> +		dev_err(sba->dev, "Failed to create cdev: %s\n", strerror(-ret));
>  		return;
>  	}
>  
> -	of_parse_partitions(&sbu->cdev, sbu->dev->of_node);
> +	of_parse_partitions(&sba->cdev, sba->dev->of_node);
>  }
>  
> -static void check_exist(struct sbu *sbu)
> +static void check_exist(struct sba *sba)
>  {
>  	struct cdev *cdev;
>  
>  	for_each_cdev(cdev) {
>  		if (cdev_is_partition(cdev))
>  			continue;
> -		if (strcmp(cdev->diskuuid, sbu->uuid))
> +		if (strcmp(cdev->diskuuid, sba->alias))
>  			continue;
>  
> -		dev_dbg(sbu->dev, "Found %s %s\n", cdev->name, cdev->diskuuid);
> -		storage_by_uuid_add_partitions(sbu, cdev);
> +		dev_dbg(sba->dev, "Found %s %s\n", cdev->name, cdev->diskuuid);
> +		sba_add_partitions(sba, cdev);
>  		return;
>  	}
>  }
>  
> -static int sbu_detect(struct device *dev)
> +static int sba_detect(struct device *dev)
>  {
> -	struct sbu *sbu = dev->priv;
> +	struct sba *sba = dev->priv;
>  
>  	dev_dbg(dev, "%s\n", __func__);
>  
> -	check_exist(sbu);
> +	check_exist(sba);
>  
>  	return 0;
>  }
>  
> -static int storage_by_uuid_probe(struct device *dev)
> +static int storage_by_uuid_init(struct sba *sba)
>  {
> -	struct sbu *sbu;
> -	int ret;
>  	const char *uuid;
> +	int ret;
>  
> -	sbu = xzalloc(sizeof(*sbu));
> -
> -	ret = of_property_read_string(dev->of_node, "uuid", &uuid);
> +	ret = of_property_read_string(sba->dev->of_node, "uuid", &uuid);
>  	if (ret)
>  		return ret;
>  
> -	sbu->dev = dev;
> -	sbu->uuid = xstrdup(uuid);
> -
> -	list_add_tail(&sbu->list, &sbu_list);
> -
> -	check_exist(sbu);
> -	dev->priv = sbu;
> -	dev->detect = sbu_detect;
> +	sba->alias = xstrdup(uuid);
>  
>  	return 0;
>  }
>  
> -static struct of_device_id storage_by_uuid_dt_ids[] = {
> +static int sba_probe(struct device *dev)
> +{
> +	int (*init)(struct sba *);

This does the job but a proper driver_data struct would be the more
aligned to all other drivers.

Regards,
  Marco


> +	struct sba *sba;
> +	int ret;
> +
> +	sba = xzalloc(sizeof(*sba));
> +	sba->dev = dev;
> +
> +	init = device_get_match_data(dev);
> +	if (!init)
> +		return -ENODEV;
> +
> +	ret = init(sba);
> +	if (ret)
> +		return ret;
> +
> +	list_add_tail(&sba->list, &sba_list);
> +
> +	check_exist(sba);
> +	dev->priv = sba;
> +	dev->detect = sba_detect;
> +
> +	return 0;
> +}
> +
> +static struct of_device_id sba_dt_ids[] = {
>  	{
>  		.compatible = "barebox,storage-by-uuid",
> +		.data = storage_by_uuid_init
>  	}, {
>  		/* sentinel */
>  	}
>  };
> -MODULE_DEVICE_TABLE(of, storage_by_uuid_dt_ids);
> +MODULE_DEVICE_TABLE(of, sba_dt_ids);
>  
> -static struct driver storage_by_uuid_driver = {
> -	.name		= "storage-by-uuid",
> -	.probe		= storage_by_uuid_probe,
> -	.of_compatible	= storage_by_uuid_dt_ids,
> +static struct driver sba_driver = {
> +	.name		= "storage-by-alias",
> +	.probe		= sba_probe,
> +	.of_compatible	= sba_dt_ids,
>  };
> -device_platform_driver(storage_by_uuid_driver);
> +device_platform_driver(sba_driver);
> -- 
> 2.39.5
> 
> 
> 



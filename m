Delivery-date: Mon, 02 Jun 2025 11:04:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM15u-002uBu-0c
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:04:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM15t-0004ff-Dw
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:04:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BuM6H/ThMd/VkKKO6/LliRBGSVJ83b6nQ8qeSej8tr4=; b=ciaq8zduA3DPyOSLm/OcZULzny
	lU4unH00s32wiOtrGlC/q9a6p0luB/RKlX4WwEyQcNJ6pJ9vCEoFT42XbQihFC4a73DY1iRnI9hyR
	5PjXOGxo+UpFC9gRd6ULxNvJuq4bVLo2JZnwek5INnAcW0EVc4o1ugXlSjtVtOm8b0BpFjvMv5qwo
	Ea/j96l0yVGAOg33wxo47gyc93mOQ4rd0VmPjwIh8UtjSJoOmMkRrkSQ7QVghsyVdKx8xHZTiYYUM
	vsh/3nNSmXOvIlxz3e328WYASkVhP8mcWsLbTd3aRy+thzQ1ZZGCCR17/iiJU7ZYJkB1WvEpBKaJ+
	zjXfuUSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM15N-000000072dK-2oLD;
	Mon, 02 Jun 2025 09:04:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM15K-000000072cn-238u
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:04:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uM15I-0004UK-Ju; Mon, 02 Jun 2025 11:03:56 +0200
Message-ID: <52114d62-823e-4fef-8fa1-d4f55c35f371@pengutronix.de>
Date: Mon, 2 Jun 2025 11:03:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
 <20250602-cdev-part-fixes-v1-1-814d9aa195ed@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250602-cdev-part-fixes-v1-1-814d9aa195ed@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_020358_532411_063A92A6 
X-CRM114-Status: GOOD (  25.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] cdev: pass master cdev to cdev ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 6/2/25 10:51, Sascha Hauer wrote:
> cdev partitions are cdevs themselves, but they are handled internally in
> the devfs-core. cdev partitions should not be passed as context pointers
> to the cdev ops though, because the drivers might do a container_of() on
> them to retrieve their driver data. Pass the original cdev the driver
> has registered as context to the ops. With this we can drop some quirks
> in the nvmem core in the next step.

Given that read/write and so on take absolute offsets, I agree that this
is a sensible change.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With below nit addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/devfs-core.c | 53 +++++++++++++++++++++++++++++++++++++++++------------
>  1 file changed, 41 insertions(+), 12 deletions(-)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 5fafcaecc70d63287e0b716cc0133198c28e79e9..73a13be7336df1eb4e24e8a936986b6069f3783c 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -224,12 +224,21 @@ int cdev_find_free_index(const char *basename)
>  	return -EBUSY;	/* all indexes are used */
>  }
>  
> +static struct cdev *cdev_get_master(struct cdev *cdev)
> +{
> +	while (cdev && cdev_is_partition(cdev))
> +		cdev = cdev->master;

This can be made into a simple if condition as we do not support links
to links, see cdev_readlink.

Thanks,
Ahmad

> +
> +	return cdev;
> +}
> +
>  int cdev_open(struct cdev *cdev, unsigned long flags)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
>  	int ret;
>  
>  	if (cdev->ops->open) {
> -		ret = cdev->ops->open(cdev, flags);
> +		ret = cdev->ops->open(master, flags);
>  		if (ret)
>  			return ret;
>  	}
> @@ -275,8 +284,10 @@ struct cdev *cdev_open_by_name(const char *name, unsigned long flags)
>  
>  int cdev_close(struct cdev *cdev)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
> +
>  	if (cdev->ops->close) {
> -		int ret = cdev->ops->close(cdev);
> +		int ret = cdev->ops->close(master);
>  		if (ret)
>  			return ret;
>  	}
> @@ -288,50 +299,61 @@ int cdev_close(struct cdev *cdev)
>  
>  ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
> +
>  	if (!cdev->ops->read)
>  		return -ENOSYS;
>  
> -	return cdev->ops->read(cdev, buf, count, cdev->offset +offset, flags);
> +	return cdev->ops->read(master, buf, count, cdev->offset +offset, flags);
>  }
>  
>  ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
> +
>  	if (!cdev->ops->write)
>  		return -ENOSYS;
>  
> -	return cdev->ops->write(cdev, buf, count, cdev->offset + offset, flags);
> +	return cdev->ops->write(master, buf, count, cdev->offset + offset, flags);
>  }
>  
>  int cdev_flush(struct cdev *cdev)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
> +
>  	if (!cdev->ops->flush)
>  		return 0;
>  
> -	return cdev->ops->flush(cdev);
> +	return cdev->ops->flush(master);
>  }
>  
>  int cdev_ioctl(struct cdev *cdev, unsigned int request, void *buf)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
> +
>  	if (!cdev->ops->ioctl)
>  		return -EINVAL;
>  
> -	return cdev->ops->ioctl(cdev, request, buf);
> +	return cdev->ops->ioctl(master, request, buf);
>  }
>  
>  int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
> +
>  	if (!cdev->ops->erase)
>  		return -ENOSYS;
>  
> -	return cdev->ops->erase(cdev, count, cdev->offset + offset);
> +	return cdev->ops->erase(master, count, cdev->offset + offset);
>  }
>  
>  int cdev_lseek(struct cdev *cdev, loff_t pos)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
>  	int ret;
>  
>  	if (cdev->ops->lseek) {
> -		ret = cdev->ops->lseek(cdev, pos + cdev->offset);
> +		ret = cdev->ops->lseek(master, pos + cdev->offset);
>  		if (ret < 0)
>  			return ret;
>  	}
> @@ -341,14 +363,18 @@ int cdev_lseek(struct cdev *cdev, loff_t pos)
>  
>  int cdev_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
> +
>  	if (!cdev->ops->protect)
>  		return -ENOSYS;
>  
> -	return cdev->ops->protect(cdev, count, offset + cdev->offset, prot);
> +	return cdev->ops->protect(master, count, offset + cdev->offset, prot);
>  }
>  
>  int cdev_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
> +
>  	if (!cdev->ops->discard_range)
>  		return -ENOSYS;
>  
> @@ -361,17 +387,18 @@ int cdev_discard_range(struct cdev *cdev, loff_t count, loff_t offset)
>  	if (count + offset > cdev->size)
>  		count = cdev->size - offset;
>  
> -	return cdev->ops->discard_range(cdev, count, offset + cdev->offset);
> +	return cdev->ops->discard_range(master, count, offset + cdev->offset);
>  }
>  
>  int cdev_memmap(struct cdev *cdev, void **map, int flags)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
>  	int ret = -ENOSYS;
>  
>  	if (!cdev->ops->memmap)
>  		return -EINVAL;
>  
> -	ret = cdev->ops->memmap(cdev, map, flags);
> +	ret = cdev->ops->memmap(master, map, flags);
>  
>  	if (!ret)
>  		*map = (void *)((unsigned long)*map + (unsigned long)cdev->offset);
> @@ -381,8 +408,10 @@ int cdev_memmap(struct cdev *cdev, void **map, int flags)
>  
>  int cdev_truncate(struct cdev *cdev, size_t size)
>  {
> +	struct cdev *master = cdev_get_master(cdev);
> +
>  	if (cdev->ops->truncate)
> -		return cdev->ops->truncate(cdev, size);
> +		return cdev->ops->truncate(master, size);
>  
>  	return -EPERM;
>  }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




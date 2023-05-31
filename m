Delivery-date: Wed, 31 May 2023 18:37:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4OpI-004Upx-15
	for lore@lore.pengutronix.de; Wed, 31 May 2023 18:37:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4OpF-0008Aw-G5
	for lore@pengutronix.de; Wed, 31 May 2023 18:37:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=67W2f+DNszpxDhHOwfEZ6PNSQlFl+jqnAfRidVci+YQ=; b=INXwcY0JC1jHC3YLkTLZMNJigJ
	FjEC/BjIFzKnq8+GoNzD1hw/D2CzCHZsNkysPLxQQX7V+mOnKwaJgL6qD4RGtl4jVieUh2eqaJlY4
	pCnjrtSpn9+ynuC+GBz0OPDQVYsoq/uZGlLxUQMErYHnM0N+UBnlmVGn9I881YvNKfgGo/0JCkyoF
	wXDThleytDbyK29IXtDn5xuX/+e2rEJYWZwK7bpKl2n9rRBOw0x7HgKw30spGe+BkDBOA9iBhIJkU
	P+8yMcXuxQRUujEc9dFWWmUYTDRIqO9YXNX/b86gbQdGamgcXOCcD0wWeRqfg1RAklaarCRnJJWM5
	BesyMNIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Oo7-000Uhy-26;
	Wed, 31 May 2023 16:36:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Oo5-000UhG-06
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 16:36:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Oo3-00086e-MR; Wed, 31 May 2023 18:36:15 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Oo3-0002mf-Ej; Wed, 31 May 2023 18:36:15 +0200
Date: Wed, 31 May 2023 18:36:15 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531163615.4kzn5xe2q4zzc75j@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-7-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_093617_067745_AB48C68D 
X-CRM114-Status: GOOD (  20.70  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 06/18] driver: add new cdev_is_partition helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-05-31, Ahmad Fatoum wrote:
> Partitions will have cdev->master != NULL, so often code will just do
> if (cdev->master) to check if a cdev is a partition. This is suboptimal
> as it may be misinterpreted by readers as meaning that the cdev is the
> master device, while it's the other way round.
> 
> Let's define cdev_is_partition instead and use it everywhere, where
> cdev->master is only checked, but not dereferenced.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/base/driver.c |  2 +-
>  fs/devfs-core.c       | 10 +++++-----
>  include/driver.h      |  4 ++++
>  3 files changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index f00be99cdcbf..10d765e1a213 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -277,7 +277,7 @@ int unregister_device(struct device *old_dev)
>  	}
>  
>  	list_for_each_entry_safe(cdev, ct, &old_dev->cdevs, devices_list) {
> -		if (cdev->master) {
> +		if (cdev_is_partition(cdev)) {
>  			dev_dbg(old_dev, "unregister part %s\n", cdev->name);
>  			devfs_del_partition(cdev->name);
>  		}
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index fbcf68e81597..bb66993b90f9 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -38,7 +38,7 @@ int devfs_partition_complete(struct string_list *sl, char *instr)
>  	len = strlen(instr);
>  
>  	for_each_cdev(cdev) {
> -		if (cdev->master &&
> +		if (cdev_is_partition(cdev) &&
>  		    !strncmp(instr, cdev->name, len)) {
>  			string_list_add_asprintf(sl, "%s ", cdev->name);
>  		}
> @@ -101,7 +101,7 @@ struct cdev *cdev_by_partuuid(const char *partuuid)
>  		return NULL;
>  
>  	for_each_cdev(cdev) {
> -		if (cdev->master && !strcasecmp(cdev->uuid, partuuid))
> +		if (cdev_is_partition(cdev) && !strcasecmp(cdev->uuid, partuuid))
>  			return cdev;
>  	}
>  	return NULL;
> @@ -115,7 +115,7 @@ struct cdev *cdev_by_diskuuid(const char *diskuuid)
>  		return NULL;
>  
>  	for_each_cdev(cdev) {
> -		if (!cdev->master && !strcasecmp(cdev->uuid, diskuuid))
> +		if (!cdev_is_partition(cdev) && !strcasecmp(cdev->uuid, diskuuid))
>  			return cdev;
>  	}
>  	return NULL;
> @@ -393,7 +393,7 @@ int devfs_remove(struct cdev *cdev)
>  	list_for_each_entry_safe(c, tmp, &cdev->links, link_entry)
>  		devfs_remove(c);
>  
> -	if (cdev->master)
> +	if (cdev_is_partition(cdev))
>  		list_del(&cdev->partition_entry);
>  
>  	if (cdev->link)
> @@ -549,7 +549,7 @@ int devfs_del_partition(const char *name)
>  		return ret;
>  	}
>  
> -	if (!cdev->master)
> +	if (!cdev_is_partition(cdev))
>  		return -EINVAL;
>  	if (cdev->flags & DEVFS_PARTITION_FIXED)
>  		return -EPERM;
> diff --git a/include/driver.h b/include/driver.h
> index e1ee3dc2dd7c..00b4a0e4af75 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -564,6 +564,10 @@ int cdev_discard_range(struct cdev*, loff_t count, loff_t offset);
>  int cdev_memmap(struct cdev*, void **map, int flags);
>  int cdev_truncate(struct cdev*, size_t size);
>  loff_t cdev_unallocated_space(struct cdev *cdev);
> +static inline bool cdev_is_partition(const struct cdev *cdev)
> +{
> +	return cdev->master != NULL;
> +}
>  
>  extern struct list_head cdev_list;
>  #define for_each_cdev(cdev) \
> -- 
> 2.39.2
> 
> 
> 



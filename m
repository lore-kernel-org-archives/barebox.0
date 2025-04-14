Delivery-date: Mon, 14 Apr 2025 12:35:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4H9Y-000bTh-1c
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 12:35:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4H9X-0005Un-RS
	for lore@pengutronix.de; Mon, 14 Apr 2025 12:35:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EeaNsO/EU9zOV4iiAtSh1OXzwSkynAk8JS82SaeYn5g=; b=vHtpFWR48MOHmqA9wSx3b76IP1
	FHpXG2IcZJ/FMkgQHTq12OCAkEmN3/0+LjzSeeFf0oPfUFfGnLU2/AyXiRvRhYZk8kJQnOhkA8Sqv
	kwrNiqSeFBQnRFoDZOApSbVmLCoID5mPV65S5FJPOZNT3JFxMofqMJfCmDkRcddnB/Woahum5kR0C
	QuDD0aQgECJIdeFfFgsTkcUzR4+1tam2qoyj10XvRwCFlBzEQyTyRcJoRQpYJk946+AJ2MOzB3iKu
	eS9SGI46ThMyJg9YLWsl3W3CMqUFRSJmUYL9zLcZV4eIWGz83JAIyUdHUMwF5NO9wcuIRIKiPKfxP
	2jy6nItA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4H95-00000001Yq7-2SnM;
	Mon, 14 Apr 2025 10:34:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4GsP-00000001Tee-0bQK
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:17:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4GsN-00080L-LK; Mon, 14 Apr 2025 12:17:15 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4GsN-000EXG-1W;
	Mon, 14 Apr 2025 12:17:15 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4GsN-000FpX-1D;
	Mon, 14 Apr 2025 12:17:15 +0200
Date: Mon, 14 Apr 2025 12:17:15 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250414101715.esfc3lxmen3ez6jb@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-8-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414063152.2736649-8-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_031717_186626_D63F2B6A 
X-CRM114-Status: GOOD (  18.80  )
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
Subject: Re: [PATCH 07/18] cdev: alias: add support for partition links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-04-14, Ahmad Fatoum wrote:
> We currently support bootsource.2, but not bootsource.root-A.
> Fix this and while at it, factor out the logic for general reuse.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/cdev-alias.c | 22 +++-------------------
>  fs/devfs-core.c     | 29 +++++++++++++++++++++++++++++
>  include/driver.h    |  1 +
>  3 files changed, 33 insertions(+), 19 deletions(-)
> 
> diff --git a/common/cdev-alias.c b/common/cdev-alias.c
> index 5c37c2e58bf3..09e6770f5dea 100644
> --- a/common/cdev-alias.c
> +++ b/common/cdev-alias.c
> @@ -17,22 +17,6 @@ struct cdev_alias {
>  		       cdev_alias_processor_t fn, void *data);
>  };
>  
> -static struct cdev *resolve_partition(struct cdev *cdev,
> -				      const char *partname)
> -{
> -	struct cdev *partcdev;
> -
> -	if (!partname)
> -		return cdev;
> -
> -	for_each_cdev_partition(partcdev, cdev) {
> -		if (streq_ptr(partcdev->partname, partname))
> -			return partcdev;
> -	}
> -
> -	return ERR_PTR(-ENODEV);
> -}
> -
>  static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
>  					 const char *partname,
>  					 cdev_alias_processor_t fn,
> @@ -44,9 +28,9 @@ static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
>  	if (!cdev)
>  		return -ENODEV;
>  
> -	cdev = resolve_partition(cdev, partname);
> -	if (IS_ERR(cdev))
> -		return PTR_ERR(cdev);
> +	cdev = cdev_find_partition(cdev, partname);
> +	if (!cdev)
> +		return -ENODEV;
>  
>  	return fn(cdev, data);
>  }
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index c69c38d6506e..e32bce9e307e 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -21,6 +21,7 @@
>  #include <malloc.h>
>  #include <ioctl.h>
>  #include <nand.h>
> +#include <string.h>
>  #include <linux/err.h>
>  #include <linux/fs.h>
>  #include <linux/mtd/mtd.h>
> @@ -149,6 +150,34 @@ cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid)
>  	return ERR_PTR(-ENOENT);
>  }
>  
> +/**
> + * cdev_find_partition - find a partition belonging to a physical device
> + *
> + * @cdev: the cdev which should be searched for partitions
> + * @name: the partition name
> + */
> +struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name)
> +{
> +	struct cdev *partcdev;
> +
> +	if (!name)
> +		return cdevm;

		return ERR_PTR(-EINVAL) ?

Regards,
  Marco

> +
> +	for_each_cdev_partition(partcdev, cdevm) {
> +		struct cdev *cdevl;
> +
> +		if (streq_ptr(partcdev->partname, name))
> +			return partcdev;
> +
> +		list_for_each_entry(cdevl, &partcdev->links, link_entry) {
> +			if (streq_ptr(cdevl->partname, name))
> +				return cdevl;
> +		}
> +	}
> +
> +	return NULL;
> +}
> +
>  /**
>   * device_find_partition - find a partition belonging to a physical device
>   *
> diff --git a/include/driver.h b/include/driver.h
> index 3f2c681c0e80..ca002c5164c2 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -503,6 +503,7 @@ int devfs_create(struct cdev *);
>  int devfs_create_link(struct cdev *, const char *name);
>  int devfs_remove(struct cdev *);
>  int cdev_find_free_index(const char *);
> +struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name);
>  struct cdev *device_find_partition(struct device *dev, const char *name);
>  struct cdev *lcdev_by_name(const char *filename);
>  struct cdev *cdev_readlink(struct cdev *cdev);
> -- 
> 2.39.5
> 
> 
> 


